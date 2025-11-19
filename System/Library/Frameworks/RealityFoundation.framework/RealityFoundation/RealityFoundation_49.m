uint64_t HasSceneUnderstanding.sceneUnderstanding.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v10);
  v3 = *(v10 + 16);
  Component = REEntityGetComponent();
  if (Component)
  {
    SceneUnderstandingComponent.init(from:)(Component);
    v5 = v8;
    v6 = v9;
  }

  else
  {
    v5 = 2;
    v6 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

Swift::Void __swiftcall Entity.deferActivationUntilFullyLoaded()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (REEntityIsActive())
  {
    static os_log_type_t.default.getter();
    type metadata accessor for OS_os_log();
    v3 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  MEMORY[0x1C68F9730](*(v1 + 16), 0);
  REDeferredActivationComponentGetComponentType();

  REEntityGetOrAddComponentByClass();
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + 80 * (v9 | (v8 << 6)));
      v11 = v10[3];
      v14[2] = v10[2];
      v14[3] = v11;
      v14[4] = v10[4];
      v12 = v10[1];
      v14[0] = *v10;
      v14[1] = v12;
      result = specialized Set._Variant.insert(_:)(v13, v14);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t ParticleEmitterComponent.spawnedEmitter.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 576), 0x141uLL);
  memcpy(a1, (v1 + 576), 0x141uLL);
  return outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(__dst, &v4);
}

uint64_t key path getter for ParticleEmitterComponent.spawnedEmitter : ParticleEmitterComponent@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 576), 0x141uLL);
  memcpy(a2, (a1 + 576), 0x141uLL);
  return outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(__dst, &v5);
}

uint64_t key path setter for ParticleEmitterComponent.spawnedEmitter : ParticleEmitterComponent(void *__src, uint64_t a2)
{
  memcpy(v4, __src, 0x141uLL);
  memcpy(__dst, (a2 + 576), 0x141uLL);
  outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(v4, v6);
  outlined destroy of ParticleEmitterComponent.ParticleEmitter?(__dst);
  memcpy((a2 + 576), v4, 0x141uLL);
  memcpy(v6, v4, 0x141uLL);
  result = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v6);
  *(a2 + 897) = result == 0;
  return result;
}

uint64_t ParticleEmitterComponent.spawnedEmitter.setter(const void *a1)
{
  memcpy(v4, (v1 + 576), 0x141uLL);
  outlined destroy of ParticleEmitterComponent.ParticleEmitter?(v4);
  memcpy((v1 + 576), a1, 0x141uLL);
  memcpy(__dst, a1, 0x141uLL);
  result = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(__dst);
  *(v1 + 897) = result == 0;
  return result;
}

uint64_t outlined destroy of ParticleEmitterComponent.ParticleEmitter?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.EmitterShape.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746E696F70;
  v3 = 0x7265646E696C7963;
  if (v1 != 5)
  {
    v3 = 0x7375726F74;
  }

  v4 = 0x657265687073;
  if (v1 != 3)
  {
    v4 = 1701736291;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656E616C70;
  if (v1 != 1)
  {
    v5 = 7892834;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.EmitterShape.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.EmitterShape.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.EmitterShape.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15TorusCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15TorusCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO18CylinderCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO18CylinderCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO14ConeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO14ConeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO16SphereCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO16SphereCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO13BoxCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO13BoxCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PlaneCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PlaneCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PointCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PointCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys();
  v65 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys();
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys();
      v43 = v65;
      v44 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys);
  }

  return result;
}

uint64_t ParticleEmitterComponent.EmitterShape.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15TorusCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15TorusCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO18CylinderCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO18CylinderCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO14ConeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO14ConeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO16SphereCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO16SphereCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO13BoxCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO13BoxCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PlaneCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PlaneCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PointCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO15PointCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0G5ShapeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CodingKeys and conformance ParticleEmitterComponent.EmitterShape.CodingKeys();
  v31 = v79;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = KeyedDecodingContainer.allKeys.getter();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = specialized Collection<>.popFirst()();
    v39 = v28;
    if (v38 != 7 && v82 == v83 >> 1)
    {
      v84 = v38;
      if (v38 > 2u)
      {
        if (v38 > 4u)
        {
          v42 = v74;
          v53 = v79;
          if (v38 == 5)
          {
            v85 = 5;
            lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.CylinderCodingKeys and conformance ParticleEmitterComponent.EmitterShape.CylinderCodingKeys();
            v54 = v72;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.TorusCodingKeys and conformance ParticleEmitterComponent.EmitterShape.TorusCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v70 + 8))(v35, v71);
          }

          (*(v53 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v78;
        }

        else
        {
          v40 = v78;
          v41 = v79;
          v42 = v74;
          if (v38 == 3)
          {
            v85 = 3;
            lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.SphereCodingKeys and conformance ParticleEmitterComponent.EmitterShape.SphereCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.ConeCodingKeys and conformance ParticleEmitterComponent.EmitterShape.ConeCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v66 + 8))(v34, v67);
          }

          (*(v41 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v40;
        }

        goto LABEL_24;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          v85 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.BoxCodingKeys and conformance ParticleEmitterComponent.EmitterShape.BoxCodingKeys();
          v56 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PlaneCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PlaneCodingKeys();
        v49 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape.PointCodingKeys and conformance ParticleEmitterComponent.EmitterShape.PointCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = *(v59 + 8);
        v51 = v32;
        v52 = &v86;
      }

      v55 = *(v52 - 32);
LABEL_19:
      v50(v51, v55);
      (*(v79 + 8))(v39, v24);
      swift_unknownObjectRelease();
      v47 = v78;
      v42 = v74;
LABEL_24:
      *v42 = v84;
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v45 = &type metadata for ParticleEmitterComponent.EmitterShape;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t ParticleEmitterComponent.BirthLocation.init(_:)@<X0>(uint64_t a1@<X8>)
{
  result = REVFXEmitterComponentGetBirthLocation();
  if (result == 1)
  {
    v11 = 0;
    v12 = 0;
    v9 = 1;
    v10 = 1;
    goto LABEL_15;
  }

  if (result != 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 1;
    goto LABEL_15;
  }

  result = REVFXEmitterComponentGetBirthLocationVertex();
  v6 = fabsf(v3);
  if (v6 <= -1.0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= 1.8447e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = fabsf(v4);
  if (v7 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 >= 1.8447e19)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_20;
  }

  v8 = fabsf(v5);
  if (v8 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 < 1.8447e19)
  {
    v9 = 0;
    v10 = v6;
    v11 = v7;
    v12 = v8;
LABEL_15:
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = 0;
    *(a1 + 32) = v9;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.BirthLocation.CodingKeys()
{
  v1 = 0x656D756C6F76;
  if (*v0 != 1)
  {
    v1 = 0x7365636974726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636166727573;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.BirthLocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.BirthLocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.BirthLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO18VerticesCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO18VerticesCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO16VolumeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO16VolumeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO17SurfaceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO17SurfaceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v18 = v1[1];
  v34 = *v1;
  v35 = v18;
  v19 = *(v1 + 32);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19 == 1)
  {
    if (v35 | v34 | *(&v35 + 1))
    {
      LOBYTE(v36) = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys();
      v12 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v29;
      v21 = v30;
    }

    else
    {
      LOBYTE(v36) = 0;
      lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v26;
      v21 = v27;
    }

    (*(v22 + 8))(v12, v21);
  }

  else
  {
    LOBYTE(v36) = 2;
    lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys();
    v23 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v36 = v34;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySuGMd, &_ss5SIMD3VySuGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<UInt> and conformance SIMD3<A>, &_ss5SIMD3VySuGMd, &_ss5SIMD3VySuGMR);
    v24 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v23, v24);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t ParticleEmitterComponent.BirthLocation.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (*(v0 + 32) == 1)
  {
    v3 = (v1 | v0[3] | v3 | v2) != 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v2);
    MEMORY[0x1C68F4C10](v1);
  }

  return MEMORY[0x1C68F4C10](v3);
}

Swift::Int ParticleEmitterComponent.BirthLocation.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 == 1)
  {
    v3 = (v1 | v4 | v3 | v2) != 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v2);
    MEMORY[0x1C68F4C10](v1);
  }

  MEMORY[0x1C68F4C10](v3);
  return Hasher._finalize()();
}

uint64_t ParticleEmitterComponent.BirthLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO18VerticesCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO18VerticesCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO16VolumeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO16VolumeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO17SurfaceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO17SurfaceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v49 = *(v12 - 8);
  v13 = *(v49 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13BirthLocationO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys();
  v23 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v24 = v49;
    v50 = v17;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = (2 * *(v25 + 16)) | 1;
    v55 = v25;
    v56 = v25 + 32;
    v57 = 0;
    v58 = v26;
    v27 = specialized Collection<>.popFirst()();
    if (v27 != 3 && v57 == v58 >> 1)
    {
      if (v27)
      {
        if (v27 != 1)
        {
          LOBYTE(v51) = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v48;
          v49 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySuGMd, &_ss5SIMD3VySuGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<UInt> and conformance SIMD3<A>, &_ss5SIMD3VySuGMd, &_ss5SIMD3VySuGMR);
          v40 = v45;
          v41 = v47;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v46 + 8))(v41, v40);
          (*(v50 + 8))(v49, v16);
          swift_unknownObjectRelease();
          v42 = 0;
          v32 = v51;
          v29 = v52;
          v30 = v53;
          v31 = v54;
LABEL_12:
          *v39 = v32;
          *(v39 + 8) = v29;
          *(v39 + 16) = v30;
          *(v39 + 24) = v31;
          *(v39 + 32) = v42;
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }

        LOBYTE(v51) = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v50;
        (*(v44 + 8))(v11, v43);
        (*(v28 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 1;
      }

      else
      {
        LOBYTE(v51) = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v50;
        (*(v24 + 1))(v15, v12);
        (*(v38 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v32 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
      }

      v42 = 1;
      v39 = v48;
      goto LABEL_12;
    }

    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v35 = &type metadata for ParticleEmitterComponent.BirthLocation;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v50 + 8))(v20, v16);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ParticleEmitterComponent.BirthLocation()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (*(v0 + 32) == 1)
  {
    v3 = (v1 | v0[3] | v3 | v2) != 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v2);
    MEMORY[0x1C68F4C10](v1);
  }

  return MEMORY[0x1C68F4C10](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticleEmitterComponent.BirthLocation()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 == 1)
  {
    v3 = (v1 | v4 | v3 | v2) != 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v2);
    MEMORY[0x1C68F4C10](v1);
  }

  MEMORY[0x1C68F4C10](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.BirthDirection.CodingKeys()
{
  v1 = 0x6C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C616D726F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646C726F77;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.BirthDirection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.BirthDirection.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthDirection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthDirection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.BirthDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO16NormalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO16NormalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15WorldCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15WorldCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ParticleEmitterComponent.BirthDirection.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO16NormalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO16NormalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15WorldCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO15WorldCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV14BirthDirectionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for ParticleEmitterComponent.BirthDirection;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys()
{
  v1 = 0x68747269426E6FLL;
  v2 = 0x68746165446E6FLL;
  if (*v0 != 2)
  {
    v2 = 0x64696C6C6F436E6FLL;
  }

  if (*v0)
  {
    v1 = 0x6574616470556E6FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.SpawnOccasion.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t ParticleEmitterComponent.SpawnOccasion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO19OnCollideCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO19OnCollideCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnDeathCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnDeathCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO18OnUpdateCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO18OnUpdateCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnBirthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnBirthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys();
      v24 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys();
      v24 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys();
    v24 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t ParticleEmitterComponent.SpawnOccasion.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO19OnCollideCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO19OnCollideCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnDeathCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnDeathCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO18OnUpdateCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO18OnUpdateCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnBirthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO17OnBirthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV13SpawnOccasionO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys();
  v21 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = specialized Collection<>.popFirst()();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v34 = &type metadata for ParticleEmitterComponent.SpawnOccasion;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys();
        v39 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys();
        v31 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys();
      v38 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys();
      v40 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.SimulationSpace.CodingKeys()
{
  if (*v0)
  {
    result = 0x6C61626F6C67;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.SimulationSpace.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61626F6C67 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationSpace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationSpace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.SimulationSpace.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO16GlobalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO16GlobalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys();
    v18 = v22;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

Swift::Int ParticleEmitterComponent.SimulationSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ParticleEmitterComponent.SimulationSpace.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO16GlobalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO16GlobalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO15LocalCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationSpaceO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys();
  v16 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = specialized Collection<>.popFirst()();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v26 = &type metadata for ParticleEmitterComponent.SimulationSpace;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.SimulationState.CodingKeys()
{
  v1 = 0x6573756170;
  if (*v0 != 1)
  {
    v1 = 1886352499;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.SimulationState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.SimulationState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.SimulationState.StopCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.SimulationState.StopCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.SimulationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14StopCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14StopCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO15PauseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO15PauseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14PlayCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14PlayCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ParticleEmitterComponent.SimulationState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14StopCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14StopCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO15PauseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO15PauseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14PlayCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO14PlayCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV15SimulationStateO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for ParticleEmitterComponent.SimulationState;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

void *ParticleEmitterComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 257;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 513;
  *(a1 + 96) = xmmword_1C18C7150;
  *(a1 + 112) = 1056964608;
  *(a1 + 128) = *&zmmword_1C1887630[16];
  *(a1 + 144) = 0x3E80000040C90FDALL;
  *(a1 + 152) = 2;
  *(a1 + 156) = 1065353216;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x10000;
  *(a1 + 172) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 256;
  *(a1 + 192) = xmmword_1C18C7160;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1065353216;
  v2 = MEMORY[0x1E69E7CD0];
  *(a1 + 224) = MEMORY[0x1E69E7CC0];
  *(a1 + 232) = v2;
  ParticleEmitterComponent.ParticleEmitter.init()(a1 + 240);
  _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOi0_(v4);
  result = memcpy((a1 + 576), v4, 0x141uLL);
  *(a1 + 897) = 0;
  return result;
}

__n128 ParticleEmitterComponent.birthLocation.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ParticleEmitterComponent.birthLocation.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = v2;
  return result;
}

char *ParticleEmitterComponent.simulationSpace.setter(char *result)
{
  v2 = *result;
  *(v1 + 170) = *result;
  *(v1 + 171) = v2 ^ 1;
  return result;
}

uint64_t ParticleEmitterComponent.simulationSpace.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 171) = (*(*result + 170) & 1) == 0;
  }

  return result;
}

Swift::Void __swiftcall ParticleEmitterComponent.restart()()
{
  v1 = *(v0 + 176);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 176) = v3;
  }
}

Swift::Void __swiftcall ParticleEmitterComponent.burst()()
{
  v1 = *(v0 + 192);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 192) = v3;
  }
}

void ParticleEmitterComponent.simulationRate.setter(float a1)
{
  v2 = fminf(a1, 2.0);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  *(v1 + 216) = v2;
}

uint64_t ParticleEmitterComponent.simulationRate.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = fminf(*(*result + 216), 2.0);
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    *(*result + 216) = v2;
  }

  return result;
}

uint64_t key path setter for ParticleEmitterComponent.collisionPlanes_v1 : ParticleEmitterComponent(void *a1, uint64_t a2)
{
  v2 = *(a2 + 224);
  *(a2 + 224) = *a1;

  ParticleEmitterComponent.collisionPlanes_v1.didset(v2);
}

uint64_t ParticleEmitterComponent.collisionPlanes_v1.setter(uint64_t a1)
{
  v2 = *(v1 + 224);
  *(v1 + 224) = a1;
  if (*(a1 + 16) < *(v2 + 16))
  {

    v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v3);

    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v5);

    if (*(v6 + 16) <= *(v4 + 16) >> 3)
    {
      specialized Set._subtract<A>(_:)(v6);
    }

    else
    {
      v4 = specialized _NativeSet.subtracting<A>(_:)(v6, v4);
    }

    specialized Set.formUnion<A>(_:)(v4);
  }
}

uint64_t ParticleEmitterComponent.collisionPlanes_v1.didset(uint64_t result)
{
  if (*(*(v1 + 224) + 16) < *(result + 16))
  {

    v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v2);

    v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v4);

    if (*(v5 + 16) <= *(v3 + 16) >> 3)
    {
      specialized Set._subtract<A>(_:)(v5);

      v7 = v3;
    }

    else
    {
      v6 = specialized _NativeSet.subtracting<A>(_:)(v5, v3);

      v7 = v6;
    }

    return specialized Set.formUnion<A>(_:)(v7);
  }

  return result;
}

uint64_t (*ParticleEmitterComponent.collisionPlanes_v1.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return ParticleEmitterComponent.collisionPlanes_v1.modify;
}

uint64_t ParticleEmitterComponent.collisionPlanes_v1.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = *a1;
  *(a1[1] + 224) = *a1;
  v4 = *(v2 + 16);
  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 >= v4)
    {
    }

    else
    {

      v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v2);

      v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v7);

      if (*(v8 + 16) <= *(v6 + 16) >> 3)
      {
        specialized Set._subtract<A>(_:)(v8);
      }

      else
      {
        v6 = specialized _NativeSet.subtracting<A>(_:)(v8, v6);
      }

      specialized Set.formUnion<A>(_:)(v6);
    }
  }

  else if (v5 < v4)
  {

    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v9);

    v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v11);

    if (*(v12 + 16) <= *(v10 + 16) >> 3)
    {
      specialized Set._subtract<A>(_:)(v12);
    }

    else
    {
      v10 = specialized _NativeSet.subtracting<A>(_:)(v12, v10);
    }

    specialized Set.formUnion<A>(_:)(v10);
  }
}

double ParticleEmitterComponent.ParticleEmitter.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1120403456;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 29) = 0;
  *(a1 + 40) = 1017370378;
  *(a1 + 48) = CGColorCreateGenericRGB(1.0, 0.293586522, 0.0, 1.0);
  *(a1 + 56) = CGColorCreateGenericRGB(0.999990999, 1.0, 1.0, 1.0);
  *(a1 + 64) = 0;
  *(a1 + 72) = CGColorCreateGenericRGB(0.00130063295, 0.0325933062, 1.0, 1.0);
  *(a1 + 80) = CGColorCreateGenericRGB(0.294799924, 0.0149334101, 0.287591606, 1.0);
  *(a1 + 88) = 256;
  *(a1 + 96) = xmmword_1C1887610;
  *(a1 + 112) = 0;
  *(a1 + 116) = 1;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = xmmword_1C18C7170;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1050253722;
  *(a1 + 168) = 3;
  *(a1 + 172) = xmmword_1C18C7180;
  *(a1 + 188) = 1065353216;
  *(a1 + 196) = 0;
  *(a1 + 208) = xmmword_1C18C7190;
  *(a1 + 224) = 0;
  *(a1 + 240) = *&zmmword_1C1887630[16];
  *(a1 + 256) = 0;
  *(a1 + 260) = 0;
  *(a1 + 264) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 320) = 3;
  return result;
}

uint64_t ParticleEmitterComponent.mainEmitter.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 240), 0x141uLL);
  memcpy(a1, (v1 + 240), 0x141uLL);
  return outlined init with copy of ParticleEmitterComponent.ParticleEmitter(__dst, &v4);
}

void *ParticleEmitterComponent.mainEmitter.setter(const void *a1)
{
  memcpy(v4, (v1 + 240), 0x141uLL);
  outlined destroy of ParticleEmitterComponent.ParticleEmitter(v4);
  return memcpy((v1 + 240), a1, 0x141uLL);
}

void (*ParticleEmitterComponent.spawnedEmitter.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x150uLL);
  }

  *a1 = v3;
  *(v3 + 328) = v1;
  return ParticleEmitterComponent.spawnedEmitter.modify;
}

void ParticleEmitterComponent.spawnedEmitter.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = v2[41];
    memcpy(*a1, (v3 + 576), 0x141uLL);
    *(v3 + 897) = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v2) == 0;
  }

  free(v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 1701147238;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616F626C6C6962;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys()
{
  if (*v0)
  {
    result = 0x6F69746169726176;
  }

  else
  {
    result = 1936291937;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936291937 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.BillboardMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO14FreeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO14FreeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I18YAlignedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I18YAlignedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = *v1;
  v17 = v1[1];
  v41 = *(v1 + 4);
  v18 = *(v1 + 20);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18 == 1)
  {
    if (v17 | v16 || v41)
    {
      LOBYTE(v39) = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys();
      v20 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v32;
      v21 = v33;
    }

    else
    {
      LOBYTE(v39) = 0;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys();
      v20 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v29;
      v21 = v30;
    }

    (*(v22 + 8))(v20, v21);
  }

  else
  {
    LOBYTE(v39) = 2;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys();
    v23 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v16;
    v40 = v17;
    v42 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v25 = v36;
    v24 = v37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v24)
    {
      LOBYTE(v39) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v35 + 8))(v23, v25);
  }

  return (*(v38 + 8))(v15, v12);
}

void ParticleEmitterComponent.ParticleEmitter.BillboardMode.hash(into:)(uint64_t a1)
{
  v3 = v1[1].n128_u32[0];
  if (v1[1].n128_u8[4] == 1)
  {
    v5 = *v1 != 0 || v3 != 0;
    MEMORY[0x1C68F4C10](v5);
  }

  else
  {
    v7 = *v1;
    MEMORY[0x1C68F4C10](2);
    specialized SIMD.hash(into:)(a1, v7);
    if ((v3 & 0x7FFFFFFF) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }
}

Swift::Int ParticleEmitterComponent.ParticleEmitter.BillboardMode.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v4 == 1)
  {
    if (v1 | v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 == 0;
    }

    v6 = !v5;
    MEMORY[0x1C68F4C10](v6);
  }

  else
  {
    v7.n128_u64[0] = v2;
    v7.n128_u64[1] = v1;
    v10 = v7;
    MEMORY[0x1C68F4C10](2);
    specialized SIMD.hash(into:)(v11, v10);
    if ((v3 & 0x7FFFFFFF) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  return Hasher._finalize()();
}

uint64_t ParticleEmitterComponent.ParticleEmitter.BillboardMode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO14FreeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO14FreeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v47 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I18YAlignedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I18YAlignedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v54 = *(v49 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO0I10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13BillboardModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys();
  v21 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v10;
    v23 = v53;
    v24 = v54;
    v48 = 0;
    v56 = v15;
    v25 = v55;
    v26 = KeyedDecodingContainer.allKeys.getter();
    v27 = (2 * *(v26 + 16)) | 1;
    v61 = v26;
    v62 = v26 + 32;
    v63 = 0;
    v64 = v27;
    v28 = specialized Collection<>.popFirst()();
    if (v28 == 3 || v63 != v64 >> 1)
    {
      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v38 = &type metadata for ParticleEmitterComponent.ParticleEmitter.BillboardMode;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
    }

    else
    {
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v59) = 1;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys();
          v29 = v48;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v30 = v25;
          v31 = v56;
          if (!v29)
          {
            (*(v24 + 8))(v9, v49);
            (*(v31 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v32 = 0;
            v33 = 1;
            v34 = 0;
            v35 = 1;
LABEL_14:
            *v30 = v33;
            *(v30 + 8) = v32;
            *(v30 + 16) = v34;
            *(v30 + 20) = v35;
            return __swift_destroy_boxed_opaque_existential_1(v57);
          }
        }

        else
        {
          LOBYTE(v59) = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys();
          v42 = v48;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v30 = v25;
          v31 = v56;
          if (!v42)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            v58 = 0;
            lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            v43 = v50;
            v44 = v52;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v33 = v59;
            v45 = v60;
            v58 = 1;
            KeyedDecodingContainer.decode(_:forKey:)();
            v34 = v46;
            v54 = v45;
            (*(v51 + 8))(v44, v43);
            v32 = v54;
            (*(v31 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v35 = 0;
            goto LABEL_14;
          }
        }

        (*(v31 + 8))(v18, v14);
        goto LABEL_10;
      }

      LOBYTE(v59) = 0;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys();
      v41 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v41)
      {
        (*(v23 + 8))(v13, v22);
        (*(v56 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v33 = 0;
        v32 = 0;
        v35 = 1;
        v34 = 0;
        v30 = v25;
        goto LABEL_14;
      }
    }

    (*(v56 + 8))(v18, v14);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v4 == 1)
  {
    if (v1 | v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 == 0;
    }

    v6 = !v5;
    MEMORY[0x1C68F4C10](v6);
  }

  else
  {
    v7.n128_u64[0] = v2;
    v7.n128_u64[1] = v1;
    v10 = v7;
    MEMORY[0x1C68F4C10](2);
    specialized SIMD.hash(into:)(v11, v10);
    if ((v3 & 0x7FFFFFFF) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys()
{
  v1 = 0x61467261656E696CLL;
  v2 = *v0;
  v3 = 0x6564614665736165;
  if (v2 != 5)
  {
    v3 = 0x746E6174736E6F63;
  }

  v4 = 0x6461466B63697571;
  if (v2 != 3)
  {
    v4 = 0x6564614665736165;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v2 == 1)
  {
    v5 = 0x61467261656E696CLL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.OpacityCurve.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO18ConstantCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO18ConstantCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO21EaseFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO21EaseFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO20EaseFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO20EaseFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO24QuickFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO24QuickFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO26GradualFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO26GradualFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO22LinearFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO22LinearFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO23LinearFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO23LinearFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys();
  v65 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys();
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys();
      v43 = v65;
      v44 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

uint64_t ParticleEmitterComponent.ParticleEmitter.OpacityCurve.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO18ConstantCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO18ConstantCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO21EaseFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO21EaseFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO20EaseFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO20EaseFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO24QuickFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO24QuickFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO26GradualFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO26GradualFadeInOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO22LinearFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO22LinearFadeInCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO23LinearFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO23LinearFadeOutCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V12OpacityCurveO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys();
  v31 = v79;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = KeyedDecodingContainer.allKeys.getter();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = specialized Collection<>.popFirst()();
    v39 = v28;
    if (v38 != 7 && v82 == v83 >> 1)
    {
      v84 = v38;
      if (v38 > 2u)
      {
        if (v38 > 4u)
        {
          v42 = v74;
          v53 = v79;
          if (v38 == 5)
          {
            v85 = 5;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys();
            v54 = v72;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v70 + 8))(v35, v71);
          }

          (*(v53 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v78;
        }

        else
        {
          v40 = v78;
          v41 = v79;
          v42 = v74;
          if (v38 == 3)
          {
            v85 = 3;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v66 + 8))(v34, v67);
          }

          (*(v41 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v40;
        }

        goto LABEL_24;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          v85 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys();
          v56 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys();
        v49 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = *(v59 + 8);
        v51 = v32;
        v52 = &v86;
      }

      v55 = *(v52 - 32);
LABEL_19:
      v50(v51, v55);
      (*(v79 + 8))(v39, v24);
      swift_unknownObjectRelease();
      v47 = v78;
      v42 = v74;
LABEL_24:
      *v42 = v84;
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v45 = &type metadata for ParticleEmitterComponent.ParticleEmitter.OpacityCurve;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys()
{
  v1 = 0x6973616572636564;
  v2 = *v0;
  v3 = 0x646574726F736E75;
  if (v2 == 5)
  {
    v3 = 0x6973616572636564;
  }

  if (v2 == 3)
  {
    v4 = 0x6973616572636564;
  }

  else
  {
    v4 = 0x6973616572636E69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0x6973616572636E69;
  }

  if (!*v0)
  {
    v1 = 0x6973616572636E69;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.SortOrder.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO18UnsortedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO18UnsortedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23DecreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23DecreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23IncreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23IncreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22DecreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22DecreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22IncreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22IncreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25DecreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25DecreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25IncreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25IncreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys();
  v65 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys();
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys();
      v43 = v65;
      v44 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

uint64_t ParticleEmitterComponent.ParticleEmitter.SortOrder.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO18UnsortedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO18UnsortedCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23DecreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23DecreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23IncreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO23IncreasingAgeCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22DecreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22DecreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22IncreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO22IncreasingIDCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25DecreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25DecreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25IncreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO25IncreasingDepthCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9SortOrderO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys();
  v31 = v79;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = KeyedDecodingContainer.allKeys.getter();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = specialized Collection<>.popFirst()();
    v39 = v28;
    if (v38 != 7 && v82 == v83 >> 1)
    {
      v84 = v38;
      if (v38 > 2u)
      {
        if (v38 > 4u)
        {
          v42 = v74;
          v53 = v79;
          if (v38 == 5)
          {
            v85 = 5;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys();
            v54 = v72;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v70 + 8))(v35, v71);
          }

          (*(v53 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v78;
        }

        else
        {
          v40 = v78;
          v41 = v79;
          v42 = v74;
          if (v38 == 3)
          {
            v85 = 3;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v66 + 8))(v34, v67);
          }

          (*(v41 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v40;
        }

        goto LABEL_24;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          v85 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys();
          v56 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys();
        v49 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = *(v59 + 8);
        v51 = v32;
        v52 = &v86;
      }

      v55 = *(v52 - 32);
LABEL_19:
      v50(v51, v55);
      (*(v79 + 8))(v39, v24);
      swift_unknownObjectRelease();
      v47 = v78;
      v42 = v74;
LABEL_24:
      *v42 = v84;
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v45 = &type metadata for ParticleEmitterComponent.ParticleEmitter.SortOrder;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys()
{
  v1 = 0x65757161706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6576697469646461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6168706C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.BlendMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO18AdditiveCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO18AdditiveCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO16OpaqueCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO16OpaqueCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO15AlphaCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO15AlphaCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.BlendMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO18AdditiveCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO18AdditiveCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO16OpaqueCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO16OpaqueCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO15AlphaCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO15AlphaCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V9BlendModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for ParticleEmitterComponent.ParticleEmitter.BlendMode;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys()
{
  v1 = 0x676E69706F6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x657665526F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E4F79616C70;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO21AutoReverseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO21AutoReverseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO17LoopingCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO17LoopingCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO18PlayOnceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO18PlayOnceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO21AutoReverseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO21AutoReverseCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO17LoopingCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO17LoopingCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO18PlayOnceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO18PlayOnceCodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV19AnimationRepeatModeO10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

void __swiftcall ParticleEmitterComponent.ParticleEmitter.ImageSequence.init()(RealityFoundation::ParticleEmitterComponent::ParticleEmitter::ImageSequence *__return_ptr retstr)
{
  *&retstr->rowCount = vdupq_n_s64(3uLL);
  retstr->initialFrame = 0;
  retstr->initialFrameVariation = 0;
  *&retstr->frameRate = 1091567616;
  retstr->animationMode = RealityFoundation_ParticleEmitterComponent_ParticleEmitter_ImageSequence_AnimationRepeatMode_looping;
}

uint64_t static ParticleEmitterComponent.ParticleEmitter.ImageSequence.fromCore(_:isSpawn:)@<X0>(uint64_t a1@<X8>)
{
  result = REVFXEmitterComponentGetIsAnimated();
  if (result)
  {
    RowCount = REVFXEmitterComponentGetRowCount();
    ColumnCount = REVFXEmitterComponentGetColumnCount();
    InitialFrame = REVFXEmitterComponentGetInitialFrame();
    InitialFrameVariation = REVFXEmitterComponentGetInitialFrameVariation();
    REVFXEmitterComponentGetFrameRate();
    v8 = v7;
    REVFXEmitterComponentGetFrameRateVariation();
    v10 = v9;
    result = REVFXEmitterComponentGetAnimationRepeatMode();
    if (result >= 3)
    {
      v11 = 1;
    }

    else
    {
      v11 = result;
    }

    *a1 = RowCount;
    *(a1 + 8) = ColumnCount;
    *(a1 + 16) = InitialFrame;
    *(a1 + 24) = InitialFrameVariation;
    *(a1 + 32) = v8 | (v10 << 32);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = 3;
  }

  *(a1 + 40) = v11;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746E756F43776F72;
  v3 = 0x6F6974616D696E61;
  if (v1 == 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x746152656D617266;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x6F436E6D756C6F63;
  if (v1 != 1)
  {
    v5 = 0x466C616974696E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.ImageSequence.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v21[2] = v1[2];
  v21[3] = v9;
  v21[1] = v11;
  v13 = *(v1 + 8);
  v12 = *(v1 + 9);
  v14 = *(v1 + 40);
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v28 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v14;
    v22 = 6;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v19);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.ImageSequence.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 36);
  v6 = *(v0 + 40);
  MEMORY[0x1C68F4C10](*v0);
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C10](v3);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  Hasher._combine(_:)(LODWORD(v8));
  return MEMORY[0x1C68F4C10](v6);
}

Swift::Int ParticleEmitterComponent.ParticleEmitter.ImageSequence.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  Hasher.init(_seed:)();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ParticleEmitterComponent.ParticleEmitter.ImageSequence.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V13ImageSequenceV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v29 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = 2;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = 3;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v24 = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v22 = 6;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v18 = v23;
    *a2 = v11;
    *(a2 + 8) = v12;
    v19 = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = v19;
    *(a2 + 32) = v15;
    *(a2 + 36) = v17;
    *(a2 + 40) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  Hasher.init(_seed:)();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  Hasher.init(_seed:)();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.hash(into:)();
  return Hasher._finalize()();
}

__n128 ParticleEmitterComponent.ParticleEmitter.billboardMode.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u32[0];
  v3 = v1[7].n128_u8[4];
  result = v1[6];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = v3;
  return result;
}

__n128 ParticleEmitterComponent.ParticleEmitter.billboardMode.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u8[4];
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u32[0] = v2;
  v1[7].n128_u8[4] = v3;
  return result;
}

uint64_t ParticleEmitterComponent.ParticleEmitter.image.setter(uint64_t a1)
{
  v3 = *(v1 + 272);

  *(v1 + 272) = a1;
  return result;
}

__n128 ParticleEmitterComponent.ParticleEmitter.imageSequence.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  result = *(v1 + 280);
  v5 = *(v1 + 296);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

__n128 ParticleEmitterComponent.ParticleEmitter.imageSequence.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v5;
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
  return result;
}

void *static ParticleEmitterComponent.ParticleEmitter.fromCore(_:isSpawn:)@<X0>(void *a1@<X8>)
{
  ParticleEmitterComponent.ParticleEmitter.init()(__src);
  REVFXEmitterComponentGetBirthRate();
  LODWORD(__src[0]) = v2;
  REVFXEmitterComponentGetBirthRateVariation();
  DWORD1(__src[0]) = v3;
  REVFXEmitterComponentGetDampingFactor();
  DWORD2(__src[0]) = v4;
  REVFXEmitterComponentGetAcceleration();
  __src[1] = v5;
  REVFXEmitterComponentGetSpreadingAngle();
  LODWORD(__src[2]) = v6;
  REVFXEmitterComponentGetParticleSize();
  DWORD2(__src[2]) = v7;
  REVFXEmitterComponentGetParticleSizeVariation();
  HIDWORD(__src[2]) = v8;
  BillboardMode = REVFXEmitterComponentGetBillboardMode();
  if (BillboardMode == 1)
  {
    REVFXEmitterComponentGetBillboardAxis();
    v53 = v12;
    REVFXEmitterComponentGetBillboardAxisVariation();
    v11 = v53;
    v13 = 0;
  }

  else
  {
    v10 = 0;
    if (BillboardMode == 2)
    {
      v11 = xmmword_1C1887610;
    }

    else
    {
      v11 = 0uLL;
    }

    v13 = 1;
  }

  __src[6] = v11;
  LODWORD(__src[7]) = v10;
  BYTE4(__src[7]) = v13;
  REVFXEmitterComponentGetParticleMass();
  DWORD2(__src[7]) = v14;
  REVFXEmitterComponentGetParticleMassVariation();
  HIDWORD(__src[7]) = v15;
  REVFXEmitterComponentGetParticleLifeSpan();
  *&__src[8] = v16;
  REVFXEmitterComponentGetParticleLifeSpanVariation();
  *(&__src[8] + 1) = v17;
  REVFXEmitterComponentGetParticleAngle();
  LODWORD(__src[9]) = v18;
  REVFXEmitterComponentGetParticleAngleVariation();
  DWORD1(__src[9]) = v19;
  REVFXEmitterComponentGetParticleAngularVelocity();
  DWORD2(__src[9]) = v20;
  REVFXEmitterComponentGetParticleAngularVelocityVariation();
  HIDWORD(__src[9]) = v21;
  REVFXEmitterComponentGetParticleBounce();
  LODWORD(__src[10]) = v22;
  REVFXEmitterComponentGetParticleFriction();
  DWORD1(__src[10]) = v23;
  OpacityOverLife = REVFXEmitterComponentGetOpacityOverLife();
  if (OpacityOverLife >= 7)
  {
    v25 = 6;
  }

  else
  {
    v25 = OpacityOverLife;
  }

  BYTE8(__src[10]) = v25;
  REVFXEmitterComponentGetSizeMultiplierAtEndOfLifespan();
  HIDWORD(__src[10]) = v26;
  REVFXEmitterComponentGetSizeMultiplierAtEndOfLifespanPower();
  LODWORD(__src[11]) = v27;
  REVFXEmitterComponentGetStartColorRangeA();
  v29 = specialized SIMD4<>.cgColor.getter(v28);

  *&__src[3] = v29;
  REVFXEmitterComponentGetStartColorRangeB();
  v31 = specialized SIMD4<>.cgColor.getter(v30);

  *(&__src[3] + 1) = v31;
  LOBYTE(__src[4]) = REVFXEmitterComponentGetUseStartColorRange();
  REVFXEmitterComponentGetEndColorRangeA();
  v33 = specialized SIMD4<>.cgColor.getter(v32);

  *(&__src[4] + 1) = v33;
  REVFXEmitterComponentGetEndColorRangeB();
  v35 = specialized SIMD4<>.cgColor.getter(v34);

  *&__src[5] = v35;
  BYTE8(__src[5]) = REVFXEmitterComponentGetUseEndColorRange();
  BYTE9(__src[5]) = REVFXEmitterComponentGetUseEndColor();
  REVFXEmitterComponentGetColorEvolutionPower();
  DWORD1(__src[11]) = v36;
  BYTE4(__src[2]) = REVFXEmitterComponentGetCollisions();
  REVFXEmitterComponentGetNoiseStrength();
  DWORD2(__src[11]) = v37;
  REVFXEmitterComponentGetNoiseScale();
  HIDWORD(__src[11]) = v38;
  REVFXEmitterComponentGetNoiseAnimationSpeed();
  LODWORD(__src[12]) = v39;
  REVFXEmitterComponentGetRadialGravityStrength();
  DWORD1(__src[12]) = v40;
  REVFXEmitterComponentGetRadialGravityCenter();
  __src[13] = v41;
  REVFXEmitterComponentGetVortexStrength();
  LODWORD(__src[14]) = v42;
  REVFXEmitterComponentGetVortexDirection();
  __src[15] = v43;
  LOBYTE(__src[16]) = REVFXEmitterComponentGetIsLightingEnabled();
  REVFXEmitterComponentGetStretchFactor();
  DWORD1(__src[16]) = v44;
  SortOrder = REVFXEmitterComponentGetSortOrder();
  if (SortOrder >= 7)
  {
    v46 = 0;
  }

  else
  {
    v46 = SortOrder;
  }

  BYTE8(__src[16]) = v46;
  BlendMode = REVFXEmitterComponentGetBlendMode();
  v48 = BlendMode == 1;
  if (BlendMode == 2)
  {
    v48 = 2;
  }

  BYTE9(__src[16]) = v48;
  ParticleImage = REVFXEmitterComponentGetParticleImage();
  if (ParticleImage)
  {
    v50 = ParticleImage;
    type metadata accessor for TextureResource();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    *&__src[17] = v51;
  }

  static ParticleEmitterComponent.ParticleEmitter.ImageSequence.fromCore(_:isSpawn:)(v54);
  *(&__src[17] + 8) = v54[0];
  *(&__src[18] + 8) = v54[1];
  *(&__src[19] + 1) = v55;
  LOBYTE(__src[20]) = v56;
  return memcpy(a1, __src, 0x141uLL);
}

Swift::Void __swiftcall ParticleEmitterComponent.ParticleEmitter.toCore(_:isSpawn:)(Swift::OpaquePointer _, Swift::Bool isSpawn)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v31 = *(v2 + 1);
  v8 = v2[8];
  v46 = *(v2 + 36);
  v10 = v2[10];
  v9 = v2[11];
  v54 = *(v2 + 6);
  v55 = *(v2 + 7);
  v56 = *(v2 + 64);
  v57 = *(v2 + 9);
  v58 = *(v2 + 10);
  v59 = *(v2 + 88);
  v60 = *(v2 + 89);
  v12 = *(v2 + 12);
  v11 = *(v2 + 13);
  v13 = v2[28];
  v14 = *(v2 + 116);
  v16 = v2[30];
  v15 = v2[31];
  v17 = *(v2 + 16);
  v32 = *(v2 + 17);
  v33 = v2[36];
  v34 = v2[37];
  v35 = v2[38];
  v36 = v2[39];
  v37 = v2[40];
  v38 = v2[41];
  v18 = *(v2 + 168);
  v39 = v2[43];
  v40 = v2[44];
  v41 = v2[45];
  v42 = v2[46];
  v43 = v2[47];
  v44 = v2[48];
  v45 = v2[49];
  v47 = *(v2 + 13);
  v48 = v2[56];
  v49 = *(v2 + 15);
  v50 = *(v2 + 256);
  v51 = v2[65];
  v52 = *(v2 + 264);
  v53 = *(v2 + 265);
  v19 = *(v2 + 34);
  v27 = *(v2 + 35);
  v28 = *(v2 + 36);
  v29 = *(v2 + 37);
  v30 = *(v2 + 38);
  v26 = *(v2 + 39);
  v20 = *(v2 + 320);
  REVFXEmitterComponentSetBirthRate();
  REVFXEmitterComponentSetBirthRateVariation();
  REVFXEmitterComponentSetDampingFactor();
  REVFXEmitterComponentSetAcceleration();
  REVFXEmitterComponentSetSpreadingAngle();
  REVFXEmitterComponentSetParticleSize();
  REVFXEmitterComponentSetParticleSizeVariation();
  REVFXEmitterComponentSetBillboardMode();
  if (v14 != 1)
  {
    REVFXEmitterComponentSetBillboardAxis();
    REVFXEmitterComponentSetBillboardAxisVariation();
  }

  REVFXEmitterComponentSetParticleMass();
  REVFXEmitterComponentSetParticleMassVariation();
  REVFXEmitterComponentSetParticleLifeSpan();
  REVFXEmitterComponentSetParticleLifeSpanVariation();
  REVFXEmitterComponentSetParticleAngle();
  REVFXEmitterComponentSetParticleAngleVariation();
  REVFXEmitterComponentSetParticleAngularVelocity();
  REVFXEmitterComponentSetParticleAngularVelocityVariation();
  REVFXEmitterComponentSetParticleBounce();
  REVFXEmitterComponentSetParticleFriction();
  REVFXEmitterComponentSetOpacityOverLife();
  REVFXEmitterComponentSetSizeMultiplierAtEndOfLifespan();
  REVFXEmitterComponentSetSizeMultiplierAtEndOfLifespanPower();
  REVFXEmitterComponentSetColorEvolutionPower();
  REVFXEmitterComponentSetCollision();
  REVFXEmitterComponentSetNoiseStrength();
  REVFXEmitterComponentSetNoiseScale();
  REVFXEmitterComponentSetNoiseAnimationSpeed();
  REVFXEmitterComponentSetRadialGravityStrength();
  REVFXEmitterComponentSetRadialGravityCenter();
  REVFXEmitterComponentSetVortexStrength();
  REVFXEmitterComponentSetVortexDirection();
  REVFXEmitterComponentSetIsLightingEnabled();
  REVFXEmitterComponentSetStretchFactor();
  REVFXEmitterComponentSetIsAnimated();
  REVFXEmitterComponentSetSortOrder();
  REVFXEmitterComponentSetBlendMode();
  if (v19)
  {
    v21 = *(v19 + 16);
  }

  REVFXEmitterComponentSetParticleImage();
  if (v20 != 3)
  {
    REVFXEmitterComponentSetRowCount();
    REVFXEmitterComponentSetColumnCount();
    REVFXEmitterComponentSetInitialFrame();
    REVFXEmitterComponentSetInitialFrameVariation();
    REVFXEmitterComponentSetFrameRate();
    REVFXEmitterComponentSetFrameRateVariation();
    REVFXEmitterComponentSetAnimationRepeatMode();
  }

  v22 = v54;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v22);

  REVFXEmitterComponentSetStartColorRangeA();
  v23 = v55;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v23);

  REVFXEmitterComponentSetStartColorRangeB();
  REVFXEmitterComponentSetUseStartColorRange();
  v24 = v57;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v24);

  REVFXEmitterComponentSetEndColorRangeA();
  v25 = v58;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v25);

  REVFXEmitterComponentSetEndColorRangeB();
  REVFXEmitterComponentSetUseEndColorRange();

  MEMORY[0x1EEDFFC90](_._rawValue, isSpawn, v60);
}

unint64_t ParticleEmitterComponent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x61727544656C6469;
  switch(a1)
  {
    case 1:
    case 22:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
    case 25:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x754470756D726177;
      break;
    case 5:
      result = 0x6F4C646C756F6873;
      break;
    case 6:
      result = 0x5372657474696D65;
      break;
    case 7:
      result = 0x636F4C6874726962;
      break;
    case 8:
      result = 0x7269446874726962;
      break;
    case 10:
      result = 0x6465657073;
      break;
    case 11:
      result = 0x7261566465657073;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D416C6169646172;
      break;
    case 15:
      result = 0x63634F6E77617073;
      break;
    case 16:
    case 29:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
    case 21:
    case 30:
      result = 0x6974616C756D6973;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0x4374726174736572;
      break;
    case 26:
      result = 0x697474696D457369;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0x756F437473727562;
      break;
    case 31:
      result = 0xD000000000000012;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0x74696D456E69616DLL;
      break;
    case 34:
      result = 0x4564656E77617073;
      break;
    case 35:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v32 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v57 = v1[2];
  v58 = v8;
  v52 = v1[4];
  v53 = v10;
  v11 = *(v1 + 40);
  v55 = *(v1 + 41);
  v56 = v11;
  v12 = *(v1 + 3);
  v50 = *(v1 + 4);
  v51 = v12;
  v54 = *(v1 + 80);
  v49 = *(v1 + 81);
  v48 = *(v1 + 6);
  v13 = *(v1 + 29);
  v47 = *(v1 + 28);
  v46 = *(v1 + 8);
  v15 = *(v1 + 36);
  v14 = *(v1 + 37);
  v45 = *(v1 + 152);
  v16 = *(v1 + 39);
  v17 = *(v1 + 40);
  v18 = *(v1 + 41);
  LODWORD(v6) = *(v1 + 169);
  v32[3] = *(v1 + 168);
  v33 = v6;
  LODWORD(v6) = *(v1 + 171);
  v34 = *(v1 + 170);
  v35 = v6;
  v36 = *(v1 + 172);
  v37 = v1[22];
  LODWORD(v6) = *(v1 + 185);
  v38 = *(v1 + 184);
  v39 = v6;
  v19 = v1[25];
  v40 = v1[24];
  v41 = v19;
  v20 = *(v1 + 54);
  v22 = v1[28];
  v21 = v1[29];
  v42 = v1[26];
  v43 = v22;
  v44 = v21;
  memcpy(v64, v1 + 30, 0x141uLL);
  memcpy(v65, v1 + 72, 0x141uLL);
  v23 = *(v1 + 897);
  v25 = a1[3];
  v24 = a1[4];
  v26 = a1;
  v27 = v7;
  __swift_project_boxed_opaque_existential_1(v26, v25);
  lazy protocol witness table accessor for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v63[0]) = 0;
  v28 = v66;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v28)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v29 = v55;
  v30 = v54;
  LODWORD(v66) = v23;
  LOBYTE(v63[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = v29;
  v62[0] = 6;
  lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v63[0] = v51;
  v63[1] = v50;
  LOBYTE(v63[2]) = v30;
  v62[0] = 7;
  lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = v49;
  v62[0] = 8;
  lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v63[0] = v48;
  v62[0] = 9;
  v58 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v57 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  v63[0] = v46;
  v62[0] = 12;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = v45;
  v62[0] = 15;
  lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 17;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 18;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 19;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = v33;
  v62[0] = 20;
  lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = v34;
  v62[0] = 21;
  lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = 22;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = v36;
  v62[0] = 23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v63[0]) = 24;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 25;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 26;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 27;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 28;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 29;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v63[0]) = 30;
  KeyedEncodingContainer.encode(_:forKey:)();
  *&v63[0] = v43;
  v62[0] = 31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17CollisionPlane_v1VGMd, &_sSay17RealityFoundation17CollisionPlane_v1VGMR);
  lazy protocol witness table accessor for type [CollisionPlane_v1] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *&v63[0] = v44;
  v62[0] = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation17CollisionPlane_v1VGMd, &_sShy17RealityFoundation17CollisionPlane_v1VGMR);
  lazy protocol witness table accessor for type Set<CollisionPlane_v1> and conformance <> Set<A>();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v63, v64, 0x141uLL);
  v62[335] = 33;
  outlined init with copy of ParticleEmitterComponent.ParticleEmitter(v64, v62);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v62, v63, 0x141uLL);
  outlined destroy of ParticleEmitterComponent.ParticleEmitter(v62);
  memcpy(v61, v65, sizeof(v61));
  v60[335] = 34;
  outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(v65, v60);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v60, v61, 0x141uLL);
  outlined destroy of ParticleEmitterComponent.ParticleEmitter?(v60);
  v59 = 35;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v57, v58);
}

uint64_t ParticleEmitterComponent.init(from:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v27 - v8;
  *&v39[0] = 0x3FF0000000000000;
  *(v39 + 8) = 0u;
  *(&v39[1] + 8) = 0u;
  WORD4(v39[2]) = 257;
  memset(&v39[3], 0, 32);
  LOWORD(v39[5]) = 513;
  v39[6] = xmmword_1C18C7150;
  *&v39[7] = 1056964608;
  v39[8] = *&zmmword_1C1887630[16];
  *&v39[9] = 0x3E80000040C90FDALL;
  BYTE8(v39[9]) = 2;
  HIDWORD(v39[9]) = 1065353216;
  *&v39[10] = 0;
  DWORD2(v39[10]) = 0x10000;
  BYTE12(v39[10]) = 1;
  *&v39[11] = 0;
  WORD4(v39[11]) = 256;
  v39[12] = xmmword_1C18C7160;
  *&v39[13] = 0;
  DWORD2(v39[13]) = 1065353216;
  *&v39[14] = MEMORY[0x1E69E7CC0];
  *(&v39[14] + 1) = MEMORY[0x1E69E7CD0];
  ParticleEmitterComponent.ParticleEmitter.init()(&v39[15]);
  _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOi0_(v40);
  memcpy(&v39[36], v40, 0x141uLL);
  BYTE1(v39[56]) = 0;
  v10 = v3[3];
  v11 = v3[4];
  v41 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v10);
  lazy protocol witness table accessor for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys();
  v29 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v28 = v5;
    LOBYTE(v38[0]) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v39[0] = v12;
    LOBYTE(v38[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(&v39[0] + 1) = v13;
    LOBYTE(v38[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v39[1] = v14;
    LOBYTE(v38[0]) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(&v39[1] + 1) = v15;
    LOBYTE(v38[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v39[2] = v17;
    LOBYTE(v38[0]) = 5;
    BYTE8(v39[2]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v31[0] = 6;
    lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    BYTE9(v39[2]) = v38[0];
    v31[0] = 7;
    lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39[3] = v38[0];
    v39[4] = v38[1];
    LOBYTE(v39[5]) = v38[2];
    v31[0] = 8;
    lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    BYTE1(v39[5]) = v38[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v31[0] = 9;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39[6] = v38[0];
    LOBYTE(v38[0]) = 10;
    KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v39[7]) = v18;
    LOBYTE(v38[0]) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    DWORD1(v39[7]) = v19;
    v31[0] = 12;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39[8] = v38[0];
    LOBYTE(v38[0]) = 13;
    KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v39[9]) = v20;
    LOBYTE(v38[0]) = 14;
    KeyedDecodingContainer.decode(_:forKey:)();
    DWORD1(v39[9]) = v21;
    v31[0] = 15;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    BYTE8(v39[9]) = v38[0];
    LOBYTE(v38[0]) = 16;
    KeyedDecodingContainer.decode(_:forKey:)();
    HIDWORD(v39[9]) = v22;
    LOBYTE(v38[0]) = 17;
    KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v39[10]) = v23;
    LOBYTE(v38[0]) = 18;
    KeyedDecodingContainer.decode(_:forKey:)();
    DWORD1(v39[10]) = v24;
    LOBYTE(v38[0]) = 19;
    BYTE8(v39[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v31[0] = 20;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    BYTE9(v39[10]) = v38[0];
    v31[0] = 21;
    lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    BYTE10(v39[10]) = v38[0];
    LOBYTE(v38[0]) = 22;
    BYTE11(v39[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v31[0] = 23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    BYTE12(v39[10]) = v38[0];
    LOBYTE(v38[0]) = 24;
    *&v39[11] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38[0]) = 25;
    BYTE8(v39[11]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v38[0]) = 26;
    BYTE9(v39[11]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v38[0]) = 27;
    *&v39[12] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38[0]) = 28;
    *(&v39[12] + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38[0]) = 29;
    *&v39[13] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38[0]) = 30;
    KeyedDecodingContainer.decode(_:forKey:)();
    DWORD2(v39[13]) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17CollisionPlane_v1VGMd, &_sSay17RealityFoundation17CollisionPlane_v1VGMR);
    v31[0] = 31;
    lazy protocol witness table accessor for type [CollisionPlane_v1] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v39[14] = *&v38[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation17CollisionPlane_v1VGMd, &_sShy17RealityFoundation17CollisionPlane_v1VGMR);
    v31[0] = 32;
    lazy protocol witness table accessor for type Set<CollisionPlane_v1> and conformance <> Set<A>();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(&v39[14] + 1) = *&v38[0];
    v36[335] = 33;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v35, v37, sizeof(v35));
    memcpy(v36, &v39[15], 0x141uLL);
    outlined destroy of ParticleEmitterComponent.ParticleEmitter(v36);
    memcpy(&v39[15], v35, 0x141uLL);
    v33[335] = 34;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v32, v34, sizeof(v32));
    memcpy(v33, &v39[36], 0x141uLL);
    outlined destroy of ParticleEmitterComponent.ParticleEmitter?(v33);
    memcpy(&v39[36], v32, 0x141uLL);
    v31[911] = 35;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v29, v30);
    BYTE1(v39[56]) = v26 & 1;
    memcpy(v31, v39, 0x382uLL);
    memcpy(v28, v39, 0x382uLL);
    outlined init with copy of ParticleEmitterComponent(v31, v38);
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  memcpy(v38, v39, 0x382uLL);
  return outlined destroy of ParticleEmitterComponent(v38);
}

char *static ParticleEmitterComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v63;
  ParticleEmitterComponent.init()(v63);
  REVFXEmitterComponentGetEmissionDuration();
  *&v63[0] = v5;
  REVFXEmitterComponentGetEmissionDurationVariation();
  *(&v63[0] + 1) = v6;
  REVFXEmitterComponentGetIdleDuration();
  *&v63[1] = v7;
  REVFXEmitterComponentGetIdleDurationVariation();
  *(&v63[1] + 1) = v8;
  REVFXEmitterComponentGetWarmupDuration();
  *&v63[2] = v9;
  BYTE8(v63[2]) = REVFXEmitterComponentGetLoops();
  EmitterShape = REVFXEmitterComponentGetEmitterShape();
  v11 = 0x4060105020300uLL >> (8 * EmitterShape);
  if (EmitterShape >= 7)
  {
    LOBYTE(v11) = 0;
  }

  BYTE9(v63[2]) = v11;
  REVFXEmitterComponentGetRadialAmount();
  LODWORD(v63[9]) = v12;
  REVFXEmitterComponentGetTorusInnerRadius();
  DWORD1(v63[9]) = v13;
  ParticleEmitterComponent.BirthLocation.init(_:)(__dst);
  v63[3] = __dst[0];
  v63[4] = __dst[1];
  LOBYTE(v63[5]) = __dst[2];
  BirthDirection = REVFXEmitterComponentGetBirthDirection();
  if (BirthDirection >= 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = BirthDirection;
  }

  BYTE1(v63[5]) = v15;
  REVFXEmitterComponentGetEmitterShapeSize();
  v63[6] = v16;
  REVFXEmitterComponentGetParticleSpeed();
  LODWORD(v63[7]) = v17;
  REVFXEmitterComponentGetParticleSpeedVariation();
  DWORD1(v63[7]) = v18;
  REVFXEmitterComponentGetEmissionDirection();
  v63[8] = v19;
  IsLocalSimulationSpace = REVFXEmitterComponentGetIsLocalSimulationSpace();
  BYTE10(v63[10]) = IsLocalSimulationSpace ^ 1;
  BYTE11(v63[10]) = IsLocalSimulationSpace;
  BYTE12(v63[10]) = REVFXEmitterComponentGetIsLocalFields() ^ 1;
  *&v63[11] = REVFXEmitterComponentGetRestartCount();
  BYTE8(v63[11]) = 0;
  BYTE9(v63[11]) = REVFXEmitterComponentGetIsEmitting();
  *(&v63[12] + 1) = REVFXEmitterComponentGetBurstCount();
  *&v63[13] = REVFXEmitterComponentGetBurstCountVariation();
  *&v63[12] = REVFXEmitterComponentGetBurstRestartCount();
  REVFXEmitterComponentGetSimulationRate();
  v22 = fminf(v21, 2.0);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  *(&v63[13] + 2) = v22;
  REVFXEmitterComponentGetSpawnVelocityFactor();
  HIDWORD(v63[9]) = v23;
  REVFXEmitterComponentGetSpawnSpreadFactor();
  LODWORD(v63[10]) = v24;
  REVFXEmitterComponentGetSpawnSpreadFactorVariation();
  DWORD1(v63[10]) = v25;
  BYTE8(v63[10]) = REVFXEmitterComponentGetSpawnInheritParentColor();
  SpawnOccasion = REVFXEmitterComponentGetSpawnOccasion();
  v27 = 0x3010200u >> (8 * SpawnOccasion);
  if (SpawnOccasion >= 4)
  {
    LOBYTE(v27) = 0;
  }

  BYTE8(v63[9]) = v27;
  SimulationState = REVFXEmitterComponentGetSimulationState();
  v29 = SimulationState == 1;
  if (SimulationState == 2)
  {
    v29 = 2;
  }

  BYTE9(v63[10]) = v29;
  LODWORD(v30) = REVFXEmitterComponentGetIsSpawningEnabled();
  BYTE1(v63[56]) = v30;
  v31 = REVFXEmitterComponentGetCollisionPlanes();
  if (!v31)
  {
LABEL_36:
    static ParticleEmitterComponent.ParticleEmitter.fromCore(_:isSpawn:)(__src);
    memcpy(__dst, v4 + 15, 0x141uLL);
    outlined destroy of ParticleEmitterComponent.ParticleEmitter(__dst);
    memcpy(v4 + 15, __src, 0x141uLL);
    if (v30)
    {
      static ParticleEmitterComponent.ParticleEmitter.fromCore(_:isSpawn:)(v58);
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v58, v51);
      memcpy(v59, &v63[36], 0x141uLL);
      outlined destroy of ParticleEmitterComponent.ParticleEmitter?(v59);
      memcpy(&v63[36], v58, 0x141uLL);
      memcpy(v60, v58, 0x141uLL);
      BYTE1(v63[56]) = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v60) == 0;
    }

    return memcpy(a2, v63, 0x382uLL);
  }

  v32 = v31;
  type metadata accessor for NSValue();
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
    goto LABEL_28;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
LABEL_29:

    v37 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v44 = *&v63[14];
    *&v63[14] = v37;
    if (*(v37 + 16) < *(v44 + 16))
    {

      v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v45);

      v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(v47);

      if (*(v48 + 16) <= *(v46 + 16) >> 3)
      {
        *&__dst[0] = v46;
        specialized Set._subtract<A>(_:)(v48);

        v50 = *&__dst[0];
      }

      else
      {
        v49 = specialized _NativeSet.subtracting<A>(_:)(v48, v46);

        v50 = v49;
      }

      specialized Set.formUnion<A>(_:)(v50);
    }

    goto LABEL_36;
  }

  while (1)
  {
    __src[0] = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      break;
    }

    v52 = v30;
    v36 = 0;
    v37 = __src[0];
    v53 = a2;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1C68F41F0](v36, v33);
      }

      else
      {
        if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v39 = *(v33 + 8 * v36 + 32);
      }

      v40 = v39;
      memset(__dst, 0, 80);
      [v39 getValue:__dst size:80];
      v41 = *(&__dst[0] + 1);
      v4 = *&__dst[0];
      v56 = __dst[2];
      v57 = __dst[1];
      v54 = __dst[4];
      v55 = __dst[3];

      __src[0] = v37;
      a2 = *(v37 + 16);
      v42 = *(v37 + 24);
      v30 = (a2 + 1);
      if (a2 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), a2 + 1, 1);
        v37 = __src[0];
      }

      *(v37 + 16) = v30;
      v43 = v37 + 80 * a2;
      *(v43 + 32) = v4;
      *(v43 + 40) = v41;
      *(v43 + 48) = v57;
      *(v43 + 64) = v56;
      *(v43 + 80) = v55;
      *(v43 + 96) = v54;
      ++v36;
      if (v38 == v34)
      {

        a2 = v53;
        v4 = v63;
        LODWORD(v30) = v52;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v34 = __CocoaSet.count.getter();
    if (!v34)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t ParticleEmitterComponent.__toCore(_:)(void **a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v2._rawValue = *a1;
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = *(v1 + 41);
  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v88 = v1[9];
  v13 = *(v1 + 80);
  v89 = *(v1 + 81);
  v90 = *(v1 + 6);
  v14 = *(v1 + 28);
  v92 = *(v1 + 29);
  v94 = *(v1 + 8);
  v16 = *(v1 + 36);
  v15 = *(v1 + 37);
  v17 = *(v1 + 152);
  v18 = *(v1 + 40);
  v102 = *(v1 + 39);
  v105.n128_u32[0] = v18;
  v106.n128_u32[0] = *(v1 + 41);
  v107.n128_u32[0] = *(v1 + 168);
  v91 = *(v1 + 169);
  v93 = *(v1 + 171);
  v95 = *(v1 + 172);
  v96 = v1[22];
  v108.n128_u32[0] = *(v1 + 184);
  v97 = *(v1 + 185);
  v19 = v1[25];
  v101 = v1[24];
  v20 = v1[26];
  v98 = v19;
  v99 = v20;
  v100 = *(v1 + 54);
  v21 = v1[28];
  v103 = v1[29];
  v104 = v21;
  memcpy(v114, v1 + 30, 0x141uLL);
  memcpy(v115, v1 + 72, 0x141uLL);
  REVFXEmitterComponentSetEmissionDuration();
  REVFXEmitterComponentSetEmissionDurationVariation();
  REVFXEmitterComponentSetIdleDuration();
  REVFXEmitterComponentSetIdleDurationVariation();
  REVFXEmitterComponentSetWarmupDuration();
  REVFXEmitterComponentSetLoops();
  v22 = dword_1C18CB6C4[v9];
  REVFXEmitterComponentSetEmitterShape();
  REVFXEmitterComponentSetRadialAmount();
  REVFXEmitterComponentSetTorusInnerRadius();
  REVFXEmitterComponentSetBirthLocation();
  if (v13 != 1)
  {
    REVFXEmitterComponentSetBirthLocationVertex();
  }

  REVFXEmitterComponentSetBirthDirection();
  REVFXEmitterComponentSetEmitterShapeSize();
  REVFXEmitterComponentSetParticleSpeed();
  REVFXEmitterComponentSetParticleSpeedVariation();
  REVFXEmitterComponentSetEmissionDirection();
  REVFXEmitterComponentSetSimulationState();
  REVFXEmitterComponentSetIsLocalSimulationSpace();
  REVFXEmitterComponentSetIsLocalFields();
  REVFXEmitterComponentSetRestartCount();
  REVFXEmitterComponentSetIsEmitting();
  REVFXEmitterComponentSetBurstCount();
  REVFXEmitterComponentSetBurstCountVariation();
  REVFXEmitterComponentSetBurstRestartCount();
  REVFXEmitterComponentSetSimulationRate();
  _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v115);
  REVFXEmitterComponentSetIsSpawningEnabled();
  REVFXEmitterComponentSetSpawnVelocityFactor();
  REVFXEmitterComponentSetSpawnSpreadFactor();
  REVFXEmitterComponentSetSpawnSpreadFactorVariation();
  REVFXEmitterComponentSetSpawnInheritParentColor();
  v23 = dword_1C18C71A0[v17];
  REVFXEmitterComponentSetSpawnOccasion();
  if (v108.n128_u32[0])
  {
    REVFXEmitterComponentResetSimulation();
  }

  v24 = v104[1].n128_i64[0];
  if (v24)
  {
    v25 = v104 + 3;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v104[1].n128_i64[0];
    do
    {
      v33 = v25[-1].n128_u64[0];
      if (v33)
      {
        v34 = v25[-1].n128_u64[1];
        v35 = *v25;
        v107 = v25[1];
        v108 = v35;
        v36 = v25[2];
        v105 = v25[3];
        v106 = v36;
        v113[0] = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[1].n128_u64[0] + 1, 1);
          v26 = v113[0];
        }

        v29 = v26[1].n128_u64[0];
        v28 = v26[1].n128_u64[1];
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v26 = v113[0];
        }

        v26[1].n128_u64[0] = v29 + 1;
        v30 = &v26[5 * v29];
        v30[2].n128_u64[0] = v33;
        v30[2].n128_u64[1] = v34;
        v31 = v107;
        v30[3] = v108;
        v30[4] = v31;
        v32 = v105;
        v30[5] = v106;
        v30[6] = v32;
      }

      v25 += 5;
      --v27;
    }

    while (v27);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v37 = v26[1].n128_i64[0];
  if (v37)
  {
    v38 = v26 + 3;
    do
    {
      v39 = v38[-1].n128_u64[0];
      v40 = v38[-1].n128_f64[1];
      v41 = v38[2];
      v42 = v38[3];
      v43 = *v38;
      v44 = v38[1];
      v38 += 5;
      MEMORY[0x1C6901120](v2._rawValue, v39, v40, v43, v44, v41, v42);
      --v37;
    }

    while (v37);
  }

  if (v24)
  {
    v45 = v104 + 3;
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      if (!v45[-1].n128_u64[0])
      {
        v52 = v45[-1].n128_u64[1];
        v53 = *v45;
        v107 = v45[1];
        v108 = v53;
        v54 = v45[2];
        v105 = v45[3];
        v106 = v54;
        v113[0] = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[1].n128_u64[0] + 1, 1);
          v46 = v113[0];
        }

        v48 = v46[1].n128_u64[0];
        v47 = v46[1].n128_u64[1];
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v46 = v113[0];
        }

        v46[1].n128_u64[0] = v48 + 1;
        v49 = &v46[5 * v48];
        v49[2].n128_u64[0] = 0;
        v49[2].n128_u64[1] = v52;
        v50 = v107;
        v49[3] = v108;
        v49[4] = v50;
        v51 = v105;
        v49[5] = v106;
        v49[6] = v51;
      }

      v45 += 5;
      --v24;
    }

    while (v24);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v55 = v46[1].n128_i64[0];
  if (v55)
  {
    v56 = v46 + 3;
    do
    {
      v57 = v56[-1].n128_f64[1];
      v58 = v56[2];
      v59 = v56[3];
      v60 = *v56;
      v61 = v56[1];
      v56 += 5;
      MEMORY[0x1C6900660](v2._rawValue, v57, v60, v61, v58, v59);
      --v55;
    }

    while (v55);
  }

  v62 = v103;
  v63 = *(v103 + 32);
  v64 = v63 & 0x3F;
  v65 = ((1 << v63) + 63) >> 6;
  v66 = 8 * v65;

  if (v64 > 0xD)
  {
    goto LABEL_62;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v67);
    bzero(&v88 - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0), v66);
    v68 = 0;
    v69 = 0;
    v70 = 1 << *(v62 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v62 + 56);
    while (v72)
    {
      v73 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v74 = v73 | (v69 << 6);
LABEL_42:
      if (*(*(v62 + 48) + 80 * v74))
      {
        *(&v88 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v74;
        if (__OFADD__(v68++, 1))
        {
          __break(1u);
LABEL_46:
          v65 = specialized _NativeSet.extractSubset(using:count:)((&v88 - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0)), v65, v68, v62);
          goto LABEL_47;
        }
      }
    }

    v75 = v69;
    while (1)
    {
      v69 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v69 >= ((v70 + 63) >> 6))
      {
        goto LABEL_46;
      }

      v76 = *(v62 + 56 + 8 * v69);
      ++v75;
      if (v76)
      {
        v72 = (v76 - 1) & v76;
        v74 = __clz(__rbit64(v76)) | (v69 << 6);
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v87 = swift_slowAlloc();

  v65 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy17RealityFoundation17CollisionPlane_v1VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_17i12Foundation17kl1_M5V_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n(v87, v65, v62, closure #5 in ParticleEmitterComponent.__toCore(_:));
  swift_bridgeObjectRelease_n();
  MEMORY[0x1C6902A30](v87, -1, -1);
LABEL_47:
  v62 = v65 + 56;
  v78 = 1 << *(v65 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & *(v65 + 56);
  v66 = (v78 + 63) >> 6;

  v81 = 0;
  if (v80)
  {
    while (1)
    {
      v82 = v81;
LABEL_55:
      v83 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v84 = *(*(v65 + 48) + 80 * (v83 | (v82 << 6)));
      REVFXEmitterComponentRemoveCollisionPlane();
      if (!v80)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
LABEL_51:
    v82 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      goto LABEL_61;
    }

    if (v82 >= v66)
    {
      break;
    }

    v80 = *(v62 + 8 * v82);
    ++v81;
    if (v80)
    {
      v81 = v82;
      goto LABEL_55;
    }
  }

  memcpy(v113, v114, 0x141uLL);
  outlined init with copy of ParticleEmitterComponent.ParticleEmitter(v114, v112);
  ParticleEmitterComponent.ParticleEmitter.toCore(_:isSpawn:)(v2, 0);
  memcpy(v112, v113, 0x141uLL);
  outlined destroy of ParticleEmitterComponent.ParticleEmitter(v112);
  memcpy(v113, v115, 0x141uLL);
  if (_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v113) != 1)
  {
    memcpy(v109, v113, sizeof(v109));
    memcpy(v110, v115, 0x141uLL);
    outlined init with copy of ParticleEmitterComponent.ParticleEmitter(v110, v111);
    ParticleEmitterComponent.ParticleEmitter.toCore(_:isSpawn:)(v2, 1);
    memcpy(v111, v109, 0x141uLL);
    outlined destroy of ParticleEmitterComponent.ParticleEmitter(v111);
  }

  MEMORY[0x1C6900BC0](v2._rawValue);
  result = RENetworkMarkComponentDirty();
  v86 = *MEMORY[0x1E69E9840];
  return result;
}

RealityFoundation::CollisionPlaneExtent_v1 __swiftcall CollisionPlaneExtent_v1.init(width:height:)(Swift::Float width, Swift::Float height)
{
  *v2 = width;
  v2[1] = height;
  result.height = height;
  result.width = width;
  return result;
}

uint64_t ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(char a1)
{
  result = 0x7461526874726962;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x46676E69706D6164;
      break;
    case 3:
      result = 0x6172656C65636361;
      break;
    case 4:
      result = 0x6E69646165727073;
      break;
    case 5:
      result = 1702521203;
      break;
    case 6:
      v3 = 1702521203;
      goto LABEL_29;
    case 7:
      result = 0x6C6F437472617473;
      break;
    case 8:
      result = 0x6C6F437472617473;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x726F6C6F43646E65;
      break;
    case 11:
      result = 0x726F6C6F43646E65;
      break;
    case 12:
    case 33:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6F43646E45657375;
      break;
    case 14:
      result = 0x72616F626C6C6962;
      break;
    case 15:
      result = 1936941421;
      break;
    case 16:
      v3 = 1936941421;
LABEL_29:
      result = v3 | 0x6972615600000000;
      break;
    case 17:
      result = 0x6E6170536566696CLL;
      break;
    case 18:
    case 36:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x656C676E61;
      break;
    case 20:
      result = 0x726156656C676E61;
      break;
    case 21:
      result = 0x5372616C75676E61;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0x65636E756F62;
      break;
    case 24:
      result = 0x6E6F697463697266;
      break;
    case 25:
      result = 0x437974696361706FLL;
      break;
    case 26:
      result = 0xD00000000000001DLL;
      break;
    case 27:
      result = 0xD000000000000022;
      break;
    case 28:
    case 31:
      result = 0xD000000000000013;
      break;
    case 29:
      result = 0x7274536573696F6ELL;
      break;
    case 30:
      result = 0x6163536573696F6ELL;
      break;
    case 32:
      result = 0xD000000000000012;
      break;
    case 34:
      result = 0x7453786574726F76;
      break;
    case 35:
      result = 0x6944786574726F76;
      break;
    case 37:
      result = 0x4668637465727473;
      break;
    case 38:
      result = 0x6564724F74726F73;
      break;
    case 39:
      result = 0x646F4D646E656C62;
      break;
    case 40:
      result = 0x6567616D69;
      break;
    case 41:
      result = 0x7165536567616D69;
      break;
    case 42:
      result = 0x726F6C6F63;
      break;
    case 43:
      result = 0x6F6973696C6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys()
{
  ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V0G10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V0G10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v43 - v6;
  v8 = *v1;
  LODWORD(v80) = v1[1];
  LODWORD(v79) = v1[2];
  v77 = *(v1 + 1);
  v86 = v1[8];
  v62 = *(v1 + 36);
  v9 = v1[11];
  v76 = v1[10];
  v75 = v9;
  v10 = *(v1 + 7);
  *&v78 = *(v1 + 6);
  v74 = v10;
  v73 = *(v1 + 64);
  v11 = *(v1 + 10);
  v72 = *(v1 + 9);
  v71 = v11;
  v70 = *(v1 + 88);
  v69 = *(v1 + 89);
  v12 = *(v1 + 13);
  v65 = *(v1 + 12);
  v68 = v12;
  v67 = v1[28];
  v66 = *(v1 + 116);
  v13 = v1[31];
  v64 = v1[30];
  v63 = v13;
  v14 = *(v1 + 17);
  v45 = *(v1 + 16);
  v46 = v14;
  LODWORD(v14) = v1[37];
  v47 = v1[36];
  v48 = v14;
  LODWORD(v14) = v1[39];
  v49 = v1[38];
  v50 = v14;
  LODWORD(v14) = v1[41];
  v51 = v1[40];
  v52 = v14;
  v54 = *(v1 + 168);
  LODWORD(v14) = v1[44];
  v53 = v1[43];
  v55 = v14;
  v16 = v1[45];
  v15 = v1[46];
  v18 = v1[47];
  v17 = v1[48];
  v19 = v1[49];
  v56 = *(v1 + 13);
  v20 = v1[56];
  v57 = *(v1 + 15);
  v58 = *(v1 + 256);
  v21 = v1[65];
  v59 = *(v1 + 264);
  v22 = *(v1 + 265);
  v60 = *(v1 + 74);
  v61 = *(v1 + 70);
  v23 = *(v1 + 39);
  v24 = *(v1 + 320);
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1;
  v29 = v28;
  __swift_project_boxed_opaque_existential_1(v27, v25);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v82) = 0;
  v30 = v81;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v30)
  {
    return (*(v4 + 8))(v7, v29);
  }

  v31 = v78;
  v43 = v22;
  v44 = v24;
  v81 = v23;
  LOBYTE(v82) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 2;
  v32 = v7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v82 = v77;
  v87 = 3;
  v80 = v29;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v79 = v33;
  LOBYTE(v82) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v34 = v31;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v34);
  v78 = v35;

  v82 = v78;
  v87 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v36 = v74;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v36);
  v78 = v37;

  v82 = v78;
  v87 = 8;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  v38 = v72;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v38);
  v78 = v39;

  v82 = v78;
  v87 = 10;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v40 = v71;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v40);
  v78 = v41;

  v82 = v78;
  v87 = 11;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  *&v82 = v65;
  *(&v82 + 1) = v68;
  LODWORD(v83) = v67;
  BYTE4(v83) = v66;
  v87 = 14;
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 17;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 18;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 19;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 20;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 21;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 22;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 23;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 24;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = v54;
  v87 = 25;
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 26;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 27;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 28;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 29;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 30;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 31;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 32;
  KeyedEncodingContainer.encode(_:forKey:)();
  v82 = v56;
  v87 = 33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 34;
  KeyedEncodingContainer.encode(_:forKey:)();
  v82 = v57;
  v87 = 35;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 36;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = 37;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v82) = v59;
  v87 = 38;
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = v43;
  v87 = 39;
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v82 = v61;
  v83 = v60;
  v84 = v81;
  v85 = v44;
  v87 = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMR);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v82) = 43;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v32, v80);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V0G10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0fG0V0G10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v89 - v8;
  v120 = 1.0;
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.293586522, 0.0, 1.0);
  v136 = CGColorCreateGenericRGB(0.999990999, 1.0, 1.0, 1.0);
  v134 = CGColorCreateGenericRGB(0.00130063295, 0.0325933062, 1.0, 1.0);
  v135 = CGColorCreateGenericRGB(0.294799924, 0.0149334101, 0.287591606, 1.0);
  v209 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v133 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v215 = v2;
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v132 = 0u;
    v125 = 1.0;
    v124 = xmmword_1C18C7190;
    v122 = 0;
    v113 = 0;
    v108 = 0;
    v121 = *&zmmword_1C1887630[16];
    v16 = 1;
    v106 = 3;
    v109 = 0;
    v110 = 0;
    v17 = 1120403456;
    v18 = 1017370378;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v123 = 0x3FC999999999999ALL;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v117 = 1050253722;
    v107 = 1036831949;
    v19 = 3;
    v20 = 0;
    v21 = 1.0;
    v22 = 1;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_4;
  }

  LOBYTE(v140) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v28;
  LOBYTE(v140) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = v29;
  LOBYTE(v140) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v215 = 0;
  v104 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v138[0] = 3;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v31 = v215;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v31)
  {
    v215 = v31;
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v132 = 0u;
    v125 = 1.0;
    v122 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v16 = 1;
    v106 = 3;
    v110 = 0;
    v18 = 1017370378;
    v111 = 1.0;
    v112 = 1.0;
    v123 = 0x3FC999999999999ALL;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 1050253722;
    v107 = 1036831949;
    v19 = 3;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v21 = 1.0;
    v22 = 1;
    v23 = 0;
    v24 = 0;
    v25 = v104;
    v26 = v105;
    goto LABEL_4;
  }

  v132 = v140;
  LOBYTE(v140) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v103 = v32;
  LOBYTE(v140) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v33;
  LOBYTE(v140) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v215 = 0;
  v102 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  v138[0] = 7;
  v36 = v35;
  v131 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  v37 = v215;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v215 = v37;
  if (v37)
  {
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v125 = 1.0;
    v122 = 0;
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v16 = 1;
    v106 = 3;
    v123 = 0x3FC999999999999ALL;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v117 = 1050253722;
    v107 = 1036831949;
    v19 = 3;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v21 = 1.0;
    v22 = 1;
LABEL_15:
    v26 = v105;
LABEL_16:
    v25 = v104;
    v23 = v102;
    v24 = v103;
    goto LABEL_4;
  }

  v101 = specialized SIMD4<>.cgColor.getter(v140);

  v138[0] = 8;
  GenericRGB = v36;
  v38 = v215;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v215 = v38;
  if (v38)
  {
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v125 = 1.0;
    v122 = 0;
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v16 = 1;
    v106 = 3;
    v123 = 0x3FC999999999999ALL;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v117 = 1050253722;
    v107 = 1036831949;
    v19 = 3;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v21 = 1.0;
    v22 = 1;
LABEL_14:
    GenericRGB = v101;
    goto LABEL_15;
  }

  v99 = a2;
  v39 = v135;
  v100 = specialized SIMD4<>.cgColor.getter(v140);

  LOBYTE(v140) = 9;
  v40 = v215;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v215 = v40;
  if (v40)
  {
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v125 = 1.0;
    v122 = 0;
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v16 = 1;
    v106 = 3;
    v123 = 0x3FC999999999999ALL;
    v117 = 1050253722;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v107 = 1036831949;
    v19 = 3;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v21 = 1.0;
    v22 = 1;
    v136 = v100;
    goto LABEL_14;
  }

  v98 = v41 & 1;
  v138[0] = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v215 = 0;
  v136 = specialized SIMD4<>.cgColor.getter(v140);

  v138[0] = 11;
  v42 = v215;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v215 = v42;
  if (v42)
  {
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v125 = 1.0;
    v122 = 0;
    v113 = 0;
    v123 = 0x3FC999999999999ALL;
    v108 = 0;
    v109 = 0;
    v16 = 1;
    v110 = 0;
    v117 = 1050253722;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v106 = 3;
    v107 = 1036831949;
    v19 = 3;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v21 = 1.0;
    v22 = 1;
LABEL_21:
    v134 = v136;
    v136 = v100;
    GenericRGB = v101;
    v26 = v105;
    v15 = v98;
    goto LABEL_16;
  }

  GenericRGB = specialized SIMD4<>.cgColor.getter(v140);

  LOBYTE(v140) = 12;
  v43 = v215;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v215 = v43;
  if (v43)
  {
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v125 = 1.0;
    v122 = 0;
    v123 = 0x3FC999999999999ALL;
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v16 = 1;
    v110 = 0;
    v117 = 1050253722;
    v106 = 3;
    v107 = 1036831949;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v19 = 3;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v22 = 1;
    v21 = 1.0;
    v135 = GenericRGB;
    goto LABEL_21;
  }

  v97 = v44 & 1;
  LOBYTE(v140) = 13;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v215 = 0;
  v96 = v45 & 1;
  v138[0] = 14;
  lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v46 = v215;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v215 = v46;
  if (v46)
  {
    (*(v6 + 8))(v9, v5);
    v131 = 0;
    v129 = 0;
    v130 = 0uLL;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v12 = 0;
    v13 = 0;
    v124 = xmmword_1C18C7190;
    v121 = *&zmmword_1C1887630[16];
    v125 = 1.0;
    v122 = 0;
    v113 = 0;
    v123 = 0x3FC999999999999ALL;
    v108 = 0;
    v109 = 0;
    v16 = 1;
    v110 = 0;
    v117 = 1050253722;
    v111 = 1.0;
    v112 = 1.0;
    v114 = 0;
    v115 = 0;
    v106 = 3;
    v107 = 1036831949;
    v19 = 3;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v20 = 0;
    v21 = 1.0;
    v134 = v136;
    v135 = GenericRGB;
    v136 = v100;
    GenericRGB = v101;
    v25 = v104;
    v26 = v105;
    v14 = v97;
    v15 = v98;
    v23 = v102;
    v24 = v103;
    v22 = v96;
  }

  else
  {
    v94 = v140;
    v95 = v141.n128_u32[0];
    v209 = v141.n128_u8[4];
    LOBYTE(v140) = 15;
    KeyedDecodingContainer.decode(_:forKey:)();
    v93 = v47;
    v215 = 0;
    LOBYTE(v140) = 16;
    KeyedDecodingContainer.decode(_:forKey:)();
    v92 = v48;
    v215 = 0;
    LOBYTE(v140) = 17;
    KeyedDecodingContainer.decode(_:forKey:)();
    v215 = 0;
    v50 = v49;
    LOBYTE(v140) = 18;
    KeyedDecodingContainer.decode(_:forKey:)();
    v123 = v51;
    v215 = 0;
    LOBYTE(v140) = 19;
    KeyedDecodingContainer.decode(_:forKey:)();
    v119 = v52;
    v215 = 0;
    LOBYTE(v140) = 20;
    KeyedDecodingContainer.decode(_:forKey:)();
    v118 = v53;
    v215 = 0;
    LOBYTE(v140) = 21;
    KeyedDecodingContainer.decode(_:forKey:)();
    v116 = v54;
    v215 = 0;
    LOBYTE(v140) = 22;
    KeyedDecodingContainer.decode(_:forKey:)();
    v115 = v55;
    v215 = 0;
    LOBYTE(v140) = 23;
    KeyedDecodingContainer.decode(_:forKey:)();
    v117 = v56;
    v215 = 0;
    LOBYTE(v140) = 24;
    KeyedDecodingContainer.decode(_:forKey:)();
    v114 = v57;
    v215 = 0;
    v138[0] = 25;
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
    v58 = v215;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v215 = v58;
    if (v58)
    {
      (*(v6 + 8))(v9, v5);
      v131 = 0;
      v129 = 0;
      v130 = 0uLL;
      v126 = 0;
      v127 = 0;
      v128 = 0;
      v124 = xmmword_1C18C7190;
      v121 = *&zmmword_1C1887630[16];
      v125 = 1.0;
      v122 = 0;
      v113 = 0;
      v106 = 3;
      v107 = 1036831949;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 1.0;
      v112 = 1.0;
      v19 = 3;
      v120 = *&v50;
      v134 = v136;
      v135 = GenericRGB;
      v136 = v100;
      GenericRGB = v101;
      v25 = v104;
      v26 = v105;
      v14 = v97;
      v15 = v98;
      v12 = v95;
      v22 = v96;
      v13 = v94.n128_u64[1];
      v16 = v94.n128_u64[0];
      v23 = v102;
      v24 = v103;
      v20 = v92;
      v21 = v93;
    }

    else
    {
      v91 = v140;
      LOBYTE(v140) = 26;
      KeyedDecodingContainer.decode(_:forKey:)();
      v107 = v59;
      v215 = 0;
      LOBYTE(v140) = 27;
      KeyedDecodingContainer.decode(_:forKey:)();
      v112 = v60;
      v215 = 0;
      LOBYTE(v140) = 28;
      KeyedDecodingContainer.decode(_:forKey:)();
      v111 = v61;
      v215 = 0;
      LOBYTE(v140) = 29;
      KeyedDecodingContainer.decode(_:forKey:)();
      v109 = v62;
      v215 = 0;
      LOBYTE(v140) = 30;
      KeyedDecodingContainer.decode(_:forKey:)();
      v125 = v63;
      v215 = 0;
      LOBYTE(v140) = 31;
      KeyedDecodingContainer.decode(_:forKey:)();
      v110 = v64;
      v215 = 0;
      LOBYTE(v140) = 32;
      KeyedDecodingContainer.decode(_:forKey:)();
      v108 = v65;
      v215 = 0;
      v138[0] = 33;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v215 = 0;
      v124 = v140;
      LOBYTE(v140) = 34;
      KeyedDecodingContainer.decode(_:forKey:)();
      v113 = v66;
      v215 = 0;
      v138[0] = 35;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v215 = 0;
      v121 = v140;
      LOBYTE(v140) = 36;
      v67 = KeyedDecodingContainer.decode(_:forKey:)();
      v215 = 0;
      v128 = v67 & 1;
      LOBYTE(v140) = 37;
      KeyedDecodingContainer.decode(_:forKey:)();
      v122 = v68;
      v215 = 0;
      v138[0] = 38;
      lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder();
      v69 = v215;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v215 = v69;
      if (v69)
      {
        (*(v6 + 8))(v9, v5);
        v131 = 0;
        v129 = 0;
        v130 = 0uLL;
        v126 = 0;
        v127 = 0;
      }

      else
      {
        HIDWORD(v126) = v140;
        v138[0] = 39;
        lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode();
        v70 = v215;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v215 = v70;
        if (v70)
        {
          (*(v6 + 8))(v9, v5);
          v131 = 0;
          v129 = 0;
          v130 = 0uLL;
          v127 = 0;
          LODWORD(v126) = 0;
        }

        else
        {
          LODWORD(v126) = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMR);
          v138[0] = 41;
          lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?();
          v71 = v215;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v215 = v71;
          if (!v71)
          {
            v129 = *(&v140 + 1);
            v127 = v140;
            v130 = v141;
            v131 = v142;
            v106 = v143;
            v139 = 43;
            v72 = KeyedDecodingContainer.decode(_:forKey:)();
            v215 = 0;
            v73 = v72;
            (*(v6 + 8))(v9, v5);
            v74 = v73 & 1;
            HIDWORD(v89) = v18;
            v90 = v17;
            *v138 = v17;
            *&v138[4] = v105;
            *&v138[8] = v104;
            *&v138[16] = v132;
            *&v138[32] = v103;
            v138[36] = v73 & 1;
            *&v138[37] = v213;
            v138[39] = v214;
            *&v138[40] = v18;
            *&v138[44] = v102;
            *&v138[48] = v101;
            *&v138[56] = v100;
            v138[64] = v98;
            *&v138[65] = *v212;
            *&v138[68] = *&v212[3];
            *&v138[72] = v136;
            *&v138[80] = GenericRGB;
            v138[88] = v97;
            v138[89] = v96;
            *&v138[90] = v210;
            *&v138[94] = v211;
            *&v138[96] = v94;
            *&v138[112] = v95;
            LODWORD(v135) = v209;
            v138[116] = v209;
            *&v138[117] = v207;
            v138[119] = v208;
            v76 = v92;
            v75 = v93;
            *&v138[120] = v93;
            *&v138[124] = v92;
            v134 = v50;
            v77 = v123;
            *&v138[128] = v50;
            *&v138[136] = v123;
            v78 = v118;
            v79 = v119;
            *&v138[144] = v119;
            *&v138[148] = v118;
            *&v138[152] = v116;
            *&v138[156] = v115;
            v80 = v117;
            *&v138[160] = v117;
            *&v138[164] = v114;
            v138[168] = v91;
            v138[171] = v206;
            *&v138[169] = v205;
            *&v138[172] = v107;
            *&v138[176] = v112;
            *&v138[180] = v111;
            *&v138[184] = v109;
            v81 = v125;
            *&v138[188] = v125;
            *&v138[192] = v110;
            *&v138[196] = v108;
            *&v138[208] = v124;
            *&v138[224] = v113;
            *&v138[228] = v203;
            *&v138[236] = v204;
            *&v138[240] = v121;
            v138[256] = v128;
            *&v138[257] = v201;
            v138[259] = v202;
            v82 = v122;
            *&v138[260] = v122;
            v138[264] = BYTE4(v126);
            v138[265] = v126;
            *&v138[266] = v199;
            *&v138[270] = v200;
            *&v138[272] = 0;
            v83 = v127;
            *&v138[280] = v127;
            v85 = v129;
            v84 = v130.n128_u64[0];
            *&v138[288] = v129;
            v87 = v130.n128_i64[1];
            *&v138[296] = v130;
            v86 = v131;
            *&v138[312] = v131;
            v88 = v106;
            v138[320] = v106;
            memcpy(v99, v138, 0x141uLL);
            outlined init with copy of ParticleEmitterComponent.ParticleEmitter(v138, &v140);
            __swift_destroy_boxed_opaque_existential_1(v133);
            *&v140 = __PAIR64__(v105, v90);
            DWORD2(v140) = v104;
            v141 = v132;
            LODWORD(v142) = v103;
            BYTE4(v142) = v74;
            *(&v142 + 5) = v213;
            HIBYTE(v142) = v214;
            v143 = HIDWORD(v89);
            v144 = v102;
            v145 = v101;
            v146 = v100;
            v147 = v98;
            *v148 = *v212;
            *&v148[3] = *&v212[3];
            v149 = v136;
            v150 = GenericRGB;
            v151 = v97;
            v152 = v96;
            v153 = v210;
            v154 = v211;
            v155 = v94;
            v156 = v95;
            v157 = v135;
            v158 = v207;
            v159 = v208;
            v160 = v75;
            v161 = v76;
            v162 = v134;
            v163 = v77;
            v164 = v79;
            v165 = v78;
            v166 = v116;
            v167 = v115;
            v168 = v80;
            v169 = v114;
            v170 = v91;
            v172 = v206;
            v171 = v205;
            v173 = v107;
            v174 = v112;
            v175 = v111;
            v176 = v109;
            v177 = v81;
            v178 = v110;
            v179 = v108;
            v180 = v124;
            v181 = v113;
            v182 = v203;
            v183 = v204;
            v184 = v121;
            v185 = v128;
            v186 = v201;
            v187 = v202;
            v188 = v82;
            v189 = BYTE4(v126);
            v190 = v126;
            v191 = v199;
            v192 = v200;
            v193 = 0;
            v194 = v83;
            v195 = v85;
            v196.n128_u64[0] = v84;
            v196.n128_u64[1] = v87;
            v197 = v86;
            v198 = v88;
            return outlined destroy of ParticleEmitterComponent.ParticleEmitter(&v140);
          }

          (*(v6 + 8))(v9, v5);
          v131 = 0;
          v129 = 0;
          v130 = 0uLL;
          v127 = 0;
        }
      }

      v106 = 3;
      v120 = *&v50;
      v134 = v136;
      v135 = GenericRGB;
      v136 = v100;
      GenericRGB = v101;
      v25 = v104;
      v26 = v105;
      v14 = v97;
      v15 = v98;
      v12 = v95;
      v22 = v96;
      v13 = v94.n128_u64[1];
      v16 = v94.n128_u64[0];
      v23 = v102;
      v24 = v103;
      v20 = v92;
      v21 = v93;
      v19 = v91;
    }
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v133);
  *&v140 = __PAIR64__(v26, v17);
  DWORD2(v140) = v25;
  v141 = v132;
  LODWORD(v142) = v24;
  BYTE4(v142) = 0;
  *(&v142 + 5) = v213;
  HIBYTE(v142) = v214;
  v143 = v18;
  v144 = v23;
  v145 = GenericRGB;
  v146 = v136;
  v147 = v15;
  *v148 = *v212;
  *&v148[3] = *&v212[3];
  v149 = v134;
  v150 = v135;
  v151 = v14;
  v152 = v22;
  v153 = v210;
  v154 = v211;
  v155.n128_u64[0] = v16;
  v155.n128_u64[1] = v13;
  v156 = v12;
  v157 = v209;
  v158 = v207;
  v159 = v208;
  v160 = v21;
  v161 = v20;
  v162 = *&v120;
  v163 = v123;
  v164 = v119;
  v165 = v118;
  v166 = v116;
  v167 = v115;
  v168 = v117;
  v169 = v114;
  v170 = v19;
  v172 = v206;
  v171 = v205;
  v173 = v107;
  v174 = v112;
  v175 = v111;
  v176 = v109;
  v177 = v125;
  v178 = v110;
  v179 = v108;
  v180 = v124;
  v181 = v113;
  v182 = v203;
  v183 = v204;
  v184 = v121;
  v185 = v128;
  v186 = v201;
  v187 = v202;
  v188 = v122;
  v189 = BYTE4(v126);
  v190 = v126;
  v191 = v199;
  v192 = v200;
  v193 = 0;
  v194 = v127;
  v195 = v129;
  v196 = v130;
  v197 = v131;
  v198 = v106;
  return outlined destroy of ParticleEmitterComponent.ParticleEmitter(&v140);
}

double CollisionPlane_v1.extent.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double CollisionPlane_v1.extent.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 CollisionPlane_v1.transform.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[1];
  v4 = v0[2];
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v6 = result;
    swift_once();
    return v6;
  }

  return result;
}

void CollisionPlane_v1.init(extent:transform:)(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float32x4_t a4@<Q1>, double a5@<D2>)
{
  *&v7 = specialized simd_float4x4.init(translation:rotation:scale:)(a5, a4, a3);
  *a2 = 0;
  *(a2 + 8) = *a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CollisionPlaneExtent_v1.CodingKeys()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollisionPlaneExtent_v1.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CollisionPlaneExtent_v1.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CollisionPlaneExtent_v1.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CollisionPlaneExtent_v1.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation23CollisionPlaneExtent_v1V10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation23CollisionPlaneExtent_v1V10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

void CollisionPlaneExtent_v1.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

Swift::Int CollisionPlaneExtent_v1.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  Hasher._combine(_:)(LODWORD(v3));
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

uint64_t CollisionPlaneExtent_v1.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation23CollisionPlaneExtent_v1V10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation23CollisionPlaneExtent_v1V10CodingKeys33_49A62A114A863E9493F655A48E47F7E5LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollisionPlaneExtent_v1()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  Hasher._combine(_:)(LODWORD(v3));
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

uint64_t CollisionPlane_v1.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v9 = *(v1 + 2);
  v10 = *(v1 + 1);
  v7 = *(v1 + 4);
  v8 = *(v1 + 3);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    lazy protocol witness table accessor for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t CollisionPlane_v1.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    lazy protocol witness table accessor for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v8;
    *(a2 + 32) = v8;
    *(a2 + 48) = v8;
    *(a2 + 64) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CollisionPlane_v1.hash(into:)(uint64_t a1)
{
  v3 = v1->n128_f32[2];
  v4 = v1->n128_f32[3];
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  MEMORY[0x1C68F4C10](v1->n128_u64[0]);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  Hasher._combine(_:)(LODWORD(v5));
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  Hasher._combine(_:)(LODWORD(v6));
  specialized SIMD.hash(into:)(a1, v8);
  specialized SIMD.hash(into:)(a1, v9);
  specialized SIMD.hash(into:)(a1, v10);

  return specialized SIMD.hash(into:)(a1, v11);
}

Swift::Int CollisionPlane_v1.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v7 = *v0;
  v8 = v0[1];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CollisionPlane_v1()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v7 = *v0;
  v8 = v0[1];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollisionPlane_v1()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v7 = *v0;
  v8 = v0[1];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)(v6);
  return Hasher._finalize()();
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 80 * (v10 | (v9 << 6));
        v12 = *(v11 + 48);
        v15[2] = *(v11 + 32);
        v15[3] = v12;
        v15[4] = *(v11 + 64);
        v13 = *(v11 + 16);
        v15[0] = *v11;
        v15[1] = v13;
        specialized Set._Variant.remove(_:)(v15, &v14);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *specialized Set._subtract<A>(_:)(void *a1)
{
  return specialized Set._subtract<A>(_:)(a1, specialized Set._Variant.remove(_:));
}

{
  return specialized Set._subtract<A>(_:)(a1, specialized Set._Variant.remove(_:));
}

void *specialized Set._subtract<A>(_:)(void *result, void *(*a2)(uint64_t *__return_ptr, void))
{
  if (*(*v2 + 16))
  {
    v4 = result;
    v5 = result + 7;
    v6 = 1 << *(result + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & result[7];
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        result = a2(&v13, *(v4[6] + ((v11 << 9) | (8 * v12))));
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = v5[v11];
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v68 = 0;
    v77 = 0;
    v76 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v70 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v71 = a2;
    v11 = (a2 + 56);
    v12 = 1;
    do
    {
LABEL_6:
      if (!v9)
      {
        v14 = v77;
        v13 = v71;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v10)
          {

            goto LABEL_67;
          }

          v9 = *(v6 + 8 * v15);
          ++v14;
          if (v9)
          {
            v77 = v15;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

      v13 = v71;
LABEL_13:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(v76 + 48) + 80 * (v16 | (v77 << 6));
      v3 = *v17;
      v18 = *(v17 + 8);
      v19 = *(v17 + 12);
      v20 = *(v17 + 32);
      v75 = *(v17 + 16);
      v74 = v20;
      v21 = *(v17 + 64);
      v73 = *(v17 + 48);
      v72 = v21;
      v22 = *(v13 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v3);
      if (v18 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v18;
      }

      Hasher._combine(_:)(LODWORD(v23));
      if (v19 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v19;
      }

      Hasher._combine(_:)(LODWORD(v24));
      specialized SIMD.hash(into:)(v78, v75);
      specialized SIMD.hash(into:)(v78, v74);
      specialized SIMD.hash(into:)(v78, v73);
      specialized SIMD.hash(into:)(v78, v72);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v13 + 32);
      v2 = v25 & ~v26;
      v4 = v2 >> 6;
      v13 = 1 << v2;
    }

    while (((1 << v2) & v11[v2 >> 6]) == 0);
    while (1)
    {
      v27 = (*(v71 + 48) + 80 * v2);
      v28 = v27->i64[0] == v3 && v27->f32[2] == v18;
      v29 = v28 && v27->f32[3] == v19;
      if (v29 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v27[3], v73), vceqq_f32(v27[4], v72)), vandq_s8(vceqq_f32(v27[2], v74), vceqq_f32(v27[1], v75)))) & 0x80000000) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & ~v26;
      v4 = v2 >> 6;
      v13 = 1 << v2;
      if ((v11[v2 >> 6] & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    v80 = v70;
    v81 = v77;
    v82 = v9;
    v12 = v76;
    v79[0] = v76;
    v79[1] = v6;
    v30 = (63 - v26) >> 6;
    v3 = 8 * v30;

    v65 = v30;
    if (v30 <= 0x80)
    {
      goto LABEL_32;
    }

LABEL_70:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v63 = swift_slowAlloc();
      memcpy(v63, v11, v3);
      v13 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v63, v65, v71, v2, v79);

      MEMORY[0x1C6902A30](v63, -1, -1);
      v70 = v80;
      v77 = v81;
      goto LABEL_67;
    }

LABEL_32:
    v66 = &v64;
    MEMORY[0x1EEE9AC00](v31);
    v33 = (&v64 - v32);
    memcpy(&v64 - v32, v11, v3);
    v34 = *(v71 + 16);
    v35 = v33[v4] & ~v13;
    v36 = v71;
    v69 = v33;
    v33[v4] = v35;
    v37 = v34 - 1;
LABEL_33:
    v67 = v37;
LABEL_34:
    while (v9)
    {
LABEL_39:
      v40 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v41 = *(v76 + 48) + 80 * (v40 | (v77 << 6));
      v42 = *v41;
      v43 = *(v41 + 8);
      v44 = *(v41 + 12);
      v45 = *(v41 + 32);
      v75 = *(v41 + 16);
      v74 = v45;
      v46 = *(v41 + 64);
      v73 = *(v41 + 48);
      v72 = v46;
      v47 = *(v36 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v42);
      if (v43 == 0.0)
      {
        v48 = 0.0;
      }

      else
      {
        v48 = v43;
      }

      Hasher._combine(_:)(LODWORD(v48));
      if (v44 == 0.0)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = v44;
      }

      Hasher._combine(_:)(LODWORD(v49));
      specialized SIMD.hash(into:)(v78, v75);
      specialized SIMD.hash(into:)(v78, v74);
      specialized SIMD.hash(into:)(v78, v73);
      specialized SIMD.hash(into:)(v78, v72);
      v50 = Hasher._finalize()();
      v51 = -1 << *(v36 + 32);
      v52 = v50 & ~v51;
      v53 = v52 >> 6;
      v54 = 1 << v52;
      if (((1 << v52) & v11[v52 >> 6]) != 0)
      {
        v55 = ~v51;
        while (1)
        {
          v56 = (*(v36 + 48) + 80 * v52);
          v57 = v56->i64[0] == v42 && v56->f32[2] == v43;
          v58 = v57 && v56->f32[3] == v44;
          if (v58 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v56[3], v73), vceqq_f32(v56[4], v72)), vandq_s8(vceqq_f32(v56[2], v74), vceqq_f32(v56[1], v75)))) & 0x80000000) != 0)
          {
            break;
          }

          v52 = (v52 + 1) & v55;
          v53 = v52 >> 6;
          v54 = 1 << v52;
          if ((v11[v52 >> 6] & (1 << v52)) == 0)
          {
            goto LABEL_34;
          }
        }

        v59 = v69[v53];
        v69[v53] = v59 & ~v54;
        if ((v59 & v54) != 0)
        {
          v37 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v13 = MEMORY[0x1E69E7CD0];
            goto LABEL_67;
          }

          goto LABEL_33;
        }
      }
    }

    v38 = v77;
    while (1)
    {
      v39 = v38 + 1;
      if (v38 + 1 >= v10)
      {
        break;
      }

      v9 = *(v12 + 64 + 8 * v38++);
      if (v9)
      {
        v77 = v39;
        goto LABEL_39;
      }
    }

    if (v10 <= v77 + 1)
    {
      v60 = v77 + 1;
    }

    else
    {
      v60 = v10;
    }

    v77 = v60 - 1;
    v13 = specialized _NativeSet.extractSubset(using:count:)(v69, v65, v67, v36);
LABEL_67:
    outlined consume of [String : AnimationResource].Iterator._Variant();
  }

  else
  {

    v13 = MEMORY[0x1E69E7CD0];
  }

  v61 = *MEMORY[0x1E69E9840];
  return v13;
}

{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1C6902A30](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    outlined consume of [String : AnimationResource].Iterator._Variant();
    goto LABEL_53;
  }

  result = MEMORY[0x1C6902A30](v53, -1, -1);
  __break(1u);
  return result;
}

{
  v2 = a2;
  v32[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v32[0] = a1;
    v29 = *(a1 + 16);
    if (v29)
    {
      v4 = 0;
      v5 = a2 + 56;
      v30 = *(a2 + 40);
      v31 = a1 + 32;
      v28 = -1 << *(a2 + 32);
      v6 = ~v28;
      while (1)
      {
        v7 = *(v31 + 8 * v4++);
        v8 = MEMORY[0x1C68F4BF0](v30, v7);
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v29)
        {
          goto LABEL_15;
        }
      }

      while (*(*(v2 + 48) + 8 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v32[1] = v4;
      v12 = (63 - v28) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v29 = v12;
        v30 = &v28;
        MEMORY[0x1EEE9AC00](i);
        v9 = &v28 - v15;
        memcpy(&v28 - v15, (v2 + 56), v13);
        v16 = *(v2 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v13 = v16 - 1;
        v17 = *(a1 + 16);
        if (v4 == v17)
        {
          break;
        }

        v10 = *(v2 + 40);
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v17)
        {
          v11 = *(v31 + 8 * v4);
          v20 = MEMORY[0x1C68F4BF0](v10, v11);
          v21 = v20 & v12;
          v22 = (v20 & v12) >> 6;
          v23 = 1 << (v20 & v12);
          if ((v23 & *(v5 + 8 * v22)) != 0)
          {
            while (*(*(v2 + 48) + 8 * v21) != v11)
            {
              v21 = (v21 + 1) & v12;
              v22 = v21 >> 6;
              v23 = 1 << v21;
              if (((1 << v21) & *(v5 + 8 * (v21 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v24 = *(v9 + 8 * v22);
            *(v9 + 8 * v22) = v24 & ~v23;
            if ((v24 & v23) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = MEMORY[0x1E69E7CD0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v17 = *(a1 + 16);
          if (v4 == v17)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v26 = swift_slowAlloc();
          memcpy(v26, (v2 + 56), v13);
          v27 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v26, v12, v2, v9, v32);

          MEMORY[0x1C6902A30](v26, -1, -1);

          v2 = v27;
          goto LABEL_15;
        }
      }

LABEL_13:
      v2 = specialized _NativeSet.extractSubset(using:count:)(v9, v29, v13, v2);
LABEL_14:
    }
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_15:
  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return specialized _NativeSet.subtracting<A>(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return specialized _NativeSet.subtracting<A>(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v50 = a3;
    v51 = a4;
    v53 = a1;
    v54 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v52 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v15 = a2 + 56;
    v16 = 1;
    while (1)
    {
      do
      {
        if (!v13)
        {
          v17 = v53;
          v18 = v54;
          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v19 >= v14)
            {

              goto LABEL_43;
            }

            v13 = *(v10 + 8 * v19);
            ++v18;
            if (v13)
            {
              v54 = v19;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = v53;
LABEL_13:
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v7 = *(*(v17 + 48) + ((v54 << 9) | (8 * v20)));
        v21 = *(v8 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](v7);
        v22 = Hasher._finalize()();
        v23 = -1 << *(v8 + 32);
        v4 = v22 & ~v23;
        v5 = v4 >> 6;
        v6 = 1 << v4;
      }

      while (((1 << v4) & *(v15 + 8 * (v4 >> 6))) == 0);
      v24 = *(v8 + 48);
      if (*(v24 + 8 * v4) == v7)
      {
        break;
      }

      while (1)
      {
        v4 = (v4 + 1) & ~v23;
        v5 = v4 >> 6;
        v6 = 1 << v4;
        if (((1 << v4) & *(v15 + 8 * (v4 >> 6))) == 0)
        {
          break;
        }

        if (*(v24 + 8 * v4) == v7)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v57 = v52;
    v58 = v54;
    v59 = v13;
    v56[0] = v53;
    v56[1] = v10;
    v16 = (63 - v23) >> 6;
    v7 = 8 * v16;

    if (v16 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v44 = swift_slowAlloc();
      memcpy(v44, (v8 + 56), v7);
      v45 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v44, v16, v8, v4, v56, v50, v51);

      MEMORY[0x1C6902A30](v44, -1, -1);
      v52 = v57;
      v54 = v58;
      v8 = v45;
      goto LABEL_43;
    }

LABEL_18:
    v47 = v16;
    v48 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v16 = &v46 - v26;
    memcpy(&v46 - v26, (v8 + 56), v7);
    v27 = *(v8 + 16);
    *(v16 + 8 * v5) &= ~v6;
    v28 = v27 - 1;
    v5 = 1;
    v6 = v53;
LABEL_19:
    v49 = v28;
    while (v13)
    {
LABEL_27:
      v32 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v7 = *(*(v6 + 48) + ((v54 << 9) | (8 * v32)));
      v33 = *(v8 + 40);
      Hasher.init(_seed:)();
      v4 = &v55;
      MEMORY[0x1C68F4C10](v7);
      v34 = Hasher._finalize()();
      v35 = -1 << *(v8 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      v38 = 1 << v36;
      if (((1 << v36) & *(v15 + 8 * (v36 >> 6))) != 0)
      {
        v39 = *(v8 + 48);
        if (*(v39 + 8 * v36) == v7)
        {
LABEL_20:
          v29 = *(v16 + 8 * v37);
          *(v16 + 8 * v37) = v29 & ~v38;
          if ((v29 & v38) != 0)
          {
            v28 = v49 - 1;
            if (__OFSUB__(v49, 1))
            {
              __break(1u);
            }

            if (v49 == 1)
            {

              v8 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v40 = ~v35;
          while (1)
          {
            v36 = (v36 + 1) & v40;
            v37 = v36 >> 6;
            v38 = 1 << v36;
            if (((1 << v36) & *(v15 + 8 * (v36 >> 6))) == 0)
            {
              break;
            }

            if (*(v39 + 8 * v36) == v7)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v30 = v54;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v31 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v31);
      ++v30;
      if (v13)
      {
        v54 = v31;
        goto LABEL_27;
      }
    }

    if (v14 <= v54 + 1)
    {
      v41 = v54 + 1;
    }

    else
    {
      v41 = v14;
    }

    v54 = v41 - 1;
    v8 = specialized _NativeSet.extractSubset(using:count:)(v16, v47, v49, v8, v50, v51);
LABEL_43:
    outlined consume of [String : AnimationResource].Iterator._Variant();
  }

  else
  {

    v8 = MEMORY[0x1E69E7CD0];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v8;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v13 >= v14)
          {
            break;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

        if (v14 <= v11 + 1)
        {
          v32 = v11 + 1;
        }

        else
        {
          v32 = (a5[2] + 64) >> 6;
        }

        a5[3] = v32 - 1;
        a5[4] = 0;

        return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v34, a3);
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + 80 * (__clz(__rbit64(v12)) | (v13 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 12);
      v37 = *(v16 + 32);
      v38 = *(v16 + 16);
      v35 = *(v16 + 64);
      v36 = *(v16 + 48);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      v20 = *(a3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      if (v18 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      Hasher._combine(_:)(LODWORD(v21));
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      Hasher._combine(_:)(LODWORD(v22));
      specialized SIMD.hash(into:)(v39, v38);
      specialized SIMD.hash(into:)(v39, v37);
      specialized SIMD.hash(into:)(v39, v36);
      specialized SIMD.hash(into:)(v39, v35);
      result = Hasher._finalize()();
      v23 = -1 << *(a3 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      v26 = 1 << v24;
      if (((1 << v24) & *(v10 + 8 * (v24 >> 6))) != 0)
      {
        v27 = ~v23;
        while (1)
        {
          v28 = (*(a3 + 48) + 80 * v24);
          v29 = v28->i64[0] == v17 && v28->f32[2] == v18;
          v30 = v29 && v28->f32[3] == v19;
          if (v30 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v28[3], v36), vceqq_f32(v28[4], v35)), vandq_s8(vceqq_f32(v28[2], v37), vceqq_f32(v28[1], v38)))) & 0x80000000) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v27;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          if ((*(v10 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
          {
            goto LABEL_3;
          }
        }

        v31 = v7[v25];
        v7[v25] = v31 & ~v26;
        if ((v31 & v26) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      if (v34 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      result = MEMORY[0x1C68F4BF0](*(a3 + 40), v15);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x1E69E7CD0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}