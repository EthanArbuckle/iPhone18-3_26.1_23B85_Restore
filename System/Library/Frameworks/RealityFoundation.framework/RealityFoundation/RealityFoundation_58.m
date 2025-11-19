void specialized EnumeratedSequence.Iterator.next()(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      a1[1] = v4;

      return;
    }
  }

  __break(1u);
}

void specialized EnumeratedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v5 + 56);

    v12(a1, 1, 1, v3, v6);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v5;
      v13 = *(type metadata accessor for __RKEntityTriggerSpecification(0) - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v8 = v16;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v14, v8 + v15, type metadata accessor for __RKEntityTriggerSpecification);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v8, a1, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
        (*(v18 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C68F41F0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 path];

    ++v4;
    if (v9)
    {
      MEMORY[0x1C68F3650]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v12;
      v4 = v8;
    }
  }

  return v5;
}

void setInfoId(_:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69DEE28];
  v7 = objc_allocWithZone(MEMORY[0x1E69DED80]);
  v8 = MEMORY[0x1C68F3280](a1, a2);
  v9 = [v7 initWithString_];

  v10 = MEMORY[0x1C68F3280](0x64693A6F666E69, 0xE700000000000000);
  v11 = [a3 newPropertyWithName:v10 type:v6 role:0];

  if (v11)
  {
    if (v9)
    {
      [v11 setTokenValue_];

      return;
    }

    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0;
    swift_willThrow();
    v9 = v11;
  }

  else
  {
    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v12 = xmmword_1C18D1600;
    *(v12 + 16) = v6;
    *(v12 + 24) = 0;
    *(v12 + 32) = a3;
    swift_willThrow();
    v13 = v6;
    v14 = a3;
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __USDEncoder.resolveResourcePath(path:)(Swift::String path)
{
  countAndFlagsBits = path._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *v1;
  if (!*v1)
  {
    goto LABEL_4;
  }

  v32 = v14;
  v33 = v6;
  v18 = *(v1 + 8);

  URL.init(string:)();
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);
    outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_4:
    v20 = 0;
    v21 = 0;
    goto LABEL_10;
  }

  countAndFlagsBits = v2;
  v31 = *(v11 + 32);
  v31(v16, v9, v10);
  v22 = v33;
  v23 = countAndFlagsBits;
  v17(v16);
  countAndFlagsBits = v23;
  if (v23)
  {
    (*(v11 + 8))(v16, v10);
    v20 = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);
  }

  else
  {
    v30 = v18;
    if (v19(v22, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);
      outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v24 = v32;
      v31(v32, v22, v10);
      v25 = URL.path.getter();
      v27 = v26;
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);
      v28 = *(v11 + 8);
      v28(v24, v10);
      v28(v16, v10);
      v21 = v27;
      v20 = v25;
    }
  }

LABEL_10:
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

void setInherits(from:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
  v7 = objc_allocWithZone(MEMORY[0x1E69DED68]);
  v8 = MEMORY[0x1C68F3280](a1, a2);
  v9 = [v7 initWithString_];

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

    [a3 setMetadataWithKey:v6 value:v10];
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:)()
{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:));
  }

  return result;
}

id __RKEntityInteractionSpecification.encode(to:at:)(uint64_t *a1, void *a2)
{
  v97 = type metadata accessor for __RKEntityActionSpecification(0);
  v5 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94 - v12;
  v105 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v14 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v94 - v18);
  v20 = *a1;
  v103 = a1[1];
  v104 = v20;
  v21 = a1[2];
  v102 = a1[3];
  v22 = v21;
  v23 = a2;
  v24 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18EF880);
  v25 = [v22 newNodeAtPath:a2 type:v24];
  if (!v25)
  {
    lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
    swift_allocError();
    *v36 = v23;
    v36[1] = v24;
    swift_willThrow();
    v37 = v23;

    return v25;
  }

  v99 = v23;
  v101 = v22;

  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v100, v19, type metadata accessor for __RKEntityTriggerSpecification);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    USKObjectPath.appendingPathComponent(_:)(0x5272656767697254, 0xEB00000000746F6FLL);
    v39 = v38;
    v110 = v104;
    v111 = v103;
    v40 = v101;
    v112 = v101;
    v113 = v102;
    __RKEntityTriggerSpecification.encode(to:at:)(&v110, v38);
    if (v2)
    {

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v19, type metadata accessor for __RKEntityTriggerSpecification);
      return v25;
    }

    v54 = v41;
    v105 = v19;
    v44 = *MEMORY[0x1E69DEE08];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1C1898160;
    *(v55 + 32) = [v54 path];
    v56 = MEMORY[0x1C68F3280](0x7372656767697274, 0xE800000000000000);
    v50 = v25;
    v57 = [v25 newPropertyWithName:v56 type:v44 role:0];

    if (!v57)
    {
      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v79 = xmmword_1C18D1610;
      *(v79 + 16) = v44;
      *(v79 + 24) = 0;
      *(v79 + 32) = v50;
      swift_willThrow();
      v80 = v50;
      v81 = v44;

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v105, type metadata accessor for __RKEntityTriggerSpecification);
      return v50;
    }

    v96 = 0;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v58 = v57;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v58 setObjectPathArray_];

    swift_bridgeObjectRelease_n();
    _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v105, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_31:
    USKObjectPath.appendingPathComponent(_:)(0x6F526E6F69746341, 0xEA0000000000746FLL);
    v61 = v60;
    v62 = *(type metadata accessor for __RKEntityInteractionSpecification(0) + 20);
    v110 = v104;
    v111 = v103;
    v112 = v40;
    v113 = v102;
    v63 = v100;
    v64 = v96;
    __RKEntityActionSpecification.encode(to:at:)(&v110, v61);
    v105 = v65;
    v96 = v64;
    v25 = v50;
    if (v64)
    {

      return v25;
    }

    v66 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1C1898160;
    *(v67 + 32) = [v105 path];
    v68 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000);
    v69 = v25;
    v70 = [v25 newPropertyWithName:v68 type:v44 role:0];

    if (v70)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

      v71 = v70;
      v72 = Array._bridgeToObjectiveC()().super.isa;
      [v71 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v73 = v66 + v62;
      v74 = v98;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v73, v98, type metadata accessor for __RKEntityActionSpecification);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v75 = *(v74 + 8);
        v76 = *(v74 + 16);
      }

      else
      {
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v74, type metadata accessor for __RKEntityActionSpecification);
        v76 = 0;
      }

      v86 = *MEMORY[0x1E69DED90];
      v87 = MEMORY[0x1C68F3280](0x766973756C637865, 0xE900000000000065);
      v88 = [v69 newPropertyWithName:v87 type:v86 role:0];

      v89 = v101;
      if (v88)
      {
        v90 = v88;
        [v90 setBoolValue_];

        return v69;
      }

      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v91 = xmmword_1C18D1620;
      *(v91 + 16) = v86;
      *(v91 + 24) = 0;
      *(v91 + 32) = v69;
      swift_willThrow();
      v92 = v86;

      v85 = v105;
    }

    else
    {
      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v82 = xmmword_1C18D1630;
      *(v82 + 16) = v44;
      *(v82 + 24) = 0;
      *(v82 + 32) = v69;
      swift_willThrow();
      v83 = v69;
      v84 = v44;

      v85 = v101;
    }

    return v69;
  }

  v26 = *v19;
  v114 = MEMORY[0x1E69E7CC0];
  v108 = 0;
  v109 = 0;
  v107 = v26;
  v105 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()(v10);
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v10, v13, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
    if ((*(*(v27 - 8) + 48))(v13, 1, v27) == 1)
    {
      break;
    }

    v28 = *v13;
    _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v13 + *(v27 + 48), v16, type metadata accessor for __RKEntityTriggerSpecification);
    v29 = v25;
    v30 = [v25 path];
    v110 = 0x5F72656767697254;
    v111 = 0xE800000000000000;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v31 = v30;
    v106 = v28 + 1;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v32);

    USKObjectPath.appendingPathComponent(_:)(v110, v111);
    v34 = v33;

    v110 = v104;
    v111 = v103;
    v112 = v101;
    v113 = v102;
    __RKEntityTriggerSpecification.encode(to:at:)(&v110, v34);
    if (v2)
    {
      v25 = v29;

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v16, type metadata accessor for __RKEntityTriggerSpecification);

      return v25;
    }

    MEMORY[0x1C68F3650]();
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v16, type metadata accessor for __RKEntityTriggerSpecification);
    v105 = v114;
    v25 = v29;
  }

  v28 = MEMORY[0x1E69DEE08];
  v110 = MEMORY[0x1E69E7CC0];
  v13 = v105;
  v95 = v25;
  v96 = v2;
  v10 = (v105 & 0xFFFFFFFFFFFFFF8);
  if (!(v105 >> 62))
  {
    v42 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_49:
  v42 = __CocoaSet.count.getter();
LABEL_15:
  v43 = 0;
  v44 = *v28;
  v45 = v13 & 0xC000000000000001;
  while (v42 != v43)
  {
    if (v45)
    {
      v46 = MEMORY[0x1C68F41F0](v43, v13);
    }

    else
    {
      if (v43 >= *(v10 + 2))
      {
        goto LABEL_48;
      }

      v46 = *(v13 + 8 * v43 + 32);
    }

    v13 = v46;
    v28 = (v43 + 1);
    if (__OFADD__(v43, 1))
    {
      goto LABEL_47;
    }

    v47 = [v46 path];

    v43 = (v43 + 1);
    v13 = v105;
    if (v47)
    {
      MEMORY[0x1C68F3650]();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v43 = v28;
    }
  }

  v49 = MEMORY[0x1C68F3280](0x7372656767697274, 0xE800000000000000);
  v50 = v95;
  v51 = [v95 newPropertyWithName:v49 type:v44 role:0];

  if (v51)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v52 = v51;
    v53 = Array._bridgeToObjectiveC()().super.isa;
    [v52 setObjectPathArray_];
    swift_bridgeObjectRelease_n();

    v40 = v101;
    goto LABEL_31;
  }

  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
  swift_allocError();
  *v77 = xmmword_1C18D1610;
  *(v77 + 16) = v44;
  *(v77 + 24) = 0;
  *(v77 + 32) = v50;
  swift_willThrow();
  v78 = v44;

  return v50;
}

void __RKEntityTriggerSpecification.encode(to:at:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v181 = type metadata accessor for UUID();
  v178 = *(v181 - 8);
  v6 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v172 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v173 = &v169 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v169 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v174 = &v169 - v13;
  v14 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v175 = a1[3];
  v21 = v20;
  v22 = MEMORY[0x1C68F3280](0xD000000000000013, 0x80000001C18EF7E0);
  v180 = [v21 newNodeAtPath:a2 type:v22];
  if (!v180)
  {
    lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
    swift_allocError();
    *v31 = a2;
    v31[1] = v22;
    swift_willThrow();
    v32 = a2;

    return;
  }

  v176 = v21;

  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v3, v17, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v72 = *v17;
        v71 = v17[1];
        v73 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
        v74 = objc_allocWithZone(MEMORY[0x1E69DED68]);
        v75 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18EF860);
        v76 = [v74 initWithString_];

        if (v76)
        {
          v77 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

          v78 = v180;
          [v180 setMetadataWithKey:v73 value:v77];

          v79 = v177;
          setInfoId(_:on:)(0x6163696669746F4ELL, 0xEC0000006E6F6974, v78);
          v80 = v176;
          if (v79)
          {

            return;
          }

          v93 = *MEMORY[0x1E69DEE20];
          v94 = MEMORY[0x1C68F3280](0x696669746E656469, 0xEA00000000007265);
          v95 = [v78 newPropertyWithName:v94 type:v93 role:0];

          if (v95)
          {

            v96 = v95;
            v97 = MEMORY[0x1C68F3280](v72, v71);
            [v96 setStringValue_];
            swift_bridgeObjectRelease_n();

            return;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v140 = xmmword_1C18D1650;
          *(v140 + 16) = v93;
          *(v140 + 24) = 0;
          *(v140 + 32) = v78;
          swift_willThrow();
          v141 = v78;
          v142 = v93;

          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_75;
      }

      if (EnumCaseMultiPayload == 12)
      {
        v24 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
        v25 = objc_allocWithZone(MEMORY[0x1E69DED68]);
        v26 = MEMORY[0x1C68F3280](0xD000000000000017, 0x80000001C18EF820);
        v27 = [v25 initWithString_];

        if (v27)
        {
          v28 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

          v29 = v180;
          [v180 setMetadataWithKey:v24 value:v28];

          v30 = v177;
          setInfoId(_:on:)(0x617254656E656353, 0xEF6E6F697469736ELL, v29);
          if (v30)
          {

            return;
          }

          v98 = *MEMORY[0x1E69DEE28];
          v99 = objc_allocWithZone(MEMORY[0x1E69DED80]);
          v100 = MEMORY[0x1C68F3280](0x7265746E65, 0xE500000000000000);
          v101 = [v99 initWithString_];

          v102 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
          v103 = [v29 newPropertyWithName:v102 type:v98 role:0];

          if (v103)
          {
            v104 = v176;
            if (v101)
            {
              v105 = v101;
              v106 = v103;
              [v106 setTokenValue_];
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v153 = 0u;
              *(v153 + 16) = 0u;
              *(v153 + 32) = 0;
              swift_willThrow();
            }

            return;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v143 = xmmword_1C18D1640;
          *(v143 + 16) = v98;
          *(v143 + 24) = 0;
          *(v143 + 32) = v29;
          swift_willThrow();
          v144 = v29;
          v145 = v98;

LABEL_57:
          return;
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_30:
      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v90 = 1;
      swift_willThrow();

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v17, type metadata accessor for __RKEntityTriggerSpecification);
      return;
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
    v55 = *(v17 + *(v54 + 48));
    v56 = *(v17 + *(v54 + 64));

    v57 = v178;
    v58 = v174;
    v59 = v181;
    (*(v178 + 32))(v174, v17, v181);
    v184 = v18;
    v185 = v19;
    v61 = v175;
    v60 = v176;
    v186 = v176;
    v187 = v175;
    v62 = __USDExportContext.pathTo(_:)(v58);
    if (!v62)
    {

      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v92 = 0;
      swift_willThrow();

      (*(v57 + 8))(v58, v59);
      return;
    }

    v63 = v62;
    v171 = v55;
    v64 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
    v65 = objc_allocWithZone(MEMORY[0x1E69DED68]);
    v66 = MEMORY[0x1C68F3280](0x6564696C6C6F432FLL, 0xEF72656767697254);
    v67 = [v65 initWithString_];

    v68 = v180;
    if (!v67)
    {
      goto LABEL_76;
    }

    v69 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

    [v68 setMetadataWithKey:v64 value:v69];
    v70 = v177;
    setInfoId(_:on:)(0x6564696C6C6F43, 0xE700000000000000, v68);
    if (v70)
    {

LABEL_21:

      (*(v178 + 8))(v58, v181);
      return;
    }

    v107 = *MEMORY[0x1E69DEE08];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1C1898160;
    *(v108 + 32) = v63;
    v170 = v63;
    v109 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
    v110 = [v68 newPropertyWithName:v109 type:v107 role:0];

    if (!v110)
    {

      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v148 = xmmword_1C18D1670;
      *(v148 + 16) = v107;
      *(v148 + 24) = 0;
      *(v148 + 32) = v68;
      swift_willThrow();
      v149 = v107;

      goto LABEL_21;
    }

    v169 = v107;
    v111 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v112 = v110;
    v177 = v111;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v112 setObjectPathArray_];
    swift_bridgeObjectRelease_n();

    v183 = MEMORY[0x1E69E7CC0];
    v114 = *(v171 + 16);
    if (v114)
    {
      v115 = v178;
      v116 = v171 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
      swift_beginAccess();
      v118 = *(v115 + 16);
      v117 = v115 + 16;
      v173 = v118;
      v119 = *(v117 + 56);
      v172 = MEMORY[0x1E69E7CC0];
      v120 = v179;
      (v118)(v179, v116, v181);
      while (1)
      {
        v122 = v120;
        v123 = *(v61 + 16);
        if (*(v123 + 16) && (v124 = specialized __RawDictionaryStorage.find<A>(_:)(v122), (v125 & 1) != 0))
        {
          v126 = *(*(v123 + 56) + 8 * v124);
          v127 = v126;
        }

        else
        {
          v126 = 0;
        }

        v182[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13USKObjectPathCSgMd, &_sSo13USKObjectPathCSgMR);
        v182[0] = v126;
        v120 = v179;
        v121 = v181;
        (*(v117 - 8))(v179, v181);
        outlined init with copy of Any(v182, &v184);
        outlined destroy of __USKObjectPathWrapper(v182);
        if (swift_dynamicCast())
        {
          MEMORY[0x1C68F3650]();
          if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v172 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v172 = v183;
          v121 = v181;
          v120 = v179;
        }

        v116 += v119;
        if (!--v114)
        {
          break;
        }

        (v173)(v120, v116, v121);
      }

      v68 = v180;
      v60 = v176;
      v58 = v174;
      v146 = v170;
      v147 = v172;
    }

    else
    {

      v147 = MEMORY[0x1E69E7CC0];
      v121 = v181;
      v146 = v170;
    }

    v157 = v178;
    v158 = v169;
    if (v147 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_66;
      }
    }

    else if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_66:
      v159 = MEMORY[0x1C68F3280](0x726564696C6C6F63, 0xE900000000000073);
      v160 = [v68 newPropertyWithName:v159 type:v158 role:0];

      if (v160)
      {

        v161 = v160;
        v162 = Array._bridgeToObjectiveC()().super.isa;
        [v161 setObjectPathArray_];

        swift_bridgeObjectRelease_n();
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v166 = xmmword_1C18D1660;
        *(v166 + 16) = v158;
        *(v166 + 24) = 0;
        *(v166 + 32) = v68;
        swift_willThrow();
        v167 = v158;
      }

      (*(v157 + 8))(v58, v181);
      return;
    }

    lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
    swift_allocError();
    *v168 = 0;
    swift_willThrow();

    (*(v157 + 8))(v58, v121);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    v33 = v178;
    v34 = v181;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_30;
    }

    v35 = v172;
    (*(v178 + 32))(v172, v17, v181);
    v184 = v18;
    v185 = v19;
    v36 = v176;
    v186 = v176;
    v187 = v175;
    v37 = v35;
    v38 = __USDExportContext.pathTo(_:)(v35);
    if (v38)
    {
      v39 = v38;
      v40 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
      v41 = objc_allocWithZone(MEMORY[0x1E69DED68]);
      v42 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF800);
      v43 = [v41 initWithString_];

      v44 = v180;
      if (!v43)
      {
LABEL_78:
        __break(1u);
        return;
      }

      v45 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

      [v44 setMetadataWithKey:v40 value:v45];
      v46 = v177;
      setInfoId(_:on:)(0x7574736547706154, 0xEA00000000006572, v44);
      if (!v46)
      {
        v47 = *MEMORY[0x1E69DEE08];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1C1898160;
        *(v48 + 32) = v39;
        v49 = v39;
        v50 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
        v51 = [v44 newPropertyWithName:v50 type:v47 role:0];

        if (v51)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

          v52 = v51;
          v53 = Array._bridgeToObjectiveC()().super.isa;
          [v52 setObjectPathArray_];

          swift_bridgeObjectRelease_n();
        }

        else
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v154 = xmmword_1C18D1670;
          *(v154 + 16) = v47;
          *(v154 + 24) = 0;
          *(v154 + 32) = v44;
          swift_willThrow();
          v155 = v44;
          v156 = v47;
        }

        goto LABEL_29;
      }

LABEL_28:

LABEL_29:
      (*(v33 + 8))(v37, v181);
      return;
    }

LABEL_31:
    lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
    swift_allocError();
    *v91 = 0;
    swift_willThrow();

    (*(v33 + 8))(v37, v34);
    return;
  }

  v81 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR) + 48));
  v33 = v178;
  v82 = v173;
  v34 = v181;
  (*(v178 + 32))(v173, v17, v181);
  v184 = v18;
  v185 = v19;
  v36 = v176;
  v186 = v176;
  v187 = v175;
  v37 = v82;
  v83 = __USDExportContext.pathTo(_:)(v82);
  if (!v83)
  {
    goto LABEL_31;
  }

  v39 = v83;
  v84 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
  v85 = objc_allocWithZone(MEMORY[0x1E69DED68]);
  v86 = MEMORY[0x1C68F3280](0xD000000000000019, 0x80000001C18EF840);
  v87 = [v85 initWithString_];

  v44 = v180;
  if (!v87)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v88 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

  [v44 setMetadataWithKey:v84 value:v88];
  v89 = v177;
  setInfoId(_:on:)(0xD000000000000011, 0x80000001C18DCF10, v44);
  if (v89)
  {
    goto LABEL_28;
  }

  v128 = *MEMORY[0x1E69DEE08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1C1898160;
  *(v129 + 32) = v39;
  v130 = v39;
  v131 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v132 = [v44 newPropertyWithName:v131 type:v128 role:0];

  if (v132)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v133 = v132;
    v134 = Array._bridgeToObjectiveC()().super.isa;
    [v133 setObjectPathArray_];
    swift_bridgeObjectRelease_n();

    v135 = *MEMORY[0x1E69DED98];
    v136 = MEMORY[0x1C68F3280](0x65636E6174736964, 0xE800000000000000);
    v137 = [v44 newPropertyWithName:v136 type:v135 role:0];

    v138 = v176;
    if (v137)
    {
      v139 = v137;
      [v139 setDoubleValue_];
    }

    else
    {
      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v163 = xmmword_1C18D1680;
      *(v163 + 16) = v135;
      *(v163 + 24) = 0;
      *(v163 + 32) = v44;
      swift_willThrow();
      v164 = v44;
      v165 = v135;
    }

    (*(v178 + 8))(v37, v181);
  }

  else
  {
    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v150 = xmmword_1C18D1670;
    *(v150 + 16) = v128;
    *(v150 + 24) = 0;
    *(v150 + 32) = v44;
    swift_willThrow();
    v151 = v44;
    v152 = v128;

    (*(v178 + 8))(v37, v181);
  }
}

void __RKEntityActionSpecification.encode(to:at:)(double *a1, uint64_t a2)
{
  *&v933 = a2;
  v901 = type metadata accessor for __RKEntityHideActionArguments(0);
  v3 = *(*(v901 - 1) + 64);
  MEMORY[0x1EEE9AC00](v901);
  v922 = &v894 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v900 = type metadata accessor for __RKEntityShowActionArguments(0);
  v5 = *(*(v900 - 1) + 64);
  MEMORY[0x1EEE9AC00](v900);
  v921 = &v894 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v895 = &v894 - v9;
  v899 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v10 = *(*(v899 - 1) + 64);
  MEMORY[0x1EEE9AC00](v899);
  v923 = (&v894 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v12 = *(*(started - 1) + 64);
  MEMORY[0x1EEE9AC00](started);
  v912 = &v894 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v929 = (&v894 - v15);
  v902 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v16 = *(*(v902 - 1) + 64);
  MEMORY[0x1EEE9AC00](v902);
  v924 = &v894 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v905 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v18 = *(*(v905 - 1) + 64);
  MEMORY[0x1EEE9AC00](v905);
  v926 = &v894 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v898 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v20 = *(*(v898 - 8) + 64);
  MEMORY[0x1EEE9AC00](v898);
  v919 = &v894 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v904 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v22 = *(*(v904 - 1) + 64);
  MEMORY[0x1EEE9AC00](v904);
  v920 = &v894 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v897 = type metadata accessor for __RKEntityForceActionArguments(0);
  v24 = *(*(v897 - 8) + 64);
  MEMORY[0x1EEE9AC00](v897);
  v918 = &v894 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v909 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
  v896 = *(v909 - 8);
  v26 = *(v896 + 64);
  MEMORY[0x1EEE9AC00](v909);
  v906 = (&v894 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v908 = &v894 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v907 = (&v894 - v32);
  v903 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v33 = *(*(v903 - 1) + 64);
  MEMORY[0x1EEE9AC00](v903);
  v925 = &v894 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v914 = &v894 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v927 = type metadata accessor for UUID();
  v915 = *(v927 - 1);
  v38 = *(v915 + 64);
  MEMORY[0x1EEE9AC00](v927);
  v894 = &v894 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v894 - v41;
  v917 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v43 = *(*(v917 - 1) + 64);
  MEMORY[0x1EEE9AC00](v917);
  v911 = &v894 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v930 = &v894 - v46;
  v47 = type metadata accessor for __RKEntityActionSpecification(0);
  v913 = *(v47 - 8);
  v48 = *(v913 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v894 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v894 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v910 = &v894 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v894 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v894 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v894 - v63;
  v65 = a1[1];
  v928.f64[0] = *a1;
  v928.f64[1] = v65;
  v66 = *(a1 + 2);
  v67 = a1[3];
  v932 = v66;
  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(*&v934.f64[0], &v894 - v63, type metadata accessor for __RKEntityActionSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v68 = v930;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v930, type metadata accessor for __RKEntityAudioActionArguments);
      v69 = v917;
      v70 = v68[v917[8]];
      if (v70 != 2 && (v70 & 1) != 0)
      {
        (*(v915 + 16))(v42, v68, v927);
        v71 = v69[6];
        v72 = v68[v71];
        if (v72 == 3)
        {
          goto LABEL_495;
        }

        if (v68[v69[9]] != 3)
        {
          v73 = &v68[v69[7]];
          if (v73[8])
          {
            goto LABEL_497;
          }

          LODWORD(v926) = v68[v69[9]];
          LODWORD(v929) = v72;
          v934.f64[0] = v67;
          LODWORD(v925) = v68[v69[10]];
          if (v925 != 3)
          {
            v74 = &v68[v69[5]];
            v76 = *v74;
            v75 = v74[1];
            v924 = v76;
            v923 = v75;
            v922 = *v73;
            v77 = v911;
            *(v911 + v71) = 3;
            v78 = v69[7];
            v921 = v69[8];
            v79 = v77 + v78;
            v80 = v69[9];
            *(v77 + v80) = 3;
            (*(v915 + 32))(v77, v42, v927);
            v81 = (v77 + v69[5]);
            v82 = v923;
            *v81 = v924;
            v81[1] = v82;
            *(v77 + v71) = v929;
            *(v77 + v80) = v926;
            *v79 = v922;
            *(v79 + 8) = 0;
            v921[v77] = 0;
            *(v77 + v69[10]) = v925;
            _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v77, v61, type metadata accessor for __RKEntityAudioActionArguments);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
            v83 = *(v913 + 72);
            v84 = (*(v913 + 80) + 32) & ~*(v913 + 80);
            v85 = swift_allocObject();
            *(v85 + 16) = xmmword_1C1887600;
            _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v61, v85 + v84, type metadata accessor for __RKEntityActionSpecification);
            *v58 = 0;
            *(v58 + 1) = v85;
            v58[16] = 0;
            *(v58 + 3) = 0;
            *(v58 + 16) = 0;
            swift_storeEnumTagMultiPayload();
            v86 = v932;

            v87 = v931;
            makeParentNode #1 (from:baseName:) in __RKEntityActionSpecification.encode(to:at:)(v933, 0x756F7247706F6F4CLL, 0xE900000000000070, v86);
            if (v87)
            {

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v58, type metadata accessor for __RKEntityActionSpecification);
              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v61, type metadata accessor for __RKEntityActionSpecification);
              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v77, type metadata accessor for __RKEntityAudioActionArguments);
              v258 = v930;
              v259 = type metadata accessor for __RKEntityAudioActionArguments;
              goto LABEL_176;
            }

            v257 = v88;
            v938 = v928;
            *&v939 = v86;
            *(&v939 + 1) = *&v934.f64[0];
            __RKEntityActionSpecification.encode(to:at:)(&v938, v88);

            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v58, type metadata accessor for __RKEntityActionSpecification);
            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v61, type metadata accessor for __RKEntityActionSpecification);
            v470 = type metadata accessor for __RKEntityAudioActionArguments;
            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v911, type metadata accessor for __RKEntityAudioActionArguments);
            v471 = &v946;
LABEL_206:
            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(*(v471 - 32), v470);
            return;
          }

          goto LABEL_498;
        }

LABEL_496:
        __break(1u);
LABEL_497:
        __break(1u);
LABEL_498:
        __break(1u);
LABEL_499:
        __break(1u);
LABEL_500:
        __break(1u);
LABEL_501:
        __break(1u);
        return;
      }

      v210 = v932;
      v211 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v212 = v933;
      v213 = [v210 newNodeAtPath:v933 type:v211];
      if (!v213)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v249 = v212;
        v249[1] = v211;
        swift_willThrow();
        v250 = v212;

        v251 = type metadata accessor for __RKEntityAudioActionArguments;
        goto LABEL_94;
      }

      v214 = v213;

      v215 = v214;
      v216 = v931;
      setInfoId(_:on:)(0x6F69647541, 0xE500000000000000, v215);
      if (v216)
      {

LABEL_105:
        v259 = type metadata accessor for __RKEntityAudioActionArguments;
        v258 = v930;
        goto LABEL_176;
      }

      setInherits(from:on:)(0x63416F696475412FLL, 0xEC0000006E6F6974, v215);
      v938 = v928;
      *&v939 = v210;
      *(&v939 + 1) = v67;
      v157 = v930;
      v472 = __USDExportContext.pathTo(_:)(v930);
      if (!v472)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v516 = 0;
        swift_willThrow();

        v252 = type metadata accessor for __RKEntityAudioActionArguments;
LABEL_90:
        v259 = v252;
        v258 = v157;
        goto LABEL_176;
      }

      v473 = v472;
      v934.f64[0] = v67;
      v931 = 0;
      v474 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v475 = swift_allocObject();
      *(v475 + 16) = xmmword_1C1898160;
      *(v475 + 32) = v473;
      v476 = v473;
      v477 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v478 = v215;
      v479 = [v215 newPropertyWithName:v477 type:v474 role:0];

      if (!v479)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v549 = xmmword_1C18D1670;
        *(v549 + 16) = v474;
        *(v549 + 24) = 0;
        *(v549 + 32) = v214;
        swift_willThrow();
        v550 = v478;
LABEL_232:
        v551 = v550;
        v552 = v474;

        goto LABEL_105;
      }

      v932 = v478;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v480 = v479;

      isa = Array._bridgeToObjectiveC()().super.isa;
      [v480 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v938 = v928;
      *&v939 = v210;
      *(&v939 + 1) = *&v934.f64[0];
      v482 = v930;
      v483 = &v930[v917[5]];
      countAndFlagsBits = *v483;
      v485 = v483[1];
      v486._countAndFlagsBits = *v483;
      v486._object = v485;
      v487 = __USDEncoder.resolveResourcePath(path:)(v486);
      v931 = v488;
      if (v488)
      {

        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v482, type metadata accessor for __RKEntityAudioActionArguments);
        return;
      }

      object = v487.value._object;
      if (v487.value._object)
      {
        countAndFlagsBits = v487.value._countAndFlagsBits;
      }

      else
      {

        object = v485;
      }

      v474 = *MEMORY[0x1E69DEE18];
      v709 = MEMORY[0x1C68F3280](0x6F69647561, 0xE500000000000000);
      v710 = [v932 newPropertyWithName:v709 type:v474 role:0];

      if (!v710)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v717 = xmmword_1C18D17D0;
        *(v717 + 16) = v474;
        *(v717 + 24) = 0;
        *(v717 + 32) = v214;
        swift_willThrow();
        v550 = v932;
        goto LABEL_232;
      }

      v711 = v710;

      v712 = MEMORY[0x1C68F3280](countAndFlagsBits, object);
      [v711 setResourcePath_];
      swift_bridgeObjectRelease_n();

      v713 = *MEMORY[0x1E69DEE28];
      v714 = v930[v917[6]];
      if (v714 <= 1)
      {
        if (v930[v917[6]])
        {
          v715 = 0xE500000000000000;
          v716 = 0x6573756170;
        }

        else
        {
          v715 = 0xE400000000000000;
          v716 = 2036427888;
        }

        goto LABEL_370;
      }

      if (v714 == 2)
      {
        v715 = 0xE400000000000000;
        v716 = 1886352499;
LABEL_370:
        v754 = objc_allocWithZone(MEMORY[0x1E69DED80]);
        v755 = MEMORY[0x1C68F3280](v716, v715);

        v756 = [v754 initWithString_];

        goto LABEL_372;
      }

      v756 = 0;
LABEL_372:
      v757 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v758 = [v932 newPropertyWithName:v757 type:v713 role:0];

      if (!v758)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v769 = xmmword_1C18D1640;
        *(v769 + 16) = v713;
        *(v769 + 24) = 0;
        *(v769 + 32) = v214;
        swift_willThrow();
        v770 = v932;
        v771 = v713;

LABEL_382:
        v210 = v756;
        goto LABEL_105;
      }

      if (!v756)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v772 = 0u;
        *(v772 + 16) = 0u;
        *(v772 + 32) = 0;
        swift_willThrow();

LABEL_384:
        goto LABEL_105;
      }

      v759 = v756;
      [v758 setTokenValue_];

      v761 = &v930[v917[7]];
      v762 = 1.0;
      if ((v761[8] & 1) == 0)
      {
        v760.n128_u64[0] = *v761;
        v762 = 0.0;
        if (*v761 >= 0.0)
        {
          v762 = *v761;
        }
      }

      v763 = *MEMORY[0x1E69DED98];
      v764 = MEMORY[0x1C68F3280](1852399975, 0xE400000000000000, v760);
      v765 = [v932 newPropertyWithName:v764 type:v763 role:0];

      if (!v765)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v781 = xmmword_1C18D17C0;
        *(v781 + 16) = v763;
        *(v781 + 24) = 0;
        *(v781 + 32) = v214;
        swift_willThrow();
        v782 = v932;
        v783 = v763;

        goto LABEL_105;
      }

      *&v934.f64[0] = v476;
      [v765 setDoubleValue_];

      v766 = v930[v917[9]];
      if (v766 <= 1)
      {
        v767 = 0xE700000000000000;
        if (v930[v917[9]])
        {
          v768 = 0x746E6569626D61;
        }

        else
        {
          v768 = 0x6C616974617073;
        }

        goto LABEL_426;
      }

      if (v766 == 2)
      {
        v767 = 0xEA00000000006C61;
        v768 = 0x69746170536E6F6ELL;
LABEL_426:
        v809 = objc_allocWithZone(MEMORY[0x1E69DED80]);
        v810 = MEMORY[0x1C68F3280](v768, v767);

        v756 = [v809 initWithString_];

        goto LABEL_428;
      }

      v756 = 0;
LABEL_428:
      v811 = MEMORY[0x1C68F3280](0x646F4D6C61727561, 0xE900000000000065);
      v812 = [v932 newPropertyWithName:v811 type:v713 role:0];

      if (!v812)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v817 = xmmword_1C18D17B0;
        *(v817 + 16) = v713;
        *(v817 + 24) = 0;
        *(v817 + 32) = v214;
        swift_willThrow();
        v770 = v932;
        v818 = v713;

        goto LABEL_382;
      }

      if (!v756)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v819 = 0u;
        *(v819 + 16) = 0u;
        *(v819 + 32) = 0;
        swift_willThrow();

        goto LABEL_384;
      }

      v813 = v756;
      [v812 &selRef:v813 newComputePipelineStateWithDescriptor:? options:? completionHandler:? + 6];

      v814 = v930[v917[10]];
      if (v814 > 1)
      {
        if (v814 != 2)
        {
          v868 = 0;
          goto LABEL_470;
        }

        v816 = 0xE400000000000000;
        v815 = 1886352499;
      }

      else if (v930[v917[10]])
      {
        v816 = 0xE600000000000000;
        v815 = 0x65726F6E6769;
      }

      else
      {
        v815 = 0x776F6C6C61;
        v816 = 0xE500000000000000;
      }

      v866 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v867 = MEMORY[0x1C68F3280](v815, v816);

      v868 = [v866 initWithString_];

LABEL_470:
      v869 = MEMORY[0x1C68F3280](0xD000000000000018, 0x80000001C18DEA50);
      v870 = [v932 newPropertyWithName:v869 type:v713 role:0];

      if (v870)
      {
        if (v868)
        {
          v871 = v870;
          v872 = v868;
          [v871 &selRef:v872 newComputePipelineStateWithDescriptor:? options:? completionHandler:? + 6];

          v259 = type metadata accessor for __RKEntityAudioActionArguments;
          v258 = v930;
          goto LABEL_176;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v877 = 0u;
        *(v877 + 16) = 0u;
        *(v877 + 32) = 0;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v873 = 0xD000000000000018;
        v873[1] = 0x80000001C18DEA50;
        v873[2] = v713;
        v873[3] = 0;
        v873[4] = v214;
        swift_willThrow();
        v874 = v932;
        v875 = v713;

        v210 = v868;
      }

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v930, type metadata accessor for __RKEntityAudioActionArguments);
      return;
    case 1u:
      v157 = v914;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v914, type metadata accessor for __RKChangeSceneActionArguments);
      v158 = v932;
      v159 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v160 = v933;
      v161 = [v158 newNodeAtPath:v933 type:v159];
      if (v161)
      {
        v162 = v161;

        v163 = v162;
        v164 = v931;
        setInfoId(_:on:)(0x635365676E616843, 0xEB00000000656E65, v163);
        if (!v164)
        {

          setInherits(from:on:)(0xD000000000000012, 0x80000001C18EF7C0, v163);
          v938 = v928;
          *&v939 = v158;
          *(&v939 + 1) = v67;
          v413 = __USDExportContext.pathTo(_:)(&v157[*(v35 + 20)]);
          if (v413)
          {
            v414 = *MEMORY[0x1E69DEE00];
            v415 = v413;
            v416 = MEMORY[0x1C68F3280](0x656E656373, 0xE500000000000000);
            v417 = [v163 newPropertyWithName:v416 type:v414 role:0];

            if (!v417)
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v536 = xmmword_1C18D17A0;
              *(v536 + 16) = v414;
              *(v536 + 24) = 0;
              *(v536 + 32) = v162;
              swift_willThrow();
              v537 = v163;
              v538 = v414;

              goto LABEL_89;
            }

            v418 = v415;
            v419 = v417;
            [v419 setObjectPath_];
          }

          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v157, type metadata accessor for __RKChangeSceneActionArguments);
          return;
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v241 = v160;
        v241[1] = v159;
        swift_willThrow();
        v242 = v160;
      }

LABEL_89:

      v252 = type metadata accessor for __RKChangeSceneActionArguments;
      goto LABEL_90;
    case 2u:
      v147 = v64;
      v64 = v919;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v147, v919, type metadata accessor for __RKEntityCustomActionArguments);
      v148 = v932;
      v149 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v150 = v933;
      v151 = [v148 newNodeAtPath:v933 type:v149];
      if (v151)
      {
        v152 = v151;
        v153 = v67;

        v154 = v152;
        v155 = v931;
        setInfoId(_:on:)(0x6163696669746F4ELL, 0xEC0000006E6F6974, v154);
        if (v155)
        {

          v156 = type metadata accessor for __RKEntityCustomActionArguments;
          goto LABEL_98;
        }

        setInherits(from:on:)(0xD000000000000013, 0x80000001C18EF760, v154);
        v938 = v928;
        *&v939 = v148;
        *(&v939 + 1) = v153;
        v394 = __USDExportContext.pathTo(_:)(v64);
        if (v394)
        {
          v395 = v394;
          v396 = *MEMORY[0x1E69DEE08];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v397 = swift_allocObject();
          *(v397 + 16) = xmmword_1C1898160;
          *(v397 + 32) = v395;
          v398 = v395;
          v399 = v154;
          v400 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
          v401 = [v154 newPropertyWithName:v400 type:v396 role:0];

          if (!v401)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v533 = xmmword_1C18D1670;
            *(v533 + 16) = v396;
            *(v533 + 24) = 0;
            *(v533 + 32) = v152;
            swift_willThrow();
            v534 = v399;
            v535 = v396;

            v259 = type metadata accessor for __RKEntityCustomActionArguments;
            v258 = v919;
            goto LABEL_176;
          }

          *&v934.f64[0] = v398;
          v931 = 0;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
          v402 = v401;

          v403 = Array._bridgeToObjectiveC()().super.isa;
          [v402 setObjectPathArray_];
          swift_bridgeObjectRelease_n();

          v404 = *MEMORY[0x1E69DEE20];
          v157 = v919;
          v405 = &v919[*(v898 + 20)];
          v407 = *v405;
          v406 = *(v405 + 1);
          v408 = MEMORY[0x1C68F3280](0x696669746E656469, 0xEA00000000007265);
          v932 = v399;
          v409 = [v399 newPropertyWithName:v408 type:v404 role:0];

          if (!v409)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v567 = xmmword_1C18D1650;
            *(v567 + 16) = v404;
            *(v567 + 24) = 0;
            *(v567 + 32) = v152;
            swift_willThrow();
            v568 = v404;

            v252 = type metadata accessor for __RKEntityCustomActionArguments;
            goto LABEL_90;
          }

          v410 = v409;

          v411 = MEMORY[0x1C68F3280](v407, v406);
          [v410 setStringValue_];

          v412 = type metadata accessor for __RKEntityCustomActionArguments;
LABEL_175:
          v259 = v412;
          v258 = v157;
          goto LABEL_176;
        }

        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v512 = 0;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v239 = v150;
        v239[1] = v149;
        swift_willThrow();
        v240 = v150;
      }

      v156 = type metadata accessor for __RKEntityCustomActionArguments;
      goto LABEL_98;
    case 3u:
      v138 = v64;
      v64 = v925;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v138, v925, type metadata accessor for __RKEntityEmphasisActionArguments);
      v139 = v932;
      v140 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v141 = v933;
      v142 = [v139 newNodeAtPath:v933 type:v140];
      if (!v142)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v237 = v141;
        v237[1] = v140;
        swift_willThrow();
        v238 = v141;
LABEL_85:

        v156 = type metadata accessor for __RKEntityEmphasisActionArguments;
        goto LABEL_98;
      }

      v143 = v142;
      v144 = v67;

      v145 = v143;
      v146 = v931;
      setInfoId(_:on:)(0x7A69736168706D45, 0xE900000000000065, v145);
      if (v146)
      {

LABEL_84:
        goto LABEL_85;
      }

      setInherits(from:on:)(0xD000000000000010, 0x80000001C18EF7A0, v145);
      v938 = v928;
      *&v939 = v139;
      *(&v939 + 1) = v144;
      v377 = __USDExportContext.pathTo(_:)(v64);
      if (!v377)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v511 = 0;
        swift_willThrow();
        goto LABEL_84;
      }

      v378 = v377;
      v379 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v380 = swift_allocObject();
      *(v380 + 16) = xmmword_1C1898160;
      *(v380 + 32) = v378;
      v381 = v378;
      v382 = v145;
      v383 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v384 = [v145 newPropertyWithName:v383 type:v379 role:0];

      if (!v384)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v530 = xmmword_1C18D1670;
        *(v530 + 16) = v379;
        *(v530 + 24) = 0;
        *(v530 + 32) = v143;
        swift_willThrow();
        v531 = v382;
        v532 = v379;

LABEL_242:

        v259 = type metadata accessor for __RKEntityEmphasisActionArguments;
        v258 = v925;
        goto LABEL_176;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v385 = v384;

      v386 = Array._bridgeToObjectiveC()().super.isa;
      [v385 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v387 = *MEMORY[0x1E69DED98];
      v388 = &v925[v903[5]];
      v389 = *v388;
      v390 = v388[4];
      v391 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v932 = v382;
      v392 = [v382 newPropertyWithName:v391 type:v387 role:0];

      if (!v392)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v565 = xmmword_1C18D16A0;
        *(v565 + 16) = v387;
        *(v565 + 24) = 0;
        *(v565 + 32) = v143;
        swift_willThrow();
        v566 = v387;
        goto LABEL_241;
      }

      if (v390)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v393 = 0u;
        *(v393 + 16) = 0u;
        *(v393 + 32) = 0;
        swift_willThrow();

        v381 = v392;
LABEL_241:

        goto LABEL_242;
      }

      [v392 setDoubleValue_];

      v607 = *MEMORY[0x1E69DEE28];
      v608 = v925[v903[7]];
      if (v608 > 1)
      {
        v609 = &selRef_localTransform;
        if (v608 != 2)
        {
          v722 = 0;
LABEL_332:
          v723 = MEMORY[0x1C68F3280](0x656C797473, 0xE500000000000000);
          v724 = [v932 v609[81]];

          if (v724)
          {
            v558 = v925;
            if (!v722)
            {
LABEL_352:
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v745 = 0u;
              *(v745 + 16) = 0u;
              *(v745 + 32) = 0;
              swift_willThrow();

LABEL_363:
              v559 = type metadata accessor for __RKEntityEmphasisActionArguments;
              goto LABEL_364;
            }

            v725 = v722;
            [v724 setTokenValue_];

            v726 = *(v558 + v903[8]);
            v931 = 0;
            if (v726 == 8)
            {
              v722 = 0;
            }

            else
            {
              LOBYTE(v938.f64[0]) = v726;
              v737 = __RKEntityEmphasisAnimationType.rawValue.getter();
              v739 = v738;
              v740 = objc_allocWithZone(MEMORY[0x1E69DED80]);
              v741 = MEMORY[0x1C68F3280](v737, v739);

              v722 = [v740 initWithString_];
            }

            v742 = MEMORY[0x1C68F3280](0x79546E6F69746F6DLL, 0xEA00000000006570);
            v724 = [v932 newPropertyWithName:v742 type:v607 role:0];

            if (v724)
            {
              v558 = v925;
              if (v722)
              {
                v743 = v724;
                v744 = v722;
                [v743 setTokenValue_];

                v259 = type metadata accessor for __RKEntityEmphasisActionArguments;
                v258 = v558;
                goto LABEL_176;
              }

              goto LABEL_352;
            }

            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v728 = xmmword_1C18D1750;
          }

          else
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v728 = xmmword_1C18D1760;
          }

          *v727 = v728;
          *(v727 + 16) = v607;
          *(v727 + 24) = 0;
          *(v727 + 32) = v143;
          swift_willThrow();
          v749 = v932;
          v750 = v607;

          v139 = v722;
          v558 = v925;
          goto LABEL_363;
        }

        v611 = 0xE400000000000000;
        v610 = 1684826487;
      }

      else
      {
        v609 = &selRef_localTransform;
        if (v925[v903[7]])
        {
          v611 = 0xE700000000000000;
          v610 = 0x6C756679616C70;
        }

        else
        {
          v610 = 0x6369736162;
          v611 = 0xE500000000000000;
        }
      }

      v720 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v721 = MEMORY[0x1C68F3280](v610, v611);

      v722 = [v720 initWithString_];

      goto LABEL_332;
    case 6u:
      v934.f64[0] = v67;
      v104 = *v64;
      v105 = *(v64 + 1);
      v106 = *(v64 + 3);
      v107 = v64[32];
      v108 = v932;
      v109 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v110 = v933;
      v111 = [v108 newNodeAtPath:v933 type:v109];
      if (!v111)
      {

        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v229 = v110;
        v229[1] = v109;
        swift_willThrow();
        v230 = v110;

        return;
      }

      v112 = v111;

      v113 = v112;
      v114 = v931;
      setInfoId(_:on:)(0x70756F7247, 0xE500000000000000, v113);
      if (v114)
      {

        return;
      }

      setInherits(from:on:)(0x634170756F72472FLL, 0xEC0000006E6F6974, v113);
      *&v933 = v105;
      v930 = v108;
      v931 = 0;
      v282 = *MEMORY[0x1E69DEE28];
      v283 = v104 == 0;
      if (v104)
      {
        v284 = 0x6C6169726573;
      }

      else
      {
        v284 = 0x6C656C6C61726170;
      }

      if (v283)
      {
        v285 = 0xE800000000000000;
      }

      else
      {
        v285 = 0xE600000000000000;
      }

      v286 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v287 = MEMORY[0x1C68F3280](v284, v285);

      v288 = [v286 initWithString_];

      v289 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v290 = [v113 newPropertyWithName:v289 type:v282 role:0];

      if (!v290)
      {

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v505 = xmmword_1C18D1640;
        *(v505 + 16) = v282;
        *(v505 + 24) = 0;
        *(v505 + 32) = v112;
        swift_willThrow();
        v506 = v113;
        v507 = v282;

        goto LABEL_293;
      }

      v932 = v113;
      if (!v288)
      {

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v520 = 0u;
        *(v520 + 16) = 0u;
        *(v520 + 32) = 0;
        swift_willThrow();

        goto LABEL_293;
      }

      v291 = v288;
      [v290 setTokenValue_];

      if (v107)
      {
        goto LABEL_500;
      }

      v124 = *MEMORY[0x1E69DED90];
      v292 = MEMORY[0x1C68F3280](0x73706F6F6CLL, 0xE500000000000000);
      v293 = [v932 newPropertyWithName:v292 type:v124 role:0];

      v294 = v931;
      v295 = v910;
      if (v293)
      {
        [v293 setBoolValue_];

        if (v106 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v106 <= 0x7FFFFFFF)
        {
          v124 = *MEMORY[0x1E69DEDF0];
          v296 = MEMORY[0x1C68F3280](0x436D726F66726570, 0xEC000000746E756FLL);
          v297 = [v932 newPropertyWithName:v296 type:v124 role:0];

          if (v297)
          {
            [v297 setIntValue_];

            v298 = 0;
            v926 = MEMORY[0x1E69E7CC0];
            v937[0] = MEMORY[0x1E69E7CC0];
            v929 = (v896 + 56);
            v927 = (v896 + 48);
            v299 = v932;
            while (1)
            {
              v300 = *(v933 + 16);
              v301 = v909;
              v302 = v908;
              v182 = v907;
              if (v298 == v300)
              {
                v931 = v298;
                v303 = 1;
              }

              else
              {
                if (v298 >= v300)
                {
                  __break(1u);
LABEL_490:
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v889 = *&v934.f64[0];
                  v889[1] = v294;
                  v890 = v933;
                  v889[2] = v933;
                  v889[3] = 0;
                  v889[4] = v107;
                  swift_willThrow();
                  v891 = v932;
                  v892 = v890;

                  v182 = v301;
LABEL_492:

                  (*(v915 + 8))(v894, v927);
LABEL_287:
                  v259 = type metadata accessor for __RKEntityTransformActionArguments;
                  v258 = v923;
                  goto LABEL_176;
                }

                v304 = v298 + 1;
                v305 = v933 + ((*(v913 + 80) + 32) & ~*(v913 + 80)) + *(v913 + 72) * v298;
                v306 = *(v909 + 48);
                v124 = v906;
                *v906 = v298;
                _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v305, v124 + v306, type metadata accessor for __RKEntityActionSpecification);
                outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v124, v302, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
                v303 = 0;
                v931 = v304;
              }

              (*v929)(v302, v303, 1, v301);
              outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v302, v182, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
              if ((*v927)(v182, 1, v301) == 1)
              {

                v659 = *MEMORY[0x1E69DEE08];
                specialized Sequence.compactMap<A>(_:)(v926);

                v660 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000);
                v661 = [v299 newPropertyWithName:v660 type:v659 role:0];

                if (v661)
                {
                  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
                  v662 = v661;

                  v663 = Array._bridgeToObjectiveC()().super.isa;
                  [v662 setObjectPathArray_];
                  swift_bridgeObjectRelease_n();

                  return;
                }

                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v729 = xmmword_1C18D1630;
                *(v729 + 16) = v659;
                *(v729 + 24) = 0;
                *(v729 + 32) = v112;
                swift_willThrow();
                v730 = v299;
                v731 = v659;

LABEL_293:

                return;
              }

              v307 = v294;
              v107 = *v182;
              _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v182 + v301[12], v295, type metadata accessor for __RKEntityActionSpecification);
              v308 = [v299 path];
              v938.f64[0] = 6.99371587e-307;
              v938.f64[1] = -1.39234638e188;
              if (__OFADD__(v107, 1))
              {
                __break(1u);
LABEL_483:
                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v884 = xmmword_1C18D1740;
                *(v884 + 16) = v301;
                *(v884 + 24) = 0;
                *(v884 + 32) = v112;
LABEL_238:
                swift_willThrow();
                v561 = v301;

LABEL_342:
                v259 = type metadata accessor for __RKEntityHideActionArguments;
                v258 = v922;
LABEL_176:
                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v258, v259);
                return;
              }

              v309 = v308;
              v935 = v107 + 1;
              v310 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1C68F3410](v310);

              v311 = v938;
              v312 = [v309 stringValue];
              if (v312)
              {
                v313 = v312;
                v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v316 = v315;
              }

              else
              {
                v314 = 0;
                v316 = 0xE000000000000000;
              }

              *&v938.f64[0] = v314;
              *&v938.f64[1] = v316;
              MEMORY[0x1C68F3410](47, 0xE100000000000000);
              MEMORY[0x1C68F3410](*&v311.f64[0], *&v311.f64[1]);
              v317 = v938;
              v318 = objc_allocWithZone(MEMORY[0x1E69DED68]);
              v319 = MEMORY[0x1C68F3280](*&v317.f64[0], *&v317.f64[1]);

              v320 = [v318 initWithString_];

              if (!v320)
              {
                goto LABEL_499;
              }

              v938 = v928;
              *&v939 = v930;
              *(&v939 + 1) = *&v934.f64[0];
              v295 = v910;
              __RKEntityActionSpecification.encode(to:at:)(&v938, v320);
              v124 = v307;
              v299 = v932;
              if (v307)
              {

                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v295, type metadata accessor for __RKEntityActionSpecification);

                return;
              }

              MEMORY[0x1C68F3650]();
              if (*((v937[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v937[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v107 = *((v937[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v926 = v937[0];

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v295, type metadata accessor for __RKEntityActionSpecification);
              v294 = 0;
              v298 = v931;
            }
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          v576 = xmmword_1C18D1780;
LABEL_292:
          *v575 = v576;
          *(v575 + 16) = v124;
          *(v575 + 24) = 0;
          *(v575 + 32) = v112;
          swift_willThrow();
          v658 = v124;
          goto LABEL_293;
        }

        __break(1u);
LABEL_495:
        __break(1u);
        goto LABEL_496;
      }

      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      v576 = xmmword_1C18D1790;
      goto LABEL_292;
    case 7u:
      v123 = v64;
      v64 = v922;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v123, v922, type metadata accessor for __RKEntityHideActionArguments);
      v124 = v932;
      v125 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v126 = v933;
      v127 = [v124 newNodeAtPath:v933 type:v125];
      if (!v127)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v233 = v126;
        v233[1] = v125;
        swift_willThrow();
        v234 = v126;
LABEL_79:

        v156 = type metadata accessor for __RKEntityHideActionArguments;
        goto LABEL_98;
      }

      v112 = v127;
      v128 = v67;

      v129 = v112;
      v130 = v931;
      setInfoId(_:on:)(0x696C696269736956, 0xEA00000000007974, v129);
      if (v130)
      {

LABEL_78:
        goto LABEL_79;
      }

      setInherits(from:on:)(0xD000000000000011, 0x80000001C18EF700, v129);
      v938 = v928;
      *&v939 = v124;
      *(&v939 + 1) = v128;
      v337 = __USDExportContext.pathTo(_:)(v64);
      if (!v337)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v509 = 0;
        swift_willThrow();
        goto LABEL_78;
      }

      v338 = v337;
      v339 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v340 = swift_allocObject();
      *(v340 + 16) = xmmword_1C1898160;
      *(v340 + 32) = v338;
      v295 = v338;
      v341 = v129;
      v342 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v343 = [v129 newPropertyWithName:v342 type:v339 role:0];

      if (!v343)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v524 = xmmword_1C18D1670;
        *(v524 + 16) = v339;
        *(v524 + 24) = 0;
        *(v524 + 32) = v112;
        swift_willThrow();
        v525 = v341;
        v526 = v339;

        goto LABEL_342;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v344 = v343;

      v345 = Array._bridgeToObjectiveC()().super.isa;
      [v344 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v301 = *MEMORY[0x1E69DED98];
      v346 = &v922[v901[5]];
      v347 = *v346;
      v348 = v346[4];
      v349 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v932 = v341;
      v350 = [v341 newPropertyWithName:v349 type:v301 role:0];

      if (!v350)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v560 = xmmword_1C18D16A0;
        *(v560 + 16) = v301;
        *(v560 + 24) = 0;
        *(v560 + 32) = v112;
        goto LABEL_238;
      }

      if (v348)
      {
        goto LABEL_156;
      }

      v931 = 0;
      [v350 setDoubleValue_];

      v595 = *MEMORY[0x1E69DEE28];
      v596 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v597 = MEMORY[0x1C68F3280](1701079400, 0xE400000000000000);
      v598 = [v596 initWithString_];

      v599 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v600 = [v932 newPropertyWithName:v599 type:v595 role:0];

      if (v600)
      {
        if (v598)
        {
          v601 = v598;
          [v600 setTokenValue_];

          v602 = v901;
          v603 = v901[8];
          v604 = v922;
          LOBYTE(v938.f64[0]) = v922[v901[7]];
          LOBYTE(v937[0]) = v922[v603];
          v605 = v932;
          v606 = v931;
          __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(&v938, v937, v932);
          if (v606)
          {

            v259 = type metadata accessor for __RKEntityHideActionArguments;
            v258 = v604;
            goto LABEL_176;
          }

          v931 = 0;
          if (*(v604 + v602[14]) > 1u)
          {
            if (*(v604 + v602[14]) != 2)
            {
              v791 = 0;
              goto LABEL_406;
            }

            v747 = 0xE400000000000000;
            v746 = 1684826487;
          }

          else if (*(v604 + v602[14]))
          {
            v747 = 0xE700000000000000;
            v746 = 0x6C756679616C70;
          }

          else
          {
            v746 = 0x6369736162;
            v747 = 0xE500000000000000;
          }

          v789 = objc_allocWithZone(MEMORY[0x1E69DED80]);
          v790 = MEMORY[0x1C68F3280](v746, v747);

          v791 = [v789 initWithString_];

LABEL_406:
          v792 = MEMORY[0x1C68F3280](0x656C797473, 0xE500000000000000);
          v793 = [v932 newPropertyWithName:v792 type:v595 role:0];

          if (!v793)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v796 = xmmword_1C18D1760;
            *(v796 + 16) = v595;
            *(v796 + 24) = 0;
            *(v796 + 32) = v112;
            swift_willThrow();
            v797 = v932;
            v798 = v595;

            v124 = v791;
            goto LABEL_342;
          }

          if (!v791)
          {
            goto LABEL_466;
          }

          v794 = v791;
          [v793 setTokenValue_];

          if (v922[v901[15]] == 10)
          {
            v795 = 0;
          }

          else
          {
            LOBYTE(v938.f64[0]) = v922[v901[15]];
            v827 = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(&v938);
            v828 = __RKEntityActionVisibilityTypeUSD.rawValue.getter(v827);
            v830 = v829;
            v831 = objc_allocWithZone(MEMORY[0x1E69DED80]);
            v832 = MEMORY[0x1C68F3280](v828, v830);

            v795 = [v831 initWithString_];
          }

          v833 = MEMORY[0x1C68F3280](0x79546E6F69746F6DLL, 0xEA00000000006570);
          v793 = [v932 newPropertyWithName:v833 type:v595 role:0];

          if (!v793)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v856 = xmmword_1C18D1750;
            *(v856 + 16) = v595;
            *(v856 + 24) = 0;
            *(v856 + 32) = v112;
            swift_willThrow();
            v857 = v932;
            v858 = v595;

            v124 = v795;
            goto LABEL_342;
          }

          if (!v795)
          {
LABEL_466:
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v865 = 0u;
            *(v865 + 16) = 0u;
            *(v865 + 32) = 0;
            swift_willThrow();

            goto LABEL_342;
          }

          v834 = v795;
          [v793 setTokenValue_];

          v835 = &v922[v901[6]];
          v836 = *v835;
          v837 = v835[4];
          v838 = MEMORY[0x1C68F3280](0x7473694465766F6DLL, 0xEC00000065636E61);
          v350 = [v932 newPropertyWithName:v838 type:v301 role:0];

          if (!v350)
          {
            goto LABEL_483;
          }

          if ((v837 & 1) == 0)
          {
            v887 = v350;
            [v887 setDoubleValue_];

            v259 = type metadata accessor for __RKEntityHideActionArguments;
            v258 = v922;
            goto LABEL_176;
          }

LABEL_156:
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v351 = 0u;
          *(v351 + 16) = 0u;
          *(v351 + 32) = 0;
          swift_willThrow();

          goto LABEL_342;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v733 = 0u;
        *(v733 + 16) = 0u;
        *(v733 + 32) = 0;
        swift_willThrow();
        v598 = v600;
        v703 = v932;
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v702 = xmmword_1C18D1640;
        *(v702 + 16) = v595;
        *(v702 + 24) = 0;
        *(v702 + 32) = v112;
        swift_willThrow();
        v703 = v932;
        v704 = v595;
      }

      goto LABEL_342;
    case 8u:
      v68 = v918;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v918, type metadata accessor for __RKEntityForceActionArguments);
      v165 = v932;
      v166 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v167 = v933;
      v168 = [v165 newNodeAtPath:v933 type:v166];
      if (v168)
      {
        v169 = v168;

        v170 = v169;
        v171 = v931;
        setInfoId(_:on:)(0x65736C75706D49, 0xE700000000000000, v170);
        if (v171)
        {
        }

        else
        {

          setInherits(from:on:)(0x65736C75706D492FLL, 0xEE006E6F69746341, v170);
          v938 = v928;
          *&v939 = v165;
          *(&v939 + 1) = v67;
          v420 = __USDExportContext.pathTo(_:)(v68);
          if (v420)
          {
            v421 = v420;
            v931 = 0;
            v422 = *MEMORY[0x1E69DEE08];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v423 = swift_allocObject();
            *(v423 + 16) = xmmword_1C1898160;
            *(v423 + 32) = v421;
            v424 = v421;
            v425 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
            v426 = [v170 newPropertyWithName:v425 type:v422 role:0];

            if (!v426)
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v539 = xmmword_1C18D1670;
              *(v539 + 16) = v422;
              *(v539 + 24) = 0;
              *(v539 + 32) = v169;
              swift_willThrow();
              v540 = v170;
              v541 = v422;

              v259 = type metadata accessor for __RKEntityForceActionArguments;
              v258 = v918;
              goto LABEL_176;
            }

            v427 = v170;
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
            v428 = v426;

            v429 = Array._bridgeToObjectiveC()().super.isa;
            [v428 setObjectPathArray_];
            swift_bridgeObjectRelease_n();

            v430 = *MEMORY[0x1E69DEDA0];
            v157 = v918;
            v431 = &v918[*(v897 + 24)];
            v432 = 0uLL;
            v433 = 0uLL;
            if ((v431[2].i8[0] & 1) == 0)
            {
              v432 = vcvtq_f64_f32(*v431);
              *(&v433 + 1) = 0;
              *&v433 = COERCE_FLOAT(*&v431[1]);
            }

            v933 = v433;
            v934 = v432;
            v434 = MEMORY[0x1C68F3280](0x797469636F6C6576, 0xE800000000000000);
            v435 = [v427 newPropertyWithName:v434 type:v430 role:0];

            if (v435)
            {
              v436 = v435;
              v939 = v933;
              v938 = v934;
              [v436 setDouble3Value_];

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v157, type metadata accessor for __RKEntityForceActionArguments);
              return;
            }

            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v569 = xmmword_1C18D1770;
            *(v569 + 16) = v430;
            *(v569 + 24) = 0;
            *(v569 + 32) = v169;
            swift_willThrow();
            v570 = v430;

            v252 = type metadata accessor for __RKEntityForceActionArguments;
            goto LABEL_90;
          }

          lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
          swift_allocError();
          *v513 = 0;
          swift_willThrow();
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v243 = v167;
        v243[1] = v166;
        swift_willThrow();
        v244 = v167;
      }

      v251 = type metadata accessor for __RKEntityForceActionArguments;
      goto LABEL_94;
    case 9u:
      v172 = v64;
      v64 = v921;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v172, v921, type metadata accessor for __RKEntityShowActionArguments);
      v173 = v932;
      v174 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v175 = v933;
      v176 = [v173 newNodeAtPath:v933 type:v174];
      if (!v176)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v245 = v175;
        v245[1] = v174;
        swift_willThrow();
        v246 = v175;
LABEL_97:

        v156 = type metadata accessor for __RKEntityShowActionArguments;
        goto LABEL_98;
      }

      v177 = v176;

      v178 = v177;
      v179 = v931;
      setInfoId(_:on:)(0x696C696269736956, 0xEA00000000007974, v178);
      if (v179)
      {

LABEL_96:
        goto LABEL_97;
      }

      setInherits(from:on:)(0xD000000000000011, 0x80000001C18EF700, v178);
      v938 = v928;
      *&v939 = v173;
      *(&v939 + 1) = v67;
      v437 = __USDExportContext.pathTo(_:)(v64);
      if (!v437)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v514 = 0;
        swift_willThrow();
        goto LABEL_96;
      }

      v438 = v437;
      v439 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v440 = swift_allocObject();
      *(v440 + 16) = xmmword_1C1898160;
      *(v440 + 32) = v438;
      v441 = v438;
      v442 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v443 = [v178 newPropertyWithName:v442 type:v439 role:0];

      if (!v443)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v542 = xmmword_1C18D1670;
        *(v542 + 16) = v439;
        *(v542 + 24) = 0;
        *(v542 + 32) = v177;
        swift_willThrow();
        v543 = v178;
        v544 = v439;

        goto LABEL_346;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v444 = v443;

      v445 = Array._bridgeToObjectiveC()().super.isa;
      [v444 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v446 = *MEMORY[0x1E69DED98];
      v447 = &v921[v900[5]];
      v448 = *v447;
      v449 = v447[4];
      v450 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v932 = v178;
      v451 = [v178 newPropertyWithName:v450 type:v446 role:0];

      if (!v451)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v571 = xmmword_1C18D16A0;
        *(v571 + 16) = v446;
        *(v571 + 24) = 0;
        *(v571 + 32) = v177;
        swift_willThrow();
        v572 = v446;

        goto LABEL_346;
      }

      if (v449)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v452 = 0u;
        *(v452 + 16) = 0u;
        *(v452 + 32) = 0;
        swift_willThrow();

LABEL_346:
        v259 = type metadata accessor for __RKEntityShowActionArguments;
        v258 = v921;
        goto LABEL_176;
      }

      v931 = 0;
      [v451 setDoubleValue_];

      v612 = *MEMORY[0x1E69DEE28];
      v613 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v614 = MEMORY[0x1C68F3280](2003789939, 0xE400000000000000);
      v615 = [v613 initWithString_];

      v616 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v617 = [v932 newPropertyWithName:v616 type:v612 role:0];

      if (v617)
      {
        if (v615)
        {
          v618 = v615;
          [v617 setTokenValue_];

          v619 = v900;
          v620 = v900[8];
          v64 = v921;
          LOBYTE(v938.f64[0]) = v921[v900[7]];
          LOBYTE(v937[0]) = v921[v620];
          v621 = v932;
          v622 = v931;
          __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(&v938, v937, v932);
          if (v622)
          {

            goto LABEL_97;
          }

          v931 = 0;
          *&v934.f64[0] = v441;
          if (v64[v619[14]] > 1u)
          {
            if (v64[v619[14]] != 2)
            {
              v801 = 0;
LABEL_414:
              v802 = MEMORY[0x1C68F3280](0x656C797473, 0xE500000000000000);
              v615 = [v932 newPropertyWithName:v802 type:v612 role:0];

              if (v615)
              {
                if (!v801)
                {
LABEL_474:
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v876 = 0u;
                  *(v876 + 16) = 0u;
                  *(v876 + 32) = 0;
                  swift_willThrow();

                  goto LABEL_345;
                }

                v803 = v801;
                [v615 setTokenValue_];

                if (v921[v900[15]] == 10)
                {
                  v801 = 0;
                }

                else
                {
                  LOBYTE(v938.f64[0]) = v921[v900[15]];
                  v839 = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(&v938);
                  v840 = __RKEntityActionVisibilityTypeUSD.rawValue.getter(v839);
                  v842 = v841;
                  v843 = objc_allocWithZone(MEMORY[0x1E69DED80]);
                  v844 = MEMORY[0x1C68F3280](v840, v842);

                  v801 = [v843 initWithString_];
                }

                v845 = MEMORY[0x1C68F3280](0x79546E6F69746F6DLL, 0xEA00000000006570);
                v615 = [v932 newPropertyWithName:v845 type:v612 role:0];

                if (v615)
                {
                  if (v801)
                  {
                    v846 = v801;
                    [v615 setTokenValue_];

                    v847 = &v921[v900[6]];
                    v848 = *v847;
                    v849 = v847[4];
                    v850 = MEMORY[0x1C68F3280](0x7473694465766F6DLL, 0xEC00000065636E61);
                    v851 = [v932 newPropertyWithName:v850 type:v446 role:0];

                    if (v851)
                    {
                      if ((v849 & 1) == 0)
                      {
                        v888 = v851;
                        [v888 setDoubleValue_];

                        v259 = type metadata accessor for __RKEntityShowActionArguments;
                        v258 = v921;
                        goto LABEL_176;
                      }

                      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                      swift_allocError();
                      *v852 = 0u;
                      *(v852 + 16) = 0u;
                      *(v852 + 32) = 0;
                      swift_willThrow();

                      *&v934.f64[0] = v851;
                    }

                    else
                    {
                      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                      swift_allocError();
                      *v885 = xmmword_1C18D1740;
                      *(v885 + 16) = v446;
                      *(v885 + 24) = 0;
                      *(v885 + 32) = v177;
                      swift_willThrow();
                      v886 = v446;
                    }

                    goto LABEL_346;
                  }

                  goto LABEL_474;
                }

                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v859 = xmmword_1C18D1750;
                *(v859 + 16) = v612;
                *(v859 + 24) = 0;
                *(v859 + 32) = v177;
              }

              else
              {
                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v804 = xmmword_1C18D1760;
                *(v804 + 16) = v612;
                *(v804 + 24) = 0;
                *(v804 + 32) = v177;
              }

              swift_willThrow();
              v860 = v932;
              v861 = v612;

              v173 = v801;
              goto LABEL_346;
            }

            v752 = 0xE400000000000000;
            v751 = 1684826487;
          }

          else if (v64[v619[14]])
          {
            v752 = 0xE700000000000000;
            v751 = 0x6C756679616C70;
          }

          else
          {
            v751 = 0x6369736162;
            v752 = 0xE500000000000000;
          }

          v799 = objc_allocWithZone(MEMORY[0x1E69DED80]);
          v800 = MEMORY[0x1C68F3280](v751, v752);

          v801 = [v799 initWithString_];

          goto LABEL_414;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v734 = 0u;
        *(v734 + 16) = 0u;
        *(v734 + 32) = 0;
        swift_willThrow();
        v615 = v617;
        v706 = v932;
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v705 = xmmword_1C18D1640;
        *(v705 + 16) = v612;
        *(v705 + 24) = 0;
        *(v705 + 32) = v177;
        swift_willThrow();
        v706 = v932;
        v707 = v612;
      }

LABEL_345:
      goto LABEL_346;
    case 0xAu:
      v181 = v929;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v929, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v188 = started;
      v189 = *(v181 + started[5]);
      if (v189 >= 2)
      {
        v934.f64[0] = v67;
        v190 = v915;
        v930 = v189;
        v191 = v912;
        v192 = v927;
        (*(v915 + 16))(v912, v181, v927);
        v193 = v188[7];
        LODWORD(v926) = *(v181 + v188[6]);
        v194 = *(v181 + v193);
        v195 = v188[9];
        v196 = *(v181 + v188[8]);
        v197 = v188[11];
        LODWORD(v924) = *(v181 + v188[10]);
        v198 = *(v181 + v197);
        LODWORD(v925) = *(v181 + v195);
        v199 = v188[14];
        v200 = *(v190 + 56);
        v200(v191 + v199, 1, 1, v192);
        *(v191 + v188[5]) = 0;
        *(v191 + v188[6]) = v926;
        *(v191 + v188[10]) = v924;
        *(v191 + v188[8]) = v196;
        *(v191 + v188[7]) = v194;
        *(v191 + v188[11]) = v198;
        *(v191 + v188[9]) = v925;
        *(v191 + v188[12]) = 0;
        v201 = v191 + v188[13];
        *v201 = 0x3FF0000000000000;
        *(v201 + 8) = 0;
        v202 = v932;
        outlined destroy of BodyTrackingComponent?(v191 + v199, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v200(v191 + v199, 1, 1, v927);
        v203 = v202;
        _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v191, v53, type metadata accessor for __RKEntityStartAnimateActionArguments);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
        v204 = *(v913 + 72);
        v205 = (*(v913 + 80) + 32) & ~*(v913 + 80);
        v206 = swift_allocObject();
        *(v206 + 16) = xmmword_1C1887600;
        _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v53, v206 + v205, type metadata accessor for __RKEntityActionSpecification);
        *v50 = 0;
        *(v50 + 1) = v206;
        v50[16] = 0;
        *(v50 + 3) = v930;
        *(v50 + 16) = 0;
        swift_storeEnumTagMultiPayload();
        v207 = v931;
        makeParentNode #1 (from:baseName:) in __RKEntityActionSpecification.encode(to:at:)(v933, 0x756F7247706F6F4CLL, 0xE900000000000070, v203);
        if (v207)
        {

          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v50, type metadata accessor for __RKEntityActionSpecification);
          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v53, type metadata accessor for __RKEntityActionSpecification);
          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v929, type metadata accessor for __RKEntityStartAnimateActionArguments);
          v258 = v191;
          v259 = type metadata accessor for __RKEntityStartAnimateActionArguments;
          goto LABEL_176;
        }

        v254 = v208;
        v938 = v928;
        *&v939 = v203;
        *(&v939 + 1) = *&v934.f64[0];
        __RKEntityActionSpecification.encode(to:at:)(&v938, v208);

        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v50, type metadata accessor for __RKEntityActionSpecification);
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v53, type metadata accessor for __RKEntityActionSpecification);
        v470 = type metadata accessor for __RKEntityStartAnimateActionArguments;
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v929, type metadata accessor for __RKEntityStartAnimateActionArguments);
        v471 = &v939;
        goto LABEL_206;
      }

      v217 = v932;
      v218 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v219 = v933;
      v220 = [v217 newNodeAtPath:v933 type:v218];
      if (!v220)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v255 = v219;
        v255[1] = v218;
        swift_willThrow();
        v256 = v219;
LABEL_108:

        v253 = type metadata accessor for __RKEntityStartAnimateActionArguments;
        goto LABEL_109;
      }

      v221 = v220;
      v222 = v67;

      v223 = v221;
      v224 = v931;
      setInfoId(_:on:)(0x696E417472617453, 0xEE006E6F6974616DLL, v223);
      if (v224)
      {

LABEL_107:
        goto LABEL_108;
      }

      setInherits(from:on:)(0xD000000000000015, 0x80000001C18EF740, v223);
      v938 = v928;
      *&v939 = v217;
      *(&v939 + 1) = v222;
      v489 = __USDExportContext.pathTo(_:)(v181);
      if (!v489)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v548 = 0;
        swift_willThrow();
        goto LABEL_107;
      }

      v490 = v489;
      v491 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v492 = swift_allocObject();
      *(v492 + 16) = xmmword_1C1898160;
      *(v492 + 32) = v490;
      *&v934.f64[0] = v490;
      v493 = v223;
      v494 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v495 = [v223 newPropertyWithName:v494 type:v491 role:0];

      if (!v495)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v651 = xmmword_1C18D1670;
        *(v651 + 16) = v491;
        *(v651 + 24) = 0;
        *(v651 + 32) = v221;
        swift_willThrow();
        v652 = v493;
        v653 = v491;

        goto LABEL_422;
      }

      v932 = v493;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v496 = v495;

      v497 = Array._bridgeToObjectiveC()().super.isa;
      [v496 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v498 = *MEMORY[0x1E69DEE28];
      v499 = *(v929 + started[6]);
      v931 = 0;
      if (v499)
      {
        if (v499 == 1)
        {
          v500 = 0x65726F6E6769;
          v501 = 0xE600000000000000;
        }

        else
        {
          v501 = 0xE400000000000000;
          v500 = 1886352499;
        }
      }

      else
      {
        v501 = 0xE500000000000000;
        v500 = 0x776F6C6C61;
      }

      v664 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v665 = MEMORY[0x1C68F3280](v500, v501);

      v666 = [v664 initWithString_];

      v667 = MEMORY[0x1C68F3280](0xD000000000000018, 0x80000001C18DEA50);
      v668 = v932;
      v669 = [v932 newPropertyWithName:v667 type:v498 role:0];

      if (v669)
      {
        if (v666)
        {
          v670 = v666;
          [v669 setTokenValue_];

          v671 = *MEMORY[0x1E69DED98];
          v672 = started;
          v277 = v929;
          v673 = *(v929 + started[7]);
          v674 = MEMORY[0x1C68F3280](0x7472617473, 0xE500000000000000);
          v675 = v932;
          v676 = [v932 newPropertyWithName:v674 type:v671 role:0];

          if (v676)
          {
            [v676 setDoubleValue_];

            v677 = *&v277[v672[8]];
            v678 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
            v679 = [v675 newPropertyWithName:v678 type:v671 role:0];

            if (v679)
            {
              [v679 setDoubleValue_];

              v680 = *MEMORY[0x1E69DED90];
              v681 = *(v929 + v672[10]);
              v682 = v672;
              v683 = MEMORY[0x1C68F3280](0x6465737265766572, 0xE800000000000000);
              *&v933 = v680;
              v684 = v675;
              v685 = [v675 newPropertyWithName:v683 type:v680 role:0];

              if (v685)
              {
                [v685 setBoolValue_];

                v181 = v929;
                v686 = *(v929 + v682[11]);
                v687 = MEMORY[0x1C68F3280](0x6F6974616D696E61, 0xEE0064656570536ELL);
                v688 = [v684 newPropertyWithName:v687 type:v671 role:0];

                if (!v688)
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v784 = xmmword_1C18D1710;
                  *(v784 + 16) = v671;
                  *(v784 + 24) = 0;
                  *(v784 + 32) = v221;
                  swift_willThrow();
                  v785 = v671;

                  goto LABEL_108;
                }

                [v688 setDoubleValue_];

                v689 = *(v181 + v682[9]);
                v690 = MEMORY[0x1C68F3280](0x7365737265766572, 0xE800000000000000);
                v691 = [v684 newPropertyWithName:v690 type:v933 role:0];

                if (v691)
                {
                  v692 = v691;
                  [v692 setBoolValue_];

                  v259 = type metadata accessor for __RKEntityStartAnimateActionArguments;
                  v258 = v929;
                  goto LABEL_176;
                }

                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                v776 = xmmword_1C18D1700;
              }

              else
              {
                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                v776 = xmmword_1C18D1720;
              }

              *v753 = v776;
              v671 = v933;
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v753 = xmmword_1C18D16A0;
            }

            *(v753 + 16) = v671;
            *(v753 + 24) = 0;
            *(v753 + 32) = v221;
            swift_willThrow();
            v805 = v671;

LABEL_422:
            v259 = type metadata accessor for __RKEntityStartAnimateActionArguments;
            v258 = v929;
            goto LABEL_176;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v735 = xmmword_1C18D1730;
          *(v735 + 16) = v671;
          *(v735 + 24) = 0;
          *(v735 + 32) = v221;
          swift_willThrow();
          v736 = v671;

          v555 = type metadata accessor for __RKEntityStartAnimateActionArguments;
LABEL_290:
          v259 = v555;
          v258 = v277;
          goto LABEL_176;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v708 = 0u;
        *(v708 + 16) = 0u;
        *(v708 + 32) = 0;
        swift_willThrow();
        v666 = v669;
        v694 = v932;
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v693 = 0xD000000000000018;
        v693[1] = 0x80000001C18DEA50;
        v693[2] = v498;
        v693[3] = 0;
        v693[4] = v221;
        swift_willThrow();
        v694 = v668;
        v695 = v498;
      }

      goto LABEL_422;
    case 0xEu:
      v180 = v67;
      v181 = v923;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v923, type metadata accessor for __RKEntityTransformActionArguments);
      v182 = v932;
      v183 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v184 = v933;
      v185 = [v182 newNodeAtPath:v933 type:v183];
      if (!v185)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v247 = v184;
        v247[1] = v183;
        swift_willThrow();
        v248 = v184;
        goto LABEL_101;
      }

      v107 = v185;

      v186 = v107;
      v187 = v931;
      setInfoId(_:on:)(0x726F66736E617254, 0xE90000000000006DLL, v186);
      if (v187)
      {

LABEL_100:
LABEL_101:

        v253 = type metadata accessor for __RKEntityTransformActionArguments;
LABEL_109:
        v259 = v253;
        v258 = v181;
        goto LABEL_176;
      }

      setInherits(from:on:)(0xD000000000000010, 0x80000001C18EF720, v186);
      v934.f64[0] = -2.31584178e77;
      v938 = v928;
      *&v939 = v182;
      *(&v939 + 1) = v180;
      v453 = __USDExportContext.pathTo(_:)(v181);
      if (!v453)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v515 = 0;
        swift_willThrow();
        goto LABEL_100;
      }

      v454 = v453;
      v931 = 0;
      v455 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v456 = swift_allocObject();
      *(v456 + 16) = xmmword_1C1898160;
      *(v456 + 32) = v454;
      v457 = v454;
      v458 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v459 = [v186 newPropertyWithName:v458 type:v455 role:0];
      v932 = v186;
      v460 = v459;

      if (!v460)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v545 = xmmword_1C18D1670;
        *(v545 + 16) = v455;
        *(v545 + 24) = 0;
        *(v545 + 32) = v107;
        swift_willThrow();
        v546 = v932;
        v547 = v455;

LABEL_286:

        goto LABEL_287;
      }

      v930 = v457;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v461 = v460;

      v462 = Array._bridgeToObjectiveC()().super.isa;
      [v461 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v463 = *MEMORY[0x1E69DED98];
      v464 = (v923 + v899[8]);
      v465 = *v464;
      v466 = *(v464 + 4);
      v467 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v468 = [v932 newPropertyWithName:v467 type:v463 role:0];

      if (!v468)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v573 = xmmword_1C18D16A0;
        *(v573 + 16) = v463;
        *(v573 + 24) = 0;
        *(v573 + 32) = v107;
        swift_willThrow();
        v574 = v463;
        v468 = v930;
        goto LABEL_247;
      }

      if (v466)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v469 = 0u;
        *(v469 + 16) = 0u;
        *(v469 + 32) = 0;
        swift_willThrow();

LABEL_247:
        goto LABEL_286;
      }

      v623 = v465;
      [v468 setDoubleValue_];

      v624 = [v933 tokenValue];
      if (v624)
      {
        v625 = v624;
        v626 = [v624 stringValue];

        if (v626)
        {
          v627 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v629 = v628;

          *&v938.f64[0] = v627;
          v938.f64[1] = v629;
          v937[0] = 47;
          v937[1] = 0xE100000000000000;
          v935 = 95;
          v936 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v630 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v632 = v631;

          *&v938.f64[0] = 47;
          v938.f64[1] = -1.7573882e159;
          *&v933 = v632;
          MEMORY[0x1C68F3410](v630, v632);
          v633 = v938;
          v634 = objc_allocWithZone(MEMORY[0x1E69DED68]);
          v635 = MEMORY[0x1C68F3280](*&v633.f64[0], *&v633.f64[1]);

          v636 = [v634 initWithString_];

          if (!v636)
          {
            goto LABEL_501;
          }

          v112 = [v182 newNodeAtPath:v636 type:*MEMORY[0x1E69DEE98]];

          if (v112)
          {
            v637 = (v923 + v899[7]);
            v638 = *(v637 + 4);
            v639 = 0.0;
            if ((v638 & 1) == 0)
            {
              v639 = *v637;
            }

            *&v942 = v639;
            *(&v942 + 1) = v639;
            v943 = v639;
            v944 = 0;
            v945 = v638;
            v640 = v923;
            closure #18 in __RKEntityActionSpecification.encode(to:at:)(v923, v940);
            closure #19 in __RKEntityActionSpecification.encode(to:at:)(v640, &v941);
            USKNode.setTransform(scale:orientation:translation:)(&v942, v940, &v941);
            v641 = *MEMORY[0x1E69DEE00];
            v642 = [v112 path];
            v643 = MEMORY[0x1C68F3280](0x7261546D726F6678, 0xEB00000000746567);
            *&v933 = v641;
            v644 = [v932 newPropertyWithName:v643 type:v641 role:0];

            if (v644)
            {
              if (v642)
              {
                v645 = v642;
                [v644 setObjectPath_];

                v646 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
                v647 = [v932 newPropertyWithName:v646 type:v463 role:0];

                if (!v647)
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v806 = xmmword_1C18D16A0;
                  *(v806 + 16) = v463;
                  *(v806 + 24) = 0;
                  *(v806 + 32) = v107;
                  swift_willThrow();
                  v807 = v932;
                  v808 = v463;

                  goto LABEL_286;
                }

                [v647 setDoubleValue_];

                v648 = *MEMORY[0x1E69DEE28];
                v649 = *(v923 + v899[9]);
                if (v649 == 2)
                {
                  v650 = 0;
                }

                else
                {
                  if (v649)
                  {
                    v820 = 0x6574756C6F736261;
                  }

                  else
                  {
                    v820 = 0x65766974616C6572;
                  }

                  v821 = objc_allocWithZone(MEMORY[0x1E69DED80]);
                  v822 = MEMORY[0x1C68F3280](v820, 0xE800000000000000);
                  v650 = [v821 initWithString_];
                }

                v823 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
                v824 = [v932 newPropertyWithName:v823 type:v648 role:0];

                if (v824)
                {
                  if (v650)
                  {
                    v825 = v650;
                    [v824 setTokenValue_];

                    v826 = v895;
                    outlined init with copy of UUID?(v923 + v899[15], v895);
                    if ((*(v915 + 48))(v826, 1, v927) == 1)
                    {
                      outlined destroy of BodyTrackingComponent?(v895, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    }

                    else
                    {
                      v878 = v894;
                      (*(v915 + 32))(v894, v895, v927);
                      v938 = v928;
                      v294 = 0x80000001C18DEAC0;
                      *&v939 = v182;
                      *(&v939 + 1) = v180;
                      v301 = __USDExportContext.pathTo(_:)(v878);
                      v879 = MEMORY[0x1C68F3280](*&v934.f64[0], 0x80000001C18DEAC0);
                      v880 = [v932 newPropertyWithName:v879 type:v933 role:0];

                      if (!v880)
                      {
                        goto LABEL_490;
                      }

                      if (!v301)
                      {
                        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                        swift_allocError();
                        *v893 = 0u;
                        *(v893 + 16) = 0u;
                        *(v893 + 32) = 0;
                        swift_willThrow();

                        goto LABEL_492;
                      }

                      v881 = v301;
                      [v880 setObjectPath_];

                      (*(v915 + 8))(v894, v927);
                    }

                    v882 = v899[11];
                    LOBYTE(v938.f64[0]) = *(v923 + v899[10]);
                    LOBYTE(v937[0]) = *(v923 + v882);
                    v883 = v931;
                    __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(&v938, v937, v932);
                    if (!v883)
                    {

                      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v923, type metadata accessor for __RKEntityTransformActionArguments);
                      return;
                    }

                    v656 = &v946;
                    goto LABEL_285;
                  }

                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v864 = 0u;
                  *(v864 + 16) = 0u;
                  *(v864 + 32) = 0;
                  swift_willThrow();
                }

                else
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v853 = xmmword_1C18D1640;
                  *(v853 + 16) = v648;
                  *(v853 + 24) = 0;
                  *(v853 + 32) = v107;
                  swift_willThrow();
                  v854 = v932;
                  v855 = v648;

                  v182 = v650;
                }

                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v923, type metadata accessor for __RKEntityTransformActionArguments);
                return;
              }

              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v786 = 0u;
              *(v786 + 16) = 0u;
              *(v786 + 32) = 0;
              swift_willThrow();
              v642 = v644;
              v779 = v932;
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v777 = xmmword_1C18D16F0;
              v778 = v933;
              *(v777 + 16) = v933;
              *(v777 + 24) = 0;
              *(v777 + 32) = v107;
              swift_willThrow();
              v779 = v932;
              v780 = v778;
            }

            goto LABEL_286;
          }
        }
      }

      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v655 = 2;
      swift_willThrow();

      v656 = &v947;
LABEL_285:

      goto LABEL_286;
    case 0xFu:
      v96 = *v64;
      v97 = v932;
      v98 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v99 = v933;
      v100 = [v97 newNodeAtPath:v933 type:v98];
      if (v100)
      {
        v101 = v100;

        v102 = v101;
        v103 = v931;
        setInfoId(_:on:)(1953063255, 0xE400000000000000, v102);
        if (v103)
        {
        }

        else
        {

          setInherits(from:on:)(0x746341746961572FLL, 0xEB000000006E6F69, v102);
          v278 = *MEMORY[0x1E69DED98];
          v279 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
          v280 = [v102 newPropertyWithName:v279 type:v278 role:0];

          if (v280)
          {
            v281 = v280;
            [v281 setDoubleValue_];
          }

          else
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v503 = xmmword_1C18D16A0;
            *(v503 + 16) = v278;
            *(v503 + 24) = 0;
            *(v503 + 32) = v101;
            swift_willThrow();
            v504 = v278;
          }
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v227 = v99;
        v227[1] = v98;
        swift_willThrow();
        v228 = v99;
      }

      return;
    case 0x10u:
      v68 = v926;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v926, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v131 = v932;
      v132 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v133 = v933;
      v134 = [v131 newNodeAtPath:v933 type:v132];
      if (!v134)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v235 = v133;
        v235[1] = v132;
        swift_willThrow();
        v236 = v133;
LABEL_82:

        v251 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
        goto LABEL_94;
      }

      v135 = v134;

      v136 = v135;
      v137 = v931;
      setInfoId(_:on:)(0x746962724FLL, 0xE500000000000000, v136);
      if (v137)
      {

LABEL_81:
        goto LABEL_82;
      }

      setInherits(from:on:)(0x6341746962724F2FLL, 0xEC0000006E6F6974, v136);
      v938 = v928;
      *&v939 = v131;
      *(&v939 + 1) = v67;
      v352 = __USDExportContext.pathTo(_:)(v68);
      if (!v352)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v510 = 0;
        swift_willThrow();
        goto LABEL_81;
      }

      v353 = v352;
      v934.f64[0] = v67;
      v931 = 0;
      v354 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v355 = swift_allocObject();
      *(v355 + 16) = xmmword_1C1898160;
      *(v355 + 32) = v353;
      v356 = v353;
      v357 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v358 = [v136 newPropertyWithName:v357 type:v354 role:0];

      if (!v358)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v527 = xmmword_1C18D1670;
        *(v527 + 16) = v354;
        *(v527 + 24) = 0;
        *(v527 + 32) = v135;
        swift_willThrow();
        v528 = v136;
        v529 = v354;

LABEL_360:

        v259 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
        v258 = v926;
        goto LABEL_176;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v359 = v358;

      v360 = Array._bridgeToObjectiveC()().super.isa;
      [v359 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v361 = *MEMORY[0x1E69DEE00];
      v938 = v928;
      *&v939 = v131;
      *(&v939 + 1) = *&v934.f64[0];
      v362 = __USDExportContext.pathTo(_:)(v926 + v905[5]);
      v363 = MEMORY[0x1C68F3280](0x7265746E6563, 0xE600000000000000);
      v364 = [v136 newPropertyWithName:v363 type:v361 role:0];

      if (v364)
      {
        v932 = v136;
        if (v362)
        {
          v365 = v362;
          [v364 setObjectPath_];

          v366 = *MEMORY[0x1E69DED98];
          v367 = v926 + v905[6];
          v368 = *v367;
          v369 = *(v367 + 4);
          v370 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
          v371 = [v932 newPropertyWithName:v370 type:v366 role:0];

          if (v371)
          {
            if (v369)
            {
LABEL_165:
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v376 = 0u;
              *(v376 + 16) = 0u;
              *(v376 + 32) = 0;
              swift_willThrow();

              v356 = v371;
LABEL_359:

              goto LABEL_360;
            }

            [v371 setDoubleValue_];

            v372 = v926 + v905[7];
            v373 = *v372;
            v374 = *(v372 + 4);
            v375 = MEMORY[0x1C68F3280](0x6974756C6F766572, 0xEB00000000736E6FLL);
            v371 = [v932 newPropertyWithName:v375 type:v366 role:0];

            if (v371)
            {
              if (v374)
              {
                goto LABEL_165;
              }

              [v371 setDoubleValue_];

              v773 = v926;
              LOBYTE(v938.f64[0]) = *(v926 + v905[10]);
              v774 = v932;
              v775 = v931;
              __RKEntityActionSpecification.setRotationAxis(direction:axis:on:)(&v938, *(v926 + v905[8]), *(v926 + v905[8] + 8), *(v926 + v905[8] + 16), v932);
              if (v775)
              {

                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v773, type metadata accessor for __RKEntityOrbitEntityActionArguments);
                return;
              }

              v366 = *MEMORY[0x1E69DED90];
              v787 = *(v773 + v905[9]);
              v788 = MEMORY[0x1C68F3280](0x506F546E67696C61, 0xEB00000000687461);
              v371 = [v774 newPropertyWithName:v788 type:v366 role:0];

              if (v371)
              {
                if (v787 != 2)
                {
                  v863 = v371;
                  [v863 setBoolValue_];

                  _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v926, type metadata accessor for __RKEntityOrbitEntityActionArguments);
                  return;
                }

                goto LABEL_165;
              }

              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v862 = xmmword_1C18D16D0;
              *(v862 + 16) = v366;
              *(v862 + 24) = 0;
              *(v862 + 32) = v135;
LABEL_358:
              swift_willThrow();
              v748 = v366;
              goto LABEL_359;
            }

            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v697 = xmmword_1C18D1690;
          }

          else
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v697 = xmmword_1C18D16A0;
          }

          *v696 = v697;
          *(v696 + 16) = v366;
          *(v696 + 24) = 0;
          *(v696 + 32) = v135;
          goto LABEL_358;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v657 = 0u;
        *(v657 + 16) = 0u;
        *(v657 + 32) = 0;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v562 = xmmword_1C18D16E0;
        *(v562 + 16) = v361;
        *(v562 + 24) = 0;
        *(v562 + 32) = v135;
        swift_willThrow();
        v563 = v136;
        v564 = v361;

        v131 = v362;
      }

      v277 = v926;

      v555 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
      goto LABEL_290;
    case 0x11u:
      v115 = v64;
      v64 = v920;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v115, v920, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      v116 = v932;
      v117 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v118 = v933;
      v119 = [v116 newNodeAtPath:v933 type:v117];
      if (v119)
      {
        v120 = v119;

        v121 = v120;
        v122 = v931;
        setInfoId(_:on:)(0x614374416B6F6F4CLL, 0xEC0000006172656DLL, v121);
        if (v122)
        {
        }

        else
        {

          setInherits(from:on:)(0xD000000000000013, 0x80000001C18EF780, v121);
          v938 = v928;
          *&v939 = v116;
          *(&v939 + 1) = v67;
          v321 = __USDExportContext.pathTo(_:)(v64);
          if (v321)
          {
            v322 = v321;
            v931 = 0;
            v323 = *MEMORY[0x1E69DEE08];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v324 = swift_allocObject();
            *(v324 + 16) = xmmword_1C1898160;
            *(v324 + 32) = v322;
            v325 = v322;
            v326 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
            v327 = [v121 newPropertyWithName:v326 type:v323 role:0];

            if (!v327)
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v521 = xmmword_1C18D1670;
              *(v521 + 16) = v323;
              *(v521 + 24) = 0;
              *(v521 + 32) = v120;
              swift_willThrow();
              v522 = v121;
              v523 = v323;

              v259 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
              v258 = v920;
              goto LABEL_176;
            }

            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
            v328 = v327;

            v329 = Array._bridgeToObjectiveC()().super.isa;
            [v328 setObjectPathArray_];
            swift_bridgeObjectRelease_n();

            v330 = *MEMORY[0x1E69DED98];
            v331 = &v920[v904[5]];
            v332 = *v331;
            v333 = v331[4];
            v334 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
            v932 = v121;
            v335 = [v121 newPropertyWithName:v334 type:v330 role:0];

            if (v335)
            {
              if ((v333 & 1) == 0)
              {
                [v335 setDoubleValue_];

                v583 = *MEMORY[0x1E69DEDA0];
                v157 = v920;
                v584 = &v920[v904[7]];
                v585 = 0uLL;
                v586 = 0uLL;
                if ((v584[2].i8[0] & 1) == 0)
                {
                  v585 = vcvtq_f64_f32(*v584);
                  *(&v586 + 1) = 0;
                  *&v586 = COERCE_FLOAT(*&v584[1]);
                }

                v933 = v586;
                v934 = v585;
                v587 = MEMORY[0x1C68F3280](0x746E6F7266, 0xE500000000000000);
                v588 = [v932 newPropertyWithName:v587 type:v583 role:0];

                if (v588)
                {
                  v939 = v933;
                  v938 = v934;
                  [v588 setDouble3Value_];

                  v589 = &v157[v904[9]];
                  v590 = 0uLL;
                  v591 = 0uLL;
                  if ((v589[2].i8[0] & 1) == 0)
                  {
                    v590 = vcvtq_f64_f32(*v589);
                    *(&v591 + 1) = 0;
                    *&v591 = COERCE_FLOAT(*&v589[1]);
                  }

                  v933 = v591;
                  v934 = v590;
                  v592 = MEMORY[0x1C68F3280](0x726F746365567075, 0xE800000000000000);
                  v593 = [v932 newPropertyWithName:v592 type:v583 role:0];

                  if (v593)
                  {
                    v594 = v593;
                    v939 = v933;
                    v938 = v934;
                    [v594 setDouble3Value_];

                    v412 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
                    goto LABEL_175;
                  }

                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  v701 = xmmword_1C18D16B0;
                }

                else
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  v701 = xmmword_1C18D16C0;
                }

                *v700 = v701;
                *(v700 + 16) = v583;
                *(v700 + 24) = 0;
                *(v700 + 32) = v120;
                swift_willThrow();
                v732 = v583;

                v252 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
                goto LABEL_90;
              }

              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v336 = 0u;
              *(v336 + 16) = 0u;
              *(v336 + 32) = 0;
              swift_willThrow();

              v325 = v335;
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v556 = xmmword_1C18D16A0;
              *(v556 + 16) = v330;
              *(v556 + 24) = 0;
              *(v556 + 32) = v120;
              swift_willThrow();
              v557 = v330;
            }

            v558 = v920;

            v559 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
            goto LABEL_364;
          }

          lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
          swift_allocError();
          *v508 = 0;
          swift_willThrow();
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v231 = v118;
        v231[1] = v117;
        swift_willThrow();
        v232 = v118;
      }

      v156 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
LABEL_98:
      v259 = v156;
      v258 = v64;
      goto LABEL_176;
    case 0x13u:
      v68 = v924;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v64, v924, type metadata accessor for __RKEntitySpinActionArguments);
      v89 = v932;
      v90 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v91 = v933;
      v92 = [v89 newNodeAtPath:v933 type:v90];
      if (!v92)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v225 = v91;
        v225[1] = v90;
        swift_willThrow();
        v226 = v91;
        goto LABEL_71;
      }

      v93 = v92;

      v94 = v93;
      v95 = v931;
      setInfoId(_:on:)(1852403795, 0xE400000000000000, v94);
      if (v95)
      {

LABEL_70:
LABEL_71:

        v251 = type metadata accessor for __RKEntitySpinActionArguments;
LABEL_94:
        v259 = v251;
        v258 = v68;
        goto LABEL_176;
      }

      setInherits(from:on:)(0x7463416E6970532FLL, 0xEB000000006E6F69, v94);
      v938 = v928;
      *&v939 = v89;
      *(&v939 + 1) = v67;
      v260 = __USDExportContext.pathTo(_:)(v68);
      if (!v260)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v502 = 0;
        swift_willThrow();
        goto LABEL_70;
      }

      v261 = v260;
      v931 = 0;
      v262 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_1C1898160;
      *(v263 + 32) = v261;
      v264 = v261;
      v265 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v266 = [v94 newPropertyWithName:v265 type:v262 role:0];

      if (v266)
      {
        *&v934.f64[0] = v264;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
        v267 = v266;

        v268 = Array._bridgeToObjectiveC()().super.isa;
        [v267 setObjectPathArray_];
        swift_bridgeObjectRelease_n();

        v269 = *MEMORY[0x1E69DED98];
        v270 = &v924[v902[5]];
        v271 = *v270;
        v272 = *(v270 + 4);
        v273 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
        v274 = v94;
        v275 = COERCE_DOUBLE([v94 newPropertyWithName:v273 type:v269 role:0]);

        if (v275 == 0.0)
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v553 = xmmword_1C18D16A0;
          *(v553 + 16) = v269;
          *(v553 + 24) = 0;
          *(v553 + 32) = v93;
          swift_willThrow();
          v554 = v269;
          v277 = v924;
          v275 = v934.f64[0];
          goto LABEL_234;
        }

        if (v272)
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v276 = 0u;
          *(v276 + 16) = 0u;
          *(v276 + 32) = 0;
          swift_willThrow();

          v277 = v924;
LABEL_234:

          v555 = type metadata accessor for __RKEntitySpinActionArguments;
          goto LABEL_290;
        }

        [*&v275 setDoubleValue_];

        v577 = &v924[v902[6]];
        v578 = *v577;
        v579 = *(v577 + 4);
        v580 = MEMORY[0x1C68F3280](0x6974756C6F766572, 0xEB00000000736E6FLL);
        v581 = COERCE_DOUBLE([v274 newPropertyWithName:v580 type:v269 role:0]);

        if (v581 == 0.0)
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v698 = xmmword_1C18D1690;
          *(v698 + 16) = v269;
          *(v698 + 24) = 0;
          *(v698 + 32) = v93;
          swift_willThrow();
          v699 = v269;
          v581 = v934.f64[0];
        }

        else
        {
          if ((v579 & 1) == 0)
          {
            [*&v581 setDoubleValue_];

            v718 = v902[8];
            v558 = v924;
            LOBYTE(v938.f64[0]) = v924[v902[7]];
            v719 = v931;
            __RKEntityActionSpecification.setRotationAxis(direction:axis:on:)(&v938, *&v924[v718], *&v924[v718 + 8], v924[v718 + 16], v274);
            if (!v719)
            {

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v558, type metadata accessor for __RKEntitySpinActionArguments);
              return;
            }

            v559 = type metadata accessor for __RKEntitySpinActionArguments;
LABEL_364:
            v259 = v559;
            v258 = v558;
            goto LABEL_176;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v582 = 0u;
          *(v582 + 16) = 0u;
          *(v582 + 32) = 0;
          swift_willThrow();
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v517 = xmmword_1C18D1670;
        *(v517 + 16) = v262;
        *(v517 + 24) = 0;
        *(v517 + 32) = v93;
        swift_willThrow();
        v518 = v94;
        v519 = v262;
      }

      v259 = type metadata accessor for __RKEntitySpinActionArguments;
      v258 = v924;
      goto LABEL_176;
    default:
      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v209 = 1;
      swift_willThrow();
      v156 = type metadata accessor for __RKEntityActionSpecification;
      goto LABEL_98;
  }
}

void __RKEntityInteractionSpecification.encode(to:at:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v13 = *(a1 + 1);
  outlined init with copy of Any(a2, v15);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  if (swift_dynamicCast())
  {
    v15[0] = v9;
    v15[1] = v10;
    v16 = v13;
    v11 = a3(v15);
    if (v5)
    {
    }

    else
    {
      v12 = v11;
      a5[3] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);

      *a5 = v12;
    }
  }

  else
  {
    a4();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:)()
{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityTriggerSpecification.encode(to:at:) and conformance Error #1 in __RKEntityTriggerSpecification.encode(to:at:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:)()
{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityActionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityActionSpecification.encode(to:at:));
  }

  return result;
}

uint64_t __RKEntityInteractionSpecification.encode(to:at:sceneSpecifier:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return a4(v6);
}

uint64_t protocol witness for __USDEncodablePublic.encode(to:at:sceneSpecifier:) in conformance __RKEntityInteractionSpecification(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return a6(v8);
}

void __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(_BYTE *a1, _BYTE *a2, void *a3)
{
  if (*a1)
  {
    v4 = *MEMORY[0x1E69DEE28];
    if (*a2 > 1u)
    {
      if (*a2 != 2)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v6 = 0xE500000000000000;
      v5 = 0x74756F6E69;
    }

    else
    {
      if (*a2)
      {
        v5 = 7632239;
      }

      else
      {
        v5 = 28265;
      }

      if (*a2)
      {
        v6 = 0xE300000000000000;
      }

      else
      {
        v6 = 0xE200000000000000;
      }
    }

    v14 = objc_allocWithZone(MEMORY[0x1E69DED80]);
    v15 = MEMORY[0x1C68F3280](v5, v6);

    v12 = [v14 initWithString_];

LABEL_16:
    v16 = MEMORY[0x1C68F3280](0x6570795465736165, 0xE800000000000000);
    v10 = [a3 newPropertyWithName:v16 type:v4 role:0];

    if (v10)
    {
      if (v12)
      {
        v17 = v12;
        [v10 setTokenValue_];
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v21 = 0u;
        *(v21 + 16) = 0u;
        *(v21 + 32) = 0;
        swift_willThrow();
      }

      goto LABEL_24;
    }

    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v18 = xmmword_1C18D17E0;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = a3;
    swift_willThrow();
    v19 = a3;
    v20 = v4;
    goto LABEL_23;
  }

  v7 = *MEMORY[0x1E69DEE28];
  v8 = objc_allocWithZone(MEMORY[0x1E69DED80]);
  v9 = MEMORY[0x1C68F3280](1701736302, 0xE400000000000000);
  v10 = [v8 initWithString_];

  v11 = MEMORY[0x1C68F3280](0x6570795465736165, 0xE800000000000000);
  v12 = [a3 newPropertyWithName:v11 type:v7 role:0];

  if (v12)
  {
    if (v10)
    {
      v13 = v10;
      [v12 setTokenValue_];

      return;
    }

    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0;
    swift_willThrow();
LABEL_23:
    v10 = v12;
    goto LABEL_24;
  }

  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
  swift_allocError();
  *v22 = xmmword_1C18D17E0;
  *(v22 + 16) = v7;
  *(v22 + 24) = 0;
  *(v22 + 32) = a3;
  swift_willThrow();
  v23 = v7;
  v24 = a3;
LABEL_24:
}

void __RKEntityActionSpecification.setRotationAxis(direction:axis:on:)(_BYTE *a1, uint64_t a2, int a3, char a4, void *a5)
{
  v6 = 1.0;
  if (*a1)
  {
    v6 = -1.0;
  }

  v17 = v6;
  v7 = *MEMORY[0x1E69DEDA0];
  v8 = 0uLL;
  v9 = 0.0;
  if ((a4 & 1) == 0)
  {
    v8 = vcvtq_f64_f32(a2);
    v9 = *&a3;
  }

  v15 = v9;
  v16 = v8;
  v10 = MEMORY[0x1C68F3280](1936291937, 0xE400000000000000);
  v11 = [a5 newPropertyWithName:v10 type:v7 role:0];

  if (v11)
  {
    v18[0] = vmulq_n_f64(v16, v17);
    v18[1] = COERCE_UNSIGNED_INT64(v17 * v15);
    [v11 setDouble3Value_];
  }

  else
  {
    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v12 = xmmword_1C18D17F0;
    *(v12 + 16) = v7;
    *(v12 + 24) = 0;
    *(v12 + 32) = a5;
    swift_willThrow();
    v13 = v7;
    v14 = a5;
  }
}

void makeParentNode #1 (from:baseName:) in __RKEntityActionSpecification.encode(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  USKObjectPath.deletingLastPathComponent()();
  v8 = v7;
  v22 = a2;
  USKObjectPath.appendingPathComponent(_:)(a2, a3);
  v10 = v9;
  v11 = [a4 nodeAtPath_];
  if (v11)
  {
    v12 = 0;
    while (1)
    {

      if (__OFADD__(v12, 1))
      {
        break;
      }

      MEMORY[0x1C68F3410](95, 0xE100000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v13);

      v14 = [v8 stringValue];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      MEMORY[0x1C68F3410](47, 0xE100000000000000);
      MEMORY[0x1C68F3410](v22, a3);
      v19 = objc_allocWithZone(MEMORY[0x1E69DED68]);
      v20 = MEMORY[0x1C68F3280](v16, v18);

      v21 = [v19 initWithString_];

      if (!v21)
      {
        goto LABEL_11;
      }

      v11 = [a4 nodeAtPath_];
      ++v12;
      v10 = v21;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t closure #18 in __RKEntityActionSpecification.encode(to:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v5 = (a1 + *(result + 24));
  v6 = v5[2].i8[0];
  v7 = 0uLL;
  v8 = 0uLL;
  if ((v6 & 1) == 0)
  {
    v7 = vcvtq_f64_f32(*v5);
    v8 = vcvtq_f64_f32(v5[1]);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6;
  return result;
}

uint64_t closure #19 in __RKEntityActionSpecification.encode(to:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v5 = (a1 + *(result + 20));
  v6 = v5[2].i8[0];
  if (v6)
  {
    v7 = 0uLL;
    v8 = 0.0;
  }

  else
  {
    v7 = vcvtq_f64_f32(*v5);
    v8 = COERCE_FLOAT(*&v5[1]);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors()
{
  result = lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors;
  if (!lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors;
  if (!lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError()
{
  result = lazy protocol witness table cache variable for type USKScene.NewNodeError and conformance USKScene.NewNodeError;
  if (!lazy protocol witness table cache variable for type USKScene.NewNodeError and conformance USKScene.NewNodeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USKScene.NewNodeError and conformance USKScene.NewNodeError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError()
{
  result = lazy protocol witness table cache variable for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError;
  if (!lazy protocol witness table cache variable for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError);
  }

  return result;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnimationState.defaultSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[3])
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
    if (swift_dynamicCast())
    {
      DefaultSourceFloatValue = RETimelineEventGetDefaultSourceFloatValue();
      if (DefaultSourceFloatValue)
      {
        v24 = *DefaultSourceFloatValue;
        v9 = *(a1 + 16);
LABEL_22:
        swift_dynamicCast();
        return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
    if (swift_dynamicCast())
    {
      DefaultSourceDoubleValue = RETimelineEventGetDefaultSourceDoubleValue();
      if (DefaultSourceDoubleValue)
      {
        v25 = *DefaultSourceDoubleValue;
        v9 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
    if (swift_dynamicCast())
    {
      DefaultSourceVector2FValue = RETimelineEventGetDefaultSourceVector2FValue();
      if (DefaultSourceVector2FValue)
      {
        v26 = *DefaultSourceVector2FValue;
        v14 = &_ss5SIMD2VySfGMd;
        v15 = &_ss5SIMD2VySfGMR;
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
LABEL_21:
        v9 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
    if (swift_dynamicCast())
    {
      DefaultSourceVector3FValue = RETimelineEventGetDefaultSourceVector3FValue();
      if (DefaultSourceVector3FValue)
      {
        v27 = *DefaultSourceVector3FValue;
        v14 = &_ss5SIMD3VySfGMd;
        v15 = &_ss5SIMD3VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
    if (swift_dynamicCast())
    {
      DefaultSourceVector4FValue = RETimelineEventGetDefaultSourceVector4FValue();
      if (DefaultSourceVector4FValue)
      {
        v28 = *DefaultSourceVector4FValue;
        v14 = &_ss5SIMD4VySfGMd;
        v15 = &_ss5SIMD4VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      DefaultSourceQuaternionFValue = RETimelineEventGetDefaultSourceQuaternionFValue();
      if (DefaultSourceQuaternionFValue)
      {
        v29 = *DefaultSourceQuaternionFValue;
        type metadata accessor for simd_quatf(0);
        goto LABEL_21;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
      if (swift_dynamicCast())
      {
        swift_dynamicCast();
        v31 = v35;
        v32 = v36;
        v33 = v37;
        AnimationState<>.defaultSource.getter(&v30);
        if (v30)
        {
          v34 = v30;
          v9 = *(a1 + 16);
          goto LABEL_22;
        }
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    DefaultSourceSRTValue = RETimelineEventGetDefaultSourceSRTValue();
    if (!DefaultSourceSRTValue)
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    if (one-time initialization token for identity != -1)
    {
      v22 = DefaultSourceSRTValue[1];
      v23 = *DefaultSourceSRTValue;
      v21 = DefaultSourceSRTValue[2];
      swift_once();
    }

    v20 = *(a1 + 16);
    type metadata accessor for Optional();
    return swift_dynamicCast();
  }

  else
  {
    v10 = *(*(*(a1 + 16) - 8) + 56);

    return v10(a2, 1, 1);
  }
}

uint64_t AnimationState.defaultTarget.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[3])
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
    if (swift_dynamicCast())
    {
      DefaultTargetFloatValue = RETimelineEventGetDefaultTargetFloatValue();
      if (DefaultTargetFloatValue)
      {
        v24 = *DefaultTargetFloatValue;
        v9 = *(a1 + 16);
LABEL_22:
        swift_dynamicCast();
        return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
    if (swift_dynamicCast())
    {
      DefaultTargetDoubleValue = RETimelineEventGetDefaultTargetDoubleValue();
      if (DefaultTargetDoubleValue)
      {
        v25 = *DefaultTargetDoubleValue;
        v9 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
    if (swift_dynamicCast())
    {
      DefaultTargetVector2FValue = RETimelineEventGetDefaultTargetVector2FValue();
      if (DefaultTargetVector2FValue)
      {
        v26 = *DefaultTargetVector2FValue;
        v14 = &_ss5SIMD2VySfGMd;
        v15 = &_ss5SIMD2VySfGMR;
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
LABEL_21:
        v9 = *(a1 + 16);
        goto LABEL_22;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
    if (swift_dynamicCast())
    {
      DefaultTargetVector3FValue = RETimelineEventGetDefaultTargetVector3FValue();
      if (DefaultTargetVector3FValue)
      {
        v27 = *DefaultTargetVector3FValue;
        v14 = &_ss5SIMD3VySfGMd;
        v15 = &_ss5SIMD3VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
    if (swift_dynamicCast())
    {
      DefaultTargetVector4FValue = RETimelineEventGetDefaultTargetVector4FValue();
      if (DefaultTargetVector4FValue)
      {
        v28 = *DefaultTargetVector4FValue;
        v14 = &_ss5SIMD4VySfGMd;
        v15 = &_ss5SIMD4VySfGMR;
        goto LABEL_20;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      DefaultTargetQuaternionFValue = RETimelineEventGetDefaultTargetQuaternionFValue();
      if (DefaultTargetQuaternionFValue)
      {
        v29 = *DefaultTargetQuaternionFValue;
        type metadata accessor for simd_quatf(0);
        goto LABEL_21;
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
      if (swift_dynamicCast())
      {
        swift_dynamicCast();
        v31 = v35;
        v32 = v36;
        v33 = v37;
        AnimationState<>.defaultTarget.getter(&v30);
        if (v30)
        {
          v34 = v30;
          v9 = *(a1 + 16);
          goto LABEL_22;
        }
      }

      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    DefaultTargetSRTValue = RETimelineEventGetDefaultTargetSRTValue();
    if (!DefaultTargetSRTValue)
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
    }

    if (one-time initialization token for identity != -1)
    {
      v22 = DefaultTargetSRTValue[1];
      v23 = *DefaultTargetSRTValue;
      v21 = DefaultTargetSRTValue[2];
      swift_once();
    }

    v20 = *(a1 + 16);
    type metadata accessor for Optional();
    return swift_dynamicCast();
  }

  else
  {
    v10 = *(*(*(a1 + 16) - 8) + 56);

    return v10(a2, 1, 1);
  }
}

uint64_t AnimationState<>.defaultSource.getter@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + 24);
  if (v4 && (v5 = result, v6 = *(v2 + 24), result = RETimelineEventGetSkeletalPoseJointCount(), result >= 1))
  {
    v7 = result;
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = v7;
    v5(v4, v8 + 32, v7);
    *(v8 + 16) = v7;
    v9 = (v8 + 64);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *(v9 - 1);
      v16 = *(v9 - 2);
      v14 = *v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      v13 = &v10[48 * v12];
      *(v13 + 2) = v16;
      *(v13 + 3) = v15;
      *(v13 + 4) = v14;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

uint64_t AnimationState.storeAnimatedValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v31 = &v49 - v30;
  v32 = v3[3];
  if (!v32)
  {
    return 0;
  }

  v53 = v25;
  v54 = v26;
  v51 = v29;
  v52 = v24;
  v55 = v28;
  v50 = v27;
  v33 = v23;
  v34 = *v3;
  v35 = v3[1];
  v36 = v3[2];
  v57 = *v3;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
  v56 = a2;
  if (swift_dynamicCast())
  {
    v37 = *(v6 + 16);
    v37(v31, v33, a3);
    if (swift_dynamicCast())
    {
      v37(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedFloatValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
  if (swift_dynamicCast())
  {
    v39 = *(v6 + 16);
    v39(v20, v33, a3);
    if (swift_dynamicCast())
    {
      v39(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedDoubleValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
  if (swift_dynamicCast())
  {
    v40 = *(v6 + 16);
    v40(v17, v33, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    if (swift_dynamicCast())
    {
      v40(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedVector2FValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
  if (swift_dynamicCast())
  {
    v41 = *(v6 + 16);
    v41(v14, v33, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCast())
    {
      v41(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedVector3FValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
  if (swift_dynamicCast())
  {
    v42 = *(v6 + 16);
    v42(v54, v33, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    if (swift_dynamicCast())
    {
      v42(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedVector4FValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
  if (swift_dynamicCast())
  {
    v43 = *(v6 + 16);
    v43(v53, v33, a3);
    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCast())
    {
      v43(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedQuaternionFValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
  if (swift_dynamicCast())
  {
    v44 = *(v6 + 16);
    v44(v52, v33, a3);
    if (swift_dynamicCast())
    {
      v44(v55, v33, a3);
      swift_dynamicCast();
      return RETimelineEventSetAnimatedSRTValue();
    }
  }

  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v45 = *(v6 + 16);
    v45(v51, v33, a3);
    if (swift_dynamicCast())
    {

      v57 = v34;
      v58 = v35;
      v59 = v36;
      v60 = v32;
      swift_dynamicCast();
      v46 = v62;
      v45(v50, v33, a3);
      swift_dynamicCast();
      v47 = v61;
      if (v46 && RETimelineEventGetSkeletalPoseJointCount() == *(v47 + 16))
      {
        v48 = RETimelineEventSetAnimatedSkeletalPoseJoints();

        return v48;
      }
    }

    return 0;
  }

  return result;
}

uint64_t AnimationState<>.defaultSourceJoints(index:count:transforms:)(uint64_t a1, int64_t a2, char **a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  result = RETimelineEventGetSkeletalPoseJointCount();
  if (result < 1)
  {
    return 0;
  }

  v12 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    if (result < v12)
    {
      return 0;
    }

    v14 = *a3;
    if (*(*a3 + 2) < a2)
    {
      v15 = *a3;

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2, 0, MEMORY[0x1E69E7CC0]);
      v14 = result;
      *a3 = result;
    }

    if (v12 >= a1)
    {
      if (v12 == a1)
      {
        return 1;
      }

      do
      {
        v16 = a4(v5, a1);
        v13 = v16 != 0;
        if (!v16)
        {
          break;
        }

        v21 = v16[1];
        v22 = *v16;
        v20 = v16[2];
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[48 * v18];
        *(v19 + 2) = v22;
        *(v19 + 3) = v21;
        *(v19 + 4) = v20;
        *a3 = v14;
        ++a1;
        --a2;
      }

      while (a2);
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnimationState<>.storeAnimatedJoints(transforms:jointIndex:)(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 24))
  {
    return 0;
  }

  result = RETimelineEventGetSkeletalPoseJointCount();
  v6 = *(a1 + 16);
  if (!__OFADD__(a2, v6))
  {
    if (result >= a2 + v6)
    {
      v8 = 0;
      for (i = (a1 + 64); ; i += 3)
      {
        v7 = v6 == v8;
        if (v6 == v8)
        {
          break;
        }

        if (__OFADD__(a2, v8))
        {
          __break(1u);
          goto LABEL_12;
        }

        ++v8;
        v10 = *(i - 2);
        v11 = *(i - 1);
        v12 = *i;
        result = RETimelineEventSetAnimatedSkeletalPoseJointValue();
        if ((result & 1) == 0)
        {
          return v7;
        }
      }

      return v7;
    }

    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for AnimationState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation26SpatialStereoImageMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ImagePresentationComponent.ImagePair.MetadataPair(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 696))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 344);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePresentationComponent.ImagePair.MetadataPair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 696) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 696) = 0;
    }

    if (a2)
    {
      *(result + 344) = a2;
    }
  }

  return result;
}

uint64_t specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 1352) = a2;
  *(v3 + 680) = a1;
  *(v3 + 2819) = *a3;
  return MEMORY[0x1EEE6DFA0](specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:), 0, 0);
}

uint64_t specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)()
{
  SpatialStereoImageMetadata.init(source:)(*(v0 + 1352), (v0 + 16));
  v1 = *(v0 + 2819);
  memcpy((v0 + 1360), (v0 + 16), 0x298uLL);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v0 + 1360, v2);
  *(v0 + 2024) = *(v0 + 648);
  *(v0 + 2820) = *(v0 + 656);
  *(v0 + 2792) = *(v0 + 660);
  *(v0 + 2821) = *(v0 + 668);
  *(v0 + 2817) = v1;
  outlined init with copy of SpatialStereoImageMetadata(v0 + 16, v0 + 2032);
  v3 = swift_task_alloc();
  *(v0 + 2696) = v3;
  *v3 = v0;
  v3[1] = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  v4 = *(v0 + 1352);

  return CGImageSourceRef.spatialTextures(metadata:options:)(v0 + 16, (v0 + 2817));
}

{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2024);

  outlined destroy of SpatialStereoImageMetadata(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  *(v0 + 2800) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  *(v0 + 2804) = v5;
  *(v0 + 2808) = v6;
  v7 = *(v0 + 24);
  *(v0 + 2812) = v7;
  if (v2 == v3)
  {
    v8 = 0;
LABEL_5:
    v9 = *(v0 + 2016);
    v60 = *(v0 + 1360);
    v58 = *(v0 + 1392);
    v59 = *(v0 + 1376);
    v56 = *(v0 + 1424);
    v57 = *(v0 + 1408);
    v54 = *(v0 + 1456);
    v55 = *(v0 + 1440);
    v52 = *(v0 + 1488);
    v53 = *(v0 + 1472);
    v51 = *(v0 + 1504);
    v10 = *(v0 + 1520);
    v11 = *(v0 + 1536);
    v12 = *(v0 + 1552);
    v13 = *(v0 + 1568);
    v14 = *(v0 + 1584);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1616);
    v17 = *(v0 + 1632);
    v18 = *(v0 + 1648);
    v19 = *(v0 + 1664);
    v20 = *(v0 + 1680);
    v21 = *(v0 + 1696);
    v22 = *(v0 + 1712);
    v23 = *(v0 + 1728);
    v24 = *(v0 + 1744);
    v25 = *(v0 + 1760);
    v26 = *(v0 + 1776);
    v27 = *(v0 + 1792);
    v28 = *(v0 + 1808);
    v29 = *(v0 + 1824);
    v30 = *(v0 + 1840);
    v31 = *(v0 + 1856);
    v32 = *(v0 + 2704);
    v33 = *(v0 + 2821);
    v34 = *(v0 + 2820);
    v35 = *(v0 + 2024);
    v36 = *(v0 + 680);
    v37 = *(v0 + 1872);
    v38 = *(v0 + 1888);
    v39 = *(v0 + 1904);
    v40 = *(v0 + 1920);
    v41 = *(v0 + 1936);
    v42 = *(v0 + 1952);
    v43 = *(v0 + 1968);
    v44 = *(v0 + 1984);
    v45 = *(v0 + 2000);
    *(v36 + 60) = *(v0 + 2792);
    *(v36 + 80) = v60;
    *(v36 + 96) = v59;
    *(v36 + 112) = v58;
    *(v36 + 128) = v57;
    *(v36 + 144) = v56;
    *(v36 + 160) = v55;
    *(v36 + 176) = v54;
    *(v36 + 192) = v53;
    *(v36 + 208) = v52;
    *(v36 + 224) = v51;
    *(v36 + 240) = v10;
    *(v36 + 256) = v11;
    *(v36 + 272) = v12;
    *(v36 + 288) = v13;
    *(v36 + 304) = v14;
    *(v36 + 320) = v15;
    *(v36 + 336) = v16;
    *(v36 + 352) = v17;
    *(v36 + 368) = v18;
    *(v36 + 384) = v19;
    *(v36 + 400) = v20;
    *(v36 + 416) = v21;
    *(v36 + 432) = v22;
    *(v36 + 448) = v23;
    *(v36 + 464) = v24;
    *(v36 + 480) = v25;
    *(v36 + 496) = v26;
    *(v36 + 512) = v27;
    *(v36 + 528) = v28;
    *(v36 + 544) = v29;
    *(v36 + 560) = v30;
    *(v36 + 576) = v31;
    *(v36 + 592) = v37;
    *(v36 + 608) = v38;
    *(v36 + 624) = v39;
    *(v36 + 640) = v40;
    *(v36 + 656) = v41;
    *(v36 + 672) = v42;
    *(v36 + 688) = v43;
    *(v36 + 704) = v44;
    *(v36 + 720) = v45;
    *v36 = v32;
    *(v36 + 8) = v8;
    *(v36 + 16) = v4;
    *(v36 + 24) = v1;
    *(v36 + 32) = v4 | (v5 << 32);
    *(v36 + 40) = v6 | (v7 << 32);
    *(v36 + 48) = v35;
    *(v36 + 56) = v34;
    *(v36 + 68) = v33;
    *(v36 + 736) = v9;
    v46 = *(v0 + 8);

    return v46();
  }

  if (*(v0 + 2024) == *(v0 + 352))
  {
    v8 = 1;
    goto LABEL_5;
  }

  *(v0 + 2818) = *(v0 + 2819);
  v48 = swift_task_alloc();
  *(v0 + 2760) = v48;
  *v48 = v0;
  v48[1] = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  v49 = *(v0 + 2024);
  v50 = *(v0 + 1352);

  return CGImageSourceRef.monoTexture(index:options:)(v49, (v0 + 2818));
}

{
  v2 = *(v0 + 2016);
  v51 = *(v0 + 1376);
  v52 = *(v0 + 1360);
  v49 = *(v0 + 1408);
  v50 = *(v0 + 1392);
  v47 = *(v0 + 1440);
  v48 = *(v0 + 1424);
  v45 = *(v0 + 1472);
  v46 = *(v0 + 1456);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1488);
  v42 = *(v0 + 1520);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1552);
  v5 = *(v0 + 1568);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1600);
  v8 = *(v0 + 1616);
  v9 = *(v0 + 1632);
  v10 = *(v0 + 1648);
  v11 = *(v0 + 1664);
  v12 = *(v0 + 1680);
  v13 = *(v0 + 1696);
  v14 = *(v0 + 1712);
  v15 = *(v0 + 1728);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1760);
  v18 = *(v0 + 1776);
  v19 = *(v0 + 1792);
  v20 = *(v0 + 1808);
  v21 = *(v0 + 1824);
  v22 = *(v0 + 1840);
  v23 = *(v0 + 1856);
  v24 = *(v0 + 2776);
  v25 = *(v0 + 2704);
  v26 = *(v0 + 2821);
  v27 = *(v0 + 2820);
  v28 = *(v0 + 2024);
  v29 = *(v0 + 680);
  v30 = *(v0 + 1872);
  v31 = *(v0 + 1888);
  v32 = *(v0 + 1904);
  v33 = *(v0 + 1920);
  v34 = *(v0 + 1936);
  v35 = *(v0 + 1952);
  v36 = *(v0 + 1968);
  v37 = *(v0 + 1984);
  v38 = *(v0 + 2000);
  v39 = *(v0 + 2792);
  *(v29 + 32) = *(v0 + 2800);
  *(v29 + 16) = v39;
  *(v29 + 60) = v39;
  *(v29 + 80) = v52;
  *(v29 + 96) = v51;
  *(v29 + 112) = v50;
  *(v29 + 128) = v49;
  *(v29 + 144) = v48;
  *(v29 + 160) = v47;
  *(v29 + 176) = v46;
  *(v29 + 192) = v45;
  *(v29 + 208) = v44;
  *(v29 + 224) = v43;
  *(v29 + 240) = v42;
  *(v29 + 256) = v3;
  *(v29 + 272) = v4;
  *(v29 + 288) = v5;
  *(v29 + 304) = v6;
  *(v29 + 320) = v7;
  *(v29 + 336) = v8;
  *(v29 + 352) = v9;
  *(v29 + 368) = v10;
  *(v29 + 384) = v11;
  *(v29 + 400) = v12;
  *(v29 + 416) = v13;
  *(v29 + 432) = v14;
  *(v29 + 448) = v15;
  *(v29 + 464) = v16;
  *(v29 + 480) = v17;
  *(v29 + 496) = v18;
  *(v29 + 512) = v19;
  *(v29 + 528) = v20;
  *(v29 + 544) = v21;
  *(v29 + 560) = v22;
  *(v29 + 576) = v23;
  *(v29 + 592) = v30;
  *(v29 + 608) = v31;
  *(v29 + 624) = v32;
  *(v29 + 640) = v33;
  *(v29 + 656) = v34;
  *(v29 + 672) = v35;
  *(v29 + 688) = v36;
  *(v29 + 704) = v37;
  *(v29 + 720) = v38;
  *v29 = v24;
  *(v29 + 8) = 0;
  *(v29 + 24) = v25;
  *(v29 + 48) = v28;
  *(v29 + 56) = v27;
  *(v29 + 68) = v26;
  *(v29 + 736) = v2;
  v40 = *(v0 + 8);

  return v40();
}

{
  v2 = *(v0 + 1344);
  v49 = *(v0 + 704);
  v47 = *(v0 + 736);
  v48 = *(v0 + 720);
  v45 = *(v0 + 768);
  v46 = *(v0 + 752);
  v43 = *(v0 + 800);
  v44 = *(v0 + 784);
  v41 = *(v0 + 832);
  v42 = *(v0 + 816);
  v3 = *(v0 + 848);
  v4 = *(v0 + 864);
  v5 = *(v0 + 880);
  v6 = *(v0 + 896);
  v7 = *(v0 + 912);
  v8 = *(v0 + 928);
  v9 = *(v0 + 944);
  v10 = *(v0 + 960);
  v11 = *(v0 + 976);
  v12 = *(v0 + 992);
  v13 = *(v0 + 1008);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1056);
  v17 = *(v0 + 1072);
  v18 = *(v0 + 1088);
  v19 = *(v0 + 1104);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1136);
  v22 = *(v0 + 1152);
  v23 = *(v0 + 1168);
  v24 = *(v0 + 1184);
  v25 = *(v0 + 2784);
  v26 = *(v0 + 2736);
  v27 = *(v0 + 2728);
  v28 = *(v0 + 2720);
  v29 = *(v0 + 680);
  v30 = *(v0 + 1200);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1232);
  v33 = *(v0 + 1248);
  v34 = *(v0 + 1264);
  v35 = *(v0 + 1280);
  v36 = *(v0 + 1296);
  v37 = *(v0 + 1312);
  v38 = *(v0 + 1328);
  *(v29 + 80) = *(v0 + 688);
  *(v29 + 96) = v49;
  *(v29 + 112) = v48;
  *(v29 + 128) = v47;
  *(v29 + 144) = v46;
  *(v29 + 160) = v45;
  *(v29 + 176) = v44;
  *(v29 + 192) = v43;
  *(v29 + 208) = v42;
  *(v29 + 224) = v41;
  *(v29 + 240) = v3;
  *(v29 + 256) = v4;
  *(v29 + 272) = v5;
  *(v29 + 288) = v6;
  *(v29 + 304) = v7;
  *(v29 + 320) = v8;
  *(v29 + 336) = v9;
  *(v29 + 352) = v10;
  *(v29 + 368) = v11;
  *(v29 + 384) = v12;
  *(v29 + 400) = v13;
  *(v29 + 416) = v14;
  *(v29 + 432) = v15;
  *(v29 + 448) = v16;
  *(v29 + 464) = v17;
  *(v29 + 480) = v18;
  *(v29 + 496) = v19;
  *(v29 + 512) = v20;
  *(v29 + 528) = v21;
  *(v29 + 544) = v22;
  *(v29 + 560) = v23;
  *(v29 + 576) = v24;
  *(v29 + 592) = v30;
  *(v29 + 608) = v31;
  *(v29 + 624) = v32;
  *(v29 + 640) = v33;
  *(v29 + 656) = v34;
  *(v29 + 672) = v35;
  *(v29 + 688) = v36;
  *(v29 + 704) = v37;
  *(v29 + 720) = v38;
  *v29 = v25;
  *(v29 + 8) = 0;
  *(v29 + 16) = HIDWORD(v27);
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = v28;
  *(v29 + 56) = v27;
  *(v29 + 60) = HIDWORD(v27);
  *(v29 + 64) = v26;
  *(v29 + 68) = BYTE4(v26) & 1;
  *(v29 + 736) = v2;
  v39 = *(v0 + 8);

  return v39();
}

{
  v1 = *(v0 + 2712);
  return (*(v0 + 8))();
}

{
  v1 = v0[338];

  v2 = v0[346];
  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 2752);
  return (*(v0 + 8))();
}

uint64_t specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2696);
  v7 = *v2;
  *(v3 + 2704) = a1;
  *(v3 + 2712) = v1;

  if (v1)
  {
    outlined destroy of SpatialStereoImageMetadata(v3 + 16);
    outlined destroy of SpatialStereoImageMetadata(v3 + 16);
    v5 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  else
  {
    v5 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 2744);
  v6 = *v2;
  *(*v2 + 2752) = v1;

  if (v1)
  {
    v7 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  else
  {
    *(v4 + 2784) = a1;
    v7 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 2760);
  v6 = *v2;
  *(*v2 + 2768) = v1;

  if (v1)
  {
    outlined destroy of SpatialStereoImageMetadata(v4 + 16);
    v7 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  else
  {
    v8 = *(v4 + 2704);

    *(v4 + 2776) = a1;
    v7 = specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 1512) = a2;
  *(v3 + 760) = a1;
  *(v3 + 1589) = *a3;
  return MEMORY[0x1EEE6DFA0](specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:), 0, 0);
}

uint64_t specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)@<X0>(NSURL *a1@<X8>)
{
  v2 = *(v1 + 1512);
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = CGImageSourceCreateWithURL(v3, 0);
  *(v1 + 1520) = v5;

  if (v5)
  {
    *(v1 + 1588) = *(v1 + 1589);
    v6 = v5;
    v7 = swift_task_alloc();
    *(v1 + 1528) = v7;
    *v7 = v1;
    v7[1] = specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:);

    return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v1 + 16, v6, (v1 + 1588));
  }

  else
  {
    lazy protocol witness table accessor for type ImagePresentationComponent.ImagePresentationComponentError and conformance ImagePresentationComponent.ImagePresentationComponentError();
    swift_allocError();
    swift_willThrow();
    v9 = *(v1 + 1512);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v9, v10);
    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1528);
  v5 = *v1;
  v3[192] = v0;
  v6 = v2[2];
  v3[193] = v6;
  v7 = v2[3];
  v3[194] = v7;
  v8 = *(v3 + 8);
  *(v3 + 396) = v8;
  v57 = *(v3 + 7);
  v58 = *(v3 + 5);
  *(v3 + 195) = v58;
  v3[197] = v57;
  v9 = *(v3 + 72);
  v10 = *(v3 + 76);
  v42 = *(v3 + 84);
  v26 = *(v3 + 9);
  v27 = *(v3 + 7);
  v20 = *(v3 + 8);
  v21 = *(v3 + 6);
  v24 = *(v3 + 13);
  v25 = *(v3 + 11);
  v18 = *(v3 + 12);
  v19 = *(v3 + 10);
  v22 = *(v3 + 17);
  v23 = *(v3 + 15);
  v16 = *(v3 + 16);
  v17 = *(v3 + 14);
  v56 = *(v3 + 19);
  v41 = *(v3 + 18);
  v55 = *(v3 + 21);
  v40 = *(v3 + 20);
  v54 = *(v3 + 23);
  v39 = *(v3 + 22);
  v53 = *(v3 + 25);
  v38 = *(v3 + 24);
  v52 = *(v3 + 27);
  v37 = *(v3 + 26);
  v51 = *(v3 + 29);
  v36 = *(v3 + 28);
  v50 = *(v3 + 31);
  v35 = *(v3 + 30);
  v49 = *(v3 + 33);
  v33 = *(v3 + 34);
  v34 = *(v3 + 32);
  v47 = *(v3 + 37);
  v48 = *(v3 + 35);
  v31 = *(v3 + 38);
  v32 = *(v3 + 36);
  v45 = *(v3 + 41);
  v46 = *(v3 + 39);
  v29 = *(v3 + 42);
  v30 = *(v3 + 40);
  v43 = *(v3 + 45);
  v44 = *(v3 + 43);
  v28 = *(v3 + 44);
  v11 = v2[92];
  v12 = v2[93];
  v13 = v2[94];

  if (v0)
  {
    v14 = specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:);
  }

  else
  {
    *(v3 + 53) = v21;
    *(v3 + 54) = v27;
    *(v3 + 55) = v20;
    *(v3 + 56) = v26;
    *(v3 + 57) = v19;
    *(v3 + 58) = v25;
    *(v3 + 59) = v18;
    *(v3 + 60) = v24;
    *(v3 + 61) = v17;
    *(v3 + 62) = v23;
    *(v3 + 63) = v16;
    *(v3 + 64) = v22;
    v3[96] = v6;
    v3[97] = v7;
    *(v3 + 196) = v8;
    *(v3 + 99) = v58;
    *(v3 + 101) = v57;
    *(v3 + 824) = v9;
    *(v3 + 828) = v10;
    *(v3 + 836) = v42;
    *(v3 + 65) = v41;
    *(v3 + 66) = v56;
    *(v3 + 67) = v40;
    *(v3 + 68) = v55;
    *(v3 + 69) = v39;
    *(v3 + 70) = v54;
    *(v3 + 71) = v38;
    *(v3 + 72) = v53;
    *(v3 + 73) = v37;
    *(v3 + 74) = v52;
    *(v3 + 75) = v36;
    *(v3 + 76) = v51;
    *(v3 + 77) = v35;
    *(v3 + 78) = v50;
    *(v3 + 79) = v34;
    *(v3 + 80) = v49;
    *(v3 + 81) = v33;
    *(v3 + 82) = v48;
    *(v3 + 83) = v32;
    *(v3 + 84) = v47;
    *(v3 + 85) = v31;
    *(v3 + 86) = v46;
    *(v3 + 87) = v30;
    *(v3 + 88) = v45;
    *(v3 + 89) = v29;
    *(v3 + 90) = v44;
    *(v3 + 91) = v28;
    *(v3 + 92) = v43;
    v3[186] = v11;
    v3[187] = v12;
    v3[188] = v13;
    outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair((v3 + 102));
    v14 = specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 1576);
  v11 = *(v0 + 1560);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1552);
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1512);
  v7 = *(v0 + 760);

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v6, v8);
  *v7 = v4;
  *(v7 + 8) = v3;
  *(v7 + 16) = v2;
  *(v7 + 24) = v11;
  *(v7 + 40) = v1;
  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[190];

  v2 = v0[192];
  v3 = v0[189];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v0[1];

  return v5();
}

void specialized ImagePresentationComponent.ImagePair.init(imageSource:options:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a1;
  SpatialStereoImageMetadata.init(source:)(v5, &v28);
  v6 = v33;
  v7 = v34;
  LOBYTE(v27[0]) = v4;
  v8 = CGImageSourceRef.spatialTextures(metadata:options:)(&v28, v27);
  if (v8)
  {
    v9 = v8;
    v10 = v31;
    v11 = v31 | (v28 << 32);
    v12 = v29;
    if (v6 == v30)
    {
      v13 = 0;
LABEL_14:

      outlined destroy of SpatialStereoImageMetadata(&v28);
      v15 = v9;
      v7 = v10;
      goto LABEL_15;
    }

    if (v6 == v32)
    {
      v13 = 1;
      goto LABEL_14;
    }

    outlined destroy of SpatialStereoImageMetadata(&v28);
    LOBYTE(v27[0]) = v4;
    v21 = CGImageSourceRef.monoTexture(index:options:)(v6, v27);
    if (v21)
    {
      v15 = v21;

      v13 = 0;
      goto LABEL_15;
    }

    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, ImageLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C1358000, v23, v24, "ImagePair failed to load monoscopic image", v25, 2u);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    v26 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v26 + 120, v27);
    v15 = closure #1 in static TextureResource.builtinTexture(named:)(v27);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v13 = 0;
    goto LABEL_11;
  }

  outlined destroy of SpatialStereoImageMetadata(&v28);
  LOBYTE(v27[0]) = v4;
  v14 = CGImageSourceRef.monoTexture(index:options:)(v6, v27);
  if (!v14)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, ImageLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C1358000, v17, v18, "ImagePair failed to load monoscopic image", v19, 2u);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    v20 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v20 + 120, v27);
    v15 = closure #1 in static TextureResource.builtinTexture(named:)(v27);

    __swift_destroy_boxed_opaque_existential_1(v27);
    v13 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
LABEL_11:
    v7 = 1;
    goto LABEL_15;
  }

  v15 = v14;

  v13 = 0;
  v9 = 0;
  v11 = 0;
  v12 = 0;
LABEL_15:
  *a3 = v15;
  *(a3 + 8) = v13;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
}

uint64_t __RKEntitySpinAction.__allocating_init(targetEntity:duration:iterations:direction:axis:)(uint64_t a1, char *a2, float a3, float a4, __n128 a5)
{
  v9 = swift_allocObject();
  v10 = *a2;
  *(v9 + 152) = 0;
  *(v9 + 160) = 1;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 108) = a3;
  *(v9 + 112) = a4;
  *(v9 + 128) = a5;
  *(v9 + 144) = v10;
  return __RKEntityAction.init(targetEntity:)(a1);
}

RealityKit::__RKEntitySpinDirectionType_optional __swiftcall __RKEntitySpinDirectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntitySpinDirectionType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKEntitySpinDirectionType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7369776B636F6C63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntitySpinDirectionType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7369776B636F6C63;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x80000001C18DDB90;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7369776B636F6C63;
  }

  if (*a2)
  {
    v7 = 0x80000001C18DDB90;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntitySpinDirectionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntitySpinDirectionType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntitySpinDirectionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntitySpinDirectionType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntitySpinDirectionType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntitySpinDirectionType(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C18DDB90;
  v3 = 0x7369776B636F6C63;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t __RKEntitySpinAction.init(targetEntity:duration:iterations:direction:axis:)(uint64_t a1, char *a2, float a3, float a4, __n128 a5)
{
  v6 = *a2;
  *(v5 + 152) = 0;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 108) = a3;
  *(v5 + 112) = a4;
  *(v5 + 128) = a5;
  *(v5 + 144) = v6;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntitySpinAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v86 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v86 - v12;
  v13 = *(a1 + 8);
  swift_beginAccess();
  v14 = v2[1].i64[0];
  v109 = 91;
  v110 = 0xE100000000000000;
  v99 = v9;
  v98 = v10;
  if (v14)
  {
    v105 = 0;
    v106 = 0xE000000000000000;
    v114 = v14;

    _print_unlocked<A, B>(_:_:)();
    v15 = v105;
    v16 = v106;
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x1C68F3410](v15, v16);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v17 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v17);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v19 = v109;
  v18 = v110;
  v20 = v2[1].i64[0];
  if (!v20)
  {
    v24 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v24, &v109);
LABEL_28:

    return 0;
  }

  swift_beginAccess();
  if (v2[6].i8[8] == 1 && v2[6].i64[0] == 1)
  {
    swift_beginAccess();
    if (v2[6].i8[9] == 1)
    {

LABEL_14:
      v109 = v19;
      v110 = v18;
      v25 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v25, &v109);

      return 0;
    }
  }

  v21 = *(v13 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v96 = v20;
  v22 = *(v20 + 16);
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

    goto LABEL_28;
  }

  v94 = v22;
  v27 = v2[6].i64[0];
  v28 = v2[6].i8[8];
  v2[6].i64[0] = 1;
  v2[6].i8[8] = 1;
  v109 = v27;
  LOBYTE(v110) = v28;
  __RKEntityAction.state.didset(&v109);
  if (v2[7].f32[0] <= 0.0)
  {
    v2[7].i32[0] = 1065353216;
  }

  v29 = v2[9].i8[0];
  if (v29)
  {
    v30 = 0x80000001C18DDB90;
  }

  else
  {
    v30 = 0xE900000000000065;
  }

  v93 = MotionType;
  if ((v29 & 1) != 0 || v30 != 0xE900000000000065)
  {
    MotionType = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (MotionType)
    {
      v31 = -0.19635;
    }

    else
    {
      v31 = 0.19635;
    }
  }

  else
  {

    v31 = -0.19635;
  }

  v33 = v2[7].f32[0] + -1.0;
  v34 = COERCE_UNSIGNED_INT(fabs(v33));
  if (v34 > 2139095039)
  {
    __break(1u);
    goto LABEL_52;
  }

  v34 = 3741319169;
  if (v33 <= -9.2234e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v33 >= 9.2234e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v92 = v13;
  v87 = v19;
  v88 = v8;
  v89 = v5;
  v90 = v18;
  v34 = &v115;
  v91 = v4;
  v4 = v33;
  if ((v33 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v100 = xmmword_1C1887620;
    while (1)
    {
      for (i = 0; i != 32; ++i)
      {
        v101 = v2[8];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v38 = *(v30 + 2);
        v37 = *(v30 + 3);
        MotionType = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v30);
        }

        v39 = __sincosf_stret((v31 * i) * 0.5);
        v40 = vmulq_n_f32(v101, v39.__sinval);
        v40.i32[3] = LODWORD(v39.__cosval);
        *(v30 + 2) = MotionType;
        v41 = &v30[48 * v38];
        *(v41 + 2) = v100;
        *(v41 + 3) = v40;
        *(v41 + 8) = 0;
        *(v41 + 9) = 0;
      }

      if (v35 == v4)
      {
        break;
      }

      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        break;
      }
    }

    v101 = v2[8];
    v34 = *(v30 + 3);
    v4 = v38 + 2;
    if ((v38 + 2) <= (v34 >> 1))
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v4, 1, v30);
LABEL_49:
  v43 = __sincosf_stret((v31 * 32.0) * 0.5);
  v44 = vmulq_n_f32(v101, v43.__sinval);
  v44.i32[3] = LODWORD(v43.__cosval);
  *(v30 + 2) = v4;
  v45 = &v30[48 * MotionType + 32];
  *v45 = v100;
  *(v45 + 16) = v44;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  RESampledAnimationDefaultParameters();
  v46 = *(v30 + 2);
  v47 = v2[6].f32[3];
  LOBYTE(v109) = 1;
  v110 = "Transform.transform";
  LOBYTE(v111) = 1;
  BYTE1(v111) &= 1u;
  *(&v111 + 1) = v47 / (v46 - 1);
  LODWORD(v112) = 0;
  *(&v112 + 1) = v47;
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v48 = result;
    v49 = ComponentByClass == 0;

    REAnimationComponentGetComponentType();
    v50 = v94;
    REEntityGetOrAddComponentByClass();
    v109 = 2;
    LODWORD(v110) = 5120;
    v111 = "SPIN";
    LOBYTE(v112) = 0;
    v2[9].i64[1] = REAnimationComponentPlay();
    v2[10].i8[0] = 0;
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v50;
    *(v52 + 32) = v93;
    *(v52 + 36) = v49;
    v53 = v2[2].i64[0];
    v54 = v2[2].i64[1];
    v2[2].i64[0] = partial apply for specialized closure #1 in __RKEntitySpinAction.perform(with:);
    v2[2].i64[1] = v52;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v53);

    *&v100 = type metadata accessor for Entity();
    v107 = v100;
    v108 = &protocol witness table for Entity;
    v55 = v96;
    v105 = v96;
    v56 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v109);
    v57 = v112;
    v58 = v113;
    __swift_project_boxed_opaque_existential_1(&v109, v112);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v59, &v105, v57, v59, v58);
    v101.i64[0] = v48;
    v60 = v102;
    v61 = v103;
    v62 = v104;
    __swift_destroy_boxed_opaque_existential_1(&v109);
    *(swift_allocObject() + 16) = 0;
    v109 = v60;
    v110 = v61;
    v111 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    ComponentByClass = &protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v63 = v97;
    Publisher.compactMap<A>(_:)();

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    v67 = swift_allocObject();
    (*(v98 + 32))(&v67[*(*v67 + *MEMORY[0x1E695BEE8] + 16)], v63, v99);
    v109 = v67;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for closure #2 in __RKEntitySpinAction.perform(with:);
    *(v68 + 24) = v56;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v99 = &protocol conformance descriptor for Scene.Publisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v69 = Publisher<>.sink(receiveValue:)();

    v70 = type metadata accessor for AnyCancellable();
    v112 = v70;
    v113 = MEMORY[0x1E695BF08];

    v109 = v69;
    outlined destroy of BodyTrackingComponent?(&v105, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v109, &v2[10].i64[1]);
    swift_endAccess();
    v107 = v100;
    v108 = &protocol witness table for Entity;
    v105 = v55;
    v71 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v109);
    v72 = v112;
    v73 = v113;
    __swift_project_boxed_opaque_existential_1(&v109, v112);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v74, &v105, v72, v74, v73);
    v75 = v102;
    v76 = v103;
    v77 = v104;
    __swift_destroy_boxed_opaque_existential_1(&v109);
    *(swift_allocObject() + 16) = 0;
    v109 = v75;
    v110 = v76;
    v111 = v77;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    v78 = v88;
    Publisher.compactMap<A>(_:)();

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    v82 = swift_allocObject();
    (*(v89 + 32))(&v82[*(*v82 + *MEMORY[0x1E695BEE8] + 16)], v78, v91);
    v109 = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = partial apply for closure #3 in __RKEntitySpinAction.perform(with:);
    *(v83 + 24) = v71;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    v84 = Publisher<>.sink(receiveValue:)();

    v112 = v70;
    v113 = MEMORY[0x1E695BF08];

    v109 = v84;
    outlined destroy of BodyTrackingComponent?(&v105, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v109, &v2[13]);
    swift_endAccess();
    v109 = v87;
    v110 = v90;
    v85 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v85, &v109);

    RERelease();

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in __RKEntitySpinAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v5 + 168, &v11);
    if (*(&v12 + 1))
    {
      outlined init with copy of __REAssetService(&v11, v9);
      outlined destroy of BodyTrackingComponent?(&v11, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v9, v10);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v11, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v11, v5 + 168);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v5 + 208, &v11);
    if (*(&v12 + 1))
    {
      outlined init with copy of __REAssetService(&v11, v9);
      outlined destroy of BodyTrackingComponent?(&v11, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v9, v10);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v11, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v11, v5 + 208);
    swift_endAccess();
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = *(v5 + 16);

      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (REAnimationComponentHasRunningAnimations())
        {
          if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v5 + 104) == 1) && *(v5 + 96) == 3)
          {
            REAnimationComponentStopAllAnimations();
            RENetworkMarkComponentDirty();
          }
        }
      }

      *(v5 + 152) = 0;
      *(v5 + 160) = 1;
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntitySpinAction.perform(with:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 160) & 1) != 0 || *(v1 + 16) != *(result + 152))
    {
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v6 = v4;
      v7 = v5;

      __RKEntityAction.state.didset(&v6);
    }
  }

  return result;
}

uint64_t __RKEntitySpinAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 144);
  v9 = *(v1 + 128);
  v5 = type metadata accessor for __RKEntitySpinAction();
  v6 = swift_allocObject();
  *(v6 + 152) = 0;
  *(v6 + 160) = 1;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 108) = *(v1 + 108);
  *(v6 + 128) = v9;
  *(v6 + 144) = v4;

  result = __RKEntityAction.init(targetEntity:)(v7);
  a1[3] = v5;
  *a1 = result;
  return result;
}

uint64_t __RKEntitySpinAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 144);
    v8 = *(v1 + 128);
    type metadata accessor for __RKEntitySpinAction();
    v6 = swift_allocObject();
    *(v6 + 152) = 0;
    *(v6 + 160) = 1;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    *(v6 + 108) = *(v1 + 108);
    *(v6 + 128) = v8;
    *(v6 + 144) = v5;

    return __RKEntityAction.init(targetEntity:)(v7);
  }

  else
  {
    __RKEntitySpinAction.copy(with:)(v10);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntitySpinAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntitySpinAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));

  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

void __swiftcall PerspectiveCameraComponent.init(near:far:fieldOfViewInDegrees:)(RealityKit::PerspectiveCameraComponent *__return_ptr retstr, Swift::Float near, Swift::Float far, Swift::Float fieldOfViewInDegrees)
{
  retstr->near = near;
  retstr->far = far;
  retstr->fieldOfViewInDegrees = fieldOfViewInDegrees;
  retstr->fieldOfViewOrientation = RealityFoundation_CameraFieldOfViewOrientation_vertical;
}

uint64_t static PerspectiveCameraComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REPerspectiveCameraComponentGetNear();
  v5 = v4;
  REPerspectiveCameraComponentGetFar();
  v7 = v6;
  REPerspectiveCameraComponentGetFieldOfView();
  v9 = v8;
  result = REPerspectiveCameraComponentGetFieldOfViewDirection();
  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 12) = result == 0;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance PerspectiveCameraComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 12);
  REPerspectiveCameraComponentSetNear();
  REPerspectiveCameraComponentSetFar();
  REPerspectiveCameraComponentSetFieldOfView();
  REPerspectiveCameraComponentSetFieldOfViewDirection();

  return RENetworkMarkComponentDirty();
}

uint64_t PerspectiveCameraComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 12);
  REPerspectiveCameraComponentSetNear();
  REPerspectiveCameraComponentSetFar();
  REPerspectiveCameraComponentSetFieldOfView();
  REPerspectiveCameraComponentSetFieldOfViewDirection();

  return RENetworkMarkComponentDirty();
}

Swift::Void __swiftcall Entity.turnIntoNinja()()
{
  v1 = *(v0 + 16);
  REHideEntity();
  Entity.ensureAnchorComponent()();
  memset(v16, 0, sizeof(v16));
  v17 = xmmword_1C1898F00;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v16, 0, v0);
  v2 = *(v0 + 16);
  specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  CustomComponent = REEntityGetCustomComponent();

  if (!CustomComponent)
  {

    __EntityInfoComponent.init(entity:)(v4, &v14);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v14, v15, v0);
  }

  v5 = *(v0 + 16);
  specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  if (!REEntityGetCustomComponent())
  {
    goto LABEL_18;
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  static __EntityInfoComponent.__load(from:)(Object, &v14);
  v7 = v15;
  if (v15 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v14;
  if (!v14)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (*v14 != 42)
  {
    v9 = String.init(utf8String:)();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v8 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(1, v11, v12);

    type metadata accessor for IntrospectionDataCleanupHelper();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;

    v7 = v13;
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v8, v7, v0);

  outlined consume of CustomMaterial.Blending(v8, v7);
}

uint64_t Entity.isNinja.getter()
{
  v1 = *(v0 + 16);
  specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  if (!REEntityGetCustomComponent())
  {
    return 1;
  }

  result = RECustomComponentGetObject();
  if (result)
  {
    v3 = *result;
    if (*(result + 8))
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (v4)
    {
    }

    else
    {
      v5 = *v3;
      v6 = String.init(utf8String:)();
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0xE000000000000000;
      }

      v3 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v5 == 42, v8, v9);

      type metadata accessor for IntrospectionDataCleanupHelper();
      result = swift_allocObject();
      *(result + 16) = v3;
    }

    if (v3)
    {
      v10 = *v3;

      return v10 == 42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __EntityInfoComponent.init(entity:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v9[v11 + 32] = 13;
  v18 = v9;
  specialized Array.append<A>(contentsOf:)(v6, v8);
  v12 = v18;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    v12 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v16;
  *(v12 + 32 + v15) = 0;
  if (v15 > 0x7FFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v17 = RECIntrospectionAlloc();
    memmove(v17, (v12 + 32), v16);

    *a2 = v17;
    type metadata accessor for IntrospectionDataCleanupHelper();
    result = swift_allocObject();
    *(result + 16) = v17;
    a2[1] = result;
  }

  return result;
}

uint64_t static __EntityInfoComponent.__load(from:)@<X0>(unsigned __int8 **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    v8 = *v3;
    v9 = String.init(utf8String:)();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v8 == 42, v11, v12);

    *a2 = v13;
    type metadata accessor for IntrospectionDataCleanupHelper();
    result = swift_allocObject();
    *(result + 16) = v13;
    a2[1] = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __EntityInfoComponent.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7954797469746E65;
  }

  else
  {
    v4 = 0x616A6E694E7369;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEE00656D614E6570;
  }

  if (*a2)
  {
    v6 = 0x7954797469746E65;
  }

  else
  {
    v6 = 0x616A6E694E7369;
  }

  if (*a2)
  {
    v7 = 0xEE00656D614E6570;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __EntityInfoComponent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __EntityInfoComponent.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __EntityInfoComponent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __EntityInfoComponent.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __EntityInfoComponent.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __EntityInfoComponent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x616A6E694E7369;
  if (*v1)
  {
    v2 = 0x7954797469746E65;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEE00656D614E6570;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __EntityInfoComponent.CodingKeys()
{
  if (*v0)
  {
    result = 0x7954797469746E65;
  }

  else
  {
    result = 0x616A6E694E7369;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __EntityInfoComponent.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __EntityInfoComponent.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __EntityInfoComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __EntityInfoComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __EntityInfoComponent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v11 & 1, v12, v13);

  (*(v6 + 8))(v9, v5);
  type metadata accessor for IntrospectionDataCleanupHelper();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *a2 = v14;
  a2[1] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __EntityInfoComponent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10RealityKit21__EntityInfoComponentV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys();
  result = dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v9)
  {
    v12 = *v9;
    v15 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      String.init(utf8String:)();
      v14 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static __EntityInfoComponent.__addIntrospectionData(_:)(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

void static __EntityInfoComponent.__free(to:offset:)(uint64_t *a1)
{
  if (!a1[1] && *a1)
  {
    v2 = *a1;
    RECIntrospectionFree();
  }

  outlined destroy of __EntityInfoComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t static __EntityInfoComponent.__load(from:offset:)@<X0>(unsigned __int8 **a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for __EntityInfoComponent;
  a2[4] = &protocol witness table for __EntityInfoComponent;
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    v8 = *v3;
    v9 = String.init(utf8String:)();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v8 == 42, v11, v12);

    *a2 = v13;
    type metadata accessor for IntrospectionDataCleanupHelper();
    result = swift_allocObject();
    *(result + 16) = v13;
    a2[1] = result;
  }

  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __EntityInfoComponent(uint64_t *a1)
{
  if (!a1[1] && *a1)
  {
    v2 = *a1;
    RECIntrospectionFree();
  }

  outlined destroy of __EntityInfoComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__addIntrospectionData(_:) in conformance __EntityInfoComponent(uint64_t result)
{
  if (result)
  {
    return REStructBuilderAddMemberDataTypeWithTag();
  }

  return result;
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance __EntityInfoComponent@<X0>(unsigned __int8 **a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  a2[3] = a3;
  a2[4] = a4;
  return static __EntityInfoComponent.__load(from:)(a1, a2);
}

uint64_t Entity.ensureAnchorComponent()()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  REAnchorComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    UUID.init()();
  }

  else
  {
    v8 = REComponentCreateByType();
    result = UUID.init()();
    if (!v8)
    {
      __break(1u);
      return result;
    }
  }

  REAnchorComponentSetAnchorIdentifier();
  REAnchorComponentSetWorldTransform();
  if (!ComponentByClass)
  {
    v10 = *(v0 + 16);
    REEntityAddExistingComponent();
    RERelease();
  }

  result = (*(v2 + 8))(v5, v1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(char a1, Swift::Int a2, unint64_t a3)
{
  if (a1)
  {
    v5 = 42;
  }

  else
  {
    v5 = 13;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v6[v8 + 32] = v5;
  v15 = v6;

  specialized Array.append<A>(contentsOf:)(a2, a3);
  v9 = v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v13;
  *(v9 + 32 + v12) = 0;
  if (v12 > 0x7FFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v14 = RECIntrospectionAlloc();
    memmove(v14, (v9 + 32), v13);

    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __EntityInfoComponent.CodingKeys and conformance __EntityInfoComponent.CodingKeys);
  }

  return result;
}

uint64_t PhotogrammetrySession.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + *(v2 + 32)) = 0;
  return result;
}

uint64_t static PhotogrammetrySession.isSupported.getter()
{
  type metadata accessor for PhotogrammetrySession();
  return static PhotogrammetrySession.isSupported.getter() & 1;
}

{
  return MEMORY[0x1EEDF99C8]();
}

__n128 PhotogrammetrySession.Request.Geometry.orientedBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__int128 *PhotogrammetrySession.Request.Geometry.init(orientedBounds:transform:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  *a2 = a3;
  *(a2 + 16) = a4;
  *(a2 + 32) = a5;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  return result;
}

void OrientedBoundingBox.init(orientation:boundingBox:)(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t PhotogrammetrySession.__allocating_init(input:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.InputSource(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C1358000, v13, v14, "~~~ PhotogrammetrySession init was called! ~~~", v15, 2u);
    MEMORY[0x1C6902A30](v15, -1, -1);
  }

  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a1, v16);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of PhotogrammetrySession.Configuration(a2, v7, type metadata accessor for PhotogrammetrySession.Configuration);
  v18 = type metadata accessor for PhotogrammetrySession(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = PhotogrammetrySession.init(source:configuration:)(v11, v7);
  outlined destroy of PhotogrammetrySession.Configuration(a2, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v17 + 8))(a1, v16);
  return v21;
}

uint64_t PhotogrammetrySession.__allocating_init<A>(input:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a1;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PhotogrammetrySession.InputSource(0);
  v13 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a3;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1C1358000, v17, v18, "~~~ PhotogrammetrySession init was called! ~~~", v19, 2u);
    a3 = v29;
    MEMORY[0x1C6902A30](v20, -1, -1);
  }

  v21 = v32;
  (*(v8 + 16))(v12, v32, a3);
  *v15 = AnySequence.init<A>(_:)();
  swift_storeEnumTagMultiPayload();
  v22 = v31;
  outlined init with copy of PhotogrammetrySession.Configuration(v31, v7, type metadata accessor for PhotogrammetrySession.Configuration);
  v23 = type metadata accessor for PhotogrammetrySession(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = PhotogrammetrySession.init(source:configuration:)(v15, v7);
  outlined destroy of PhotogrammetrySession.Configuration(v22, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v8 + 8))(v21, a3);
  return v26;
}

uint64_t PhotogrammetrySession.Error.localizedDescription.getter()
{
  v1 = type metadata accessor for PhotogrammetrySession.Error(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  outlined init with copy of PhotogrammetrySession.Configuration(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySession.Error);
  return String.init<A>(describing:)();
}

uint64_t PhotogrammetrySession.Configuration.checkpointDirectory.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PhotogrammetrySession.Configuration(0) + 28);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t PhotogrammetrySession.Configuration.ignoreBoundingBox.getter()
{
  return *(v0 + *(type metadata accessor for PhotogrammetrySession.Configuration(0) + 32));
}

{
  return MEMORY[0x1EEDF99F0]();
}

uint64_t PhotogrammetrySession.Configuration.ignoreBoundingBox.setter(char a1)
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PhotogrammetrySession.Configuration.init(checkpointDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 2) = 0;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(v4 + 28);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = *(v7 + 56);
  v9(a2 + v5, 1, 1, v6);
  *(a2 + *(v4 + 32)) = 0;
  outlined destroy of BodyTrackingComponent?(a2 + v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 32))(a2 + v5, a1, v6);

  return (v9)(a2 + v5, 0, 1, v6);
}

__n128 PhotogrammetrySession.Request.Geometry.orientedBounds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v1[3] = *a1;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

void (*PhotogrammetrySession.Request.Geometry.orientedBounds.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v4 = v1[4];
  v5 = v1[5];
  *v3 = v1[3];
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  return PhotogrammetrySession.Request.Geometry.orientedBounds.modify;
}

void PhotogrammetrySession.Request.Geometry.orientedBounds.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[6];
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v2[3] = *v1;
  v2[4] = v3;
  v2[5] = v4;
  free(v1);
}

uint64_t PhotogrammetrySession.Request.Geometry.bounds.getter()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  simd_matrix4x4(*(v0 + 48));
  return REAABBTransform();
}

void PhotogrammetrySession.Request.Geometry.bounds.setter(__n128 a1, __n128 a2)
{
  *(v2 + 48) = xmmword_1C1887660;
  *(v2 + 64) = a1;
  *(v2 + 80) = a2;
}

__n128 (*PhotogrammetrySession.Request.Geometry.bounds.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v8 = *(v1 + 64);
  v9 = *(v1 + 80);
  simd_matrix4x4(*(v1 + 48));
  REAABBTransform();
  *v4 = v5;
  v4[1] = v6;
  return PhotogrammetrySession.Request.Geometry.bounds.modify;
}

__n128 PhotogrammetrySession.Request.Geometry.bounds.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *v1;
  v4 = *(v1 + 1);
  v2[3] = *&zmmword_1C1887630[48];
  v2[4] = v3;
  v2[5] = v4;
  free(v1);
  return result;
}

__n128 PhotogrammetrySession.Request.Geometry.transform.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

void PhotogrammetrySession.Request.Geometry.transform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

void PhotogrammetrySession.Request.Geometry.init(bounds:transform:)(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>)
{
  *a1 = a4;
  *(a1 + 16) = a5;
  *(a1 + 32) = a6;
  *(a1 + 48) = xmmword_1C1887660;
  *(a1 + 64) = a2;
  *(a1 + 80) = a3;
}

uint64_t PhotogrammetrySession.Request.Geometry.hash(into:)(uint64_t a1)
{
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  specialized SIMD.hash(into:)(a1, *v1);
  specialized SIMD.hash(into:)(a1, v4);
  specialized SIMD.hash(into:)(a1, v5);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(a1, xmmword_1C1887620);
  specialized SIMD.hash(into:)(a1, v6);
  specialized SIMD.hash(into:)(a1, 0);
  specialized SIMD.hash(into:)(a1, v7);

  return specialized SIMD.hash(into:)(a1, v8);
}

Swift::Int PhotogrammetrySession.Request.Geometry.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)(v8, v2);
  specialized SIMD.hash(into:)(v8, v3);
  specialized SIMD.hash(into:)(v8, v4);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(v8, xmmword_1C1887620);
  specialized SIMD.hash(into:)(v8, v5);
  specialized SIMD.hash(into:)(v8, 0);
  specialized SIMD.hash(into:)(v8, v6);
  specialized SIMD.hash(into:)(v8, v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhotogrammetrySession.Request.Geometry()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)(v8, v2);
  specialized SIMD.hash(into:)(v8, v3);
  specialized SIMD.hash(into:)(v8, v4);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(v8, xmmword_1C1887620);
  specialized SIMD.hash(into:)(v8, v5);
  specialized SIMD.hash(into:)(v8, 0);
  specialized SIMD.hash(into:)(v8, v6);
  specialized SIMD.hash(into:)(v8, v7);
  return Hasher._finalize()();
}

uint64_t PhotogrammetrySession.Request.init(modelFile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 1;
  type metadata accessor for PhotogrammetrySession.Request(0);

  return swift_storeEnumTagMultiPayload();
}

void PhotogrammetrySession.Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhotogrammetrySession.Configuration(v2, v12, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v25 = *v12;
      v24 = *(v12 + 1);
      v26 = *(v12 + 2);
      v27 = *(v12 + 3);
      v28 = *(v12 + 4);
      v29 = *(v12 + 5);
      v31 = *(v12 + 6);
      v30 = *(v12 + 7);
      v32 = *(v12 + 9);
      v41 = *(v12 + 8);
      v42.n128_u64[0] = v30;
      v33 = *(v12 + 11);
      v43 = *(v12 + 10);
      v44.n128_u64[0] = v32;
      v45.n128_u64[0] = v33;
      v34 = v12[96];
      MEMORY[0x1C68F4C10](1);
      MEMORY[0x1C68F4C10](0);
      if (v34 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v36.n128_u64[0] = v25;
        v36.n128_u64[1] = v24;
        v38 = v36;
        v36.n128_u64[0] = v26;
        v36.n128_u64[1] = v27;
        v39 = v36;
        v36.n128_u64[0] = v28;
        v36.n128_u64[1] = v29;
        v40 = v36;
        v36.n128_u64[0] = v31;
        v36.n128_u64[1] = v42.n128_u64[0];
        v42 = v36;
        v36.n128_u64[0] = v41;
        v36.n128_u64[1] = v44.n128_u64[0];
        v44 = v36;
        v36.n128_u64[0] = v43;
        v36.n128_u64[1] = v45.n128_u64[0];
        v45 = v36;
        Hasher._combine(_:)(1u);
        specialized SIMD.hash(into:)(a1, v38);
        specialized SIMD.hash(into:)(a1, v39);
        specialized SIMD.hash(into:)(a1, v40);
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        specialized SIMD.hash(into:)(a1, xmmword_1C1887620);
        specialized SIMD.hash(into:)(a1, v42);
        specialized SIMD.hash(into:)(a1, 0);
        specialized SIMD.hash(into:)(a1, v44);
        specialized SIMD.hash(into:)(a1, v45);
      }
    }

    else
    {
      v15 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64)];
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v38.n128_u64[0] = *(v15 + 3);
      v19 = *(v15 + 4);
      v40.n128_u64[0] = *(v15 + 5);
      v20 = *(v15 + 7);
      v39.n128_u64[0] = *(v15 + 6);
      v21 = *(v15 + 9);
      v41 = *(v15 + 8);
      v42.n128_u64[0] = v20;
      v44.n128_u64[0] = v21;
      v22 = *(v15 + 11);
      v43 = *(v15 + 10);
      v45.n128_u64[0] = v22;
      v23 = v15[96];
      (*(v5 + 32))(v8, v12, v4);
      MEMORY[0x1C68F4C10](0);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x1C68F4C10](0);
      if (v23 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v35.n128_u64[0] = v16;
        v35.n128_u64[1] = v17;
        v37 = v35;
        v35.n128_u64[0] = v18;
        v35.n128_u64[1] = v38.n128_u64[0];
        v38 = v35;
        v35.n128_u64[0] = v19;
        v35.n128_u64[1] = v40.n128_u64[0];
        v40 = v35;
        v35.n128_u64[0] = v39.n128_u64[0];
        v35.n128_u64[1] = v42.n128_u64[0];
        v42 = v35;
        v35.n128_u64[0] = v41;
        v35.n128_u64[1] = v44.n128_u64[0];
        v44 = v35;
        v35.n128_u64[0] = v43;
        v35.n128_u64[1] = v45.n128_u64[0];
        v45 = v35;
        Hasher._combine(_:)(1u);
        specialized SIMD.hash(into:)(a1, v37);
        specialized SIMD.hash(into:)(a1, v38);
        specialized SIMD.hash(into:)(a1, v40);
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        specialized SIMD.hash(into:)(a1, xmmword_1C1887620);
        specialized SIMD.hash(into:)(a1, v42);
        specialized SIMD.hash(into:)(a1, 0);
        specialized SIMD.hash(into:)(a1, v44);
        specialized SIMD.hash(into:)(a1, v45);
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = 2;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    MEMORY[0x1C68F4C10](v14);
  }
}

Swift::Int PhotogrammetrySession.Request.hashValue.getter()
{
  Hasher.init(_seed:)();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhotogrammetrySession.Request()
{
  Hasher.init(_seed:)();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhotogrammetrySession.Request()
{
  Hasher.init(_seed:)();
  PhotogrammetrySession.Request.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 PhotogrammetrySession.Pose.transform.getter()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of PhotogrammetrySession.Pose.transform.getter);
  if (one-time initialization token for identity != -1)
  {
    v4 = result;
    v2 = *v0;
    v3 = v0[1];
    swift_once();
    return v4;
  }

  return result;
}

uint64_t PhotogrammetrySession.Poses.posesBySample.getter()
{
  v1 = *v0;
}

{
  return MEMORY[0x1EEDF9A80]();
}

uint64_t PhotogrammetrySession.PointCloud.Point.color.getter()
{
  return *(v0 + 16);
}

{
  return MEMORY[0x1EEDF99A0]();
}

uint64_t PhotogrammetrySession.PointCloud.points.getter()
{
  v1 = *v0;
}

{
  return MEMORY[0x1EEDF99B8]();
}

uint64_t PhotogrammetrySession.Output.ProgressInfo.estimatedRemainingTime.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

{
  return MEMORY[0x1EEDF9AB0]();
}

Swift::Int PhotogrammetrySession.Output.ProcessingStage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t PhotogrammetrySession.Output.localizedDescription.getter()
{
  v1 = type metadata accessor for PhotogrammetrySession.Request(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PhotogrammetrySession.Output(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  outlined init with copy of PhotogrammetrySession.Configuration(v0, &v40 - v13, type metadata accessor for PhotogrammetrySession.Output);
  v14 = String.init<A>(describing:)();
  outlined init with copy of PhotogrammetrySession.Configuration(v0, v11, type metadata accessor for PhotogrammetrySession.Output);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {

        return 0xD000000000000032;
      }

      if (EnumCaseMultiPayload == 9)
      {

        return 0xD000000000000076;
      }

      v33 = type metadata accessor for PhotogrammetrySession.Output;
      v34 = v11;
LABEL_25:
      outlined destroy of PhotogrammetrySession.Configuration(v34, v33);
      return v14;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {

        return 0xD00000000000001ALL;
      }

      else
      {

        return 0xD00000000000002BLL;
      }
    }

    v27 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMR) + 48);
    v28 = *v27;
    v29 = v27[8];
    v30 = v27[9];
    outlined init with take of PhotogrammetrySession.Request(v11, v7);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v44 = 0x2074736575716552;
    v45 = 0xE800000000000000;
    outlined init with copy of PhotogrammetrySession.Configuration(v7, v4, type metadata accessor for PhotogrammetrySession.Request);
    v31 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v31);

    MEMORY[0x1C68F3410](0x736572676F727020, 0xEE003D6F666E4973);
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v32 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v32);

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
      outlined init with take of PhotogrammetrySession.Request(v11, v7);
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v44 = 0x2074736575716552;
      v45 = 0xE800000000000000;
      outlined init with copy of PhotogrammetrySession.Configuration(v7, v4, type metadata accessor for PhotogrammetrySession.Request);
      v38 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v38);

      MEMORY[0x1C68F3410](0x74656C706D6F6320, 0xEB000000002E6465);
      v14 = v44;
      outlined destroy of PhotogrammetrySession.Configuration(v7, type metadata accessor for PhotogrammetrySession.Request);
      v33 = type metadata accessor for PhotogrammetrySession.Result;
      v34 = v11 + v37;
      goto LABEL_25;
    }

    v22 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMR) + 48));
    outlined init with take of PhotogrammetrySession.Request(v11, v7);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v44 = 0x2074736575716552;
    v45 = 0xE800000000000000;
    outlined init with copy of PhotogrammetrySession.Configuration(v7, v4, type metadata accessor for PhotogrammetrySession.Request);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000015, 0x80000001C18EFAE0);
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    MEMORY[0x1C68F3410](v24);

    MEMORY[0x1C68F3410](11810, 0xE200000000000000);

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v25 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMR) + 48));
    outlined init with take of PhotogrammetrySession.Request(v11, v7);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x1C68F3410](0x2074736575716552, 0xE800000000000000);
    outlined init with copy of PhotogrammetrySession.Configuration(v7, v4, type metadata accessor for PhotogrammetrySession.Request);
    v26 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0x736572676F727020, 0xEA00000000003D73);
    Double.write<A>(to:)();
LABEL_17:
    MEMORY[0x1C68F3410](46, 0xE100000000000000);
LABEL_18:
    v14 = v44;
    v33 = type metadata accessor for PhotogrammetrySession.Request;
    v34 = v7;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 3)
  {

    v17 = *v11;
    v16 = v11[1];
    v18 = v11[2];
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v44 = 0x6920656C706D6153;
    v45 = 0xEA00000000003D64;
    v41 = v17;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v19);

    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EFA40);
    MEMORY[0x1C68F3410](v16, v18);

    v20 = 46;
    v21 = 0xE100000000000000;
  }

  else
  {

    v35 = *v11;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    MEMORY[0x1C68F3410](0x6920656C706D6153, 0xEA00000000003D64);
    v41 = v35;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v36);

    v20 = 0xD000000000000048;
    v21 = 0x80000001C18EF9F0;
  }

  MEMORY[0x1C68F3410](v20, v21);
  return v44;
}

uint64_t PhotogrammetrySession.Outputs.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PhotogrammetrySession.Outputs.Iterator.next(), 0, 0);
}

uint64_t PhotogrammetrySession.Outputs.Iterator.next()()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = PhotogrammetrySession.Outputs.Iterator.next();
  v7 = v0[2];

  return v9(v7, v2, v3);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = protocol witness for AsyncIteratorProtocol.next() in conformance PhotogrammetrySession.Outputs.Iterator;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](_s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, 0, 0);
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    if (v3[4])
    {
      v4 = v3[5];
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t _s17RealityFoundation21PhotogrammetrySessionC7OutputsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotogrammetrySession.process(requests:)(Swift::OpaquePointer requests)
{
  outlined init with copy of __REAssetService(v1 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v2 = off_1F4104580;
  type metadata accessor for PhotogrammetrySessionImpl(0);
  v2();
  __swift_destroy_boxed_opaque_existential_1(v3);
}

Swift::Void __swiftcall PhotogrammetrySession.cancel()()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession), *(v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession + 24));
  v2 = *v1;
  v3 = *(*v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in PhotogrammetrySessionImpl.cancel();
  *(v4 + 24) = v2;
  v6[4] = _sIg_Ieg_TRTA_0;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_50;
  v5 = _Block_copy(v6);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

uint64_t PhotogrammetrySession.activeRequests.getter()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession), *(v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession + 24)) + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_activeRequests);
}

uint64_t PhotogrammetrySession.outputs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession), *(v1 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession + 24)) + 16;

  return outlined init with copy of PhotogrammetrySession.Outputs(v3, a1);
}

uint64_t PhotogrammetrySession.init(source:configuration:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v56 - v8;
  v67 = type metadata accessor for UUID();
  v72 = *(v67 - 8);
  v9 = v72[8];
  MEMORY[0x1EEE9AC00](v67);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v56 - v18;
  v19 = type metadata accessor for URL();
  v63 = *(v19 - 8);
  v64 = v19;
  v20 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v56 - v24;
  v25 = type metadata accessor for PhotogrammetrySession.InputSource(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  UUID.init()();
  v66 = a1;
  outlined init with copy of PhotogrammetrySession.Configuration(a1, v28, type metadata accessor for PhotogrammetrySession.InputSource);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = v63;
    v40 = v61;
    v41 = v28;
    v42 = v64;
    (*(v63 + 32))(v61, v41, v64);
    v43 = v72[2];
    v57 = v2;
    v60 = v29;
    v44 = v2 + v29;
    v45 = v22;
    v46 = v62;
    v47 = v67;
    v43(v62, v44, v67);
    v43(v16, v46, v47);
    (*(v39 + 16))(v45, v40, v42);
    v48 = v59;
    outlined init with copy of PhotogrammetrySession.Configuration(v68, v59, type metadata accessor for PhotogrammetrySession.Configuration);
    v49 = v65;
    v50 = specialized PhotogrammetrySessionImpl.__allocating_init(id:input:configuration:)(v16, v45, v48);
    v32 = v57;
    if (v49)
    {
      outlined destroy of PhotogrammetrySession.Configuration(v68, type metadata accessor for PhotogrammetrySession.Configuration);
      outlined destroy of PhotogrammetrySession.Configuration(v66, type metadata accessor for PhotogrammetrySession.InputSource);
      v38 = v72[1];
      v34 = v67;
      v38(v62, v67);
      (*(v63 + 8))(v61, v64);
      v29 = v60;
      goto LABEL_6;
    }

    v54 = v50;
    v70 = type metadata accessor for PhotogrammetrySessionImpl(0);
    v71 = &protocol witness table for PhotogrammetrySessionImpl;
    *&v69 = v54;
    outlined destroy of PhotogrammetrySession.Configuration(v68, type metadata accessor for PhotogrammetrySession.Configuration);
    outlined destroy of PhotogrammetrySession.Configuration(v66, type metadata accessor for PhotogrammetrySession.InputSource);
    (v72[1])(v62, v67);
    (*(v63 + 8))(v61, v64);
LABEL_9:
    outlined init with take of ForceEffectBase(&v69, v32 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession);
    return v32;
  }

  v30 = *v28;
  v31 = v72[2];
  v32 = v2;
  v33 = v60;
  v34 = v67;
  v31(v60, v2 + v29, v67);
  v31(v11, v33, v34);
  v35 = v58;
  outlined init with copy of PhotogrammetrySession.Configuration(v68, v58, type metadata accessor for PhotogrammetrySession.Configuration);

  v36 = v65;
  v37 = specialized PhotogrammetrySessionImpl.__allocating_init<A>(id:input:configuration:)(v11, v30, v35);
  if (!v36)
  {
    v53 = v37;
    v70 = type metadata accessor for PhotogrammetrySessionImpl(0);
    v71 = &protocol witness table for PhotogrammetrySessionImpl;

    *&v69 = v53;
    outlined destroy of PhotogrammetrySession.Configuration(v68, type metadata accessor for PhotogrammetrySession.Configuration);
    outlined destroy of PhotogrammetrySession.Configuration(v66, type metadata accessor for PhotogrammetrySession.InputSource);
    (v72[1])(v33, v34);
    goto LABEL_9;
  }

  outlined destroy of PhotogrammetrySession.Configuration(v68, type metadata accessor for PhotogrammetrySession.Configuration);
  outlined destroy of PhotogrammetrySession.Configuration(v66, type metadata accessor for PhotogrammetrySession.InputSource);
  v38 = v72[1];
  v38(v33, v34);
LABEL_6:
  v38((v32 + v29), v34);
  type metadata accessor for PhotogrammetrySession(0);
  v51 = *(*v32 + 48);
  v52 = *(*v32 + 52);
  swift_deallocPartialClassInstance();
  return v32;
}

uint64_t PhotogrammetrySession.deinit()
{
  v1 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession));
  return v0;
}

uint64_t PhotogrammetrySession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_photogrammetrySession));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 OrientedBoundingBox.boundingBox.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  return result;
}

uint64_t OrientedBoundingBox.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(a1, xmmword_1C1887620);
  specialized SIMD.hash(into:)(a1, v4);
  specialized SIMD.hash(into:)(a1, 0);
  v5 = v1[2];
  specialized SIMD.hash(into:)(a1, v1[1]);

  return specialized SIMD.hash(into:)(a1, v5);
}

Swift::Int OrientedBoundingBox.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  Hasher.init(_seed:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(v5, xmmword_1C1887620);
  specialized SIMD.hash(into:)(v5, v2);
  specialized SIMD.hash(into:)(v5, 0);
  specialized SIMD.hash(into:)(v5, v3);
  specialized SIMD.hash(into:)(v5, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OrientedBoundingBox(uint64_t a1)
{
  v4 = *v1;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(a1, xmmword_1C1887620);
  specialized SIMD.hash(into:)(a1, v4);
  specialized SIMD.hash(into:)(a1, 0);
  v5 = v1[2];
  specialized SIMD.hash(into:)(a1, v1[1]);

  return specialized SIMD.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrientedBoundingBox()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  Hasher.init(_seed:)();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized SIMD.hash(into:)(v5, xmmword_1C1887620);
  specialized SIMD.hash(into:)(v5, v2);
  specialized SIMD.hash(into:)(v5, 0);
  specialized SIMD.hash(into:)(v5, v3);
  specialized SIMD.hash(into:)(v5, v4);
  return Hasher._finalize()();
}

uint64_t PhotogrammetrySession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance PhotogrammetrySession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17RealityFoundation21PhotogrammetrySession_sessionID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 PhotogrammetrySession.Pose.intrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t PhotogrammetrySession.Pose.lensDistortionData.getter@<X0>(void *a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 88, &v8, &_sypSgMd, &_sypSgMR);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    result = swift_dynamicCast();
    v4 = v6;
    v5 = v7;
  }

  else
  {
    result = outlined destroy of BodyTrackingComponent?(&v8, &_sypSgMd, &_sypSgMR);
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t specialized static OrientedBoundingBox.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))))
  {
    return specialized static BoundingBox.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static PhotogrammetrySession.Request.Geometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a2 + 48);
  v3 = *(a2 + 80);
  v4 = *(a2 + 64);
  if ((specialized static Transform.== infix(_:_:)(*a1, *(a1 + 16), *(a1 + 32), *a2, *(a2 + 16), *(a2 + 32)) & 1) == 0 || (~vaddvq_s32(vandq_s8(vceqq_f32(v8, v7), xmmword_1C189FFB0)) & 0xF) != 0)
  {
    return 0;
  }

  return specialized static BoundingBox.== infix(_:_:)(v6, v5, v4, v3);
}

uint64_t specialized static PhotogrammetrySession.Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v46 + *(v18 + 56) - v17;
  v20 = a1;
  v21 = &v46 - v17;
  outlined init with copy of PhotogrammetrySession.Configuration(v20, &v46 - v17, type metadata accessor for PhotogrammetrySession.Request);
  outlined init with copy of PhotogrammetrySession.Configuration(a2, v19, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_26;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_26;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v23 = v47;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of PhotogrammetrySession.Configuration(v21, v14, type metadata accessor for PhotogrammetrySession.Request);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
    v25 = *&v14[v24 + 80];
    v61 = *&v14[v24 + 64];
    v62 = v25;
    v63 = v14[v24 + 96];
    v26 = *&v14[v24 + 16];
    v57 = *&v14[v24];
    v58 = v26;
    v27 = *&v14[v24 + 48];
    v59 = *&v14[v24 + 32];
    v60 = v27;
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v23 + 8))(v14, v4);
LABEL_17:
      outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AEtMR);
      return 0;
    }

    v41 = *&v19[v24 + 80];
    v54 = *&v19[v24 + 64];
    v55 = v41;
    v56 = v19[v24 + 96];
    v42 = *&v19[v24 + 16];
    v50 = *&v19[v24];
    v51 = v42;
    v43 = *&v19[v24 + 48];
    v52 = *&v19[v24 + 32];
    v53 = v43;
    (*(v23 + 32))(v7, v19, v4);
    v44 = static URL.== infix(_:_:)();
    v45 = *(v23 + 8);
    v45(v7, v4);
    v45(v14, v4);
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }

    v68 = v61;
    v69 = v62;
    v70 = v63;
    v64 = v57;
    v65 = v58;
    v66 = v59;
    v67 = v60;
    v71 = v50;
    v72 = v51;
    v77 = v56;
    v75 = v54;
    v76 = v55;
    v73 = v52;
    v74 = v53;
    if (v63)
    {
      goto LABEL_21;
    }

    v48[4] = v61;
    v48[5] = v62;
    v49 = v63;
    v48[0] = v57;
    v48[1] = v58;
    v48[2] = v59;
    v48[3] = v60;
    if (v77)
    {
LABEL_27:
      outlined destroy of PhotogrammetrySession.Configuration(v21, type metadata accessor for PhotogrammetrySession.Request);
      return 0;
    }

    v39 = v48;
LABEL_25:
    if (specialized static PhotogrammetrySession.Request.Geometry.== infix(_:_:)(v39, &v71))
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  outlined init with copy of PhotogrammetrySession.Configuration(v21, v11, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_17;
  }

  v28 = *(v19 + 5);
  v75 = *(v19 + 4);
  v76 = v28;
  v77 = v19[96];
  v29 = *(v19 + 1);
  v71 = *v19;
  v72 = v29;
  v30 = *(v19 + 3);
  v73 = *(v19 + 2);
  v74 = v30;
  v31 = *(v11 + 1);
  v64 = *v11;
  v65 = v31;
  v32 = *(v11 + 2);
  v33 = *(v11 + 3);
  v34 = *(v11 + 4);
  v35 = *(v11 + 5);
  v70 = v11[96];
  v68 = v34;
  v69 = v35;
  v66 = v32;
  v67 = v33;
  if ((v70 & 1) == 0)
  {
    v36 = *(v11 + 5);
    v61 = *(v11 + 4);
    v62 = v36;
    v63 = v11[96];
    v37 = *(v11 + 1);
    v57 = *v11;
    v58 = v37;
    v38 = *(v11 + 3);
    v59 = *(v11 + 2);
    v60 = v38;
    if (v77)
    {
      goto LABEL_27;
    }

    v39 = &v57;
    goto LABEL_25;
  }

LABEL_21:
  if ((v77 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  outlined destroy of PhotogrammetrySession.Configuration(v21, type metadata accessor for PhotogrammetrySession.Request);
  return 1;
}