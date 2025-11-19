uint64_t specialized static __REAssetBundle.remapSceneInteractionsBeforeWrite(with:assetService:fileWriter:scene:freeOfChangeSceneActions:)(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = v5;
  v78 = a3;
  v88 = a2;
  v83 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v70 = *(v83 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __RKEntityActionSpecification(0);
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[5];
  v97 = a1[4];
  v98 = v16;
  v99[0] = a1[6];
  *(v99 + 11) = *(a1 + 107);
  v17 = a1[1];
  v93 = *a1;
  v94 = v17;
  v18 = a1[3];
  v95 = a1[2];
  v96 = v18;
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration)
  {
    v19 = *(static __RKEntityInteractionsComponent.registration + 3);
    v20 = closure #1 in Scene.entitiesWithInteractions()(a4);
    v21 = v20;
    if (v20 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v23 = 0;
      v24 = 0;
      v25 = v21 & 0xC000000000000001;
      v73 = (v21 + 32);
      v74 = v21 & 0xFFFFFFFFFFFFFF8;
      v71 = a5;
      v72 = v21;
      v68 = v21 & 0xC000000000000001;
      v69 = i;
      v67 = v15;
      while (1)
      {
        v77 = v24;
        if (v25)
        {
          v62 = v23;
          v80 = MEMORY[0x1C68F41F0](v23, v21);
          v27 = v23 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v23 >= *(v74 + 16))
          {
            goto LABEL_42;
          }

          v80 = v73[v23];

          v26 = __OFADD__(v23, 1);
          v27 = v23 + 1;
          if (v26)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        v76 = v27;
        v28 = Entity.storageForAudioActions.getter();
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        v75 = v29 + 16;
        v30 = swift_allocObject();
        *(v30 + 16) = MEMORY[0x1E69E7CC0];
        v31 = v30 + 16;
        outlined init with copy of __REAssetService(v88, v92);
        v15 = swift_allocObject();
        *(v15 + 2) = v30;
        outlined init with take of ForceEffectBase(v92, (v15 + 24));
        v32 = v98;
        *(v15 + 8) = v97;
        *(v15 + 9) = v32;
        *(v15 + 10) = v99[0];
        *(v15 + 171) = *(v99 + 11);
        v33 = v94;
        *(v15 + 4) = v93;
        *(v15 + 5) = v33;
        v34 = v96;
        *(v15 + 6) = v95;
        *(v15 + 7) = v34;
        *(v15 + 24) = v78;
        *(v15 + 25) = v29;
        outlined init with copy of __REAssetBundle.ExportOptions(&v93, v91);
        Entity.remapAudioActions(_:)(partial apply for closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:), v15);
        if (v6)
        {

          return v64 & 1;
        }

        v35 = *(v28 + 16);
        v36 = v29;
        if (REEntityGetComponent())
        {
          v37 = *(v28 + 16);
          REEntityRemoveComponent();
        }

        v79 = v28;
        v38 = *(v28 + 16);
        v87 = REEntityGetOrAddComponent();
        swift_beginAccess();
        v39 = *v31;
        v86 = *(*v31 + 16);
        if (v86)
        {
          break;
        }

LABEL_16:

        swift_beginAccess();
        v46 = *(v36 + 16);

        a5 = v71;
        if (*v71)
        {
          v100 = 0;
          if (static __RKEntityInteractionsComponent.registration && (v47 = *(static __RKEntityInteractionsComponent.registration + 3), v48 = *(v80 + 16), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
          {
            v50 = *(Object + 16);
            if (v50)
            {
              v51 = *(Object + 16);

              v52 = *(v50 + 16);
              if (!v52)
              {
LABEL_31:

                v15 = MEMORY[0x1E69E7CC0];
LABEL_32:
                type metadata accessor for Scene();
                v61 = static Scene.containsChangeSceneActions(_:)(v15);

                v53 = v61 ^ 1;
                v6 = v100;
                goto LABEL_33;
              }
            }

            else
            {
              v50 = __RKEntityInteractionsComponent.decodedJSON()();
              v52 = *(v50 + 16);
              if (!v52)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v50 = MEMORY[0x1E69E7CC0];
            v52 = *(MEMORY[0x1E69E7CC0] + 16);
            if (!v52)
            {
              goto LABEL_31;
            }
          }

          LODWORD(v90) = v46;
          v91[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
          v15 = v91[0];
          v54 = *(v70 + 80);
          v89 = v50;
          v55 = v50 + ((v54 + 32) & ~v54);
          v56 = *(v70 + 72);
          v57 = v67;
          do
          {
            v58 = v82;
            _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v55, v82, type metadata accessor for __RKEntityInteractionSpecification);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v58 + *(v83 + 20), v57, type metadata accessor for __RKEntityActionSpecification);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v58, type metadata accessor for __RKEntityInteractionSpecification);
            v91[0] = v15;
            v60 = *(v15 + 2);
            v59 = *(v15 + 3);
            if (v60 >= v59 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1);
              v15 = v91[0];
            }

            *(v15 + 2) = v60 + 1;
            outlined init with take of __RKEntityActionSpecification(v57, &v15[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v60], type metadata accessor for __RKEntityActionSpecification);
            v55 += v56;
            --v52;
          }

          while (v52);

          a5 = v71;
          v46 = v90;
          goto LABEL_32;
        }

        v53 = 0;
LABEL_33:
        v24 = v46 | v77;
        *a5 = v53 & 1;
        v25 = v68;
        v23 = v76;
        v21 = v72;
        if (v76 == v69)
        {
          goto LABEL_45;
        }
      }

      a5 = 0;
      v15 = (v39 + 40);
      v84 = v36;
      v85 = v30;
      while (a5 < *(v39 + 16))
      {
        v100 = 0;
        v40 = *(v15 - 1);
        v41 = *v15;
        v21 = v88;
        v42 = v88[3];
        v89 = v88[4];
        v43 = __swift_project_boxed_opaque_existential_1(v88, v42);
        v90 = &v67;
        LOBYTE(v91[0]) = v93;
        MEMORY[0x1EEE9AC00](v43);
        *(&v67 - 4) = v21;
        *(&v67 - 3) = v40;
        v44 = v87;
        *(&v67 - 2) = v41;
        *(&v67 - 1) = v44;

        v45 = v100;
        __REAssetService.performOnEngineQueue<A>(with:_:)(v91, partial apply for closure #3 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:), (&v67 - 6), v42, MEMORY[0x1E69E7CA8] + 8, v89);
        v6 = v45;
        if (v45)
        {

          v64 = v90;
          return v64 & 1;
        }

        ++a5;
        v15 += 16;
        v36 = v84;
        if (v86 == a5)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    LOBYTE(v24) = 0;
LABEL_45:
    v65 = v24;

    v64 = v65;
  }

  else
  {
LABEL_38:
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v63 = xmmword_1C18BBCB0;
    *(v63 + 16) = 0;
    swift_willThrow();
  }

  return v64 & 1;
}

uint64_t partial apply for closure #3 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return closure #3 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)(*(v0 + 16));
}

uint64_t outlined assign with take of __RKEntityActionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return closure #1 in closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)(*(v1 + 16), a1);
}

uint64_t outlined init with take of __RKEntityActionSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in __REAssetService.firstUnloadedAssetIncludingDependencies(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = **(v2 + 16);
  result = specialized __REAssetService.firstUnloadedAssetIncludingDependencies(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for specialized closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)(*(v1 + 16), *(v1 + 24), **(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LoadRequest.receive<A>(subscriber:)()
{
  v3 = v0[3];
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Future();
  swift_getWitnessTable();
  return Publisher.subscribe<A>(_:)();
}

uint64_t LoadRequest.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

void LoadRequestDependencies.add(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  outlined init with copy of Any(a1, v8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  outlined init with take of Any(v8, &v4[32 * v7 + 32]);
  *(v1 + 16) = v4;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t LoadRequest.__deallocating_deinit(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return swift_deallocClassInstance();
}

void LoadRequestAllocatedLock.valueWithLock.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((*(v1 + 2) + 16));
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v4]);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

uint64_t type metadata completion function for LoadRequestAllocatedLock(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *LoadRequestAllocatedLock.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t LoadRequestAllocatedLock.__deallocating_deinit()
{
  v0 = *LoadRequestAllocatedLock.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void AudioBufferResource.CreateOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 2) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
}

uint64_t AudioBufferResource.CreateOptions.mixGroupName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AudioBufferResource.CreateOptions.mixGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void AudioBufferResource.CreateOptions.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.CreateOptions.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void AudioBufferResource.CreateOptions.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.CreateOptions.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

BOOL specialized static AudioBufferResource.CreateOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return result;
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = a1[32];
  v7 = *(a1 + 5);
  v8 = a1[48];
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = a2[32];
  v12 = *(a2 + 5);
  v13 = a2[48];
  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v4 != v9)
    {
      v14 = *(a1 + 2);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 == 255)
  {
    if (v11 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 255)
    {
      return 0;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        result = 0;
        if (v11 != 2 || v10 != 0.0)
        {
          return result;
        }

        goto LABEL_26;
      }

      result = 0;
      if (v11 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v11)
      {
        return result;
      }
    }

    if (v5 != v10)
    {
      return result;
    }
  }

LABEL_26:
  result = (v8 & v13) == 255;
  if (v8 != 255 && v13 != 255)
  {
    if (v8)
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }

      return v7 == v12;
    }

    if ((v13 & 1) == 0)
    {
      return v7 == v12;
    }

    return 0;
  }

  return result;
}

uint64_t && infix<A>(_:_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t)@<X3>, uint64_t (**a5)()@<X8>)
{
  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v30[2] = a2[2];
  v30[3] = v9;
  v12 = a1[3];
  v28 = a1[2];
  v29 = v12;
  v26 = v12;
  v13 = a1[1];
  v27[0] = *a1;
  v27[1] = v13;
  v22 = v11;
  v23 = v10;
  v24 = a2[2];
  v25 = a2[3];
  v19 = v27[0];
  v20 = v13;
  v21 = v28;
  Predicate = type metadata accessor for QueryPredicate();
  v15 = *(*(Predicate - 8) + 16);
  v15(v31, v27, Predicate);
  v15(v31, v30, Predicate);
  v16 = a4(0, a3);
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, a5);
  v31[4] = v22;
  v31[5] = v23;
  v31[6] = v24;
  v31[7] = v25;
  v31[0] = v19;
  v31[1] = v20;
  v31[2] = v21;
  v31[3] = v26;
  return (*(*(v16 - 8) + 8))(v31, v16);
}

uint64_t ! prefix<A>(_:)@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v15[2] = a1[2];
  v15[3] = v4;
  v11 = v6;
  v12 = v5;
  v13 = a1[2];
  v14 = a1[3];
  Predicate = type metadata accessor for QueryPredicate();
  (*(*(Predicate - 8) + 16))(v16, v15, Predicate);
  v8 = type metadata accessor for QueryPredicates.Not();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v8, WitnessTable, a2);
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  return (*(*(v8 - 8) + 8))(v16, v8);
}

uint64_t === infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), v10, v15);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  QueryType.init(_:)(partial apply for closure #2 in === infix<A, B>(_:_:), v11, &v16);
  v15[1] = v16;
  v12 = type metadata accessor for QueryPredicates.Identical();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v12, WitnessTable, a5);
}

uint64_t === infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = (*a1 + *MEMORY[0x1E69E77B0]);
  v6 = *v5;
  v7 = v5[1];
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), a1, v12);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a2;
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), v8, &v13);
  v12[1] = v13;
  v9 = type metadata accessor for QueryPredicates.Identical();

  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v9, WitnessTable, a3);
}

{
  v5 = (*a1 + *MEMORY[0x1E69E77B0]);
  v6 = *v5;
  v7 = v5[1];
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), a1, v11);
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), a2, &v12);
  v11[1] = v12;
  v8 = type metadata accessor for QueryPredicates.Identical();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v8, WitnessTable, a3);
}

uint64_t === infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = *a2;
  v7 = swift_allocObject();
  v8 = (v6 + *MEMORY[0x1E69E77B0]);
  v7[2] = *v8;
  v7[3] = v8[1];
  v7[4] = a1;
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), v7, v12);
  QueryType.init(_:)(partial apply for closure #2 in === infix<A, B>(_:_:), a2, &v13);
  v12[1] = v13;
  v9 = type metadata accessor for QueryPredicates.Identical();
  swift_unknownObjectRetain();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v9, WitnessTable, a3);
}

uint64_t == infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v19 = a5;
  v21 = a2;
  v22 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v20 = *(v9 + 16);
  v20(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  v14 = *(v9 + 32);
  v14(&v13[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v23);
  (v20)(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v19;
  v14(&v15[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, &v24);
  v23[1] = v24;
  v16 = type metadata accessor for QueryPredicates.Equals();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, v22);
}

uint64_t == infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v21);
  (*(v10 + 16))(v13, a2, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v9;
  *(v17 + 4) = a3;
  (*(v10 + 32))(&v17[v16], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.Equals();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t == infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v21 - v13;
  (*(v10 + 16))(v21 - v13, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v7 + *v8);
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v14, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.Equals();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t == infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.Equals();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t != infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v19 = a5;
  v21 = a2;
  v22 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v20 = *(v9 + 16);
  v20(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  v14 = *(v9 + 32);
  v14(&v13[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v23);
  (v20)(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v19;
  v14(&v15[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, &v24);
  v23[1] = v24;
  v16 = type metadata accessor for QueryPredicates.NotEquals();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, v22);
}

uint64_t != infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v21);
  (*(v10 + 16))(v13, a2, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v9;
  *(v17 + 4) = a3;
  (*(v10 + 32))(&v17[v16], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.NotEquals();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t != infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v21 - v13;
  (*(v10 + 16))(v21 - v13, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v7 + *v8);
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v14, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.NotEquals();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t != infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.NotEquals();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t < infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v19 = a5;
  v21 = a2;
  v22 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v20 = *(v9 + 16);
  v20(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  v14 = *(v9 + 32);
  v14(&v13[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v23);
  (v20)(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v19;
  v14(&v15[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, &v24);
  v23[1] = v24;
  v16 = type metadata accessor for QueryPredicates.LessThan();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, v22);
}

uint64_t < infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v21);
  (*(v10 + 16))(v13, a2, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v9;
  *(v17 + 4) = a3;
  (*(v10 + 32))(&v17[v16], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.LessThan();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t < infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v21 - v13;
  (*(v10 + 16))(v21 - v13, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v7 + *v8);
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v14, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.LessThan();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t < infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.LessThan();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v19 = a5;
  v21 = a2;
  v22 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v20 = *(v9 + 16);
  v20(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  v14 = *(v9 + 32);
  v14(&v13[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v23);
  (v20)(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v19;
  v14(&v15[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, &v24);
  v23[1] = v24;
  v16 = type metadata accessor for QueryPredicates.LessThanOrEqual();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, v22);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v21);
  (*(v10 + 16))(v13, a2, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v9;
  *(v17 + 4) = a3;
  (*(v10 + 32))(&v17[v16], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.LessThanOrEqual();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v21 - v13;
  (*(v10 + 16))(v21 - v13, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v7 + *v8);
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v14, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.LessThanOrEqual();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.LessThanOrEqual();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t > infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v19 = a5;
  v21 = a2;
  v22 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v20 = *(v9 + 16);
  v20(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  v14 = *(v9 + 32);
  v14(&v13[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v23);
  (v20)(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v19;
  v14(&v15[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #2 in > infix<A, B>(_:_:), v15, &v24);
  v23[1] = v24;
  v16 = type metadata accessor for QueryPredicates.GreaterThan();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, v22);
}

uint64_t > infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v21);
  (*(v10 + 16))(v13, a2, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v9;
  *(v17 + 4) = a3;
  (*(v10 + 32))(&v17[v16], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.GreaterThan();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t > infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v21 - v13;
  (*(v10 + 16))(v21 - v13, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v7 + *v8);
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v14, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #2 in > infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.GreaterThan();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t > infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.GreaterThan();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v19 = a5;
  v21 = a2;
  v22 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v20 = *(v9 + 16);
  v20(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  v14 = *(v9 + 32);
  v14(&v13[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v23);
  (v20)(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v19;
  v14(&v15[v12], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, &v24);
  v23[1] = v24;
  v16 = type metadata accessor for QueryPredicates.GreaterThanOrEqual();
  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v16, WitnessTable, v22);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  v15 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v21);
  (*(v10 + 16))(v13, a2, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v9;
  *(v17 + 4) = a3;
  (*(v10 + 32))(&v17[v16], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.GreaterThanOrEqual();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v21 - v13;
  (*(v10 + 16))(v21 - v13, v12);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v7 + *v8);
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v14, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.GreaterThanOrEqual();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.GreaterThanOrEqual();

  WitnessTable = swift_getWitnessTable();
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t type metadata instantiation function for QueryPredicates.GreaterThanOrEqual()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.GreaterThan()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.LessThanOrEqual()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.LessThan()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.NotEquals()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Equals()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Identical()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Not()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Or()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.And()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for QueryPredicates.Or(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryPredicates.Or(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t QueryPredicates.And.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v27[0] = *v2;
  v27[1] = v3;
  v4 = v2[3];
  v6 = *v2;
  v5 = v2[1];
  v7 = v4;
  v28 = v2[2];
  v29 = v4;
  v8 = v2[5];
  v9 = v2[6];
  v30 = v2[4];
  v31 = v8;
  v10 = v2[7];
  v32 = v9;
  v33 = v10;
  v23 = v6;
  v24 = v5;
  v25 = v28;
  v26 = v7;
  v11 = *(a2 + 16);
  Predicate = type metadata accessor for QueryPredicate();
  v13 = *(Predicate - 8);
  v14 = *(v13 + 16);
  v14(v34, v27, Predicate);
  v15 = QueryPredicate.evaluate(value:)();
  v34[0] = v23;
  v34[1] = v24;
  v34[2] = v25;
  v34[3] = v26;
  v16 = *(v13 + 8);
  v16(v34, Predicate);
  if (v15)
  {
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v14(&v23, &v30, Predicate);
    v17 = QueryPredicate.evaluate(value:)();
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v16(&v23, Predicate);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.And<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.And.evaluate(value:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t QueryPredicates.Or.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v27[0] = *v2;
  v27[1] = v3;
  v4 = v2[3];
  v6 = *v2;
  v5 = v2[1];
  v7 = v4;
  v28 = v2[2];
  v29 = v4;
  v8 = v2[5];
  v9 = v2[6];
  v30 = v2[4];
  v31 = v8;
  v10 = v2[7];
  v32 = v9;
  v33 = v10;
  v23 = v6;
  v24 = v5;
  v25 = v28;
  v26 = v7;
  v11 = *(a2 + 16);
  Predicate = type metadata accessor for QueryPredicate();
  v13 = *(Predicate - 8);
  v14 = *(v13 + 16);
  v14(v34, v27, Predicate);
  v15 = QueryPredicate.evaluate(value:)();
  v34[0] = v23;
  v34[1] = v24;
  v34[2] = v25;
  v34[3] = v26;
  v16 = *(v13 + 8);
  v16(v34, Predicate);
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v14(&v23, &v30, Predicate);
    v17 = QueryPredicate.evaluate(value:)();
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v16(&v23, Predicate);
  }

  return v17 & 1;
}

uint64_t QueryPredicates.And.enumerate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v24[0] = *v3;
  v24[1] = v6;
  v7 = v3[3];
  v24[2] = v3[2];
  v24[3] = v7;
  v8 = v3[5];
  v25 = v3[4];
  v26 = v8;
  v9 = v3[7];
  v27 = v3[6];
  v28 = v9;
  ObjectType = swift_getObjectType();
  v11 = v3[1];
  v30 = *v3;
  v31 = v11;
  v12 = v3[3];
  v32 = v3[2];
  v33 = v12;
  v13 = *(a2 + 8);
  v14 = *(a3 + 16);
  Predicate = type metadata accessor for QueryPredicate();
  v16 = *(Predicate - 8);
  v17 = *(v16 + 16);
  v17(v29, v24, Predicate);
  v17(v29, &v25, Predicate);
  v13(&v30, v14, ObjectType, a2);
  v29[0] = v30;
  v29[1] = v31;
  v29[2] = v32;
  v29[3] = v33;
  v18 = *(v16 + 8);
  v18(v29, Predicate);
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v13(&v20, v14, ObjectType, a2);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  return v18(&v30, Predicate);
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Or<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Or.evaluate(value:)(a1, a2);
  *a3 = result & 1;
  return result;
}

BOOL QueryPredicates.Not.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v16[0] = *v2;
  v16[1] = v3;
  v4 = v2[3];
  v6 = *v2;
  v5 = v2[1];
  v16[2] = v2[2];
  v16[3] = v4;
  v12 = v6;
  v13 = v5;
  v14 = v2[2];
  v15 = v2[3];
  v7 = *(a2 + 16);
  Predicate = type metadata accessor for QueryPredicate();
  v9 = *(Predicate - 8);
  (*(v9 + 16))(v17, v16, Predicate);
  v10 = QueryPredicate.evaluate(value:)();
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v15;
  (*(v9 + 8))(v17, Predicate);
  return (v10 & 1) == 0;
}

uint64_t QueryPredicates.Not.enumerate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v20[0] = *v3;
  v20[1] = v6;
  v7 = v3[3];
  v20[2] = v3[2];
  v20[3] = v7;
  ObjectType = swift_getObjectType();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v10 = v3[3];
  v18 = v3[2];
  v19 = v10;
  v11 = *(a2 + 8);
  v12 = *(a3 + 16);
  Predicate = type metadata accessor for QueryPredicate();
  v14 = *(Predicate - 8);
  (*(v14 + 16))(v21, v20, Predicate);
  v11(&v16, v12, ObjectType, a2);
  v21[0] = v16;
  v21[1] = v17;
  v21[2] = v18;
  v21[3] = v19;
  return (*(v14 + 8))(v21, Predicate);
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Not<A>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Not.evaluate(value:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Equals<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E6020]);
  *a3 = result & 1;
  return result;
}

BOOL QueryPredicates.NotEquals.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v21[1] = a1;
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = v2[1];
  v13 = v2[2];
  v14 = v2[3];
  v22 = *v2;
  v23 = v12;
  v16 = *(v15 + 16);
  type metadata accessor for QueryType();

  QueryType.evaluate(value:)();

  v22 = v13;
  v23 = v14;
  QueryType.evaluate(value:)();

  v17 = *(a2 + 32);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v11, v4);
  return (v18 & 1) == 0;
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.NotEquals<A, B>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.NotEquals.evaluate(value:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.LessThan<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F48]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.LessThanOrEqual<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F58]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.GreaterThan<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F40]);
  *a3 = result & 1;
  return result;
}

uint64_t QueryPredicates.Equals.evaluate(value:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t, void))
{
  v21 = a1;
  v22 = a3;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = v3[1];
  v14 = v3[2];
  v15 = v3[3];
  v23 = *v3;
  v24 = v13;
  v17 = *(v16 + 16);
  type metadata accessor for QueryType();

  QueryType.evaluate(value:)();

  v23 = v14;
  v24 = v15;
  QueryType.evaluate(value:)();

  v18 = v22(v12, v9, v5, *(a2 + 32));
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v12, v5);
  return v18 & 1;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.GreaterThanOrEqual<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F50]);
  *a3 = result & 1;
  return result;
}

BOOL QueryPredicates.Identical.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v9 = *v2;
  v10 = v2[1];
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for QueryType();

  QueryType.evaluate(value:)();

  QueryType.evaluate(value:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11 == v8;
}

uint64_t QueryPredicates.Equals.enumerate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[3];
  v14 = v3[2];
  ObjectType = swift_getObjectType();
  v15 = v7;
  v16 = v6;
  v10 = *(a2 + 16);
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);

  v10(&v15, v12, v11, ObjectType, a2);

  v15 = v14;
  v16 = v8;
  v10(&v15, v12, v11, ObjectType, a2);
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Identical<A, B>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Identical.evaluate(value:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.GreaterThanOrEqual<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.GreaterThan<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.LessThanOrEqual<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.LessThan<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.NotEquals<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Equals<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Identical<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Not<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Or<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.And<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized QueryPredicates.Or.makeInternal()(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {
    return a2();
  }

  v7 = swift_conformsToProtocol2();
  result = 0;
  if (v7)
  {
    if (a1)
    {
      return a3(0);
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE16jK54Vcfu_33_979d7928f60ba9ff03fee9aafd7606f7AHSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v29 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v30;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = v29;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_39;
    }

    v12 = *(*(a1 + 48) + 8 * result);
    if (v12 <= 7)
    {
      switch(v12)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x646C726F77;
          goto LABEL_26;
        case 2:
          v13 = 0xE500000000000000;
          v15 = 1851878512;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v15 = 1734438249;
          break;
        default:
          goto LABEL_21;
      }

      v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    }

    else if (v12 > 127)
    {
      if (v12 != 128)
      {
        if (v12 == 256)
        {
          v13 = 0xE400000000000000;
          v14 = 2036625250;
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v13 = 0xE400000000000000;
      v14 = 1701011814;
    }

    else
    {
      if (v12 != 8)
      {
        if (v12 == 64)
        {
          v13 = 0xE600000000000000;
          v14 = 0x6172656D6163;
          goto LABEL_26;
        }

LABEL_21:
        v14 = 0;
        v13 = 0xE000000000000000;
        goto LABEL_26;
      }

      v13 = 0xE600000000000000;
      v14 = 0x7463656A626FLL;
    }

LABEL_26:
    v16 = *(a1 + 36);
    v18 = *(v30 + 16);
    v17 = *(v30 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = *(a1 + 36);
      v28 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v7 = v29;
      v16 = v27;
      result = v28;
    }

    *(v30 + 16) = v18 + 1;
    v19 = v30 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_40;
    }

    v4 = a1 + 56;
    v20 = *(a1 + 56 + 8 * v10);
    if ((v20 & v11) == 0)
    {
      goto LABEL_41;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_42;
    }

    v21 = v20 & (-2 << (result & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (a1 + 64 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          outlined consume of [String : AudioResource].Index._Variant(result, v16, 0);
          v7 = v29;
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      outlined consume of [String : AudioResource].Index._Variant(result, v16, 0);
      v7 = v29;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE28jkL55Vcfu0_33_05ee4caa7c346c634b201050f1d8d6e4AHSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v29 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v30;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = v29;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_32;
    }

    v12 = *(*(a1 + 48) + 8 * result);
    if (v12 > 3)
    {
      if (v12 != 4)
      {
        if (v12 == 8)
        {
          v14 = 0xE700000000000000;
          v15 = 0x73636973796870;
          goto LABEL_19;
        }

LABEL_15:
        v15 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_19;
      }

      v13 = 0x73696C6C6F63;
    }

    else
    {
      if (v12 == 1)
      {
        v14 = 0xE600000000000000;
        v15 = 0x776F64616873;
        goto LABEL_19;
      }

      if (v12 != 2)
      {
        goto LABEL_15;
      }

      v13 = 0x73756C63636FLL;
    }

    v15 = v13 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
    v14 = 0xE90000000000006ELL;
LABEL_19:
    v16 = *(a1 + 36);
    v18 = *(v30 + 16);
    v17 = *(v30 + 24);
    if (v18 >= v17 >> 1)
    {
      v27 = *(a1 + 36);
      v28 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v7 = v29;
      v16 = v27;
      result = v28;
    }

    *(v30 + 16) = v18 + 1;
    v19 = v30 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_33;
    }

    v4 = a1 + 56;
    v20 = *(a1 + 56 + 8 * v10);
    if ((v20 & v11) == 0)
    {
      goto LABEL_34;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v21 = v20 & (-2 << (result & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (a1 + 64 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          outlined consume of [String : AudioResource].Index._Variant(result, v16, 0);
          v7 = v29;
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      outlined consume of [String : AudioResource].Index._Variant(result, v16, 0);
      v7 = v29;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + ((v11 << 9) | (8 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SpatialTrackingSession.Configuration.anchorCapabilitySet.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter()
{
  outlined init with copy of Any?(v0 + 8, &v3);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    outlined init with take of Any(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(&v3);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t key path setter for SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities : SpatialTrackingSession.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v5[0] = v3;

  return outlined assign with take of Any?(v5, a2 + 8);
}

uint64_t SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.setter(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v4[0] = a1;
  return outlined assign with take of Any?(v4, v1 + 8);
}

void (*SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  outlined init with copy of Any?(v1 + 8, v3 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    outlined init with take of Any(v4, (v4 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v5 = *(v4 + 72);
  }

  else
  {
    outlined destroy of Any?(v4 + 32);
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + 64) = v5;
  return SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify;
}

void SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *v3 = v4;
  if (a2)
  {

    outlined assign with take of Any?(v3, v5 + 8);
    v6 = v3[8];
  }

  else
  {
    outlined assign with take of Any?(v3, v5 + 8);
  }

  free(v3);
}

uint64_t SpatialTrackingSession.Configuration.removing(unavailableCapabilities:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SpatialTrackingSession.Configuration(v2, a2);
  v5 = *a2;
  v6 = *a1;
  if (*(*a1 + 16) <= *(*a2 + 16) >> 3)
  {
    *&v19 = *a2;

    specialized Set._subtract<A>(_:)(v6);
    v8 = v19;
  }

  else
  {
    v7 = *a2;

    v8 = specialized _NativeSet.subtracting<A>(_:)(v6, v5);
  }

  v9 = a1[1];
  if (v9[2] <= *(v8 + 16) >> 3)
  {
    *&v19 = v8;
    specialized Set._subtract<A>(_:)(v9);

    v10 = v8;
  }

  else
  {
    v10 = specialized _NativeSet.subtracting<A>(_:)(v9, v8);
  }

  *a2 = v10;
  v11 = a2 + 8;
  outlined init with copy of Any?(v11, &v17);
  if (v18)
  {
    outlined init with take of Any(&v17, &v19);
    outlined init with take of Any(&v19, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v12 = v16;
  }

  else
  {
    outlined destroy of Any?(&v17);
    v12 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?((a1 + 2), &v17);
  if (v18)
  {
    outlined init with take of Any(&v17, &v19);
    outlined init with take of Any(&v19, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v13 = v16;
  }

  else
  {
    outlined destroy of Any?(&v17);
    v13 = MEMORY[0x1E69E7CD0];
  }

  if (v13[2] <= *(v12 + 16) >> 3)
  {
    *&v19 = v12;
    specialized Set._subtract<A>(_:)(v13);

    v14 = v19;
  }

  else
  {
    v14 = specialized _NativeSet.subtracting<A>(_:)(v13, v12);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *&v19 = v14;
  return outlined assign with take of Any?(&v19, v11);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.getter()
{
  outlined init with copy of Any?(v0 + 16, &v3);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    outlined init with take of Any(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(&v3);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedAnchorCapabilities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedAnchorCapabilities.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t key path setter for SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities : SpatialTrackingSession.UnavailableCapabilities(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v5[0] = v3;

  return outlined assign with take of Any?(v5, a2 + 16);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.setter(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v4[0] = a1;
  return outlined assign with take of Any?(v4, v1 + 16);
}

void (*SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  outlined init with copy of Any?(v1 + 16, v3 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    outlined init with take of Any(v4, (v4 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v5 = *(v4 + 72);
  }

  else
  {
    outlined destroy of Any?(v4 + 32);
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + 64) = v5;
  return SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.modify;
}

void SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *v3 = v4;
  if (a2)
  {

    outlined assign with take of Any?(v3, v5 + 16);
    v6 = v3[8];
  }

  else
  {
    outlined assign with take of Any?(v3, v5 + 16);
  }

  free(v3);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.getter()
{
  outlined init with copy of Any?(v0 + 48, &v3);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    outlined init with take of Any(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(&v3);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t key path setter for SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities : SpatialTrackingSession.UnavailableCapabilities(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v5[0] = v3;

  return outlined assign with take of Any?(v5, a2 + 48);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.setter(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v4[0] = a1;
  return outlined assign with take of Any?(v4, v1 + 48);
}

void (*SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  outlined init with copy of Any?(v1 + 48, v3 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    outlined init with take of Any(v4, (v4 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v5 = *(v4 + 72);
  }

  else
  {
    outlined destroy of Any?(v4 + 32);
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + 64) = v5;
  return SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.modify;
}

void SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *v3 = v4;
  if (a2)
  {

    outlined assign with take of Any?(v3, v5 + 48);
    v6 = v3[8];
  }

  else
  {
    outlined assign with take of Any?(v3, v5 + 48);
  }

  free(v3);
}

BOOL SpatialTrackingSession.UnavailableCapabilities.anyUnavailableCapabilities.getter()
{
  if (*(*v0 + 16) || *(*(v0 + 8) + 16))
  {
    return 1;
  }

  outlined init with copy of Any?(v0 + 16, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, v10);
    outlined init with take of Any(v10, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v1 = v7;
  }

  else
  {
    outlined destroy of Any?(&v8);
    v1 = MEMORY[0x1E69E7CD0];
  }

  v2 = *(v1 + 16);

  if (v2)
  {
    return 1;
  }

  outlined init with copy of Any?(v0 + 48, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, v10);
    outlined init with take of Any(v10, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v3 = v7;
  }

  else
  {
    outlined destroy of Any?(&v8);
    v3 = MEMORY[0x1E69E7CD0];
  }

  v4 = *(v3 + 16);

  if (v4)
  {
    return 1;
  }

  v6 = *(v0 + 80);
  return v6 != 2 && (v6 & 1) != 0;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.union(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of SpatialTrackingSession.UnavailableCapabilities(v3, a2);
  v6 = *a2;
  v7 = *a1;

  *a2 = specialized Set.union<A>(_:)(v8, v6, specialized Set._Variant.insert(_:));
  v9 = *(a2 + 8);
  v10 = a1[1];

  *(a2 + 8) = specialized Set.union<A>(_:)(v11, v9, specialized Set._Variant.insert(_:));
  outlined init with copy of Any?(a2 + 16, &v24);
  if (v25)
  {
    outlined init with take of Any(&v24, &v26);
    outlined init with take of Any(&v26, &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v12 = v23;
  }

  else
  {
    outlined destroy of Any?(&v24);
    v12 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?((a1 + 2), &v24);
  if (v25)
  {
    outlined init with take of Any(&v24, &v26);
    outlined init with take of Any(&v26, &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v13 = v23;
  }

  else
  {
    outlined destroy of Any?(&v24);
    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = specialized Set.union<A>(_:)(v13, v12, specialized Set._Variant.insert(_:));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v27 = v15;
  *&v26 = v14;
  outlined assign with take of Any?(&v26, a2 + 16);
  outlined init with copy of Any?(a2 + 48, &v24);
  if (v25)
  {
    outlined init with take of Any(&v24, &v26);
    outlined init with take of Any(&v26, &v24);
    swift_dynamicCast();
    v16 = v23;
  }

  else
  {
    outlined destroy of Any?(&v24);
    v16 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?((a1 + 6), &v24);
  if (v25)
  {
    outlined init with take of Any(&v24, &v26);
    outlined init with take of Any(&v26, &v24);
    swift_dynamicCast();
    v17 = v23;
  }

  else
  {
    outlined destroy of Any?(&v24);
    v17 = MEMORY[0x1E69E7CD0];
  }

  v18 = specialized Set.union<A>(_:)(v17, v16, specialized Set._Variant.insert(_:));
  v27 = v15;
  *&v26 = v18;
  result = outlined assign with take of Any?(&v26, a2 + 48);
  v20 = *(a2 + 80);
  if (v20 == 2)
  {
    v21 = *(a1 + 80);
  }

  else
  {
    if (v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = *(a1 + 80);
    }

    v21 = v22 & 1;
  }

  *(a2 + 80) = v21;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CD0];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 80) = 2;
  v4 = *a1;
  *(a2 + 64) = 0u;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0u;
  v5 = a2 + 16;
  outlined init with copy of Any?((a1 + 1), &v9);
  if (v10)
  {
    outlined init with take of Any(&v9, &v11);
    outlined init with take of Any(&v11, &v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v6 = v8;
  }

  else
  {

    outlined destroy of Any?(&v9);
    v6 = MEMORY[0x1E69E7CD0];
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *&v11 = v6;
  outlined destroy of SpatialTrackingSession.Configuration(a1);
  return outlined assign with take of Any?(&v11, v5);
}

double SpatialTrackingSession.UnavailableCapabilities.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 2;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.anchor.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return specialized Set.union<A>(_:)(v3, v1, specialized Set._Variant.insert(_:));
}

double SpatialTrackingSession.Configuration.init(tracking:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = a1;
  return result;
}

double SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  *(a2 + 40) = 0;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = a1;
  return result;
}

uint64_t SpatialTrackingSession.run(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:), 0, 0);
}

uint64_t SpatialTrackingSession.run(_:)()
{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[16] = static SpatialTrackingManager.shared;
  if (v1)
  {
    swift_beginAccess();
    v1[144] = 1;

    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = SpatialTrackingSession.run(_:);
    v3 = v0[14];
    v4 = v0[15];

    return SpatialTrackingManager.run(spatialTrackingConfiguration:)(v3, v4);
  }

  else
  {
    v6 = v0[14];
    outlined init with copy of SpatialTrackingSession.Configuration(v0[15], (v0 + 2));
    SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)(v0 + 2, v6);
    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:), 0, 0);
}

{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SpatialTrackingSession.stop()()
{
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), 0, 0);
}

{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[8] = static SpatialTrackingManager.shared;
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 144) = 1;
    v2 = *(v1 + 16);
    v3 = *(v1 + 17);

    __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
    v4 = *(v3 + 40);
    v9 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = SpatialTrackingSession.stop();

    return v9(v2, v3);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), v2, v1);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  SpatialTrackingManager.configureRFAnchorManagement(with:)(MEMORY[0x1E69E7CD0]);

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), 0, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SpatialTrackingSession.autoRun(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoRun(_:), 0, 0);
}

uint64_t SpatialTrackingSession.autoRun(_:)()
{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[16] = static SpatialTrackingManager.shared;
  if (!v1)
  {
    v3 = v0[14];
    outlined init with copy of SpatialTrackingSession.Configuration(v0[15], (v0 + 2));
    SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)(v0 + 2, v3);
    goto LABEL_5;
  }

  swift_beginAccess();
  if (v1[144] == 1)
  {
    v2 = v0[14];
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
LABEL_5:
    v4 = v0[1];

    return v4();
  }

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = SpatialTrackingSession.autoRun(_:);
  v7 = v0[14];
  v8 = v0[15];

  return SpatialTrackingManager.run(spatialTrackingConfiguration:)(v7, v8);
}

{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoRun(_:), 0, 0);
}

uint64_t SpatialTrackingSession.autoStop()()
{
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), 0, 0);
}

{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[8] = static SpatialTrackingManager.shared;
  if (v1 && (swift_beginAccess(), (v1[18] & 1) == 0))
  {
    v4 = v1[16];
    v5 = v1[17];

    __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
    v6 = *(v5 + 40);
    v9 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = SpatialTrackingSession.autoStop();

    return v9(v4, v5);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), v2, v1);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  SpatialTrackingManager.configureRFAnchorManagement(with:)(MEMORY[0x1E69E7CD0]);

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), 0, 0);
}

Swift::Int SpatialTrackingSession.Configuration.Camera.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  *(a4 + 8) = 0u;
  v7 = a4 + 8;
  *a4 = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v9[0] = a2;
  result = outlined assign with take of Any?(v9, v7);
  *(a4 + 40) = v6;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.sceneUnderstanding.getter()
{
  outlined init with copy of Any?(v0 + 16, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, v7);
    outlined init with take of Any(v7, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v1 = v4;
  }

  else
  {
    outlined destroy of Any?(&v5);
    v1 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?(v0 + 48, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, v7);
    outlined init with take of Any(v7, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v2 = v4;
  }

  else
  {
    outlined destroy of Any?(&v5);
    v2 = MEMORY[0x1E69E7CD0];
  }

  return specialized Set.union<A>(_:)(v2, v1, specialized Set._Variant.insert(_:));
}

uint64_t SpatialTrackingSession.Configuration.AnchorCapability.description.getter()
{
  v1 = *v0;
  if (*v0 <= 7)
  {
    if (v1 == 1)
    {
      return 0x646C726F77;
    }

    if (v1 != 2)
    {
      if (v1 == 4)
      {
        return 0x6567616D69;
      }

      return 0;
    }

    return 0x656E616C70;
  }

  else if (v1 > 127)
  {
    if (v1 != 128)
    {
      if (v1 == 256)
      {
        return 2036625250;
      }

      return 0;
    }

    return 1701011814;
  }

  else
  {
    if (v1 != 8)
    {
      if (v1 == 64)
      {
        return 0x6172656D6163;
      }

      return 0;
    }

    return 0x7463656A626FLL;
  }
}

uint64_t SpatialTrackingSession.Configuration.SceneUnderstandingCapability.description.getter()
{
  v1 = *v0;
  if (*v0 > 3)
  {
    if (v1 == 4)
    {
      v2 = 0x73696C6C6F63;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
    }

    if (v1 == 8)
    {
      return 0x73636973796870;
    }

    return 0;
  }

  if (v1 == 1)
  {
    return 0x776F64616873;
  }

  if (v1 != 2)
  {
    return 0;
  }

  v2 = 0x73756C63636FLL;
  return v2 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
}

uint64_t SpatialTrackingSession.Configuration.description.getter()
{
  v1 = v0;
  v2 = *v0;
  if (*(*v0 + 16))
  {
    *&v29[0] = 0x203A726F68636E61;
    *(&v29[0] + 1) = 0xE90000000000005BLL;
    *&v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE16jK54Vcfu_33_979d7928f60ba9ff03fee9aafd7606f7AHSSTf3nnnpk_nTf1cn_n(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v3 = BidirectionalCollection<>.joined(separator:)();
    v5 = v4;

    MEMORY[0x1C68F3410](v3, v5);

    MEMORY[0x1C68F3410](93, 0xE100000000000000);
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0x203A726F68636E61;
    *(v9 + 5) = 0xE90000000000005BLL;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any?((v0 + 1), &v27);
  if (v28)
  {
    outlined init with take of Any(&v27, v29);
    outlined init with take of Any(v29, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v10 = v26;
  }

  else
  {
    outlined destroy of Any?(&v27);
    v10 = MEMORY[0x1E69E7CD0];
  }

  v11 = *(v10 + 16);

  if (v11)
  {
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    outlined init with copy of Any?((v1 + 1), &v27);
    if (v28)
    {
      outlined init with take of Any(&v27, v29);
      outlined init with take of Any(v29, &v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
      swift_dynamicCast();
      v12 = v25;
    }

    else
    {
      outlined destroy of Any?(&v27);
      v12 = MEMORY[0x1E69E7CD0];
    }

    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE28jkL55Vcfu0_33_05ee4caa7c346c634b201050f1d8d6e4AHSSTf3nnnpk_nTf1cn_n(v12);

    *&v29[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    MEMORY[0x1C68F3410](v14, v16);

    MEMORY[0x1C68F3410](93, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = *(v6 + 2);
    v17 = *(v6 + 3);
    if (v18 >= v17 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v6);
    }

    *(v6 + 2) = v18 + 1;
    v19 = &v6[16 * v18];
    *(v19 + 4) = 0xD000000000000015;
    *(v19 + 5) = 0x80000001C18F0350;
  }

  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  MEMORY[0x1C68F3410](0x203A6172656D6163, 0xE800000000000000);
  LOBYTE(v27) = *(v1 + 40);
  _print_unlocked<A, B>(_:_:)();
  v20 = v29[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v22 = *(v6 + 2);
  v21 = *(v6 + 3);
  if (v22 >= v21 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v6);
  }

  *(v6 + 2) = v22 + 1;
  *&v6[16 * v22 + 32] = v20;
  *&v29[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();

  return v23;
}

unint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability()
{
  result = lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability;
  if (!lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability()
{
  result = lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability;
  if (!lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera()
{
  result = lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera;
  if (!lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTrackingSession.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTrackingSession.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizePopAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 264, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulPopAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildPopAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 118, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicPopAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

uint64_t __RKMaterialParameterBlock.get(parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v10 = v3[2];
  v9 = v3[3];

  v11 = v9;

  return specialized String.withCString<A>(_:)(a1, a2, v11, a3);
}

uint64_t __RKMaterialParameterBlock.set(parameter:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String.utf8CString.getter();
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v4 + 32), a3);
}

Swift::Void __swiftcall __RKMaterialParameterBlock.clear(parameter:)(Swift::String parameter)
{
  object = parameter._object;
  countAndFlagsBits = parameter._countAndFlagsBits;
  v4 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v5 = *(v1 + 24);
    v6 = REMaterialParameterBlockValueCopy();

    *(v1 + 24) = v6;
  }

  specialized String.withCString<A>(_:)(countAndFlagsBits, object, v1);
}

uint64_t __RKMaterialParameterBlock.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = MEMORY[0x1E69E7CC0];
  result = REMaterialParameterBlockValueCreate();
  *(a1 + 24) = result;
  return result;
}

uint64_t __RKMaterialParameterBlock.toCore(_:index:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  return REMaterialParameterBlockArrayComponentSetBlockValueAtIndex();
}

uint64_t __RKMaterialParameterBlock.Parameter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, uint64x2_t a4@<Q1>, __n128 a5@<Q3>)
{
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 32);
  switch(*(result + 64))
  {
    case 0:
      a4 = vdupq_n_s64(*(result + 24));
      a3.n128_u64[0] = *result;
      a5.n128_u64[0] = *(result + 8);
      a3.n128_u64[1] = a5.n128_u64[0];
      v7 = vshlq_u64(a4, xmmword_1C18A9580);
      a4.i64[0] = *(result + 16);
      a4.i16[4] = *(result + 24);
      *v7.i8 = vmovn_s64(v7);
      v7.i8[1] = v7.i8[4];
      a4.i16[5] = v7.i16[0];
      v8 = 1;
      break;
    case 1:
      v8 = 0;
      a3.n128_u64[0] = *result;
      break;
    case 2:
      a3.n128_u32[0] = *result;
      v8 = 2;
      break;
    case 3:
      a3.n128_u64[0] = *result;
      v8 = 3;
      break;
    case 4:
      a3 = *result;
      v8 = 4;
      break;
    case 5:
      a3 = *result;
      v8 = 5;
      break;
    case 6:
      a3.n128_u64[0] = *result;
      v8 = 6;
      break;
    case 7:
      a3.n128_u64[0] = *result;
      a4.i64[0] = *(result + 8);
      a3.n128_u64[1] = a4.i64[0];
      v8 = 7;
      break;
    case 8:
      a3 = *result;
      a4 = *(result + 16);
      v8 = 8;
      break;
    case 9:
      a5 = *(result + 48);
      a3 = *result;
      a4 = *(result + 16);
      a5.n128_u64[1] = *(result + 56);
      v8 = 9;
      break;
    case 0xA:
      a3.n128_u32[0] = *result & 1;
      v8 = 10;
      break;
    case 0xB:
      a3.n128_u32[0] = *result;
      v8 = 11;
      break;
    case 0xC:
      a3.n128_u64[0] = *result;
      v8 = 12;
      break;
    case 0xD:
      a3 = *result;
      v8 = 13;
      break;
    case 0xE:
      a3 = *result;
      v8 = 14;
      break;
    case 0xF:
      a3.n128_u32[0] = *result;
      v8 = 15;
      break;
    case 0x10:
      a3.n128_u64[0] = *result;
      v8 = 16;
      break;
    case 0x11:
      a3 = *result;
      v8 = 17;
      break;
    case 0x12:
      a3 = *result;
      v8 = 18;
      break;
    default:
      v8 = 19;
      v7 = 0uLL;
      a3 = 0uLL;
      a4 = 0uLL;
      a5 = 0uLL;
      break;
  }

  *a2 = a3;
  *(a2 + 16) = a4;
  *(a2 + 32) = v7;
  *(a2 + 48) = a5;
  *(a2 + 64) = v8;
  return result;
}

double __RKMaterialParameterBlock.Parameter.init(nilLiteral:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 19;
  return result;
}

float __RKMaterialParameterBlock.Parameter.init(integerLiteral:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = a1;
  *a2 = a1;
  *(a2 + 64) = 2;
  return result;
}

double protocol witness for ExpressibleByNilLiteral.init(nilLiteral:) in conformance __RKMaterialParameterBlock.Parameter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 19;
  return result;
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance __RKMaterialParameterBlock.Parameter@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 64) = 2;
  return result;
}

float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance __RKMaterialParameterBlock.Parameter@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 64) = 2;
  return result;
}

RealityKit::__RKMaterialParameterBlock::TransparentPass_optional __swiftcall __RKMaterialParameterBlock.TransparentPass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKMaterialParameterBlock.TransparentPass.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKMaterialParameterBlock.TransparentPass.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001CLL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x726170736E617254;
  }

  else
  {
    return v1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKMaterialParameterBlock.TransparentPass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKMaterialParameterBlock.TransparentPass()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKMaterialParameterBlock.TransparentPass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKMaterialParameterBlock.TransparentPass(uint64_t *a1@<X8>)
{
  v2 = 0x726170736E617254;
  v3 = 0xEB00000000746E65;
  v4 = 0xD00000000000001ALL;
  v5 = 0x80000001C18DDBC0;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x80000001C18DDBE0;
  }

  if (*v1)
  {
    v3 = 0xED00005241746E65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v4;
    v6 = v5;
  }

  *a1 = v2;
  a1[1] = v6;
}

RealityKit::__RKMaterialParameterBlock::OpaquePass_optional __swiftcall __RKMaterialParameterBlock.OpaquePass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKMaterialParameterBlock.OpaquePass.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKMaterialParameterBlock.OpaquePass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65757161704FLL;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x776F64616853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x524165757161704FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKMaterialParameterBlock.OpaquePass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKMaterialParameterBlock.OpaquePass()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKMaterialParameterBlock.OpaquePass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKMaterialParameterBlock.OpaquePass(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x65757161704FLL;
  v5 = 0xD000000000000015;
  v6 = 0x80000001C18DDC10;
  v7 = 0x80000001C18DDC30;
  v8 = 0xD000000000000017;
  if (v2 != 3)
  {
    v8 = 0x776F64616853;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x524165757161704FLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t __RKMaterialParameterBlock.transparentPassTechniqueMappingEnabled.getter()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  String.utf8CString.getter();

  PassTechniqueMapping = REMaterialParameterBlockValueGetPassTechniqueMapping();

  if (PassTechniqueMapping)
  {
    goto LABEL_5;
  }

  String.utf8CString.getter();

  v3 = REMaterialParameterBlockValueGetPassTechniqueMapping();

  if (v3)
  {
    goto LABEL_5;
  }

  String.utf8CString.getter();

  v4 = REMaterialParameterBlockValueGetPassTechniqueMapping();

  if (v4 & 1) != 0 || (String.utf8CString.getter(), , v5 = REMaterialParameterBlockValueGetPassTechniqueMapping(), , (v5))
  {
LABEL_5:
    result = 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __RKMaterialParameterBlock.setTransparentPassTechniqueMappingEnabled(_:)(Swift::Bool a1)
{
  v25 = *MEMORY[0x1E69E9840];
  LODWORD(v3) = *(v1 + 8);
  v4 = v1[2];
  if (v3 == 1)
  {
    v5 = *v1;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = v1[2];
LABEL_5:

    v8 = *(v7 + 16);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_14:

    if (a1)
    {
LABEL_15:
      v14 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_16:
    if (v4)
    {
      v15 = v3;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v16 = v1[2];

      v1[2] = MEMORY[0x1E69E7CC0];
    }

    v17 = 0;
    v18 = v1[3];
    v24 = v3;
    do
    {
      v20 = outlined read-only object #0 of __RKMaterialParameterBlock.setTransparentPassTechniqueMappingEnabled(_:)[v17++ + 32];
      String.utf8CString.getter();

      PassTechniqueMapping = REMaterialParameterBlockValueGetPassTechniqueMapping();

      if (PassTechniqueMapping)
      {
        if ((v3 & 1) == 0)
        {
          v22 = v1[2];
          if (v22)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
            }

            v3 = *(v22 + 2);
            v23 = *(v22 + 3);
            if (v3 >= v23 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v3 + 1, 1, v22);
            }

            *(v22 + 2) = v3 + 1;
            v19 = &v22[16 * v3];
            v19[32] = v20;
            *(v19 + 5) = 0;
            v1[2] = v22;
            LOBYTE(v3) = v24;
          }
        }

        String.utf8CString.getter();

        REMaterialParameterBlockValueRemovePassTechniqueMapping();
      }
    }

    while (v17 != 4);
    goto LABEL_15;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v8 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (!a1)
  {

    goto LABEL_16;
  }

  v9 = v1[3];
  v10 = (v7 + 40);
  do
  {
    v11 = *(v10 - 8);
    v12 = *v10;
    v10 += 2;
    String.utf8CString.getter();

    REMaterialParameterBlockValueAddHashedPassTechniqueMapping();

    --v8;
  }

  while (v8);
  v13 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __RKMaterialParameterBlock.reset()()
{
  v1 = REMaterialParameterBlockValueCreate();

  *(v0 + 24) = v1;
}

void __RKMaterialParameterBlock.unsafeSet(parameter:value:)(const char *a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 56);
  v76 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(v2 + 24);
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v75 = a1;
    v15 = *(v2 + 24);
    v74 = v10;
    v16 = v9;
    v17 = v8;
    v18 = v6;
    v19 = v7;
    v20 = v4;
    v21 = v5;
    v22 = REMaterialParameterBlockValueCopy();

    *(v2 + 24) = v22;
    v5 = v21;
    v4 = v20;
    v7 = v19;
    v6 = v18;
    v8 = v17;
    v9 = v16;
    v10 = v74;
    a1 = v75;
  }

  switch(v11)
  {
    case 1:
      *&v77 = v5;
      *(&v77 + 1) = v4;
      v78 = v7;
      v79 = v6;
      v80 = BYTE2(v6);
      v81 = BYTE3(v6);
      __RKMaterialParameterBlock.setTextureParameter(texture:key:)(&v77, a1);
      goto LABEL_62;
    case 2:
      v44 = *(v2 + 24);
      v45 = *MEMORY[0x1E69E9840];

      REMaterialParameterBlockValueSetFloat();
      break;
    case 3:
      v48 = *(v2 + 24);
      v49 = *MEMORY[0x1E69E9840];

      REMaterialParameterBlockValueSetFloat2();
      break;
    case 4:
      v33 = *(v2 + 24);
      v34 = *MEMORY[0x1E69E9840];
      v35.n128_u64[0] = v5;
      v35.n128_u64[1] = v4;

      MEMORY[0x1EEDFCDB0](v33, a1, v35);
      break;
    case 5:
      v55 = *(v2 + 24);
      v56 = *MEMORY[0x1E69E9840];

      REMaterialParameterBlockValueSetFloat4();
      break;
    case 6:
      v60 = *(v2 + 24);
      v77 = 0uLL;
      if (REMaterialParameterBlockValueGetParameterType() == 19)
      {
        RECGColorToColorGamut();
        REMaterialParameterBlockValueSetColor3();
      }

      else
      {
        RECGColorToColorGamut();
        REMaterialParameterBlockValueSetColor4();
      }

LABEL_62:
      v73 = *MEMORY[0x1E69E9840];
      break;
    case 7:
      v50 = *(v2 + 24);
      v51 = *MEMORY[0x1E69E9840];
      v13.n128_u64[0] = v5;
      v14.n128_u64[0] = v4;

      MEMORY[0x1EEDFCDA8](v50, a1, v13, v14);
      break;
    case 8:
      v66 = *(v2 + 24);
      v67 = *MEMORY[0x1E69E9840];
      v68.n128_u64[0] = v5;
      v68.n128_u64[1] = v4;
      v69.n128_u64[0] = v7;
      v69.n128_u64[1] = v6;
      v70.n128_u64[0] = v9;
      v70.n128_u64[1] = v8;

      MEMORY[0x1EEDFCDB8](v66, a1, v68, v69, v70);
      break;
    case 9:
      v38 = *(v2 + 24);
      v39 = *MEMORY[0x1E69E9840];
      v40.n128_u64[0] = v5;
      v40.n128_u64[1] = v4;
      v41.n128_u64[0] = v7;
      v41.n128_u64[1] = v6;
      v42.n128_u64[0] = v9;
      v42.n128_u64[1] = v8;
      v43.n128_u64[0] = v76;
      v43.n128_u64[1] = v10;

      MEMORY[0x1EEDFCDC8](v38, a1, v40, v41, v42, v43);
      break;
    case 10:
      v64 = *(v2 + 24);
      v65 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEDFCD80](v64, a1, v5 & 1);
      break;
    case 11:
      v31 = *(v2 + 24);
      v32 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEDFCDD0](v31, a1, v5);
      break;
    case 12:
      v36 = *(v2 + 24);
      v37 = *MEMORY[0x1E69E9840];
      v13.n128_u64[0] = v5;

      MEMORY[0x1EEDFCDD8](v36, a1, v13);
      break;
    case 13:
      v57 = *(v2 + 24);
      v58 = *MEMORY[0x1E69E9840];
      v59.n128_u64[0] = v5;
      v59.n128_u64[1] = v4;

      MEMORY[0x1EEDFCDE0](v57, a1, v59);
      break;
    case 14:
      v28 = *(v2 + 24);
      v29 = *MEMORY[0x1E69E9840];
      v30.n128_u64[0] = v5;
      v30.n128_u64[1] = v4;

      MEMORY[0x1EEDFCDE8](v28, a1, v30);
      break;
    case 15:
      v46 = *(v2 + 24);
      v47 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEDFCE08](v46, a1, v5);
      break;
    case 16:
      v26 = *(v2 + 24);
      v27 = *MEMORY[0x1E69E9840];
      v13.n128_u64[0] = v5;

      MEMORY[0x1EEDFCE10](v26, a1, v13);
      break;
    case 17:
      v52 = *(v2 + 24);
      v53 = *MEMORY[0x1E69E9840];
      v54.n128_u64[0] = v5;
      v54.n128_u64[1] = v4;

      MEMORY[0x1EEDFCE18](v52, a1, v54);
      break;
    case 18:
      v61 = *(v2 + 24);
      v62 = *MEMORY[0x1E69E9840];
      v63.n128_u64[0] = v5;
      v63.n128_u64[1] = v4;

      MEMORY[0x1EEDFCE20](v61, a1, v63);
      break;
    case 19:
      v71 = *(v2 + 24);
      v72 = *MEMORY[0x1E69E9840];

      REMaterialParameterBlockValueClearParameter();
      break;
    default:
      v23 = *(v2 + 24);
      v24 = *(v5 + 16);
      v25 = *MEMORY[0x1E69E9840];

      REMaterialParameterBlockValueSetTextureFromAsset();
      break;
  }
}

void __RKMaterialParameterBlock.setTextureParameter(texture:key:)(uint64_t a1, const char *a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a1 + 27);
  v10 = *(v2 + 24);
  v11 = *(*(a1 + 8) + 16);
  REMaterialParameterBlockValueSetTextureFromAsset();
  if (v4)
  {
    v12 = v4;
    [v12 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for MTLSamplerDescriptor();
    swift_dynamicCast();
    v13 = strlen(a2);
    v14 = String.count.getter();
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    MEMORY[0x1EEE9AC00](v16);
    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    MEMORY[0x1C68F3410](0x72656C706D61735FLL, 0xE800000000000000);
    String.utf8CString.getter();
    REMaterialParameterBlockValueSetSampler();

    String.utf8CString.getter();

    REMaterialParameterBlockValueBindTextureToSamplerWithDefaultArray();
  }

  if (!v5)
  {
    REMaterialParameterBlockValueClearUVIndexForTexture();
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (HIDWORD(v5))
  {
LABEL_24:
    __break(1u);
    return;
  }

  REMaterialParameterBlockValueSetUVIndexForTexture();
LABEL_9:
  if (v9 == 5 && v6 == 2 && v7 == 3 && v8 == 4)
  {
    REMaterialParameterBlockValueClearSwizzleForTexture();
  }

  else
  {
    REMaterialParameterBlockValueSetSwizzleForTexture();
  }
}

void closure #1 in __RKMaterialParameterBlock.get(parameter:)(uint64_t a1@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(REMaterialParameterBlockValueGetParameterType())
  {
    case 1u:
      Texture = REMaterialParameterBlockValueGetTexture();
      if (!Texture)
      {
        goto LABEL_41;
      }

      v3 = Texture;
      if (REMaterialParameterBlockValueGetSamplerNameBoundToTexture())
      {
        v4 = REMaterialParameterBlockValueCopySampler();
      }

      else
      {
        v4 = 0;
      }

      type metadata accessor for TextureResource();
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      SwizzleForTexture = REMaterialParameterBlockValueGetSwizzleForTexture();
      REMaterialParameterBlockValueGetUVIndexForTexture();
      if (v4)
      {
        v9 = v4;

        v10.i32[0] = 0;
        v11 = vmovl_u8(v10).u64[0];
        if (SwizzleForTexture)
        {
          v12 = -1;
        }

        else
        {
          v12 = 0;
        }

        v13 = vbsl_s8(vdup_n_s16(v12), v11, 0x5000400030002);

        *a1 = v4;
        goto LABEL_52;
      }

      if (SwizzleForTexture == 1)
      {
        v15 = REMaterialCreateDefaultSamplerDescriptor();

        v16.i32[0] = 0;
        v13 = vbsl_s8(vdup_n_s16(0xFFFFFFFF), *&vmovl_u8(v16), 0x5000400030002);

        *a1 = v15;
LABEL_52:
        *(a1 + 8) = v7;
        *(a1 + 16) = 0;
        *(a1 + 24) = vuzp1_s8(v13, v14).u32[0];
        v5 = 1;
        goto LABEL_42;
      }

      *a1 = v7;
      *(a1 + 64) = 0;
LABEL_43:
      v6 = *MEMORY[0x1E69E9840];
      return;
    case 2u:
      if (!REMaterialParameterBlockValueGetFloat())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 2;
      goto LABEL_42;
    case 3u:
      if (!REMaterialParameterBlockValueGetFloat2())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 3;
      goto LABEL_42;
    case 4u:
      if (!REMaterialParameterBlockValueGetFloat3())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 4;
      goto LABEL_42;
    case 5u:
      if (!REMaterialParameterBlockValueGetFloat4())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 5;
      goto LABEL_42;
    case 6u:
      if (!REMaterialParameterBlockValueGetFloat2x2())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 7;
      goto LABEL_42;
    case 7u:
      if (!REMaterialParameterBlockValueGetFloat3x3())
      {
        goto LABEL_41;
      }

      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      v5 = 8;
      goto LABEL_42;
    case 8u:
      if (!REMaterialParameterBlockValueGetFloat4x4())
      {
        goto LABEL_41;
      }

      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      v5 = 9;
      goto LABEL_42;
    case 9u:
      if (!REMaterialParameterBlockValueGetBool())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 10;
      goto LABEL_42;
    case 0xBu:
      if (!REMaterialParameterBlockValueGetInt())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 11;
      goto LABEL_42;
    case 0xCu:
      if (!REMaterialParameterBlockValueGetUInt())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 15;
      goto LABEL_42;
    case 0xDu:
      if (!REMaterialParameterBlockValueGetInt2())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 12;
      goto LABEL_42;
    case 0xEu:
      if (!REMaterialParameterBlockValueGetUInt2())
      {
        goto LABEL_41;
      }

      *a1 = 0;
      v5 = 16;
      goto LABEL_42;
    case 0xFu:
      if (!REMaterialParameterBlockValueGetInt3())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 13;
      goto LABEL_42;
    case 0x10u:
      if (!REMaterialParameterBlockValueGetUInt3())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 17;
      goto LABEL_42;
    case 0x11u:
      if (!REMaterialParameterBlockValueGetInt4())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 14;
      goto LABEL_42;
    case 0x12u:
      if (!REMaterialParameterBlockValueGetUInt4())
      {
        goto LABEL_41;
      }

      *a1 = 0uLL;
      v5 = 18;
      goto LABEL_42;
    case 0x13u:
      if (REMaterialParameterBlockValueGetColor3())
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    case 0x14u:
      if (!REMaterialParameterBlockValueGetColor4())
      {
        goto LABEL_41;
      }

LABEL_38:
      *a1 = RECreateCGColorFromColorGamut();
      v5 = 6;
      goto LABEL_42;
    default:
LABEL_41:
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -1;
LABEL_42:
      *(a1 + 64) = v5;
      goto LABEL_43;
  }
}

uint64_t __RKMaterialParameterBlock.init(transparentPassTechniqueMappping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v4 - 16);
      v7 = *(v4 - 1);
      v8 = *v4;
      String.utf8CString.getter();
      v9 = REMaterialParameterBlockArrayComponentHashTechniqueName();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      v12[32] = v6;
      *(v12 + 5) = v9;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  result = REMaterialParameterBlockValueCreate();
  *a2 = v5;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  return result;
}

uint64_t __RKMaterialParameterBlock.init(hashedTransparentPassTechniqueMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 1;
  v3 = specialized _arrayForceCast<A, B>(_:)(a1);

  *a2 = v3;
  result = REMaterialParameterBlockValueCreate();
  *(a2 + 24) = result;
  return result;
}

id static __RKMaterialParameterBlock.fromCore(_:index:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = REMaterialParameterBlockArrayComponentGetBlockValueAtIndex();
  if (result)
  {
    *(a2 + 8) = 0;
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 16) = 0;
    *(a2 + 24) = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t __RKMaterialParameterBlock.__toCore(_:index:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  return REMaterialParameterBlockArrayComponentSetBlockValueAtIndex();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MTLTextureSwizzleChannels(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[3] != a2[3])
  {
    return 0;
  }

  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

uint64_t specialized static __RKMaterialParameterBlock.Parameter.== infix(_:_:)(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v42 = *(a1 + 32);
  v43 = v2;
  v4 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v47 = a2[2];
  v48 = v5;
  v7 = a2[1];
  v45 = *a2;
  v46 = v7;
  v8 = *(a1 + 48);
  v50[2] = v42;
  v50[3] = v8;
  v50[0] = *a1;
  v50[1] = v3;
  v9 = a2[3];
  v54 = v47;
  v55 = v9;
  v44 = *(a1 + 64);
  v49 = a2[4].i8[0];
  v51 = *(a1 + 64);
  v56 = a2[4].i8[0];
  v52 = v45;
  v53 = v6;
  v57 = v41[0];
  switch(v44)
  {
    case 1:
      if (v49 != 1)
      {
        v26 = *&v41[0];
        goto LABEL_55;
      }

      v37 = v57;
      v38 = v4.i64[0];
      v39 = vmovn_s16(vzip2q_s8(v4, v4)).u32[0];
      v34 = v45;
      v35 = v46.i64[0];
      v36 = v46.i32[2];
      outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
      LOBYTE(v15) = specialized static MaterialParameters.Texture.== infix(_:_:)(&v37, &v34, v20);
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      outlined destroy of __RKMaterialParameterBlock.Parameter(&v45);
      outlined destroy of __RKMaterialParameterBlock.Parameter(v41);
      return v15 & 1;
    case 2:
      if (v49 != 2)
      {
        goto LABEL_57;
      }

      v14 = v57.f32[0];
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = v14 == v45.f32[0];
      return v15 & 1;
    case 3:
      if (v49 != 3)
      {
        goto LABEL_57;
      }

      v17 = *v57.f32;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v12 = vceq_f32(v17, *v45.f32);
      if ((v12.i8[0] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_23;
    case 4:
      if (v49 != 4)
      {
        goto LABEL_57;
      }

      v30 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v10 = vceqq_f32(v30, v45);
      goto LABEL_34;
    case 5:
      if (v49 != 5)
      {
        goto LABEL_57;
      }

      v31 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = 0;
      v21 = vceqq_f32(v31, v45);
      goto LABEL_40;
    case 6:
      if (v49 != 6)
      {
        v27 = *&v41[0];
        goto LABEL_57;
      }

      type metadata accessor for CGColorRef(0);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      LOBYTE(v15) = static _CFObject.== infix(_:_:)();
LABEL_50:
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      break;
    case 7:
      if (v49 != 7)
      {
        goto LABEL_57;
      }

      v18 = vand_s8(vceq_f32(*v57.f32, *v45.f32), vceq_f32(*&v57.u32[2], *&v45.u32[2]));
      v19 = vpmin_u32(v18, v18).u32[0];
      goto LABEL_49;
    case 8:
      if (v49 != 8)
      {
        goto LABEL_57;
      }

      v13 = vandq_s8(vandq_s8(vceqq_f32(v46, v4), vceqq_f32(v42, v47)), vceqq_f32(v57, v45));
      v13.i32[3] = v13.i32[2];
      goto LABEL_48;
    case 9:
      if (v49 != 9)
      {
        goto LABEL_57;
      }

      v13 = vandq_s8(vandq_s8(vceqq_f32(v42, v47), vceqq_f32(v43, v48)), vandq_s8(vceqq_f32(v46, v4), vceqq_f32(v57, v45)));
LABEL_48:
      v19 = vminvq_u32(v13);
LABEL_49:
      LODWORD(v15) = v19 >> 31;
      goto LABEL_50;
    case 10:
      if (v49 != 10)
      {
        goto LABEL_57;
      }

      v24 = v57.i8[0];
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = v24 ^ v45.i8[0] ^ 1;
      return v15 & 1;
    case 11:
      if (v49 != 11)
      {
        goto LABEL_57;
      }

      goto LABEL_20;
    case 12:
      if (v49 == 12)
      {
        goto LABEL_13;
      }

      goto LABEL_57;
    case 13:
      if (v49 == 13)
      {
        goto LABEL_33;
      }

      goto LABEL_57;
    case 14:
      if (v49 == 14)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    case 15:
      if (v49 != 15)
      {
        goto LABEL_57;
      }

LABEL_20:
      v16 = v57.i32[0];
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = v16 == v45.i32[0];
      return v15 & 1;
    case 16:
      if (v49 != 16)
      {
        goto LABEL_57;
      }

LABEL_13:
      v11 = *v57.f32;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v12 = vceq_s32(v11, *v45.f32);
      if ((v12.i8[0] & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_23:
      LOBYTE(v15) = v12.i8[4];
      return v15 & 1;
    case 17:
      if (v49 != 17)
      {
        goto LABEL_57;
      }

LABEL_33:
      v32 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v10 = vceqq_s32(v32, v45);
LABEL_34:
      v22 = vmovn_s32(v10);
      if ((v22.i16[0] & v22.i16[1] & 1) == 0)
      {
        goto LABEL_58;
      }

      LOBYTE(v15) = v22.i8[4];
      return v15 & 1;
    case 18:
      if (v49 != 18)
      {
        goto LABEL_57;
      }

LABEL_39:
      v33 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = 0;
      v21 = vceqq_s32(v33, v45);
LABEL_40:
      v23 = vmovn_s32(v21);
      if (v23.i8[0] & 1) != 0 && (v23.i8[2] & 1) != 0 && (v23.i8[4])
      {
        LOBYTE(v15) = v23.i8[6];
      }

      return v15 & 1;
    case 19:
      if (v49 != 19)
      {
        goto LABEL_57;
      }

      v25 = vorrq_s8(vorrq_s8(v45, v47), vorrq_s8(v46, v48));
      if (vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))
      {
        goto LABEL_57;
      }

      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = 1;
      return v15 & 1;
    default:
      if (v49)
      {
LABEL_55:

LABEL_57:
        outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
        outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
LABEL_58:
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = *(v57.i64[0] + 16);
        v29 = *(v45.i64[0] + 16);
        outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
        outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
        outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
        LOBYTE(v15) = v15 == v29;
      }

      break;
  }

  return v15 & 1;
}

unint64_t lazy protocol witness table accessor for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass()
{
  result = lazy protocol witness table cache variable for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass;
  if (!lazy protocol witness table cache variable for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass()
{
  result = lazy protocol witness table cache variable for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass;
  if (!lazy protocol witness table cache variable for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKMaterialParameterBlock.Parameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && *(a1 + 65))
  {
    return (*a1 + 237);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x13)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKMaterialParameterBlock.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for __RKMaterialParameterBlock.Parameter(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x13)
  {
    *result = a2 - 19;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 19;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0O_AEtMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0O_AEtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for MTLSamplerDescriptor()
{
  result = lazy cache variable for type metadata for MTLSamplerDescriptor;
  if (!lazy cache variable for type metadata for MTLSamplerDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MTLSamplerDescriptor);
  }

  return result;
}

uint64_t partial apply for closure #2 in __RKMaterialParameterBlock.setTextureParameter(texture:key:)(_BYTE *a1)
{
  result = *(v1 + 16);
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 16);
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 < 0)
      {
        break;
      }

      *a1++ = v6;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO3AndVy_AJGTt1B5@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  *(v4 + 5) = a1[4];
  *(v4 + 6) = v5;
  v6 = a1[7];
  *(v4 + 7) = a1[6];
  *(v4 + 8) = v6;
  v7 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v7;
  v8 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v8;
  v9 = swift_allocObject();
  v10 = a1[5];
  *(v9 + 5) = a1[4];
  *(v9 + 6) = v10;
  v11 = a1[7];
  *(v9 + 7) = a1[6];
  *(v9 + 8) = v11;
  v12 = a1[1];
  *(v9 + 1) = *a1;
  *(v9 + 2) = v12;
  v13 = a1[3];
  *(v9 + 3) = a1[2];
  *(v9 + 4) = v13;
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMR);
  v22[4] = &protocol witness table for QueryPredicates.And<A>;
  v14 = swift_allocObject();
  v22[0] = v14;
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v16 = a1[7];
  v14[7] = a1[6];
  v14[8] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  v18 = a1[3];
  v14[3] = a1[2];
  v14[4] = v18;
  outlined init with copy of __REAssetService(v22, v23);
  v19 = swift_allocObject();
  outlined init with take of BindableDataInternal(v23, v19 + 16);
  outlined init with take of BindableDataInternal(v22, v23);
  v20 = swift_allocObject();
  outlined init with take of BindableDataInternal(v23, v20 + 16);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a2[1] = v4;
  a2[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a2[3] = v19;
  a2[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:);
  a2[5] = v9;
  a2[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a2[7] = v20;
  outlined init with copy of [String : String](a1, v22, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMR);
  return outlined init with copy of [String : String](a1, v22, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMR);
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO2OrVy_AJGTt1B5@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  *(v4 + 5) = a1[4];
  *(v4 + 6) = v5;
  v6 = a1[7];
  *(v4 + 7) = a1[6];
  *(v4 + 8) = v6;
  v7 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v7;
  v8 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v8;
  v9 = swift_allocObject();
  v10 = a1[5];
  *(v9 + 5) = a1[4];
  *(v9 + 6) = v10;
  v11 = a1[7];
  *(v9 + 7) = a1[6];
  *(v9 + 8) = v11;
  v12 = a1[1];
  *(v9 + 1) = *a1;
  *(v9 + 2) = v12;
  v13 = a1[3];
  *(v9 + 3) = a1[2];
  *(v9 + 4) = v13;
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMR);
  v22[4] = &protocol witness table for QueryPredicates.Or<A>;
  v14 = swift_allocObject();
  v22[0] = v14;
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v16 = a1[7];
  v14[7] = a1[6];
  v14[8] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  v18 = a1[3];
  v14[3] = a1[2];
  v14[4] = v18;
  outlined init with copy of __REAssetService(v22, v23);
  v19 = swift_allocObject();
  outlined init with take of BindableDataInternal(v23, v19 + 16);
  outlined init with take of BindableDataInternal(v22, v23);
  v20 = swift_allocObject();
  outlined init with take of BindableDataInternal(v23, v20 + 16);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a2[1] = v4;
  a2[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a2[3] = v19;
  a2[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:);
  a2[5] = v9;
  a2[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a2[7] = v20;
  outlined init with copy of [String : String](a1, v22, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMR);
  return outlined init with copy of [String : String](a1, v22, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMR);
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO7IsChildVTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t *a1)@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  v14[3] = &type metadata for QueryPredicates.IsChild;
  v14[4] = &protocol witness table for QueryPredicates.IsChild;
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  outlined init with copy of __REAssetService(v14, v13);
  v10 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v10 + 16);
  outlined init with take of BindableDataInternal(v14, v13);
  v11 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v11 + 16);
  *a4 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a4[1] = v8;
  a4[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a4[3] = v10;
  a4[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  a4[5] = v9;
  a4[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a4[7] = v11;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO12IsDescendantVTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t *a1)@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  v14[3] = &type metadata for QueryPredicates.IsDescendant;
  v14[4] = &protocol witness table for QueryPredicates.IsDescendant;
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  outlined init with copy of __REAssetService(v14, v13);
  v10 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v10 + 16);
  outlined init with take of BindableDataInternal(v14, v13);
  v11 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v11 + 16);
  *a4 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a4[1] = v8;
  a4[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a4[3] = v10;
  a4[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  a4[5] = v9;
  a4[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a4[7] = v11;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO11CanInteractVy_AJGTt1g5@<X0>(uint64_t a1@<X0>, BOOL (**a2)(uint64_t *a1)@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15QueryPredicatesO11CanInteractVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO11CanInteractVy_0A3Kit6EntityCGMR);
  v10[4] = &protocol witness table for QueryPredicates.CanInteract<A>;
  v10[0] = a1;
  outlined init with copy of __REAssetService(v10, v9);
  v6 = swift_allocObject();
  outlined init with take of BindableDataInternal(v9, v6 + 16);
  outlined init with take of BindableDataInternal(v10, v9);
  v7 = swift_allocObject();
  outlined init with take of BindableDataInternal(v9, v7 + 16);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a2[1] = v4;
  a2[2] = _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufcs13OpaquePointerVSgycAA0C14Internalizable_pcfu3_AJycfu4_TA_0;
  a2[3] = v6;
  a2[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  a2[5] = v5;
  a2[6] = _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufcSay0A3Kit6EntityCGSgAH5SceneCcAA0C14Internalizable_pcfu5_AlNcfu6_TA_0;
  a2[7] = v7;
  return swift_retain_n();
}

BOOL specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if (a2)
  {

    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      swift_beginAccess();
      if (*(v8 + 24))
      {
        Entity.__interactionIdentifier.getter(v6);

        swift_unknownObjectRelease();
        v9 = type metadata accessor for UUID();
        v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
        outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return v10;
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t static QueryPredicate.has<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for Entity();
  QueryPredicates.Has.init()(v6, a1, a2);
  v7 = type metadata accessor for QueryPredicates.Has();
  WitnessTable = swift_getWitnessTable();
  return QueryPredicateProtocol.eraseToQueryPredicate()(v7, WitnessTable, a3);
}

uint64_t QueryPredicates.Has.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 80, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  result = SceneManager.componentTypeToComponentClass(_:)(a2, a3);
  if (result || (static Component.registerComponent()(a2, a3), (result = SceneManager.componentTypeToComponentClass(_:)(a2, a3)) != 0))
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static QueryPredicate.hasAll<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t (**)()))
{
  static QueryPredicate.has<A>(_:)(a4, a6, v12);
  static QueryPredicate.has<A>(_:)(a5, a7, &v13);
  return a8(v12);
}

uint64_t static QueryPredicate.hasAll<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a12)(void *))
{
  a11(v14, a1, a2, a3, a5, a6, a8, a9);
  static QueryPredicate.has<A>(_:)(a7, a10, &v15);
  return a12(v14);
}

uint64_t static QueryPredicate.hasAll<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a15)(void *))
{
  a14(v16, a1, a2, a3, a4, a6, a7, a8, a10, a11, a12);
  static QueryPredicate.has<A>(_:)(a9, a13, &v17);
  return a15(v16);
}

uint64_t QueryPredicates.Has.performNativeEntityQuery(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = RESceneGetComponentsOfClass();
  v34 = MEMORY[0x1E69E7CC0];
  if (v3 < 0)
  {
    goto LABEL_41;
  }

  v4 = v3;
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = result;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5;
    Entity = REComponentGetEntity();
    if ((REIsEntityHidden() & 1) == 0)
    {
      break;
    }

LABEL_8:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v7 = swift_dynamicCastClassUnconditional();
LABEL_5:
    MEMORY[0x1C68F3650](v7);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v34;
    goto LABEL_8;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      swift_endAccess();
      v14 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypeObjectIdToHandles = v33;
    }

    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_37;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_37;
    }

    v17 = *Object;
    if (*(Object + 8) || !v17)
    {
      v23 = *(Object + 8);
    }

    else
    {
      v18 = *v17;
      v19 = String.init(utf8String:)();
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      v17 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v18 == 42, v21, v22);

      type metadata accessor for IntrospectionDataCleanupHelper();
      result = swift_allocObject();
      *(result + 16) = v17;
    }

    if (!v17)
    {
      goto LABEL_42;
    }

    v24 = String.init(utf8String:)();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = MEMORY[0x1C68F3280](v24, v26);

    v28 = NSClassFromString(v27);

    if (!v28)
    {
      goto LABEL_37;
    }

    swift_getObjCClassMetadata();
    type metadata accessor for Entity();
    v29 = swift_dynamicCastMetatype();
    if (v29)
    {
      v30 = (*(v29 + 232))();
      v31 = *(v30 + 16);

      MEMORY[0x1C68F9740](v31, 0);
      *(v30 + 16) = Entity;
      MEMORY[0x1C68F9740](Entity, v30);
    }

    else
    {
LABEL_37:
      v7 = makeEntity(for:)(Entity);
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Has<A, B>@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized QueryPredicates.Has.evaluate(value:)(*a1, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  *a3 = result;
  return result;
}

BOOL QueryPredicates.CanInteract.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if (a2)
  {

    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      swift_beginAccess();
      if (*(v8 + 24) == 1)
      {
        Entity.__interactionIdentifier.getter(v6);

        swift_unknownObjectRelease();
        v9 = type metadata accessor for UUID();
        v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
        outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return v10;
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.CanInteract<A>@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = QueryPredicates.CanInteract.evaluate(value:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t static QueryPredicate.isChild(of:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO7IsChildVTt1g5(0, 0, a1, a2);
}

uint64_t static QueryPredicate.isChild(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO7IsChildVTt1g5(a1, a2, 0, a3);
}

uint64_t static QueryPredicate.isDescendant(of:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO12IsDescendantVTt1g5(0, 0, a1, a2);
}

uint64_t static QueryPredicate.isDescendant(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO12IsDescendantVTt1g5(a1, a2, 0, a3);
}

uint64_t static QueryPredicate.canInteract(on:)@<X0>(BOOL (**a1)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO11CanInteractVy_AJGTt1g5(v2, a1);
}

uint64_t type metadata instantiation function for QueryPredicates.Has()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Has<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t QueryPredicates.IsDescendant.evaluate(value:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  if (a2)
  {

    a4 = a2(v10);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  else
  {
    if (!a4)
    {
LABEL_51:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v11 = specialized HasHierarchy.parent.getter();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for AnchoringComponent(0);
    v43 = v9;
    while (1)
    {
      while (1)
      {
        v14 = *(v12 + 16);

        if (REEntityGetComponent())
        {
          AnchoringComponent.init(from:)(v9);
          v15 = 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = *(v13 - 8);
        (*(v16 + 56))(v9, v15, 1, v13);

        if ((*(v16 + 48))(v9, 1, v13) != 1)
        {

          outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
          return 0;
        }

        outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
        if (*(v12 + 16) == *(a4 + 16))
        {

          return 1;
        }

        Parent = REEntityGetParent();
        if (!Parent)
        {

          goto LABEL_47;
        }

        v18 = Parent;
        if (!REEntityGetSwiftObject())
        {
          break;
        }

        type metadata accessor for Entity();
        v12 = swift_dynamicCastClassUnconditional();
      }

      if (REEntityIsBeingDestroyed())
      {
        break;
      }

      if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = static SceneManager.customComponentTypeObjectIdToHandles;
      if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
      }

      else
      {
        swift_endAccess();
        v23 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        v9 = v43;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
        static SceneManager.customComponentTypeObjectIdToHandles = v44;
      }

      swift_endAccess();
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_41;
      }

      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_41;
      }

      v26 = *Object;
      if (*(Object + 8) || !v26)
      {
        v32 = *(Object + 8);
      }

      else
      {
        v27 = *v26;
        v28 = String.init(utf8String:)();
        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0xE000000000000000;
        }

        v26 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v27 == 42, v30, v31);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v26;
      }

      if (!v26)
      {
        goto LABEL_50;
      }

      v33 = String.init(utf8String:)();
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v36 = MEMORY[0x1C68F3280](v33, v35);

      v37 = NSClassFromString(v36);

      if (!v37)
      {
        goto LABEL_41;
      }

      swift_getObjCClassMetadata();
      type metadata accessor for Entity();
      v38 = swift_dynamicCastMetatype();
      if (v38)
      {
        v39 = (*(v38 + 232))();
        v40 = *(v39 + 16);

        MEMORY[0x1C68F9740](v40, 0);
        *(v39 + 16) = v18;
        MEMORY[0x1C68F9740](v18, v39);
      }

      else
      {
LABEL_41:
        v39 = makeEntity(for:)(v18);
      }

      v12 = v39;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_47:

  return 0;
}

uint64_t QueryPredicates.IsDescendant.makeInternal()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    aBlock[4] = partial apply for acquireEntity #1 () in QueryPredicates.IsDescendant.makeInternal();
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
    aBlock[3] = &block_descriptor_53;
    v6 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);

    IsDescendantCallbackEntityPredicate = REQueryCreateIsDescendantCallbackEntityPredicate();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
    _Block_release(v6);
    return IsDescendantCallbackEntityPredicate;
  }

  else if (a3)
  {
    v9 = *(a3 + 16);
    return REQueryCreateIsDescendantEntityPredicate();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.IsDescendant@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = QueryPredicates.IsDescendant.evaluate(value:)(*a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t QueryPredicates.IsChild.evaluate(value:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = specialized HasHierarchy.parent.getter();
  if (a2)
  {

    a4 = a2(v7);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
    if (v6)
    {
LABEL_3:
      v8 = *(v6 + 16);

      v9 = *(a4 + 16);

      return v8 == v9;
    }

    goto LABEL_6;
  }

  if (a4)
  {

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:

    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t QueryPredicates.IsChild.makeInternal()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    aBlock[4] = partial apply for acquireEntity #1 () in QueryPredicates.IsChild.makeInternal();
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
    aBlock[3] = &block_descriptor_105;
    v6 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);

    IsChildCallbackEntityPredicate = REQueryCreateIsChildCallbackEntityPredicate();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
    _Block_release(v6);
    return IsChildCallbackEntityPredicate;
  }

  else if (a3)
  {
    v9 = *(a3 + 16);
    return REQueryCreateIsChildEntityPredicate();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.IsChild@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = QueryPredicates.IsChild.evaluate(value:)(*a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t specialized implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  v19[0] = *a3;
  v19[1] = v5;
  v6 = a3[3];
  v19[2] = a3[2];
  v19[3] = v6;
  v7 = a3[5];
  v20 = a3[4];
  v21 = v7;
  v8 = a3[7];
  v22 = a3[6];
  v23 = v8;
  ObjectType = swift_getObjectType();
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  v11 = a3[3];
  v27 = a3[2];
  v28 = v11;
  v12 = *(a2 + 8);
  outlined init with copy of [String : String](v19, v24, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  outlined init with copy of [String : String](&v20, v24, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v13 = type metadata accessor for Entity();
  v12(&v25, v13, ObjectType, a2);
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v12(&v15, v13, ObjectType, a2);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  return outlined destroy of BodyTrackingComponent?(&v25, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
}

BOOL specialized QueryPredicates.Has.evaluate(value:)(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  (*(*a1 + 96))(&v16, v10);
  Entity.ComponentSet.subscript.getter(a3, a4, v12);

  v13 = (*(a3[-1].Description + 6))(v12, 1, a3) != 1;
  (*(v8 + 8))(v12, v7);
  return v13;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:)(uint64_t *a1)
{
  return QueryPredicates.IsDescendant.evaluate(value:)(*a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return QueryPredicates.IsChild.evaluate(value:)(*a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  v2 = *a1;
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[10];
  v5 = v1[11];
  v9 = *a1;
  if (v4(&v9))
  {
    v7 = 1;
  }

  else
  {
    v9 = v2;
    v7 = v6(&v9);
  }

  return v7 & 1;
}

{
  v2 = *a1;
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[10];
  v5 = v1[11];
  v9 = *a1;
  if (v4(&v9))
  {
    v9 = v2;
    v7 = v6(&v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t objectdestroy_17Tm_0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_45Tm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  if (v0[16])
  {
    v8 = v0[17];
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityCIego_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata instantiation function for QueryPredicates.CanInteract()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.CanInteract<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for acquireEntity #1 () in QueryPredicates.IsDescendant.makeInternal()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1() + 16);

  return v3;
}

uint64_t AttachedTransformComponent.init(source:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[5] = 0u;
  outlined assign with take of GeometricPin?(a1, (a3 + 5));

  return outlined init with take of GeometricPin(a2, a3);
}

uint64_t outlined assign with take of GeometricPin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static AttachedTransformComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  TargetEntity = REAttachedTransformComponentGetTargetEntity();
  if (TargetEntity)
  {
    v5 = TargetEntity;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        goto LABEL_34;
      }

      v7 = static Entity.entityInfoType(_:)(v5);
      if (v7)
      {
        v8 = (*(v7 + 232))();
        v9 = *(v8 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v8 + 16) = v5;
        MEMORY[0x1C68F9740](v5, v8);
      }

      else
      {
        makeEntity(for:)(v5);
      }
    }
  }

  if (REAttachedTransformComponentGetTargetPinName())
  {
    v10 = String.init(cString:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  REAttachedTransformComponentGetTargetPinUserOffset();
  v32 = v13;
  v34 = v14;
  if (REAttachedTransformComponentGetTargetPinSkeletalJointName())
  {
    v15 = String.init(cString:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  swift_weakInit();
  v47 = v32;
  v48 = v34;
  swift_weakAssign();
  v43 = v10;
  v44 = v12;
  v45 = v15;
  v46 = v17;
  if (!REAttachedTransformComponentHasSourcePin())
  {

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
LABEL_30:
    outlined init with copy of GeometricPin?(&v37, v36);
    outlined init with copy of GeometricPin(v42, a2);
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    v31 = (a2 + 80);
    v31[2] = 0u;
    v31[3] = 0u;
    v31[4] = 0u;
    outlined assign with take of GeometricPin?(v36, v31);
    outlined destroy of GeometricPin?(&v37);
    return outlined destroy of GeometricPin(v42);
  }

  SourceEntity = REAttachedTransformComponentGetSourceEntity();
  if (!SourceEntity)
  {
LABEL_23:
    if (REAttachedTransformComponentGetSourcePinName())
    {
      v23 = String.init(cString:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    if (REAttachedTransformComponentGetSourcePinSkeletalJointName())
    {
      v26 = String.init(cString:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    REAttachedTransformComponentGetSourcePinUserOffset();
    v33 = v30;
    v35 = v29;

    swift_weakInit();
    v40 = v35;
    v41 = v33;
    swift_weakAssign();

    *(&v37 + 1) = v23;
    *&v38 = v25;
    *(&v38 + 1) = v26;
    *&v39 = v28;
    goto LABEL_30;
  }

  v19 = SourceEntity;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    swift_dynamicCastClassUnconditional();
    goto LABEL_23;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v20 = static Entity.entityInfoType(_:)(v19);
    if (v20)
    {
      v21 = (*(v20 + 232))();
      v22 = *(v21 + 16);

      MEMORY[0x1C68F9740](v22, 0);
      *(v21 + 16) = v19;
      MEMORY[0x1C68F9740](v19, v21);
    }

    else
    {
      makeEntity(for:)(v19);
    }

    goto LABEL_23;
  }

LABEL_34:
  __break(1u);
  return result;
}

void AttachedTransformComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  REAttachedTransformComponentDetach();
  outlined init with copy of GeometricPin(v1, &v33);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v33);
  v29 = Strong;
  if (!Strong)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  v10 = v1[4];
  if (v10)
  {
    v33 = v1[3];
    v34 = v10;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.cString(using:)();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v11 = 0;
  }

  v13 = v1[1];
  v14 = v1[2];
  v27 = v1;
  v28 = v13;
  v33 = v13;
  v34 = v14;

  static String.Encoding.utf8.getter();
  v15 = lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.cString(using:)();
  v17 = *(v4 + 8);
  v17(v7, v3);
  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = v29;
  v19 = *(v29 + 16);
  v26 = v11;
  REAttachedTransformComponentSetTargetPinWithName();

  v20 = *(v18 + 16);
  v33 = v28;
  v34 = v14;
  static String.Encoding.utf8.getter();
  v28 = v15;
  v21 = StringProtocol.cString(using:)();
  v17(v7, v3);

  if (!v21)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  REAttachedTransformComponentAttach();

  outlined init with copy of GeometricPin?((v27 + 10), &v30);
  if (!v32)
  {

    outlined destroy of GeometricPin?(&v30);
    return;
  }

  outlined init with take of GeometricPin(&v30, &v33);
  if (!swift_weakLoadStrong())
  {

    outlined destroy of GeometricPin(&v33);
    return;
  }

  if (v37)
  {
    v30 = v36;
    v31 = v37;

    static String.Encoding.utf8.getter();
    StringProtocol.cString(using:)();
    v17(v7, v3);
  }

  v30 = v34;
  v31 = v35;

  static String.Encoding.utf8.getter();
  v22 = StringProtocol.cString(using:)();
  v17(v7, v3);

  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = swift_weakLoadStrong();
  if (v23)
  {
    v24 = v23;

    v25 = *(v24 + 16);

    REAttachedTransformComponentSetSourcePinWithName();

    outlined destroy of GeometricPin(&v33);

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation12GeometricPinVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AttachedTransformComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AttachedTransformComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for realityFileWritingQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v11 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static Entity.realityFileWritingQueue = result;
  return result;
}

uint64_t closure #1 in static Entity.WriteHelper.write(bundle:to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v38 = a3;
  v39 = a1;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v46 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v42 = *(v43 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for realityFileWritingQueue != -1)
  {
    swift_once();
  }

  v40 = static Entity.realityFileWritingQueue;
  outlined init with copy of __REAssetBundle(a2, v49);
  (*(v16 + 16))(&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v15);
  v19 = *(v11 + 16);
  v37 = v14;
  v19(v14, v39, v10);
  v20 = *(v16 + 80);
  v39 = v10;
  v21 = (v20 + 80) & ~v20;
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 123) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v49[1];
  *(v24 + 1) = v49[0];
  *(v24 + 2) = v25;
  v26 = v49[3];
  *(v24 + 3) = v49[2];
  *(v24 + 4) = v26;
  (*(v16 + 32))(&v24[v21], v18, v15);
  v27 = &v24[v22];
  v28 = a4[5];
  *(v27 + 4) = a4[4];
  *(v27 + 5) = v28;
  *(v27 + 6) = a4[6];
  *(v27 + 107) = *(a4 + 107);
  v29 = a4[1];
  *v27 = *a4;
  *(v27 + 1) = v29;
  v30 = a4[3];
  *(v27 + 2) = a4[2];
  *(v27 + 3) = v30;
  (*(v11 + 32))(&v24[v23], v37, v39);
  aBlock[4] = partial apply for closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_54;
  v31 = _Block_copy(aBlock);
  outlined init with copy of __REAssetBundle.ExportOptions(a4, v47);
  v32 = v41;
  static DispatchQoS.unspecified.getter();
  v47[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v33 = v44;
  v34 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v32, v33, v31);
  _Block_release(v31);
  (*(v45 + 8))(v33, v34);
  (*(v42 + 8))(v32, v43);
}

uint64_t closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[5];
  v7[4] = a3[4];
  v7[5] = v3;
  v8[0] = a3[6];
  *(v8 + 11) = *(a3 + 107);
  v4 = a3[1];
  v7[0] = *a3;
  v7[1] = v4;
  v5 = a3[3];
  v7[2] = a3[2];
  v7[3] = v5;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t Entity.write(to:)(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  type metadata accessor for MainActor();
  v2[52] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[53] = v4;
  v2[54] = v3;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:), v4, v3);
}

uint64_t Entity.write(to:)()
{
  *(v0 + 456) = 0;
  *(v0 + 139) = 1;
  if (one-time initialization token for defaultRealityFileVersionForWritePublicAPI != -1)
  {
    swift_once();
  }

  v1 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
  *(v0 + 464) = 0;
  v2 = *(v0 + 456);
  v3 = *(v0 + 139);
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 50) = 0;
  *(v0 + 51) = v3;
  *(v0 + 56) = xmmword_1C18B7B50;
  *(v0 + 72) = 0;
  *(v0 + 84) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 97) = 1;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 138) = 3;
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = Entity.write(to:);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  return Entity.write(to:options:)(v5, (v0 + 16));
}

{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v17 = *v1;
  *(*v1 + 448) = v0;

  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  if (v0)
  {
    *(v2 + 176) = *(v2 + 48);
    *(v2 + 192) = v6;
    *(v2 + 144) = v4;
    *(v2 + 160) = v5;
    v7 = *(v2 + 80);
    v8 = *(v2 + 96);
    v9 = *(v2 + 112);
    *(v2 + 251) = *(v2 + 123);
    *(v2 + 224) = v8;
    *(v2 + 240) = v9;
    *(v2 + 208) = v7;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 144);
    v10 = *(v2 + 424);
    v11 = *(v2 + 432);
    v12 = Entity.write(to:);
  }

  else
  {
    *(v2 + 304) = *(v2 + 48);
    *(v2 + 320) = v6;
    *(v2 + 272) = v4;
    *(v2 + 288) = v5;
    v13 = *(v2 + 80);
    v14 = *(v2 + 96);
    v15 = *(v2 + 112);
    *(v2 + 379) = *(v2 + 123);
    *(v2 + 352) = v14;
    *(v2 + 368) = v15;
    *(v2 + 336) = v13;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 272);
    v10 = *(v2 + 424);
    v11 = *(v2 + 432);
    v12 = Entity.write(to:);
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

{
  v1 = *(v0 + 416);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[52];

  v2 = v0[1];
  v3 = v0[56];

  return v2();
}

uint64_t Entity.write(to:options:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 360) = a1;
  *(v3 + 368) = v2;
  v4 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = a2[6];
  *(v3 + 123) = *(a2 + 107);
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v6;
  *(v3 + 376) = type metadata accessor for MainActor();
  *(v3 + 384) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 392) = v8;
  *(v3 + 400) = v7;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v8, v7);
}

uint64_t Entity.write(to:options:)()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = v2;
  v0[44] = MEMORY[0x1E69E7CC8];
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 26;
  *(v5 + 24) = v0 + 44;

  v6 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static __REAssetBundle.__init(elements:assetService:), v5, inited);

  v7 = v0[44];
  outlined init with copy of __REAssetService((v0 + 26), (v0 + 36));
  __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v6, v0 + 36, v7, 0, v0 + 18);
  v0[51] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[52] = v9;
  v0[53] = v8;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v9, v8);
}

{
  v1 = v0[47];
  v2 = v0[45];
  v3 = static MainActor.shared.getter();
  v0[54] = v3;
  v4 = swift_task_alloc();
  v0[55] = v4;
  v4[2] = v0 + 18;
  v4[3] = v2;
  v4[4] = v0 + 2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = Entity.write(to:options:);
  v7 = MEMORY[0x1E69E85E0];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v3, v7, 0xD000000000000016, 0x80000001C18EABE0, partial apply for closure #1 in static Entity.WriteHelper.write(bundle:to:with:), v4, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v10 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[52];
    v5 = v2[53];
    v6 = Entity.write(to:options:);
  }

  else
  {
    v7 = v2[54];
    v8 = v2[55];

    v4 = v2[52];
    v5 = v2[53];
    v6 = Entity.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = v0[51];

  v2 = v0[49];
  v3 = v0[50];

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v2, v3);
}

{
  v1 = v0[48];

  outlined destroy of __REAssetBundle((v0 + 18));
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  v2 = v0[1];

  return v2();
}

{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[51];

  v4 = v0[49];
  v5 = v0[50];

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v4, v5);
}

{
  v1 = v0[48];

  outlined destroy of __REAssetBundle((v0 + 18));
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  v2 = v0[1];
  v3 = v0[57];

  return v2();
}

{
  v1 = *(v0 + 552);
  type metadata accessor for Entity.WriteHelper();
  *(v0 + 528) = v1;
  static Entity.WriteHelper.makeExportOptions(options:)((v0 + 528), v0 + 16);
  v2 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 251) = *(v0 + 123);
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  v5 = swift_task_alloc();
  *(v0 + 584) = v5;
  *v5 = v0;
  v5[1] = Entity.write(to:options:);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);

  return Entity.write(to:options:)(v7, (v0 + 144));
}

{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v17 = *v1;
  *(*v1 + 592) = v0;

  v4 = *(v2 + 144);
  v5 = *(v2 + 160);
  v6 = *(v2 + 192);
  if (v0)
  {
    *(v2 + 304) = *(v2 + 176);
    *(v2 + 320) = v6;
    *(v2 + 272) = v4;
    *(v2 + 288) = v5;
    v7 = *(v2 + 208);
    v8 = *(v2 + 224);
    v9 = *(v2 + 240);
    *(v2 + 379) = *(v2 + 251);
    *(v2 + 352) = v8;
    *(v2 + 368) = v9;
    *(v2 + 336) = v7;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 272);
    v10 = *(v2 + 576);
    v11 = *(v2 + 568);
    v12 = Entity.write(to:options:);
  }

  else
  {
    *(v2 + 432) = *(v2 + 176);
    *(v2 + 448) = v6;
    *(v2 + 400) = v4;
    *(v2 + 416) = v5;
    v13 = *(v2 + 208);
    v14 = *(v2 + 224);
    v15 = *(v2 + 240);
    *(v2 + 507) = *(v2 + 251);
    *(v2 + 480) = v14;
    *(v2 + 496) = v15;
    *(v2 + 464) = v13;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 400);
    v10 = *(v2 + 576);
    v11 = *(v2 + 568);
    v12 = Entity.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

{
  v1 = *(v0 + 560);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[70];

  v2 = v0[74];
  v3 = v0[1];

  return v3();
}

uint64_t Entity.WriteOptions.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

    *a2 = v5;
    return result;
  }

  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = *v4;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v9 <= *(v5 + 24) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v5);
      v5 = result;
      if (*(v6 + 16))
      {
LABEL_14:
        v12 = *(v5 + 16);
        if ((*(v5 + 24) >> 1) - v12 < v7)
        {
          goto LABEL_22;
        }

        memcpy((v5 + v12 + 32), (v6 + 32), v7);

        if (v7)
        {
          v13 = *(v5 + 16);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_23;
          }

          *(v5 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += 8;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int Entity.WriteOptions.TextureFileSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

double static Entity.WriteOptions.preferredTextureFileSize(_:)@<D0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE12WriteOptionsV6OptionOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE12WriteOptionsV6OptionOGMR);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C1887600;
  *(v4 + 32) = v3;
  *a2 = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Entity.WriteOptions.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Entity.WriteOptions.Option()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](0);
  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entity.WriteOptions.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t static Entity.WriteOptions.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Entity.WriteOptions.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1C68F4C10](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1C68F4C10](0);
      result = MEMORY[0x1C68F4C10](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int Entity.WriteOptions.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1C68F4C10](0);
      MEMORY[0x1C68F4C10](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entity.WriteOptions()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1C68F4C10](0);
      MEMORY[0x1C68F4C10](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t Entity.write(to:options:)(uint64_t a1, void *a2)
{
  v3[68] = v2;
  v3[67] = a1;
  v3[69] = *a2;
  type metadata accessor for MainActor();
  v3[70] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[71] = v5;
  v3[72] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v5, v4);
}

double static Entity.WriteHelper.makeExportOptions(options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v36 = 0;
  v35 = 1;
  if (one-time initialization token for defaultRealityFileVersionForWritePublicAPI != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  v3 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
  v34 = 0;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    v6 = 3;
    v7 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
    while (1)
    {
      v9 = *v5++;
      v8 = v9;
      if (v6 != 3 && v6 != v8)
      {
        break;
      }

      if (v7 <= 14)
      {
        v3 = 15;
        v7 = 15;
      }

      v6 = v8;
      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    lazy protocol witness table accessor for type Entity.WriteError and conformance Entity.WriteError();
    swift_allocError();
    *v10 = 0xD000000000000045;
    v10[1] = 0x80000001C18F0470;
    swift_willThrow();
    v16[0] = 1;
    v17 = 1;
    v18 = v36;
    v19 = 0;
    v20 = 1;
    v21 = 0;
    v22 = v35;
    v23 = xmmword_1C18B7B50;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = v3;
    v28 = v34;
    v29 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 1;
    v33 = v6;
    outlined destroy of __REAssetBundle.ExportOptions(v16);
  }

  else
  {
    LOBYTE(v8) = 3;
LABEL_12:
    v12 = v36;
    v13 = v35;
    v14 = v34;
    *a2 = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v12;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 34) = 0;
    *(a2 + 35) = v13;
    *(a2 + 40) = xmmword_1C18B7B50;
    *(a2 + 56) = 0;
    *(a2 + 68) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = v3;
    *(a2 + 80) = v14;
    *(a2 + 81) = 1;
    result = 0.0;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 1;
    *(a2 + 122) = v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize()
{
  result = lazy protocol witness table cache variable for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize;
  if (!lazy protocol witness table cache variable for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteOptions and conformance Entity.WriteOptions()
{
  result = lazy protocol witness table cache variable for type Entity.WriteOptions and conformance Entity.WriteOptions;
  if (!lazy protocol witness table cache variable for type Entity.WriteOptions and conformance Entity.WriteOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteOptions and conformance Entity.WriteOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option()
{
  result = lazy protocol witness table cache variable for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option;
  if (!lazy protocol witness table cache variable for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteError and conformance Entity.WriteError()
{
  result = lazy protocol witness table cache variable for type Entity.WriteError and conformance Entity.WriteError;
  if (!lazy protocol witness table cache variable for type Entity.WriteError and conformance Entity.WriteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteError and conformance Entity.WriteError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v5 = v0 + ((v3 + *(v4 + 80) + 123) & ~*(v4 + 80));

  return closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:)(v0 + 16, v0 + v2, (v0 + v3));
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __SceneImportOperation.__ImportedScene.sceneIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t __SceneImportOperation.__ImportedScene.sceneName.getter()
{
  v1 = (v0 + *(type metadata accessor for __SceneImportOperation.__ImportedScene(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t __SceneImportOperation.__ImportedScene.sceneAsset.getter()
{
  v1 = *(v0 + *(type metadata accessor for __SceneImportOperation.__ImportedScene(0) + 24));
}

int *__SceneImportOperation.__ImportedScene.init(sceneIdentifier:sceneName:sceneAsset:sceneActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t __SceneImportOperation.__url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = RESceneImportOperationCopySourceURL();
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t __SceneImportOperation.__importedScenes.getter()
{
  v28 = type metadata accessor for __SceneImportOperation.ImportedScene(0);
  v0 = *(v28 - 1);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __SceneImportOperation.importedScenes.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v29;
    v11 = v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v12 = *(v0 + 72);
    v24 = v8;
    v25 = v12;
    do
    {
      outlined init with copy of __SceneImportOperation.ImportedScene(v11, v3, type metadata accessor for __SceneImportOperation.ImportedScene);
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 16))(v7, v3, v13);
      v14 = &v3[v28[5]];
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *&v3[v28[6]];
      v18 = v3[v28[7]];

      outlined destroy of __SceneImportOperation.ImportedScene(v3, type metadata accessor for __SceneImportOperation.ImportedScene);
      v19 = v27;
      v20 = &v7[*(v27 + 20)];
      *v20 = v15;
      *(v20 + 1) = v16;
      *&v7[*(v19 + 24)] = v17;
      v7[*(v19 + 28)] = v18;
      v29 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v22 + 1;
      outlined init with take of __SceneImportOperation.__ImportedScene(v7, v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v11 += v25;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

uint64_t __SceneImportOperation.importedScenes.getter()
{
  v1 = type metadata accessor for __SceneImportOperation.ImportedScene(0);
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = *(v0 + 16);
  result = RESceneImportOperationGetSceneCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v14 = 0;
    v30 = (v5 + 16);
    v31 = (v5 + 32);
    v29 = (v5 + 8);
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = RESceneImportOperationCopySceneIdentifierAtIndex();
      if (!result)
      {
        break;
      }

      v16 = result;
      v17 = v34;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v31)(v10, v17, v35);
      result = RESceneImportOperationCopySceneNameAtIndex();
      if (!result)
      {
        goto LABEL_17;
      }

      v18 = result;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      result = RESceneImportOperationGetSceneAssetAtIndex();
      if (!result)
      {
        goto LABEL_18;
      }

      v22 = result;
      RERetain();
      type metadata accessor for __REAsset();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      LOBYTE(v22) = RESceneImportOperationIsSceneActiveAtIndex();
      (*v30)(v4, v10, v35);
      v24 = v33;
      v25 = &v4[*(v33 + 20)];
      *v25 = v19;
      v25[1] = v21;
      *&v4[*(v24 + 24)] = v23;
      v4[*(v24 + 28)] = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      }

      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v15);
      }

      ++v14;
      (*v29)(v10, v35);
      v15[2] = v27 + 1;
      outlined init with take of __SceneImportOperation.__ImportedScene(v4, v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for __SceneImportOperation.ImportedScene);
      if (v13 == v14)
      {
        return v15;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t __SceneImportOperation.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t __SceneImportOperation.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t __SceneImportOperation.init(core:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  ServiceLocator = RESceneImportOperationGetServiceLocator();
  SwiftObject = REServiceLocatorGetSwiftObject();
  if (SwiftObject)
  {
    v4 = SwiftObject;

LABEL_5:
    v8 = *(v1 + 16);
    v10[4] = partial apply for closure #1 in __SceneImportOperation.init(core:);
    v10[5] = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @guaranteed USKNode, @guaranteed USKScene, @unowned OpaquePointer, @in_guaranteed UUID, @guaranteed [String : String], @guaranteed [String : UUID], @guaranteed String) -> (@owned Error?);
    v10[3] = &block_descriptor_55;
    v9 = _Block_copy(v10);

    RESceneImportOperationSetSceneCreateCompletionHandler();
    _Block_release(v9);

    return v1;
  }

  result = MEMORY[0x1C68FE240](ServiceLocator);
  if (result)
  {
    v6 = result;
    type metadata accessor for __Engine();
    swift_allocObject();
    v7 = __Engine.init(coreEngine:)(v6);
    type metadata accessor for __ServiceLocator();
    swift_allocObject();
    v4 = specialized __ServiceLocator.init(engine:)(v7);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __SceneImportOperation.init(core:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v64 = a8;
  v66 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v64 - v17;
  v78 = MEMORY[0x1E69E6B70];
  v76 = a4;
  outlined init with copy of Any(&v76, &v74);
  swift_dynamicCast();
  v19 = v71;
  __swift_destroy_boxed_opaque_existential_1(&v76);
  v20 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  v67 = a6;
  v65 = a2;
  if (v20)
  {
    v21 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v21 = Scene.init(coreScene:)(v19);
  }

  v22 = v21;
  v69 = a7;
  v23 = RESceneImportGetUSDActionAssets();
  v68 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v26(v18, a5, v24);
  v27 = *(v25 + 56);
  v27(v18, 0, 1, v24);
  Scene.__sceneIdentifier.setter(v18);
  v70 = v22;
  v28 = *(v22 + 16);
  result = RESceneGetEntitiesArray();
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v32 = result;
    v33 = v30;
    v31 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v30, 0);
    result = memcpy(v31 + 4, v32, 8 * v33);
  }

  if (v31[2])
  {
    v34 = v31[4];

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v35 = swift_dynamicCastClassUnconditional();
      goto LABEL_9;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v37 = specialized static Entity.entityInfoType(_:)();
      if (v37)
      {
        v38 = (*(v37 + 232))(v37);
        v39 = *(v38 + 16);

        v40 = v39;
        v36 = v38;
        MEMORY[0x1C68F9740](v40, 0);
        *(v38 + 16) = v34;
        MEMORY[0x1C68F9740](v34, v38);

LABEL_13:
        v26(v18, a5, v24);
        v27(v18, 0, 1, v24);
        Entity.__interactionIdentifier.setter(v18);
        type metadata accessor for __SceneImportOperation();
        v73 = MEMORY[0x1E69E7CC0];
        v42 = v65;
        v41 = v66;
        v43 = v67;
        static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v65, v66, v70, v67, v69, v68, &v73, v64, a9, a10);
        v44 = v73;
        v45 = v73[2];

        if (!v45)
        {

          return 0;
        }

        v64 = v36;

        v46 = v42;
        v47 = v41;

        v48 = [v46 path];
        v49 = [v48 stringValue];

        if (v49)
        {
          v66 = v47;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v76 = v50;
          v77 = v52;
          v74 = 91;
          v75 = 0xE100000000000000;
          v71 = 0;
          v72 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v76 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v77 = v53;
          v74 = 93;
          v75 = 0xE100000000000000;
          v71 = 0;
          v72 = 0xE000000000000000;
          v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v56 = v55;

          if (*(v43 + 16))
          {
            v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
            v59 = v58;

            if (v59)
            {
              v60 = (*(v43 + 56) + 16 * v57);
              v61 = *v60;
              v62 = v60[1];

              v63 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v61, v62, v70, v43);

              if (v63)
              {
                Entity.__interactions.setter(v44);
              }

              else
              {
              }

              goto LABEL_27;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_27:

        return 0;
      }

      v35 = makeEntity(for:)(v34);
LABEL_9:
      v36 = v35;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __SceneImportOperation.__allocating_init(url:serviceLocator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  URL._bridgeToObjectiveC()(a3);
  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = RESceneImportOperationCreateWithURL();

  v9 = swift_allocObject();
  __SceneImportOperation.init(core:)(v8);

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t __SceneImportOperation.__allocating_init(bundle:resourceName:serviceLocator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 16);
  v9 = MEMORY[0x1C68F3280](a2, a3);

  v10 = RESceneImportOperationCreateWithBundleResource();

  if (v10)
  {
    v11 = swift_allocObject();
    __SceneImportOperation.init(core:)(v10);
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t __SceneImportOperation.setIsolateFromEngine(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetIsolateFromEngine();
}

uint64_t __SceneImportOperation.setCompressTextures(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetCompressTextures();
}

uint64_t __SceneImportOperation.setMergeIntoSingleEntity(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetMergeIntoSingleEntity();
}

uint64_t __SceneImportOperation.setPlayDefaultAnimationsImmediately(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetPlayDefaultAnimationsImmediately();
}

uint64_t __SceneImportOperation.setGenerateDecimatedMesh(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetGenerateDecimatedMesh();
}

uint64_t __SceneImportOperation.setReorderVertexCaching(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetVertexCacheOptimize();
}

uint64_t __SceneImportOperation.setEnableAnimationInterpolation(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetEnableAnimationInterpolation();
}

uint64_t __SceneImportOperation.setRootSceneAssetPath(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  a3(v5, v6 + 32);
}

uint64_t __SceneImportOperation.setApplyUnitConversionScale(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetUnitType();
}

uint64_t __SceneImportOperation.setRetainSubdivisionSurfaceInfo(_:)()
{
  v1 = *(v0 + 16);
  RESceneImportOperationSetRetainSubdivisionSurfaceInfo();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __SceneImportOperation.run()()
{
  v1 = *MEMORY[0x1E69E9840];
  __SceneImportOperation.run()(MEMORY[0x1E6998C28]);
  v0 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __SceneImportOperation.publishToEngine()()
{
  v1 = *MEMORY[0x1E69E9840];
  __SceneImportOperation.run()(MEMORY[0x1E6998C20]);
  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __SceneImportOperation.run()(uint64_t (*a1)(void, void *))
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = a1(*(v1 + 16), v6);
  if ((result & 1) == 0)
  {
    v3 = v6[0];
    if (v6[0])
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v4 = v3;
    }

    else
    {
      lazy protocol witness table accessor for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError();
      swift_allocError();
    }

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v180 = a8;
  v181 = a7;
  v179 = a10;
  v178 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v154 - v18;
  v172 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v174 = *(v172 - 8);
  v20 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v171 = v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v170 = v154 - v23;
  v190[0] = a1;
  v190[1] = a2;
  v190[2] = a3;
  v190[3] = a4;
  v190[4] = a5;
  v190[5] = a6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v24 = a1;
  v25 = a2;
  v177 = a3;
  swift_retain_n();
  v26 = v24;
  v183 = v25;
  v27 = MEMORY[0x1C68F3280](0xD00000000000001ALL, 0x80000001C18F0530);
  v28 = &property descriptor for UnlitMaterial.readsDepth;
  v29 = [v26 property_];

  v182 = a6;
  v176 = v26;
  v173 = v19;
  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = [(CGImage *)v29 stringValue];
  if (!v30)
  {
LABEL_16:

LABEL_17:
    v175 = 0;
    v58 = v177;
    goto LABEL_18;
  }

  v31 = v30;
  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v26 path];
  v35 = [v34 stringValue];

  if (!v35)
  {

    goto LABEL_16;
  }

  v175 = v33;
  v168 = a5;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v186 = v36;
  v187 = v38;
  v184 = 91;
  v185 = 0xE100000000000000;
  v188 = 0;
  v189 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v169 = a4;
  v186 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v187 = v39;
  v184 = 93;
  v185 = 0xE100000000000000;
  v188 = 0;
  v189 = 0xE000000000000000;
  a4 = v169;
  v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v42 = v41;

  if (!*(a4 + 16))
  {

    v175 = 0;
    v58 = v177;
    a5 = v168;
LABEL_51:
    v26 = v176;
    v28 = &property descriptor for UnlitMaterial.readsDepth;
    goto LABEL_18;
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v42);
  v45 = v44;

  a5 = v168;
  if ((v45 & 1) == 0)
  {

    v175 = 0;
    v58 = v177;
    goto LABEL_51;
  }

  v46 = (*(a4 + 56) + 16 * v43);
  v47 = *v46;
  v48 = v46[1];

  v49 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v47, v48, v177, a4);

  v26 = v176;
  v28 = &property descriptor for UnlitMaterial.readsDepth;
  if (!v49)
  {

    v175 = 0;
    v58 = v177;
    goto LABEL_18;
  }

  v50 = v167;
  if (v167 == 0x656E616C70 && v175 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = MEMORY[0x1C68F3280](0xD000000000000024, 0x80000001C18F05A0);
    v52 = [v26 property_];

    if (v52)
    {
      v53 = [v52 stringValue];
      if (v53)
      {
        v54 = v53;
        v167 = v49;

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        if (v55 == 0x746E6F7A69726F68 && v57 == 0xEA00000000006C61)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v58 = v177;
        v28 = &property descriptor for UnlitMaterial.readsDepth;
        v106 = *(v167 + 16);
        REAnchoringComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        REAnchoringComponentSetDescriptorType();
        REAnchoringComponentSetDescriptorAlignment();
        REAnchoringComponentSetDescriptorClassification();
        REAnchoringComponentSetDescriptorBounds();

        a5 = v168;
        goto LABEL_100;
      }
    }
  }

  if (v50 == 0x6567616D69 && v175 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v94 = MEMORY[0x1C68F3280](0xD000000000000029, 0x80000001C18F0550);
    v95 = [v26 property_];

    if (v95)
    {
      v96 = v95;
      v97 = [v95 targetObject];
      if (!v97)
      {
LABEL_94:

        goto LABEL_95;
      }

      v98 = v97;
      objc_opt_self();
      v99 = swift_dynamicCastObjCClass();
      if (v99)
      {
        v100 = v99;
        v166 = v96;
        v101 = [v99 typeName];
        v102 = [v101 stringValue];

        if (v102)
        {
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          if (v103 == 0xD00000000000001ALL && 0x80000001C18F0580 == v105)
          {

            v58 = v177;
            v28 = &property descriptor for UnlitMaterial.readsDepth;
          }

          else
          {
            v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v58 = v177;
            v28 = &property descriptor for UnlitMaterial.readsDepth;
            if ((v107 & 1) == 0)
            {
              v96 = v98;
              v98 = v166;
              a5 = v168;
LABEL_92:
              v50 = v167;
              goto LABEL_93;
            }
          }

          v165 = v98;
          v108 = MEMORY[0x1C68F3280](0x6567616D69, 0xE500000000000000);
          v109 = [v100 v28[409]];

          a5 = v168;
          if (v109)
          {
            v110 = [v109 resourcePath];
            v111 = v109;
            v112 = v166;
            v164 = v110;
            if (v110)
            {
              v163 = v111;
              v113 = MEMORY[0x1C68F3280](0x6C61636973796870, 0xED00006874646957);
              v114 = [v100 v28[409]];

              if (v114)
              {

                v175 = v114;
                [v114 floatValue];
                if (v115 >= 0.0)
                {
                  v116 = v115;
                }

                else
                {
                  v116 = 0.0;
                }

                v117 = [objc_opt_self() resourceWithResourcePath_];
                v118 = v165;
                if (v117)
                {
                  v162 = v117;
                  v119 = [v117 dataNoCopy];
                  if (v119)
                  {
                    v120 = v119;
                    v160 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v161 = v121;

                    v122 = specialized static CGImageRef.image(with:)(v160, v161);
                    if (v122)
                    {
                      v159 = v122;
                      v167 = v49;
                      v123 = v179;
                      swift_beginAccess();
                      outlined init with copy of __REAssetService(v123 + 120, &v186);
                      if (one-time initialization token for instances != -1)
                      {
                        swift_once();
                      }

                      v124 = v116 / 100.0;
                      v158 = specialized AssetServiceScopedRegistry.instance(for:)(&v186);
                      __swift_destroy_boxed_opaque_existential_1(&v186);
                      v186 = 979661685;
                      v187 = 0xE400000000000000;
                      MEMORY[0x1C68F3410](v180, v178);
                      v126 = v186;
                      v125 = v187;
                      v127 = [v164 path];
                      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v130 = v129;

                      v131._countAndFlagsBits = 47;
                      v131._object = 0xE100000000000000;
                      v132 = 0xE000000000000000;
                      if (String.hasSuffix(_:)(v131))
                      {
                        v133 = v128;
                        v134 = 0;
                      }

                      else
                      {
                        v142._countAndFlagsBits = 47;
                        v142._object = 0xE100000000000000;
                        v133 = v128;
                        v143 = String.hasPrefix(_:)(v142);
                        if (v143)
                        {
                          v134 = 0;
                        }

                        else
                        {
                          v134 = 47;
                        }

                        if (!v143)
                        {
                          v132 = 0xE100000000000000;
                        }
                      }

                      v186 = v126;
                      v187 = v125;

                      MEMORY[0x1C68F3410](v134, v132);

                      v156 = v125;

                      v157 = v133;
                      MEMORY[0x1C68F3410](v133, v130);

                      v154[1] = v126;
                      v145 = v186;
                      v144 = v187;
                      v146 = objc_allocWithZone(MEMORY[0x1E69864C0]);
                      v147 = [v146 initWithCGImage:v159 orientation:1 physicalWidth:v124];
                      v148 = MEMORY[0x1C68F3280](v145, v144);
                      [v147 setName_];

                      v149 = v158;
                      swift_beginAccess();
                      v150 = v147;
                      v155 = v150;
                      v151 = *(v149 + 24);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v188 = *(v149 + 24);
                      *(v149 + 24) = 0x8000000000000000;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v150, v145, v144, isUniquelyReferenced_nonNull_native);

                      *(v149 + 24) = v188;
                      swift_endAccess();
                      v153 = *(v167 + 16);
                      REAnchoringComponentGetComponentType();
                      REEntityGetOrAddComponentByClass();
                      REAnchoringComponentSetDescriptorType();
                      String.utf8CString.getter();

                      REAnchoringComponentSetDescriptorResourceGroup();

                      String.utf8CString.getter();

                      REAnchoringComponentSetDescriptorResourceName();

                      outlined consume of Data._Representation(v160, v161);

                      v29 = v159;
                      a4 = v169;
                      a5 = v168;
                      v28 = &property descriptor for UnlitMaterial.readsDepth;
                      goto LABEL_100;
                    }

                    outlined consume of Data._Representation(v160, v161);
LABEL_105:
                    v175 = 0;
                    goto LABEL_18;
                  }
                }

                else
                {
                }

LABEL_104:

                goto LABEL_105;
              }

              v112 = v165;
              v136 = v163;
              v135 = v164;
            }

            else
            {
              v135 = v111;
              v136 = v165;
            }

            v96 = v136;
            v98 = v135;
          }

          else
          {
            v96 = v166;
            v98 = v165;
          }

          goto LABEL_92;
        }

        v96 = v98;
        v98 = v166;
        v28 = &property descriptor for UnlitMaterial.readsDepth;
      }

LABEL_93:

      v96 = v98;
      goto LABEL_94;
    }
  }

LABEL_95:
  if (v50 == 1701011814 && v175 == 0xE400000000000000)
  {

    v58 = v177;
  }

  else
  {
    v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v58 = v177;
    if ((v137 & 1) == 0)
    {

      goto LABEL_104;
    }
  }

  v138 = *(v49 + 16);
  REAnchoringComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REAnchoringComponentSetDescriptorType();

LABEL_100:

  v139 = v26;
  v140 = specialized static __SceneImportOperation.searchForGravity(in:)(v139);
  v175 = v139;
  if (v140)
  {
    v141 = v140;
    specialized static __SceneImportOperation.importGravity(decodeContext:gravityNode:)(v139, v58, a4, v140);
  }

  else
  {
  }

LABEL_18:
  v59 = MEMORY[0x1C68F3280](0x7372656767697274, 0xE800000000000000);
  v60 = [v26 v28[409]];

  if (!v60)
  {
LABEL_28:

    goto LABEL_29;
  }

  v61 = [v60 objectPathArray];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v62 >> 62)
  {
    v63 = __CocoaSet.count.getter();
  }

  else
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v177;
  if (v63 < 1 || (v64 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000), v65 = [v26 v28[409]], v64, !v65))
  {

    goto LABEL_28;
  }

  v66 = [v65 objectPathArray];
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v67 >> 62)
  {
    v68 = __CocoaSet.count.getter();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v68 < 1)
  {

    goto LABEL_28;
  }

  v69 = v26;
  v70 = a5;
  v71 = v69;
  v72 = a4;
  v73 = v183;

  v74 = v173;
  __RKEntityInteractionSpecification.init(decodeContext:)(v190, v173);
  v169 = v72;
  (*(v174 + 56))(v74, 0, 1, v172);
  v89 = v170;
  outlined init with take of __SceneImportOperation.__ImportedScene(v74, v170, type metadata accessor for __RKEntityInteractionSpecification);
  outlined init with copy of __SceneImportOperation.ImportedScene(v89, v171, type metadata accessor for __RKEntityInteractionSpecification);
  v90 = *v181;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  if ((v91 & 1) == 0)
  {
    v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
  }

  v93 = v90[2];
  v92 = v90[3];
  if (v93 >= v92 >> 1)
  {
    v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v92 > 1, v93 + 1, 1, v90);
  }

  a5 = v70;

  a4 = v169;

  outlined destroy of __SceneImportOperation.ImportedScene(v170, type metadata accessor for __RKEntityInteractionSpecification);
  v90[2] = v93 + 1;
  outlined init with take of __SceneImportOperation.__ImportedScene(v171, v90 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v93, type metadata accessor for __RKEntityInteractionSpecification);
  *v181 = v90;
  v26 = v176;
LABEL_29:
  v75 = [v26 childIterator];
  v76 = [v75 nextObject];
  if (v76)
  {
    v77 = v76;
    while (1)
    {
      objc_opt_self();
      v78 = swift_dynamicCastObjCClass();
      if (!v78)
      {

        v183 = v176;
        goto LABEL_46;
      }

      v79 = v78;
      v80 = MEMORY[0x1C68F3280](1684957547, 0xE400000000000000);
      v81 = [v79 metadataWithKey_];

      if (!v81)
      {
        goto LABEL_41;
      }

      v82 = [v81 stringValue];

      if (!v82)
      {
        goto LABEL_41;
      }

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      if (v83 != 0x62694C656E656373 || v85 != 0xEC00000079726172)
      {
        break;
      }

      v58 = v177;
LABEL_32:
      v77 = [v75 nextObject];
      if (!v77)
      {
        v77 = v176;
        goto LABEL_46;
      }
    }

    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v58 = v177;
    if ((v87 & 1) == 0)
    {
LABEL_41:
      static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v79, v183, v58, a4, a5, v182, v181, v180, v178, v179);
    }

    goto LABEL_32;
  }

  v77 = v26;
LABEL_46:

  swift_unknownObjectRelease();
}

uint64_t __SceneImportOperation.getSceneResource()()
{
  v1 = *(v0 + 16);
  result = RESceneImportOperationGetSceneAsset();
  if (result)
  {
    v3 = result;
    RERetain();
    type metadata accessor for __SceneResource();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  return result;
}

uint64_t __SceneImportOperation_addCustomUSDDataToScene(uskNode:uskScene:scene:sceneIdentifier:usdNodeToEntityMapping:scenePathToUUIDMapping:fileName:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v61 = a6;
  v62 = a5;
  v57 = a2;
  v56 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(v13, a4, v14);
  v17 = *(v15 + 56);
  v17(v13, 0, 1, v14);
  Scene.__sceneIdentifier.setter(v13);
  v60 = a3;
  v18 = *(a3 + 16);
  result = RESceneGetEntitiesArray();
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = result;
    v23 = v20;
    v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v20, 0);
    result = memcpy(v21 + 4, v22, 8 * v23);
  }

  if (v21[2])
  {
    v24 = v21[4];

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v25 = swift_dynamicCastClassUnconditional();
      goto LABEL_6;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v27 = specialized static Entity.entityInfoType(_:)();
      if (v27)
      {
        v26 = (*(v27 + 232))();
        v28 = *(v26 + 16);

        MEMORY[0x1C68F9740](v28, 0);
        *(v26 + 16) = v24;
        MEMORY[0x1C68F9740](v24, v26);

LABEL_10:
        v16(v13, a4, v14);
        v17(v13, 0, 1, v14);
        v55 = v26;
        Entity.__interactionIdentifier.setter(v13);
        type metadata accessor for __SceneImportOperation();
        outlined init with copy of Any(v56, v72);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);
        swift_dynamicCast();
        v29 = v71;
        outlined init with copy of Any(v57, v70);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
        swift_dynamicCast();
        v30 = v69[1];
        v31 = MEMORY[0x1E69E7CC0];
        v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        specialized static __ServiceLocator.shared.getter();
        v69[0] = v31;

        static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v29, v30, v60, v62, v61, v32, v69, v59, v58, v57);
        v33 = v69[0];
        v34 = v69[0][2];

        v35 = v29;
        v36 = v30;
        if (!v34)
        {

LABEL_25:

          return 1;
        }

        v37 = [v35 path];
        v38 = [v37 stringValue];

        if (!v38)
        {

          goto LABEL_25;
        }

        v59 = v36;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v67 = v39;
        v68 = v41;
        v65 = 91;
        v66 = 0xE100000000000000;
        v63 = 0;
        v64 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v67 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v68 = v42;
        v65 = 93;
        v66 = 0xE100000000000000;
        v63 = 0;
        v64 = 0xE000000000000000;
        v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v45 = v44;

        v46 = v62;
        if (!*(v62 + 16))
        {

LABEL_24:

          v36 = v59;
          goto LABEL_25;
        }

        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v45);
        v49 = v48;

        v50 = v60;
        if (v49)
        {
          v51 = (*(v46 + 56) + 16 * v47);
          v52 = *v51;
          v53 = v51[1];

          v54 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v52, v53, v50, v46);

          if (v54)
          {
            Entity.__interactions.setter(v33);

LABEL_23:

            goto LABEL_24;
          }
        }

        else
        {
        }

        goto LABEL_23;
      }

      v25 = makeEntity(for:)(v24);
LABEL_6:
      v26 = v25;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __SceneImportOperation_addCustomUSDDataToScene(uskNode:uskScene:scene:sceneIdentifier:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:fileName:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v63 = a8;
  v64 = a7;
  v65 = a6;
  v66 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v59 - v15;
  outlined init with copy of Any(a1, v78);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);
  swift_dynamicCast();
  v62 = v77;
  outlined init with copy of Any(a2, v76);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
  swift_dynamicCast();
  v61 = v75[1];
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v60 = a4;
  v20(v16, a4, v18);
  v21 = *(v19 + 56);
  v21(v16, 0, 1, v18);
  v68 = v17;

  Scene.__sceneIdentifier.setter(v16);
  v67 = a3;
  v22 = *(a3 + 16);
  EntitiesArray = RESceneGetEntitiesArray();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    a1 = EntitiesArray;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v24;
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v24, 0);
    memcpy(v25 + 4, a1, 8 * v27);
    if (v25[2])
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  a1 = v25[4];

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v28 = swift_dynamicCastClassUnconditional();
    goto LABEL_5;
  }

LABEL_8:
  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v31 = specialized static Entity.entityInfoType(_:)();
    if (v31)
    {
      v29 = (*(v31 + 232))();
      v32 = *(v29 + 16);

      MEMORY[0x1C68F9740](v32, 0);
      *(v29 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v29);

LABEL_11:
      v20(v16, v60, v18);
      v21(v16, 0, 1, v18);
      Entity.__interactionIdentifier.setter(v16);
      type metadata accessor for __SceneImportOperation();
      v75[0] = v26;
      v33 = v62;
      v34 = v61;
      static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v62, v61, v67, v66, v65, v64, v75, v63, a9, v68);
      v35 = v75[0];
      v36 = v75[0][2];

      if (!v36)
      {

LABEL_26:

        return 0;
      }

      v37 = v33;
      v38 = v34;
      v39 = v37;
      v40 = v38;
      v41 = [v39 path];
      v42 = [v41 stringValue];

      if (!v42)
      {

LABEL_24:

        goto LABEL_25;
      }

      v63 = v29;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v73 = v43;
      v74 = v45;
      v71 = 91;
      v72 = 0xE100000000000000;
      v69 = 0;
      v70 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v73 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v74 = v46;
      v71 = 93;
      v72 = 0xE100000000000000;
      v69 = 0;
      v70 = 0xE000000000000000;
      v47 = v66;
      v48 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v50 = v49;

      if (!*(v47 + 16))
      {

LABEL_25:

        goto LABEL_26;
      }

      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
      v53 = v52;

      v54 = v67;
      if (v53)
      {
        v55 = (*(v47 + 56) + 16 * v51);
        v56 = *v55;
        v57 = v55[1];

        v58 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v56, v57, v54, v47);

        if (v58)
        {
          Entity.__interactions.setter(v35);

LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
      }

      goto LABEL_23;
    }

    v28 = makeEntity(for:)(a1);
LABEL_5:
    v29 = v28;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t __SceneImportOperation_addCustomUSDDataToScene(uskNode:uskScene:scene:sceneIdentifier:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:fileName:serviceLocator:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a8;
  v64 = a7;
  v65 = a6;
  v66 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v59 - v16;
  outlined init with copy of Any(a1, v76);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);
  swift_dynamicCast();
  v61 = v75;
  outlined init with copy of Any(a2, v74);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
  swift_dynamicCast();
  v60 = v73[1];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v59 = a4;
  v20(v17, a4, v18);
  v21 = *(v19 + 56);
  v21(v17, 0, 1, v18);
  Scene.__sceneIdentifier.setter(v17);
  v63 = a3;
  v22 = *(a3 + 16);
  EntitiesArray = RESceneGetEntitiesArray();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    a1 = EntitiesArray;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v24;
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v24, 0);
    memcpy(v25 + 4, a1, 8 * v27);
    if (v25[2])
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  a1 = v25[4];

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v28 = swift_dynamicCastClassUnconditional();
    goto LABEL_5;
  }

LABEL_8:
  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v31 = specialized static Entity.entityInfoType(_:)();
    if (v31)
    {
      v32 = (*(v31 + 232))();
      v33 = *(v32 + 16);

      v34 = v33;
      v29 = v32;
      MEMORY[0x1C68F9740](v34, 0);
      *(v32 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v32);

LABEL_11:
      v20(v17, v59, v18);
      v21(v17, 0, 1, v18);
      Entity.__interactionIdentifier.setter(v17);
      type metadata accessor for __SceneImportOperation();
      v73[0] = v26;
      v35 = v61;
      v36 = v60;
      v37 = v63;
      static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v61, v60, v63, v66, v65, v64, v73, v62, a9, a10);
      v38 = v73[0];
      v39 = v73[0][2];

      if (!v39)
      {

        return 0;
      }

      v62 = v29;

      v40 = v35;
      v41 = v36;
      v42 = [v40 path];
      v43 = [v42 stringValue];

      if (!v43)
      {

LABEL_24:
        return 0;
      }

      v61 = v41;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v71 = v44;
      v72 = v46;
      v69 = 91;
      v70 = 0xE100000000000000;
      v67 = 0;
      v68 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v71 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v72 = v47;
      v69 = 93;
      v70 = 0xE100000000000000;
      v67 = 0;
      v68 = 0xE000000000000000;
      v48 = v66;
      v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v51 = v50;

      if (*(v48 + 16))
      {
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51);
        v54 = v53;

        if (v54)
        {
          v55 = (*(v48 + 56) + 16 * v52);
          v56 = *v55;
          v57 = v55[1];

          v58 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v56, v57, v37, v48);

          if (v58)
          {
            Entity.__interactions.setter(v38);

LABEL_23:

            v41 = v61;
            goto LABEL_24;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      goto LABEL_23;
    }

    v28 = makeEntity(for:)(a1);
LABEL_5:
    v29 = v28;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError()
{
  result = lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError;
  if (!lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError;
  if (!lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityInteractionSpecification?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of __SceneImportOperation.__ImportedScene(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of __SceneImportOperation.ImportedScene(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __SceneImportOperation.ImportedScene(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *specialized static __SceneImportOperation.searchForGravity(in:)(void *a1)
{
  v1 = [a1 childIterator];
  v2 = [v1 nextObject];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = MEMORY[0x1C68F3280](0xD000000000000027, 0x80000001C18F05D0);
        v7 = [v5 property_];

        if (v7)
        {
          break;
        }
      }

      v3 = [v1 nextObject];
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    [v7 float3Value];
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  return v5;
}

void specialized static __SceneImportOperation.importGravity(decodeContext:gravityNode:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (!static __RKScenePhysics.registration)
  {
    return;
  }

  v8 = *(static __RKScenePhysics.registration + 3);
  v9 = MEMORY[0x1C68F3280](0xD000000000000027, 0x80000001C18F05D0);
  v10 = [a4 property_];

  if (!v10)
  {
    return;
  }

  [v10 float3Value];
  v26 = v11;

  v12 = [a1 path];
  v13 = [v12 stringValue];

  if (!v13)
  {
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_11:

    return;
  }

  v20 = (*(a3 + 56) + 16 * v17);
  v21 = *v20;
  v22 = v20[1];

  v23 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v21, v22, a2, a3);

  if (v23)
  {
    v24 = *(v23 + 16);
    REEntityGetOrAddComponentByClass();
    Object = RECustomComponentGetObject();
    if (Object)
    {
      *Object = v26;
    }
  }
}