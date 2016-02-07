package org.uqbar.arena.examples.plantsvszombies.recompensa

import org.uqbar.arena.examples.plantsvszombies.zombie.Zombie
import org.uqbar.arena.examples.plantsvszombies.jardin.JardinZen
import org.uqbar.arena.examples.plantsvszombies.repo.RepoPlantas

class RecompensaDePlantas extends Recompensa {

	RepoPlantas repoPlantas
	JardinZen jardinZen

	new(Zombie zombie, JardinZen unJardin, RepoPlantas elRepoPlantas) {
		super(zombie)
		repoPlantas = elRepoPlantas
		jardinZen = unJardin
	}

	def getPlantaDeRecompensa() {
		val planta = repoPlantas.getUnaPlantaDeRecompensa
		jardinZen.agregarPlanta(planta)
		planta
	}

	override generarRecompensa() {
		val planta = plantaDeRecompensa
		log.add("Obtuviste la planta " + planta.nombre + " de recompensa del tipo " + planta.tipo)
	}

}
