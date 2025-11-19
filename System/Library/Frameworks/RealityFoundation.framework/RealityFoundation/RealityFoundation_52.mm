unint64_t Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  result = specialized StrideThroughIterator.next()();
  if ((v6 & 1) == 0)
  {
    v22 = a1 + 32;
    while (result < v4)
    {
      v8 = (v22 + 24 * result);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      v12 = Entity.ConfigurationCatalog.USDConfigurationReader.getPrimWithVariants(atPathString:)(v9, v10);

      if (v2)
      {
      }

      v13 = 0;
      v14 = *(v11 + 16) - 1;
      v15 = *(v11 + 16) == 1;
      if (v14 > 0)
      {
LABEL_7:
        v16 = v14 - 1;
        goto LABEL_13;
      }

      while (1)
      {
        v17 = !v15;
        if ((v17 | v13))
        {
          break;
        }

        v16 = 0;
        v13 = 1;
LABEL_13:
        if (v14 >= *(v11 + 16))
        {
          __break(1u);
        }

        v18 = (v11 + 32 + 32 * v14);
        v19 = *v18;
        v20 = v18[1];
        String.utf8CString.getter();
        v21 = RIOPxrUsdPrimCopyVariantSet();

        RIOPxrUsdVariantSetClearVariantSelection();

        v14 = v16;
        v15 = v16 == 0;
        if (v16 > 0)
        {
          goto LABEL_7;
        }
      }

      result = specialized StrideThroughIterator.next()();
      if (v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized StrideThroughIterator.next()()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

void *Entity.ConfigurationCatalog.USDConfigurationReader.getPrimWithVariants(atPathString:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 128);
  v7 = RIOImportSessionGetStage();
  if (v7)
  {
    v8 = v7;
    String.utf8CString.getter();
    v9 = RIOPxrSdfPathCreateFromCString();

    if (RIOPxrUsdStageHasPrimAtPrimPath())
    {
      v10 = RIOPxrTfTokenEmpty();
      PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

      if (RIOPxrUsdPrimHasVariantSets())
      {
      }

      else
      {
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v12 = a1;
        v12[1] = a2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      PrimIfNeeded = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
      swift_allocError();
      *v11 = a1;
      v11[1] = a2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return PrimIfNeeded;
}

uint64_t closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - v8;
  v10 = *(a2 + 128);
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_80_0;
  v13 = _Block_copy(aBlock);

  RIOImportSessionSetSceneUpdatePassCompletion();
  _Block_release(v13);
  return RIOImportSessionUpdate();
}

uint64_t closure #1 in closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:)(uint64_t a1)
{
  v1 = *(a1 + 128);
  RIOImportSessionSetSceneUpdatePassCompletion();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:), v2, 0);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[7] = *(v0[4] + 128);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v4;
  v0[9] = v3;

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:), v4, v3);
}

{
  v1 = v0[7];
  v2 = RIOImportSessionGetStage();
  v0[10] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[2];
    v5 = v0[3];
    String.utf8CString.getter();
    v6 = RIOPxrSdfPathCreateFromCString();
    v0[11] = v6;

    if (RIOPxrUsdStageHasPrimAtPrimPath())
    {
      v7 = v0[8];
      v8 = v0[9];

      return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:), v7, v8);
    }

    v10 = v0[6];
    v12 = v0[2];
    v11 = v0[3];

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    *v13 = v12;
    v13[1] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v9 = v0[6];

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v14 = v0[1];

  return v14();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
  if (EntityAtPrimPath)
  {
    v5 = EntityAtPrimPath;
    if (REEntityGetSwiftObject())
    {
      v6 = *(v0 + 80);

      type metadata accessor for Entity();
      v7 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v15 = specialized static Entity.entityInfoType(_:)();
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      if (v15)
      {
        v18 = (*(v15 + 232))();
        v19 = *(v18 + 16);

        MEMORY[0x1C68F9740](v19, 0);
        *(v18 + 16) = v5;
        MEMORY[0x1C68F9740](v5, v18);
      }

      else
      {
        v18 = makeEntity(for:)(v5);
      }

      v7 = v18;
    }

    v20 = *(v0 + 8);

    return v20(v7);
  }

  else
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    *v12 = v11;
    v12[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

void closure #1 in static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  String.utf8CString.getter();
  v5 = RIOPxrUsdVariantSetsCopyVariantSet();

  if (RIOPxrUsdVariantSetHasAuthoredVariantSelection())
  {
    v6 = RIOPxrUsdVariantSetCopyVariantSelection();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (RIOPxrUsdVariantSetCopyVariantNames())
    {
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v7 = 0;
      static Array._forceBridgeFromObjectiveC(_:result:)();
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    *a2 = 0;
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = aBlock - v7;
  v9 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v7, a1, v3, v6);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  (*(v4 + 32))(v11 + v10, v8, v3);
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:);
  *(v12 + 24) = v11;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_41;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  if (*(a1 + 32) == 1)
  {
    (*(v5 + 16))(v9, a2, v4, v7);
    v10 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
      *(a1 + 16) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
    *(a1 + 16) = v10;
  }

  else
  {
    result = CheckedContinuation.resume(returning:)();
    *(a1 + 32) = 1;
  }

  return result;
}

void closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - v5;
  if (*(*(a1 + 16) + 16))
  {
    specialized Array.remove(at:)(0, &v7 - v5);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.init()()
{
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v17[2] = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v17[1] = type metadata accessor for OS_dispatch_queue();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1C68F3410](0xD000000000000036, 0x80000001C18ED0D0);
  UUID.init()();
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v15);

  (*(v11 + 8))(v14, v10);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8098], v5);
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  swift_unknownObjectRelease();
  outlined destroy of BodyTrackingComponent?(v0 + 144, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v3 = *(v0 + 256);

  v4 = *(v0 + 264);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.getDefaultSourcePath() in conformance Entity.ConfigurationCatalog.USDConfigurationReader()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.loadEntity(into:withConfigurations:loadOptions:) in conformance Entity.ConfigurationCatalog.USDConfigurationReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(a1, a2, a3);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.enqueueStart(continuation:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AudioFileResource.load(named:in:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, char *a5, unsigned __int8 a6)
{
  v6 = *a4;
  v7 = *a5;
  v17 = 1;
  LOBYTE(v14) = v7;
  *(&v14 + 1) = a6;
  *(&v14 + 1) = 0;
  LOBYTE(v15) = -1;
  *(&v15 + 1) = 0;
  v16[0] = -1;
  memset(&v16[8], 0, 20);
  v16[28] = 1;
  v13 = v6;
  static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(a1, a2, a3, &v14, &v13);
  v9 = v8;
  v11[0] = v14;
  v11[1] = v15;
  v12[0] = *v16;
  *(v12 + 13) = *&v16[13];
  outlined destroy of AudioFileResource.Configuration(v11);
  return v9;
}

uint64_t static AudioFileResource.load(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5, int a6)
{
  LODWORD(v36) = a6;
  v35 = type metadata accessor for URL();
  v34 = *(v35 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchPredicate();
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a4;
  LOBYTE(v16) = *a5;
  v19 = a1;
  v42 = 1;
  LOBYTE(v43) = v16;
  *(&v43 + 1) = v36;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = -1;
  *(&v44 + 1) = 0;
  v45[0] = -1;
  memset(&v45[8], 0, 20);
  v45[28] = 1;
  v39 = v43;
  v40 = v44;
  v41[0] = *v45;
  *(v41 + 13) = *&v45[13];
  v37[0] = v18;
  v20 = v46;
  v21 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(a1, a2, a3, &v39, v37);
  if (v20)
  {
    outlined destroy of AudioFileResource.Configuration(&v43);
    return a3;
  }

  v22 = v21;
  v32 = v18;
  v36 = v13;
  v23 = a3;
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    v23 = v24;
  }

  v46 = a2;

  v25 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v26 = *(v25 + 24);
  swift_unownedRetainStrong();
  v27 = *(v26 + 32);

  *v17 = v27;
  v28 = v33;
  (*(v33 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v17, v14);
  if (v26)
  {
    v30 = v36;
    (*(v34 + 16))(v36, v19, v35);
    v39 = v43;
    v40 = v44;
    v41[0] = *v45;
    *(v41 + 13) = *&v45[13];
    v38 = v32;
    type metadata accessor for AudioFileResource();
    swift_allocObject();
    outlined init with copy of AudioFileResource.Configuration(&v43, v37);
    a3 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v22, v30, v46, v23, &v39, &v38);
    RERelease();
    outlined destroy of AudioFileResource.Configuration(&v43);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t static AudioFileResource.loadAsync(named:in:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, void *a3, char *a4, char *a5, unsigned __int8 a6)
{
  v6 = *a4;
  v7 = *a5;
  v17 = 1;
  LOBYTE(v14) = v7;
  *(&v14 + 1) = a6;
  *(&v14 + 1) = 0;
  LOBYTE(v15) = -1;
  *(&v15 + 1) = 0;
  v16[0] = -1;
  memset(&v16[8], 0, 20);
  v16[28] = 1;
  v13 = v6;
  v8 = static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:)(a1, a2, a3, &v14);
  v11[0] = v14;
  v11[1] = v15;
  v12[0] = *v16;
  *(v12 + 13) = *&v16[13];
  v9 = v8;
  outlined destroy of AudioFileResource.Configuration(v11);
  return v9;
}

uint64_t static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int128 *a4)
{
  v98 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v79 - v10;
  v88 = type metadata accessor for URL();
  v12 = *(v88 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v79 - v15;
  v16 = a4[1];
  v95 = *a4;
  v96 = v16;
  *v97 = a4[2];
  *&v97[13] = *(a4 + 45);
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v85 = a3;
  v18 = v98;
  static AudioFileResource.url(forAssetNamed:in:)(a1, v98, v17, v11);

  v19 = v88;
  if ((*(v12 + 48))(v11, 1, v88) == 1)
  {
    outlined destroy of URL?(v11);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v18;
    v20[4] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMd, &_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMR);
    v21 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v22 + 16) = v23;
    *(v22 + 24) = 0;
    *(v22 + 32) = -1;
    *(v21 + 16) = v22;
    v24 = swift_allocObject();
    v24[2] = partial apply for closure #1 in static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:);
    v24[3] = v20;
    v24[4] = v22;
    v24[5] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMR);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = v85;

    v29 = Future.init(_:)();
    result = v21;
    *(v21 + 24) = v29;
    return result;
  }

  v85 = v4;
  v31 = *(v12 + 32);
  v82 = v12 + 32;
  v81 = v31;
  v31(v86, v11, v19);
  v32 = URL.pathExtension.getter();
  v34 = v33;
  v84 = a1;
  v35 = MEMORY[0x1C68F3280](a1, v18);
  v36 = [v35 pathExtension];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (v32 == v37 && v34 == v39)
  {

LABEL_10:
    v41 = v98;

    v42 = v84;
    goto LABEL_12;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_10;
  }

  *&v92 = v84;
  *(&v92 + 1) = v98;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v43 = *(&v92 + 1);
  v44 = v92;
  v45 = URL.pathExtension.getter();
  v47 = v46;
  v92 = __PAIR128__(v43, v44);

  MEMORY[0x1C68F3410](v45, v47);

  v41 = *(&v92 + 1);
  v42 = v92;
LABEL_12:
  v48 = v12;
  v92 = v95;
  v93 = v96;
  v94[0] = *v97;
  *(v94 + 13) = *&v97[13];
  LOBYTE(v89[0]) = 1;
  v49 = v85;
  v50 = static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(a3, v42, v41, &v92, v89);
  if (v49)
  {
    (*(v12 + 8))(v86, v88);
  }

  else
  {
    v85 = 0;
    v87 = v50;

    v51 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v51 + 120, &v92);
    outlined init with copy of __REAssetService(v51 + 120, v89);
    v52 = v90;
    v53 = v91;
    __swift_project_boxed_opaque_existential_1(v89, v90);
    v54 = *(v53 + 56);
    v80 = v51;

    LOBYTE(v52) = v54(v52, v53);
    v55 = *(&v93 + 1);
    v56 = *&v94[0];
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    (*(v56 + 32))(v55, v56);
    AssetRequest = REAssetManagerCreateAssetRequest();
    type metadata accessor for __AssetLoadRequest();
    v58 = swift_allocObject();
    *(v58 + 16) = AssetRequest;
    if (v52)
    {
      REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    }

    v59 = swift_allocObject();
    v79 = v59;
    __swift_destroy_boxed_opaque_existential_1(&v92);
    __swift_destroy_boxed_opaque_existential_1(v89);
    *(v59 + 16) = v58;
    v60 = v83;
    v61 = v88;
    (*(v48 + 16))(v83, v86, v88);
    v62 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v63 = (v13 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = v48;
    v65 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 69) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = v87;
    v81(v67 + v62, v60, v61);
    v68 = (v67 + v63);
    v69 = v98;
    *v68 = v84;
    v68[1] = v69;
    v70 = v67 + v65;
    *(v70 + 45) = *&v97[13];
    v71 = *v97;
    *(v70 + 16) = v96;
    *(v70 + 32) = v71;
    *v70 = v95;
    *(v70 + 61) = 1;
    *(v67 + v66) = v80;
    *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMd, &_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMR);
    v72 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMR);
    v73 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v73 + 16) = v74;
    *(v73 + 24) = 0;
    *(v73 + 32) = -1;
    *(v72 + 16) = v73;
    v75 = swift_allocObject();
    v75[2] = partial apply for closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
    v75[3] = v67;
    v75[4] = v73;
    v75[5] = 0;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMR);
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();

    outlined init with copy of AudioFileResource.Configuration(&v95, &v92);

    *(v72 + 24) = Future.init(_:)();
    RERelease();
    (*(v64 + 8))(v86, v88);
    return v72;
  }
}

uint64_t static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5, int a6)
{
  v35 = a2;
  v37 = a6;
  v36 = a3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v33) = *a4;
  v13 = *a5;
  v14 = specialized static __ServiceLocator.shared.getter();
  v15 = *(v14 + 168);
  v38 = v14;
  v16 = *(v15 + 16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v14;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v9);
  v21 = v19 + v18;
  v22 = v36;
  *v21 = v35;
  *(v21 + 8) = v22;
  *(v21 + 16) = v13;
  *(v21 + 17) = v37;
  *(v21 + 18) = BYTE4(v33);
  v23 = v16;
  *(v19 + ((v18 + 26) & 0xFFFFFFFFFFFFFFF8)) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMd, &_s10RealityKit11LoadRequestCyAA17AudioFileResourceCGMR);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17AudioFileResourceCs5Error_pGSgGMR);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v25 + 16) = v26;
  *(v25 + 24) = 0;
  *(v25 + 32) = -1;
  *(v24 + 16) = v25;
  v27 = swift_allocObject();
  v27[2] = partial apply for closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
  v27[3] = v19;
  v27[4] = v25;
  v27[5] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17AudioFileResourceCs5Error_pGMR);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = v23;
  *(v24 + 24) = Future.init(_:)();
  return v24;
}

uint64_t closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unsigned __int8 a9, unsigned __int8 a10, void *a11)
{
  v73 = a6;
  v74 = a7;
  v71 = a5;
  LODWORD(v69) = a9;
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v62 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v70 = v21;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, v87);
  outlined init with copy of __REAssetService(a3 + 120, v84);
  v22 = v85;
  v23 = v86;
  __swift_project_boxed_opaque_existential_1(v84, v85);
  v24 = *(v23 + 56);

  LOBYTE(v22) = v24(v22, v23);
  v25 = v88;
  v26 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  (*(v26 + 32))(v25, v26);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v28 = swift_allocObject();
  *(v28 + 16) = AssetRequest;
  if (v22)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  v72 = a11;
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v84);
  v83 = 1;
  v29 = a8 & 1;
  v30 = v69 & 1;
  LOBYTE(v80) = a8 & 1;
  *(&v80 + 1) = v30;
  *(&v80 + 1) = 0;
  LOBYTE(v81) = -1;
  *(&v81 + 1) = 0;
  LOBYTE(v82[0]) = -1;
  *(&v82[0] + 1) = 0;
  *&v82[1] = 0;
  DWORD2(v82[1]) = 0;
  BYTE12(v82[1]) = 1;
  v79 = a10;
  v31 = v71;
  v32 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(v71, v73, v74, &v80, &v79);
  v77[0] = v80;
  v77[1] = v81;
  v78[0] = v82[0];
  *(v78 + 13) = *(v82 + 13);
  v69 = v32;
  outlined destroy of AudioFileResource.Configuration(v77);
  LODWORD(v67) = v30;
  v33 = v60;
  v34 = *(v60 + 16);
  LODWORD(v66) = v29;
  v35 = v61;
  v34(v68, v31, v61);
  v36 = *(v33 + 80);
  LODWORD(v65) = a10;
  v37 = (v36 + 24) & ~v36;
  v38 = v37 + v20;
  v39 = (v38 + 10) & 0xFFFFFFFFFFFFFFF8;
  v71 = v28;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 16) = v69;
  (*(v33 + 32))(v42 + v37, v43, v35);
  v44 = (v42 + v38);
  *v44 = v65;
  v44[1] = v66;
  v44[2] = v67;
  v45 = v72;
  *(v42 + v39) = v72;
  v46 = (v42 + v40);
  v47 = v70;
  v48 = v71;
  *v46 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v46[1] = v47;
  v49 = (v42 + v41);
  v50 = v74;
  *v49 = v73;
  v49[1] = v50;
  *(v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v76[4] = partial apply for specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
  v76[5] = v42;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 1107296256;
  v76[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v76[3] = &block_descriptor_22_1;
  v51 = _Block_copy(v76);
  v52 = _Block_copy(v51);
  v53 = *(v48 + 16);
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v75[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v75[5] = v54;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 1107296256;
  v75[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v75[3] = &block_descriptor_28_2;
  v55 = _Block_copy(v75);

  v56 = v45;

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v55);
  _Block_release(v51);

  v57 = *(v48 + 16);
  REAssetLoadRequestAddAsset();
}

void specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a8;
  v52 = a7;
  v56 = a12;
  v51 = a9;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v53 = *(v54 - 8);
  v22 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v65 = a5 & 1;
    (*(v27 + 16))(v30, a3, v28);
    LOBYTE(aBlock) = v65;
    *(&aBlock + 1) = a6 & 1;
    *(&aBlock + 3) = *&v67[7];
    BYTE7(aBlock) = v67[11];
    *(&aBlock + 1) = 0;
    LOBYTE(v58) = -1;
    *(&v58 + 1) = *v67;
    HIDWORD(v58) = *&v67[3];
    v59 = 0;
    LOBYTE(v60) = -1;
    *(&v60 + 1) = *v66;
    HIDWORD(v60) = *&v66[3];
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 1;
    LOBYTE(v68[0]) = a4;
    type metadata accessor for AudioFileResource();
    swift_allocObject();
    v33 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(a2, v30, 0, 0, &aBlock, v68);
    v34 = swift_allocObject();
    v35 = v51;
    v34[2] = v50;
    v34[3] = v35;
    v34[4] = v33;
    v60 = partial apply for closure #1 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    v61 = v34;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v59 = &block_descriptor_56_2;
    v36 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v68[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v24, v21, v36);
    _Block_release(v36);
  }

  else
  {
    if (a11)
    {
      v32 = a11;
    }

    else
    {
      a10 = URL.lastPathComponent.getter();
      v32 = v37;
    }

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = swift_allocObject();
    v43 = v51;
    v42[2] = v50;
    v42[3] = v43;
    v42[4] = a10;
    v42[5] = v32;
    v42[6] = v39;
    v42[7] = v41;
    v60 = partial apply for closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    v61 = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v59 = &block_descriptor_34_1;
    v44 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v68[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v24, v21, v44);
    _Block_release(v44);
  }

  (*(v55 + 8))(v21, v18);
  (*(v53 + 8))(v24, v54);

  RERelease();
  v60 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v61 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v58 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v59 = &block_descriptor_37;
  v45 = _Block_copy(&aBlock);
  v46 = _Block_copy(v45);
  v47 = *(v56 + 16);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  v68[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v68[5] = v48;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 1107296256;
  v68[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v68[3] = &block_descriptor_44_0;
  v49 = _Block_copy(v68);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v49);
  _Block_release(v45);
}

void closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  MEMORY[0x1C68F3410](a5, a6);

  lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
  v9 = swift_allocError();
  *v10 = a3;
  v10[1] = a4;
  a1(v9, 1);
}

uint64_t closure #1 in static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZ0A3Kit05AudiohD0C_APTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxV38_0B03URLVtKcfu_0A3Kit05AudiogD0C_Tt2G5Tf1nnc_n(a3, a4, a5);
  v8 = v6;
  v9 = 0;

  a1(&v8);
}

uint64_t closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v44 = a8;
  v46 = a7;
  v42 = a6;
  v41 = a5;
  v47 = a3;
  v45 = a2;
  v43 = a9;
  v13 = type metadata accessor for URL();
  v38 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v39 = a10;
  swift_beginAccess();
  v40 = *(a10 + 16);
  (*(v14 + 16))(v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 69) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v47;
  (*(v14 + 32))(v23 + v18, v16, v38);
  v24 = (v23 + v19);
  v25 = v42;
  *v24 = v41;
  v24[1] = v25;
  v26 = v23 + v20;
  v27 = v46;
  *(v26 + 45) = *(v46 + 45);
  v28 = v27[2];
  *(v26 + 16) = v27[1];
  *(v26 + 32) = v28;
  *v26 = *v27;
  *(v26 + 61) = v44;
  *(v23 + v21) = v43;
  v29 = (v23 + v22);
  *v29 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v29[1] = v17;
  v30 = v39;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
  aBlock[4] = partial apply for finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_83_1;
  v31 = _Block_copy(aBlock);
  v32 = _Block_copy(v31);
  v33 = *(v40 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v49[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v49[5] = v34;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 1107296256;
  v49[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v49[3] = &block_descriptor_90_0;
  v35 = _Block_copy(v49);

  outlined init with copy of AudioFileResource.Configuration(v46, v48);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v35);

  _Block_release(v31);

  swift_beginAccess();
  v36 = *(*(v30 + 16) + 16);
  return REAssetLoadRequestAddAsset();
}

void finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a7;
  v62 = a5;
  v61 = a4;
  v64 = a2;
  v71 = a11;
  v65 = a10;
  v63 = a9;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v67 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for DispatchQoS();
  v68 = *(v69 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v59[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v59[-v25];
  if (a1)
  {
    v28 = v63;
    v29 = v65;
    (*(v21 + 16))(&v59[-v25], a3, v20, v26);
    v30 = a6[1];
    aBlock = *a6;
    v74 = v30;
    v75[0] = a6[2];
    *(v75 + 13) = *(a6 + 45);
    v76[0] = v60;
    type metadata accessor for AudioFileResource();
    swift_allocObject();
    outlined init with copy of AudioFileResource.Configuration(a6, v72);
    v31 = v62;

    v45 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v64, v27, v61, v31, &aBlock, v76);
    swift_beginAccess();
    v46 = *(a8 + 24);
    swift_unownedRetainStrong();
    v47 = *(v46 + 32);

    v48 = swift_allocObject();
    v48[2] = v28;
    v48[3] = v29;
    v48[4] = v45;
    *&v75[0] = partial apply for closure #1 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
    *(&v75[0] + 1) = v48;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v74 + 1) = &block_descriptor_118_0;
    v49 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v72[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v50 = v66;
    v51 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v19, v50, v49);
    _Block_release(v49);

    (*(v70 + 8))(v50, v51);
  }

  else
  {
    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    swift_beginAccess();
    v35 = *(a8 + 24);
    swift_unownedRetainStrong();
    v36 = *(v35 + 32);

    (*(v21 + 16))(v23, a3, v20);
    v37 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v38 = (v22 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v40 = v65;
    *(v39 + 16) = v63;
    *(v39 + 24) = v40;
    (*(v21 + 32))(v39 + v37, v23, v20);
    v41 = (v39 + v38);
    *v41 = v64;
    v41[1] = v34;
    *&v75[0] = partial apply for closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
    *(&v75[0] + 1) = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v74 + 1) = &block_descriptor_96;
    v42 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v72[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v43 = v66;
    v44 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v19, v43, v42);
    _Block_release(v42);

    (*(v70 + 8))(v43, v44);
  }

  (*(v68 + 8))(v19, v69);

  v52 = v71;
  swift_beginAccess();
  v53 = *(v52 + 16);
  *&v75[0] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  *(&v75[0] + 1) = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  *(&v74 + 1) = &block_descriptor_99_1;
  v54 = _Block_copy(&aBlock);
  v55 = _Block_copy(v54);
  v56 = *(v53 + 16);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  v72[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v72[5] = v57;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 1107296256;
  v72[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v72[3] = &block_descriptor_106;
  v58 = _Block_copy(v72);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v58);

  _Block_release(v54);
}

void closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = URL.path.getter();
  v12 = v8;

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  MEMORY[0x1C68F3410](a4, a5);

  lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
  v9 = swift_allocError();
  *v10 = v11;
  v10[1] = v12;
  a1(v9, 1);
}

uint64_t partial apply for closure #1 in static AudioFileResource.loadAsync(named:in:inputMode:loadingStrategy:shouldLoop:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 1;
  return a1(&v3);
}

uint64_t partial apply for closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v7 + 16), *(v2 + v7 + 17), *(v2 + v7 + 18), *(v2 + ((v7 + 26) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 10) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 1), *(v1 + v5 + 2), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + v8, *(v2 + v8 + 61), *(v2 + ((v8 + 69) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 69) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 69) & 0xFFFFFFFFFFFFFFF8;
  finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), (v1 + v6), *(v1 + v6 + 61), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_15Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

__n128 ClippingPrimitiveComponent.bounds.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  return result;
}

double ClippingPrimitiveComponent.Feather.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__n128 ClippingPrimitiveComponent.feather.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 ClippingPrimitiveComponent.feather.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

double ClippingPrimitiveComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C189A7F0;
  *(a1 + 16) = xmmword_1C189A800;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 256;
  return result;
}

__n128 static ClippingPrimitiveComponent.__fromCore(_:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REClippingPrimitiveComponentGetLocalBounds();
  v14 = v5;
  v15 = v4;
  FeatherUseCubicFalloff = REClippingPrimitiveComponentGetFeatherUseCubicFalloff();
  REClippingPrimitiveComponentGetFeatherIntervalFractionPerPositiveEdge();
  v13 = v7;
  REClippingPrimitiveComponentGetFeatherIntervalFractionPerNegativeEdge();
  v12 = v8;
  ShouldClipChildren = REClippingPrimitiveComponentGetShouldClipChildren();
  ShouldClipSelf = REClippingPrimitiveComponentGetShouldClipSelf();
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = FeatherUseCubicFalloff;
  result = v12;
  *(a2 + 48) = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = ShouldClipChildren;
  *(a2 + 81) = ShouldClipSelf;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ClippingPrimitiveComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v9 = v1[4];
  v10 = v1[3];
  v4 = *(v1 + 80);
  v5 = *(v1 + 81);
  v6 = *v1;
  v7 = v1[1];
  REClippingPrimitiveComponentClipToBox();
  REClippingPrimitiveComponentSetFeatherUseCubicFalloff();
  REClippingPrimitiveComponentSetFeatherIntervalFractionPerEdge();
  REClippingPrimitiveComponentSetShouldClipChildren();
  REClippingPrimitiveComponentSetShouldClipSelf();

  return RENetworkMarkComponentDirty();
}

uint64_t ClippingPrimitiveComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v9 = v1[4];
  v10 = v1[3];
  v4 = *(v1 + 80);
  v5 = *(v1 + 81);
  v6 = *v1;
  v7 = v1[1];
  REClippingPrimitiveComponentClipToBox();
  REClippingPrimitiveComponentSetFeatherUseCubicFalloff();
  REClippingPrimitiveComponentSetFeatherIntervalFractionPerEdge();
  REClippingPrimitiveComponentSetShouldClipChildren();
  REClippingPrimitiveComponentSetShouldClipSelf();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized static ClippingPrimitiveComponent.Feather.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  if (a1->u8[0] == a2->u8[0])
  {
    v3 = a1[1];
    v4 = a2[1];
    if ((vmovn_s32(vmvnq_s8(vceqq_f32(v3, v4))).u8[0] & 1) == 0)
    {
      v5 = a1[2];
      v6 = a2[2];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v5, 8uLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v6, 8uLL)))) & 1) == 0)
      {
        return 0;
      }

      v2 = vmovn_s32(vceqq_f32(v5, v6)).i8[4];
    }
  }

  return v2 & 1;
}

uint64_t specialized static ClippingPrimitiveComponent.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[2].u8[0];
  v13 = a1[3];
  v3 = a1[5].i8[0];
  v4 = a1[5].u8[1];
  v5 = a2[2].u8[0];
  v11 = a1[4];
  v12 = a2[3];
  v10 = a2[4];
  v6 = a2[5].i8[0];
  v7 = a2[5].u8[1];
  v8 = specialized static BoundingBox.== infix(_:_:)(*a1, a1[1], *a2, a2[1]);
  result = 0;
  if ((v8 & 1) != 0 && ((v2 ^ v5) & 1) == 0 && (vmovn_s32(vmvnq_s8(vceqq_f32(v13, v12))).u8[0] & 1) == 0)
  {
    if (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v13, v13, 0xCuLL), v11, 8uLL), vextq_s8(vextq_s8(v12, v12, 0xCuLL), v10, 8uLL)))) & 1) == 0 || (vmovn_s32(vmvnq_s8(vceqq_f32(v11, v10))).i32[1])
    {
      return 0;
    }

    else if ((v3 ^ v6))
    {
      return 0;
    }

    else
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy82_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClippingPrimitiveComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ClippingPrimitiveComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClippingPrimitiveComponent.Feather(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ClippingPrimitiveComponent.Feather(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff()
{
  result = lazy protocol witness table cache variable for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff;
  if (!lazy protocol witness table cache variable for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff);
  }

  return result;
}

CGColorRef HasSpotLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v15);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA09SpotLightD0V_Tt0B5(v15, &v9);

  result = v9;
  if (v9)
  {
    v4 = v14;
    v6 = v12;
    v5 = v13;
    v8 = v10;
    v7 = v11;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v4 = 2.0;
    v5 = 1092616192;
    v6 = 1114636288;
    v7 = 1110704128;
    v8 = 1171433349;
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  *(a1 + 16) = v6;
  *(a1 + 20) = v5;
  *(a1 + 24) = v4;
  return result;
}

float key path getter for HasSpotLight.light : <A>A@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasSpotLight.light.getter(&v5);
  result = v7;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = result;
  return result;
}

uint64_t key path setter for HasSpotLight.light : <A>A(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v2;
  v4 = v6;
  return HasSpotLight.light.setter(&v6);
}

uint64_t HasSpotLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA09SpotLightD0V_Tt0B5(v2, v3, v4, v5);
  return v6(v8, 0);
}

void (*HasSpotLight.light.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  HasSpotLight.light.getter(v3 + 32);
  return HasSpotLight.light.modify;
}

void HasSpotLight.light.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = *(*a1 + 14);
  v7 = *(*(*a1)[8] + 112);
  if (a2)
  {
    v8 = v3;
    v9 = v7(v2);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA09SpotLightD0V_Tt0B5(v3, v4, v5, v6);
    v9(v2, 0);
  }

  else
  {
    v10 = v7(*a1);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA09SpotLightD0V_Tt0B5(v3, v4, v5, v6);
    v10(v2, 0);
  }

  free(v2);
}

uint64_t HasSpotLight.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v23);
  v3 = *(v23 + 16);
  Component = REEntityGetComponent();
  if (Component)
  {
    v22 = Component;
    static SpotLightComponent.Shadow.__fromCore(_:)(&v22, &v16);
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;

    v12 = v5 | (v6 << 32);
    v13 = 0x100000000;
    if (v8)
    {
      v14 = 0x100000000;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | v7;
    if (!v10)
    {
      v13 = 0;
    }
  }

  else
  {

    v9 = 0;
    v13 = 0x100000000;
    v12 = 0x33F800000;
    v15 = 0x100000000;
  }

  *a1 = v12;
  *(a1 + 8) = v15;
  *(a1 + 20) = BYTE4(v13);
  *(a1 + 16) = v13 | v9;
  return result;
}

uint64_t HasSpotLight.shadow.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | (*(a1 + 20) << 32);
  v5 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09SpotLightD0V6ShadowV_TtB5Tf4ndn_n(v2, v3, v4, *v6);
  return v5(v8, 0);
}

void (*HasSpotLight.shadow.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  HasSpotLight.shadow.getter((v7 + 3));
  return HasSpotLight.shadow.modify;
}

void HasSpotLight.shadow.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40) | (*(*a1 + 44) << 32);
  v4 = *(*a1 + 16);
  v5[0] = *(*a1 + 24);
  v5[1] = v2;
  v6 = v3;
  v7 = BYTE4(v3);
  HasSpotLight.shadow.setter(v5);

  free(v1);
}

void __swiftcall USDImportedScene.init(name:assetName:active:)(RealityFoundation::USDImportedScene *__return_ptr retstr, Swift::String name, Swift::String assetName, Swift::Bool active)
{
  retstr->name = name;
  retstr->assetName = assetName;
  retstr->active = active;
}

uint64_t getEnumTagSinglePayload for USDImportedScene(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for USDImportedScene(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*VideoPlayerComponent.desiredViewingMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return VideoPlayerComponent.desiredViewingMode.modify;
}

Swift::Int VideoPlayerComponent.RenderingStatus.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

_BYTE *(*VideoPlayerComponent.isPassthroughTintingEnabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return VideoPlayerComponent.isPassthroughTintingEnabled.modify;
}

_BYTE *(*VideoPlayerComponent.isMediaTintingEnabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 25);
  return VideoPlayerComponent.isMediaTintingEnabled.modify;
}

void VideoPlayerComponent.maxGlowIntensity.setter(float a1)
{
  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  *(v1 + 28) = a1;
}

float *(*VideoPlayerComponent.maxGlowIntensity.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 28);
  return VideoPlayerComponent.maxGlowIntensity.modify;
}

float *VideoPlayerComponent.maxGlowIntensity.modify(float *result)
{
  v1 = result[2];
  if (v1 <= 0.0)
  {
    v1 = 0.0;
  }

  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  *(*result + 28) = v1;
  return result;
}

Swift::Void __swiftcall VideoPlayerComponent.startVideoBlurFadeIn(targetAspectRatio:fadeTime:)(Swift::Float targetAspectRatio, Swift::Float fadeTime)
{
  *(v2 + 32) = 1;
  *(v2 + 36) = targetAspectRatio;
  *(v2 + 40) = fadeTime;
}

id VideoPlayerComponent.avPlayer.getter()
{
  v1 = *(*(v0 + 72) + 16);
  AVPlayer = REVideoAssetGetAVPlayer();

  return AVPlayer;
}

void VideoPlayerComponent.init(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of VideoPlayerComponent.init(with:));
  v5 = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #1 of VideoPlayerComponent.init(with:));
  v7 = v6;
  LODWORD(v45) = getpid();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_73:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  v45 = v8;
  v46 = v10;

  MEMORY[0x1C68F3410](v11, v13);

  v14 = HIBYTE(v10) & 0xF;
  v15 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v46) & 0xF;
  }

  else
  {
    v16 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_73;
  }

  if ((v46 & 0x1000000000000000) != 0)
  {
    v20 = specialized _parseInteger<A, B>(ascii:radix:)(v45, v46, 10);
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v46 & 0x2000000000000000) != 0)
  {
    v46 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v45 == 43)
    {
      if (!v14)
      {
LABEL_80:
        __break(1u);
        return;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v29 = &v45 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = __CFADD__(10 * v20, v30);
          v20 = 10 * v20 + v30;
          if (v23)
          {
            break;
          }

          ++v29;
          if (!--v17)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v45 == 45)
    {
      if (!v14)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v45 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = 10 * v20 >= v25;
          v20 = 10 * v20 - v25;
          if (!v23)
          {
            break;
          }

          ++v24;
          if (!--v17)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v14)
    {
      v20 = 0;
      v32 = &v45;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v23 = __CFADD__(10 * v20, v33);
        v20 = 10 * v20 + v33;
        if (v23)
        {
          break;
        }

        v32 = (v32 + 1);
        if (!--v14)
        {
LABEL_65:
          LOBYTE(v17) = 0;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    if ((v45 & 0x1000000000000000) != 0)
    {
      v17 = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v17 = _StringObject.sharedUTF8.getter();
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v15 >= 1)
      {
        v26 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_67;
          }

          v27 = v17 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = __CFADD__(10 * v20, v28);
            v20 = 10 * v20 + v28;
            if (v23)
            {
              break;
            }

            ++v27;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v18 == 45)
    {
      if (v15 >= 1)
      {
        v19 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_67;
          }

          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = 10 * v20 >= v22;
            v20 = 10 * v20 - v22;
            if (!v23)
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v15)
    {
      v20 = 0;
      if (!v17)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v31 = *v17 - 48;
        if (v31 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v23 = __CFADD__(10 * v20, v31);
        v20 = 10 * v20 + v31;
        if (v23)
        {
          break;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  v20 = 0;
  LOBYTE(v17) = 1;
LABEL_67:
  v34 = v17;

  if (v34)
  {
LABEL_68:
    v20 = arc4random();
  }

LABEL_69:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of VideoPlayerComponent.init(with:));
  v44 = v35;
  type metadata accessor for __VideoResource();
  v36 = swift_allocObject();
  *(v36 + 24) = MEMORY[0x1E69E7CC0];
  v37 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v37 + 120, &v45);
  v38 = v47;
  v39 = v48;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  v40 = *(v39 + 32);

  v40(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  *(v36 + 16) = REAssetManagerVideoMemoryAssetCreateWithoutTarget();
  REAssetSetSwiftObject();

  type metadata accessor for VideoPlayerController();
  v41 = swift_allocObject();
  *(v41 + 16) = v20;
  if (one-time initialization token for sVPCNetworkSystemObserver != -1)
  {
    swift_once();
  }

  VPCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = 256;
  *(a2 + 28) = 1055286886;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v36;
  *(a2 + 80) = v41;
  *(a2 + 88) = v20;
  *(a2 + 96) = 16843009;
  *(a2 + 100) = 0;
  *(a2 + 112) = v44;
  *(a2 + 128) = -1082130432;
  *(a2 + 132) = 0;
}

uint64_t VideoPlayerComponent.init()@<X0>(uint64_t a1@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of VideoPlayerComponent.init());
  v3 = v2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #1 of VideoPlayerComponent.init());
  v5 = v4;
  LODWORD(v44) = getpid();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_73:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  v44 = v6;
  v45 = v8;

  MEMORY[0x1C68F3410](v9, v11);

  result = v8;
  v13 = HIBYTE(v8) & 0xF;
  v14 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v15 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_73;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {
    v19 = specialized _parseInteger<A, B>(ascii:radix:)(v44, v45, 10);
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v45 & 0x2000000000000000) != 0)
  {
    v45 = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v44 == 43)
    {
      if (!v13)
      {
LABEL_80:
        __break(1u);
        return result;
      }

      v16 = (v13 - 1);
      if (v13 != 1)
      {
        v19 = 0;
        v28 = &v44 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v22 = __CFADD__(10 * v19, v29);
          v19 = 10 * v19 + v29;
          if (v22)
          {
            break;
          }

          ++v28;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v44 == 45)
    {
      if (!v13)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v16 = (v13 - 1);
      if (v13 != 1)
      {
        v19 = 0;
        v23 = &v44 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v22 = 10 * v19 >= v24;
          v19 = 10 * v19 - v24;
          if (!v22)
          {
            break;
          }

          ++v23;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v13)
    {
      v19 = 0;
      v31 = &v44;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v32);
        v19 = 10 * v19 + v32;
        if (v22)
        {
          break;
        }

        v31 = (v31 + 1);
        if (!--v13)
        {
LABEL_65:
          LOBYTE(v16) = 0;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    if ((v44 & 0x1000000000000000) != 0)
    {
      v16 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
      result = v45;
    }

    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v14 != 1)
        {
          v19 = 0;
          if (!v16)
          {
            goto LABEL_67;
          }

          v26 = v16 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v22 = __CFADD__(10 * v19, v27);
            v19 = 10 * v19 + v27;
            if (v22)
            {
              break;
            }

            ++v26;
            if (!--v25)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v17 == 45)
    {
      if (v14 >= 1)
      {
        v18 = v14 - 1;
        if (v14 != 1)
        {
          v19 = 0;
          if (!v16)
          {
            goto LABEL_67;
          }

          v20 = v16 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v22 = 10 * v19 >= v21;
            v19 = 10 * v19 - v21;
            if (!v22)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v14)
    {
      v19 = 0;
      if (!v16)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v30 = *v16 - 48;
        if (v30 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v30);
        v19 = 10 * v19 + v30;
        if (v22)
        {
          break;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  v19 = 0;
  LOBYTE(v16) = 1;
LABEL_67:
  v33 = v16;

  if (v33)
  {
LABEL_68:
    v19 = arc4random();
  }

LABEL_69:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of VideoPlayerComponent.init());
  v43 = v34;
  type metadata accessor for __VideoResource();
  v35 = swift_allocObject();
  *(v35 + 24) = MEMORY[0x1E69E7CC0];
  v36 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v36 + 120, &v44);
  v37 = v46;
  v38 = v47;
  __swift_project_boxed_opaque_existential_1(&v44, v46);
  v39 = *(v38 + 32);

  v39(v37, v38);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  *(v35 + 16) = REAssetManagerVideoMemoryAssetCreateWithoutTarget();
  REAssetSetSwiftObject();

  type metadata accessor for VideoPlayerController();
  v40 = swift_allocObject();
  *(v40 + 16) = v19;
  if (one-time initialization token for sVPCNetworkSystemObserver != -1)
  {
    swift_once();
  }

  VPCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1055286886;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v35;
  *(a1 + 80) = v40;
  *(a1 + 88) = v19;
  *(a1 + 96) = 16843009;
  *(a1 + 100) = 0;
  *(a1 + 112) = v43;
  *(a1 + 128) = -1082130432;
  *(a1 + 132) = 0;
  return result;
}

uint64_t static VideoPlayerComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  VideoAsset = REVideoPlayerComponentGetVideoAsset();
  type metadata accessor for __VideoResource();
  if (VideoAsset)
  {
    v60 = VideoAsset;
    static __VideoResource.__fromCore(_:)(&v60);
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 24) = MEMORY[0x1E69E7CC0];
    type metadata accessor for __ServiceLocator();
    v6 = static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v6 + 120, &v60);
    v7 = v62;
    v8 = v63;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    *(v5 + 16) = REAssetManagerVideoMemoryAssetCreate();
    REAssetSetSwiftObject();
  }

  VideoPlayerComponent.init(videoResource:)(v9, &v52);
  Guid = REVideoPlayerComponentGetGuid();
  *(&v57 + 1) = Guid;
  if (!Guid)
  {
    LODWORD(v60) = getpid();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    if (one-time initialization token for uniqueTokenGenerator != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    OS_dispatch_semaphore.wait()();
    v14 = static VideoPlayerComponent.uniqueTokenGenerator + 1;
    if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
    {
      __break(1u);
    }

    else
    {
      ++static VideoPlayerComponent.uniqueTokenGenerator;
      OS_dispatch_semaphore.signal()();
      swift_endAccess();
      v60 = v14;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v60 = v11;
      v61 = v13;

      MEMORY[0x1C68F3410](v15, v17);

      result = v61;
      v19 = HIBYTE(v61) & 0xF;
      v20 = v60 & 0xFFFFFFFFFFFFLL;
      if ((v61 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v61) & 0xF;
      }

      else
      {
        v21 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        if ((v61 & 0x1000000000000000) != 0)
        {
          Guid = specialized _parseInteger<A, B>(ascii:radix:)(v60, v61, 10);
          v49 = v48;

          if ((v49 & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if ((v61 & 0x2000000000000000) != 0)
        {
          v61 &= 0xFFFFFFFFFFFFFFuLL;
          if (v60 == 43)
          {
            if (!v19)
            {
LABEL_86:
              __break(1u);
              return result;
            }

            v22 = (v19 - 1);
            if (v19 != 1)
            {
              Guid = 0;
              v33 = &v60 + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                if (!is_mul_ok(Guid, 0xAuLL))
                {
                  break;
                }

                v27 = __CFADD__(10 * Guid, v34);
                Guid = 10 * Guid + v34;
                if (v27)
                {
                  break;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_71;
                }
              }
            }
          }

          else if (v60 == 45)
          {
            if (!v19)
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v22 = (v19 - 1);
            if (v19 != 1)
            {
              Guid = 0;
              v28 = &v60 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                if (!is_mul_ok(Guid, 0xAuLL))
                {
                  break;
                }

                v27 = 10 * Guid >= v29;
                Guid = 10 * Guid - v29;
                if (!v27)
                {
                  break;
                }

                ++v28;
                if (!--v22)
                {
                  goto LABEL_71;
                }
              }
            }
          }

          else if (v19)
          {
            Guid = 0;
            v36 = &v60;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              if (!is_mul_ok(Guid, 0xAuLL))
              {
                break;
              }

              v27 = __CFADD__(10 * Guid, v37);
              Guid = 10 * Guid + v37;
              if (v27)
              {
                break;
              }

              v36 = (v36 + 1);
              if (!--v19)
              {
LABEL_69:
                LOBYTE(v22) = 0;
                goto LABEL_71;
              }
            }
          }
        }

        else
        {
          if ((v60 & 0x1000000000000000) != 0)
          {
            v22 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v50 = v61;
            v22 = _StringObject.sharedUTF8.getter();
            result = v50;
          }

          v23 = *v22;
          if (v23 == 43)
          {
            if (v20 >= 1)
            {
              v30 = v20 - 1;
              if (v20 != 1)
              {
                Guid = 0;
                if (!v22)
                {
                  goto LABEL_71;
                }

                v31 = v22 + 1;
                while (1)
                {
                  v32 = *v31 - 48;
                  if (v32 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(Guid, 0xAuLL))
                  {
                    break;
                  }

                  v27 = __CFADD__(10 * Guid, v32);
                  Guid = 10 * Guid + v32;
                  if (v27)
                  {
                    break;
                  }

                  ++v31;
                  if (!--v30)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_70;
            }

            goto LABEL_85;
          }

          if (v23 == 45)
          {
            if (v20 >= 1)
            {
              v24 = v20 - 1;
              if (v20 != 1)
              {
                Guid = 0;
                if (!v22)
                {
                  goto LABEL_71;
                }

                v25 = v22 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(Guid, 0xAuLL))
                  {
                    break;
                  }

                  v27 = 10 * Guid >= v26;
                  Guid = 10 * Guid - v26;
                  if (!v27)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v24)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_70;
            }

            __break(1u);
            goto LABEL_84;
          }

          if (v20)
          {
            Guid = 0;
            if (!v22)
            {
              goto LABEL_71;
            }

            while (1)
            {
              v35 = *v22 - 48;
              if (v35 > 9)
              {
                break;
              }

              if (!is_mul_ok(Guid, 0xAuLL))
              {
                break;
              }

              v27 = __CFADD__(10 * Guid, v35);
              Guid = 10 * Guid + v35;
              if (v27)
              {
                break;
              }

              ++v22;
              if (!--v20)
              {
                goto LABEL_69;
              }
            }
          }
        }

LABEL_70:
        Guid = 0;
        LOBYTE(v22) = 1;
LABEL_71:
        v38 = v22;

        if ((v38 & 1) == 0)
        {
LABEL_73:
          *(&v57 + 1) = Guid;
          goto LABEL_74;
        }

LABEL_72:
        Guid = arc4random();
        goto LABEL_73;
      }
    }

    goto LABEL_72;
  }

LABEL_74:
  type metadata accessor for VideoPlayerController();
  v39 = swift_allocObject();
  *(v39 + 16) = Guid;

  *&v57 = v39;
  LOBYTE(v58) = REVideoPlayerComponentGetEnableReflections();
  BYTE1(v58) = REVideoPlayerComponentGetScreenRoundedCornerEnabled();
  BYTE2(v58) = REVideoPlayerComponentGetScaleRoundedCornerEnabled();
  BYTE3(v58) = REVideoPlayerComponentGetScreenAspectRatioAnimationEnabled();
  BYTE4(v58) = REVideoPlayerComponentGetScreenDeferAspectRatioTransitionToApp();
  REVideoPlayerComponentGetDesiredViewingMode();
  LOBYTE(v52) = 0;
  BYTE5(v58) = REVideoPlayerComponentGetLowLatencyEnabled();
  REComponentGetEntity();
  REVideoPlayerStatusComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REVideoPlayerStatusComponentGetCurrentPlayerScreenSize();
    *(&v52 + 1) = v40;
    REVideoPlayerStatusComponentGetCurrentPlayerScreenVideoDimension();
    *&v53 = v41;
    REVideoPlayerStatusComponentGetSafeZoneRadius();
    *&v59[16] = v42;
    REVideoPlayerStatusComponentGetCurrentSceneSize();
    v51 = v43;

    *v59 = v51;
  }

  else
  {
  }

  v44 = *v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v44;
  *(a2 + 125) = *&v59[13];
  v45 = v55;
  *(a2 + 32) = v54;
  *(a2 + 48) = v45;
  v46 = v57;
  *(a2 + 64) = v56;
  *(a2 + 80) = v46;
  v47 = v53;
  *a2 = v52;
  *(a2 + 16) = v47;
  return result;
}

uint64_t VideoPlayerComponent.init(videoResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of VideoPlayerComponent.init(videoResource:));
  v5 = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #1 of VideoPlayerComponent.init(videoResource:));
  v7 = v6;
  LODWORD(v39) = getpid();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_71:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  v39 = v8;
  v40 = v10;

  MEMORY[0x1C68F3410](v11, v13);

  result = v10;
  v15 = HIBYTE(v10) & 0xF;
  v16 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v17 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_71;
  }

  if ((v40 & 0x1000000000000000) != 0)
  {
    v21 = specialized _parseInteger<A, B>(ascii:radix:)(v39, v40, 10);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v40 & 0x2000000000000000) == 0)
  {
    if ((v39 & 0x1000000000000000) != 0)
    {
      v18 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v18 = _StringObject.sharedUTF8.getter();
      result = v40;
    }

    v19 = *v18;
    if (v19 == 43)
    {
      if (v16 >= 1)
      {
        v27 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_67;
          }

          v28 = v18 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v29);
            v21 = 10 * v21 + v29;
            if (v24)
            {
              break;
            }

            ++v28;
            if (!--v27)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_77;
    }

    if (v19 == 45)
    {
      if (v16 >= 1)
      {
        v20 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_67;
          }

          v22 = v18 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = 10 * v21 >= v23;
            v21 = 10 * v21 - v23;
            if (!v24)
            {
              break;
            }

            ++v22;
            if (!--v20)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_76;
    }

    if (v16)
    {
      v21 = 0;
      if (!v18)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v32 = *v18 - 48;
        if (v32 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v32);
        v21 = 10 * v21 + v32;
        if (v24)
        {
          break;
        }

        ++v18;
        if (!--v16)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_66;
  }

  v40 = v10 & 0xFFFFFFFFFFFFFFLL;
  if (v39 != 43)
  {
    if (v39 == 45)
    {
      if (!v15)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v18 = (v15 - 1);
      if (v15 != 1)
      {
        v21 = 0;
        v25 = &v39 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          if (!is_mul_ok(v21, 0xAuLL))
          {
            break;
          }

          v24 = 10 * v21 >= v26;
          v21 = 10 * v21 - v26;
          if (!v24)
          {
            break;
          }

          ++v25;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v15)
    {
      v21 = 0;
      v33 = &v39;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v34);
        v21 = 10 * v21 + v34;
        if (v24)
        {
          break;
        }

        v33 = (v33 + 1);
        if (!--v15)
        {
LABEL_65:
          LOBYTE(v18) = 0;
          goto LABEL_67;
        }
      }
    }

LABEL_66:
    v21 = 0;
    LOBYTE(v18) = 1;
LABEL_67:
    v35 = v18;

    if ((v35 & 1) == 0)
    {
LABEL_69:
      result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of VideoPlayerComponent.init(videoResource:));
      *a2 = 0;
      *(a2 + 8) = v5;
      *(a2 + 16) = v7;
      *(a2 + 24) = 256;
      *(a2 + 28) = 1055286886;
      *(a2 + 32) = 0;
      *(a2 + 36) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = a1;
      *(a2 + 80) = 0;
      *(a2 + 88) = v21;
      *(a2 + 96) = 16843009;
      *(a2 + 100) = 0;
      *(a2 + 112) = v36;
      *(a2 + 128) = -1082130432;
      *(a2 + 132) = 0;
      return result;
    }

LABEL_68:
    v21 = arc4random();
    goto LABEL_69;
  }

  if (v15)
  {
    v18 = (v15 - 1);
    if (v15 != 1)
    {
      v21 = 0;
      v30 = &v39 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v31);
        v21 = 10 * v21 + v31;
        if (v24)
        {
          break;
        }

        ++v30;
        if (!--v18)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t VideoPlayerComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v18 = *(v1 + 33);
  v19 = *(v1 + 32);
  v3 = *(v1 + 36);
  v4 = *(v1 + 40);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 97);
  v9 = *(v1 + 98);
  v10 = *(v1 + 99);
  v11 = *(v1 + 100);
  v12 = *(v1 + 101);
  REComponentGetEntity();
  REVideoPlayerStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v13 = *(v5 + 16);
  REVideoPlayerComponentSetVideoAsset();
  REVideoPlayerComponentSetScreenRoundedCornerEnabled();
  REVideoPlayerComponentSetScaleRoundedCornerEnabled();
  REVideoPlayerComponentSetScreenAspectRatioAnimationEnabled();
  REVideoPlayerComponentSetScreenDeferAspectRatioTransitionToApp();
  REVideoPlayerComponentSetGuid();
  REVideoPlayerComponentSetEnableReflections();
  REVideoPlayerComponentSetLowLatencyEnabled();
  RENetworkMarkComponentDirty();
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v14 + 120, v20);
  v15 = v21;
  v16 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v16 + 32))(v15, v16);
  REVideoPlayerComponentPreloadVideoAsset();
  result = __swift_destroy_boxed_opaque_existential_1(v20);
  if (v19 == 1)
  {
    return REVideoPlayerComponentStartBlurVideoFadeIn();
  }

  if (v18)
  {
    return REVideoPlayerComponentStartBlurVideoFadeOut();
  }

  return result;
}

uint64_t VideoPlayerComponent.videoReceiverEndpointInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  return swift_unknownObjectRetain();
}

__n128 VideoPlayerComponent.videoReceiverEndpointInfo.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 48);
  swift_unknownObjectRelease();
  result = v5;
  *(v1 + 48) = v5;
  *(v1 + 64) = v2;
  return result;
}

uint64_t (*VideoPlayerComponent.videoReceiverEndpointInfo.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  swift_unknownObjectRetain();
  return VideoPlayerComponent.videoReceiverEndpointInfo.modify;
}

uint64_t VideoPlayerComponent.videoReceiverEndpointInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = v4[6];
  if (a2)
  {
    v7 = *a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v4[6] = v2;
    v4[7] = v3;
    v4[8] = v5;

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = v4[6];
    result = swift_unknownObjectRelease();
    v4[6] = v2;
    v4[7] = v3;
    v4[8] = v5;
  }

  return result;
}

void one-time initialization function for sVPCNetworkSystemObserver()
{
  type metadata accessor for VPCNetworkSystemObserver();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCys6UInt64V_s13OpaquePointerVSgts5NeverOGMd, &_s7Combine19CurrentValueSubjectCys6UInt64V_s13OpaquePointerVSgts5NeverOGMR);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[4] = CurrentValueSubject.init(_:)();
  VPCNetworkSystemObserver.setupRENetworkCallbacks()();
  static VideoPlayerComponent.sVPCNetworkSystemObserver = v0;
}

uint64_t VPCNetworkSystemObserver.__deallocating_deinit()
{
  if (v0[2] && v0[3])
  {
    RENetworkSystemRemoveObserver();
    v0[2] = 0;
  }

  if (v0[3])
  {
    RERelease();
    v0[3] = 0;
  }

  v1 = v0[4];

  return swift_deallocClassInstance();
}

void VPCNetworkSystemObserver.setupRENetworkCallbacks()()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    v2 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v3 = *(v2 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v4 = *(v3 + 40);

    if (!v4)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 80, v27);

    v5 = v28;
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v6 + 32))(&v21, v5, v6);
    if (REECSManagerSceneCount() < 1)
    {
      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, VideoLogger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "App VideoPlayer+Component Caption: setupRENetworkCallbacks failed - scene count is zero";
    }

    else
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      v8 = v1;
      *(v1 + 16) = MEMORY[0x1C68FE270](ServiceLocator);
      v9 = RENetworkSystemObserverCreateEx();
      *(v1 + 24) = v9;
      if (*(v1 + 16) && v9)
      {
        v25 = partial apply for implicit closure #2 in implicit closure #1 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v1;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_43;
        v10 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalComponentWillRemove();
        _Block_release(v10);
        v25 = partial apply for implicit closure #4 in implicit closure #3 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_87;
        v11 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalEntityDidCreate();
        _Block_release(v11);
        v25 = partial apply for implicit closure #6 in implicit closure #5 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_90_1;
        v12 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalEntityWillDestroy();
        _Block_release(v12);
        v25 = partial apply for implicit closure #8 in implicit closure #7 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_93;
        v13 = _Block_copy(&v21);

        RENetworkSystemObserverOnComponentDidUpdate();
        _Block_release(v13);
        v25 = partial apply for implicit closure #10 in implicit closure #9 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_96_0;
        v14 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalComponentDidUpdate();
        _Block_release(v14);
        RENetworkSystemAddObserver();
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v27);
        return;
      }

      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, VideoLogger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_16:

        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "App VideoPlayer+Component Caption: setupRENetworkCallbacks failed - no network system or observer";
    }

    _os_log_impl(&dword_1C1358000, v16, v17, v19, v18, 2u);
    MEMORY[0x1C6902A30](v18, -1, -1);
    goto LABEL_16;
  }
}

void VPCNetworkSystemObserver.onComponentDidUpdate(componentRef:)(uint64_t a1)
{
  Entity = REComponentGetEntity();
  REVideoPlayerStatusComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass || ComponentByClass != a1)
  {
    REVideoPlayerComponentGetComponentType();
    v5 = REEntityGetComponentByClass();
    if (!v5 || v5 != a1)
    {
      return;
    }
  }

  REVideoPlayerStatusComponentGetComponentType();
  v6 = REEntityGetComponentByClass();
  if (v6)
  {
    v7 = v6;
    REVideoPlayerComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      return;
    }

    REVideoPlayerStatusComponentDidUpdateInApp();
    v8 = *(v1 + 32);

    *&v31[0] = REVideoPlayerComponentGetGuid();
    *(&v31[0] + 1) = v7;
    CurrentValueSubject.send(_:)();

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        __break(1u);
        return;
      }

      v14 = specialized static Entity.entityInfoType(_:)();
      if (v14)
      {
        v10 = (*(v14 + 232))();
        v15 = *(v10 + 16);

        MEMORY[0x1C68F9740](v15, 0);
        *(v10 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v10);

LABEL_20:

        _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation011VideoPlayerD0V_Tt0B5(v10, &v21);

        v29[6] = v27;
        v30[0] = v28[0];
        v29[2] = v23;
        v29[3] = v24;
        v29[4] = v25;
        v29[5] = v26;
        v29[0] = v21;
        v29[1] = v22;
        v31[6] = v27;
        v32[0] = v28[0];
        v31[2] = v23;
        v31[3] = v24;
        v31[4] = v25;
        v31[5] = v26;
        *(v30 + 13) = *(v28 + 13);
        *(v32 + 13) = *(v28 + 13);
        v31[0] = v21;
        v31[1] = v22;
        if (_s17RealityFoundation20VideoPlayerComponentVSgWOg(v31) == 1)
        {
          if (one-time initialization token for VideoLogger != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          __swift_project_value_buffer(v16, VideoLogger);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_1C1358000, v17, v18, "App VideoPlayer+Component VPCNetworkSystemObserver onComponentDidUpdate failed - there is no videoplayercomponent object", v19, 2u);
            MEMORY[0x1C6902A30](v19, -1, -1);
          }
        }

        else
        {

          outlined destroy of VideoPlayerComponent?(v29);
        }

        return;
      }

      v9 = makeEntity(for:)(Entity);
    }

    v10 = v9;
    goto LABEL_20;
  }

  if (one-time initialization token for VideoLogger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, VideoLogger);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C1358000, oslog, v12, "App VideoPlayer+Component VPCNetworkSystemObserver onComponentDidUpdate failed - there is no Video Player Status Component", v13, 2u);
    MEMORY[0x1C6902A30](v13, -1, -1);
  }
}

uint64_t VideoPlayerComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v28 - v8;
  v10 = v0[5];
  v11 = v0[7];
  v36 = v0[6];
  *v37 = v11;
  v12 = v0[1];
  v13 = v0[3];
  v32 = v0[2];
  v33 = v13;
  v14 = v0[3];
  v15 = v0[5];
  v34 = v0[4];
  v35 = v15;
  v16 = v0[1];
  v30 = *v0;
  v31 = v16;
  v17 = v0[7];
  v28[15] = v36;
  v29[0] = v17;
  v28[11] = v32;
  v28[12] = v14;
  v28[13] = v34;
  v28[14] = v10;
  *&v37[13] = *(v0 + 125);
  *(v29 + 13) = *(v0 + 125);
  v28[9] = v30;
  v28[10] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C1897F90;
  *(v18 + 32) = 0x726579616C507661;
  *(v18 + 40) = 0xE800000000000000;
  v19 = *(*(&v34 + 1) + 16);
  outlined init with copy of VideoPlayerComponent(&v30, v28);
  v20 = REVideoAssetGetAVPlayer();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8AVPlayerCSgMd, &_sSo8AVPlayerCSgMR);
  *(v18 + 48) = v20;
  *(v18 + 72) = v21;
  *(v18 + 80) = 0xD000000000000012;
  *(v18 + 88) = 0x80000001C18ED140;
  *(v18 + 96) = v30;
  *(v18 + 120) = &type metadata for VideoPlaybackController.ViewingMode;
  *(v18 + 128) = 0x4D676E6977656976;
  *(v18 + 136) = 0xEB0000000065646FLL;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23VideoPlaybackControllerC0A10FoundationE11ViewingModeOSgMd, &_s10RealityKit23VideoPlaybackControllerC0A10FoundationE11ViewingModeOSgMR);
  *(v18 + 144) = 2 * (v37[20] != 1);
  *(v18 + 168) = v22;
  *(v18 + 176) = 0xD000000000000010;
  *(v18 + 184) = 0x80000001C18ED160;
  v23 = *(&v30 + 1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  *(v18 + 192) = v23;
  *(v18 + 216) = v24;
  *(v18 + 224) = 0xD000000000000014;
  *(v18 + 232) = 0x80000001C18ED180;
  v25 = v31;
  *(v18 + 264) = v24;
  *(v18 + 240) = v25;
  v26 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

id VideoPlayerComponent.videoRenderer.getter()
{
  v1 = *(*(v0 + 72) + 16);
  AVSampleBufferVideoRenderer = REVideoAssetGetAVSampleBufferVideoRenderer();

  return AVSampleBufferVideoRenderer;
}

void VideoPlayerComponent.init(avPlayer:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, id)@<X4>, uint64_t a6@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(a2);
  v12 = v11;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(a3);
  v14 = v13;
  LODWORD(v55) = getpid();
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_73:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  v55 = v15;
  v56 = v17;

  MEMORY[0x1C68F3410](v18, v20);

  v21 = HIBYTE(v17) & 0xF;
  v22 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v56) & 0xF;
  }

  else
  {
    v23 = v55 & 0xFFFFFFFFFFFFLL;
  }

  v54 = a5;
  if (!v23)
  {
    goto LABEL_73;
  }

  if ((v56 & 0x1000000000000000) != 0)
  {
    v27 = specialized _parseInteger<A, B>(ascii:radix:)(v55, v56, 10);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v56 & 0x2000000000000000) != 0)
  {
    v56 = v17 & 0xFFFFFFFFFFFFFFLL;
    if (v55 == 43)
    {
      if (!v21)
      {
LABEL_80:
        __break(1u);
        return;
      }

      v24 = (v21 - 1);
      if (v21 != 1)
      {
        v27 = 0;
        v36 = &v55 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v27, v37);
          v27 = 10 * v27 + v37;
          if (v30)
          {
            break;
          }

          ++v36;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v55 == 45)
    {
      if (!v21)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v24 = (v21 - 1);
      if (v21 != 1)
      {
        v27 = 0;
        v31 = &v55 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v27 >= v32;
          v27 = 10 * v27 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v21)
    {
      v27 = 0;
      v39 = &v55;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v40);
        v27 = 10 * v27 + v40;
        if (v30)
        {
          break;
        }

        v39 = (v39 + 1);
        if (!--v21)
        {
LABEL_65:
          LOBYTE(v24) = 0;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    if ((v55 & 0x1000000000000000) != 0)
    {
      v24 = ((v56 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = _StringObject.sharedUTF8.getter();
    }

    v25 = *v24;
    if (v25 == 43)
    {
      if (v22 >= 1)
      {
        v33 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_67;
          }

          v34 = v24 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              break;
            }

            v30 = __CFADD__(10 * v27, v35);
            v27 = 10 * v27 + v35;
            if (v30)
            {
              break;
            }

            ++v34;
            if (!--v33)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v25 == 45)
    {
      if (v22 >= 1)
      {
        v26 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_67;
          }

          v28 = v24 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              break;
            }

            v30 = 10 * v27 >= v29;
            v27 = 10 * v27 - v29;
            if (!v30)
            {
              break;
            }

            ++v28;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v22)
    {
      v27 = 0;
      if (!v24)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v38 = *v24 - 48;
        if (v38 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v38);
        v27 = 10 * v27 + v38;
        if (v30)
        {
          break;
        }

        ++v24;
        if (!--v22)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  v27 = 0;
  LOBYTE(v24) = 1;
LABEL_67:
  v41 = v24;

  if (v41)
  {
LABEL_68:
    v27 = arc4random();
  }

LABEL_69:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(a4);
  v53 = v42;
  type metadata accessor for __VideoResource();
  v43 = swift_allocObject();
  *(v43 + 24) = MEMORY[0x1E69E7CC0];
  v44 = a1;
  v45 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v45 + 120, &v55);
  v46 = v57;
  v47 = v58;
  __swift_project_boxed_opaque_existential_1(&v55, v57);
  v48 = *(v47 + 32);

  v49 = v48(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  *(v43 + 16) = v54(v49, v44);
  REAssetSetSwiftObject();

  type metadata accessor for VideoPlayerController();
  v50 = swift_allocObject();
  *(v50 + 16) = v27;
  if (one-time initialization token for sVPCNetworkSystemObserver != -1)
  {
    swift_once();
  }

  VPCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a6 = 0;
  *(a6 + 8) = v12;
  *(a6 + 16) = v14;
  *(a6 + 24) = 256;
  *(a6 + 28) = 1055286886;
  *(a6 + 32) = 0;
  *(a6 + 36) = 0;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = v43;
  *(a6 + 80) = v50;
  *(a6 + 88) = v27;
  *(a6 + 96) = 16843009;
  *(a6 + 100) = 0;
  *(a6 + 112) = v53;
  *(a6 + 128) = -1082130432;
  *(a6 + 132) = 0;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C68F3460](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t lazy protocol witness table accessor for type VideoPlayerDefaults and conformance VideoPlayerDefaults()
{
  result = lazy protocol witness table cache variable for type VideoPlayerDefaults and conformance VideoPlayerDefaults;
  if (!lazy protocol witness table cache variable for type VideoPlayerDefaults and conformance VideoPlayerDefaults)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerDefaults and conformance VideoPlayerDefaults);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode()
{
  result = lazy protocol witness table cache variable for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode;
  if (!lazy protocol witness table cache variable for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation()
{
  result = lazy protocol witness table cache variable for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation;
  if (!lazy protocol witness table cache variable for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus()
{
  result = lazy protocol witness table cache variable for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus;
  if (!lazy protocol witness table cache variable for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus);
  }

  return result;
}

__n128 __swift_memcpy133_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlayerComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 133))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlayerComponent(uint64_t result, int a2, int a3)
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
    *(result + 132) = 0;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 133) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 133) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17RealityFoundation20VideoPlayerComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined destroy of VideoPlayerComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20VideoPlayerComponentVSgMd, &_s17RealityFoundation20VideoPlayerComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized VPCNetworkSystemObserver.onLocalVideoComponentRemove(componentRef:)(uint64_t a1)
{
  Entity = REComponentGetEntity();
  REVideoPlayerComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass || ComponentByClass != a1)
  {
    return;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v4 = swift_dynamicCastClassUnconditional();
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  if (REEntityIsBeingDestroyed())
  {
    __break(1u);
    return;
  }

  v6 = specialized static Entity.entityInfoType(_:)();
  if (!v6)
  {
    v4 = makeEntity(for:)(Entity);
    goto LABEL_5;
  }

  v5 = (*(v6 + 232))();
  v7 = *(v5 + 16);

  MEMORY[0x1C68F9740](v7, 0);
  *(v5 + 16) = Entity;
  MEMORY[0x1C68F9740](Entity, v5);

LABEL_9:

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation011VideoPlayerD0V_Tt0B5(v5, v12);

  v14[6] = v12[6];
  v15[0] = v13[0];
  *(v15 + 13) = *(v13 + 13);
  v14[2] = v12[2];
  v14[3] = v12[3];
  v14[4] = v12[4];
  v14[5] = v12[5];
  v14[0] = v12[0];
  v14[1] = v12[1];
  if (_s17RealityFoundation20VideoPlayerComponentVSgWOg(v14) == 1)
  {
    if (one-time initialization token for VideoLogger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, VideoLogger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C1358000, v9, v10, "App VideoPlayer+Component VPCNetworkSystemObserver onLocalVideoComponentRemove failed - there is no videoplayercomponent object", v11, 2u);
      MEMORY[0x1C6902A30](v11, -1, -1);
    }
  }

  else
  {

    outlined destroy of VideoPlayerComponent?(v12);
  }
}

void specialized VPCNetworkSystemObserver.onLocalVideoEntityDidCreate(entityRef:)(uint64_t a1, const char *a2)
{
  REVideoPlayerComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    return;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v4 = swift_dynamicCastClassUnconditional();
LABEL_4:
    v5 = v4;
    goto LABEL_8;
  }

  if (REEntityIsBeingDestroyed())
  {
    __break(1u);
    return;
  }

  v6 = specialized static Entity.entityInfoType(_:)();
  if (!v6)
  {
    v4 = makeEntity(for:)(a1);
    goto LABEL_4;
  }

  v5 = (*(v6 + 232))();
  v7 = *(v5 + 16);

  MEMORY[0x1C68F9740](v7, 0);
  *(v5 + 16) = a1;
  MEMORY[0x1C68F9740](a1, v5);

LABEL_8:

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation011VideoPlayerD0V_Tt0B5(v5, v12);

  v14[6] = v12[6];
  v15[0] = v13[0];
  *(v15 + 13) = *(v13 + 13);
  v14[2] = v12[2];
  v14[3] = v12[3];
  v14[4] = v12[4];
  v14[5] = v12[5];
  v14[0] = v12[0];
  v14[1] = v12[1];
  if (_s17RealityFoundation20VideoPlayerComponentVSgWOg(v14) == 1)
  {
    if (one-time initialization token for VideoLogger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, VideoLogger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C1358000, v9, v10, a2, v11, 2u);
      MEMORY[0x1C6902A30](v11, -1, -1);
    }
  }

  else
  {

    outlined destroy of VideoPlayerComponent?(v12);
  }
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformer.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformer.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _Proto_MeshDeformation_v1.VertexType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

Swift::Int _Proto_MeshDeformation_v1.Cadence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame = v1;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.VertexTypeOptions.all.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _Proto_MeshDeformation_v1.VertexTypeOptions.all;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.VertexTypeOptions.all.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _Proto_MeshDeformation_v1.VertexTypeOptions.all = v1;
  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.positions.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.normals.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data();
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.tangents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data();
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.bitangents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data();
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.inputBuffers.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.inputBuffers.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.outputBuffers.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.outputBuffers.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerParameter.outputBuffers.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerParameter.datum.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 40);
  return result;
}

unint64_t instantiation function for generic protocol witness table for _Proto_MeshDeformation_v1.CustomDeformer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation25_Proto_MeshDeformation_v1V10VertexTypeOGMd, &_sSay17RealityFoundation25_Proto_MeshDeformation_v1V10VertexTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

void type metadata completion function for _Proto_MeshDeformation_v1.CustomDeformerParameter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers();
  if (v3 <= 0x3F)
  {
    type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers();
    if (v4 <= 0x3F)
    {
      type metadata accessor for Any?();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (v5)
  {
    v8 = v5 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 - 8);
  v10 = *(v7 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (v5)
  {
    v13 = 8;
  }

  else
  {
    v13 = 9;
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  if (v10)
  {
    v16 = 8;
  }

  else
  {
    v16 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13;
  v18 = *(v4 + 80) & 0xF8 | 7;
  v19 = v14 & 0xF8 | 7;
  v20 = ((v17 + ((v17 + v18 + ((v17 + v18 + ((v17 + v18) & ~v18)) & ~v18)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + v19 + 8;
  v21 = ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v16;
  v22 = ((v21 + ((v21 + v19 + ((v21 + v19 + ((v21 + v19) & ~v19)) & ~v19)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 < a2)
  {
    v23 = (v20 & ~v19) + v22 + 32;
    v24 = a2 - v12;
    if (v23 <= 3)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (!v28)
        {
          goto LABEL_42;
        }
      }

LABEL_34:
      v29 = v28 - 1;
      if (v23 > 3)
      {
        v29 = 0;
      }

      if ((v20 & ~v19) + v22 == -32)
      {
        v30 = 0;
      }

      else
      {
        v30 = *a1;
      }

      return v12 + (v30 | v29) + 1;
    }

    if (v27)
    {
      v28 = *(a1 + v23);
      if (*(a1 + v23))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_42:
  if (v8 == v12)
  {
    if (v5 >= 2)
    {
      v31 = (*(v4 + 48))();
      goto LABEL_54;
    }

    return 0;
  }

  v32 = (a1 + v20) & ~v19;
  if (v11 == v12)
  {
    if (v10 >= 2)
    {
      v31 = (*(*(v6 - 8) + 48))(v32, v10, v6);
LABEL_54:
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = *(v32 + v22 + 24);
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  if ((v34 + 1) >= 2)
  {
    return v34;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = (((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = v14 + 9;
  if (v7)
  {
    v16 = v15;
  }

  v17 = *(v6 + 80) & 0xF8 | 7;
  v18 = (((v16 + v17 + ((v16 + v17 + ((v16 + v17) & ~v17)) & ~v17)) & ~v17) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = v18 + v19 + 8;
  v21 = (((((*(*(v9 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + 8;
  v23 = v21 + 9;
  if (v11)
  {
    v23 = v22;
  }

  v24 = ((((v23 + v19 + ((v23 + v19 + ((v23 + v19) & ~v19)) & ~v19)) & ~v19) + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = (v20 & ~v19) + v24 + 32;
  if (v13 < a3)
  {
    v26 = a3 - v13;
    if (v25 <= 3)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v5 = v28;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v25 > 3)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v13;
    }

    if ((v20 & ~v19) + v24 != -32)
    {
      if (v25 <= 3)
      {
        v30 = 0;
      }

      else
      {
        v30 = ~v13 + a2;
      }

      v31 = a1;
      bzero(a1, v25);
      a1 = v31;
      *v31 = v30;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v25) = v29;
      }

      else
      {
        *(a1 + v25) = v29;
      }
    }

    else if (v5)
    {
      *(a1 + v25) = v29;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (!a2)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v5 == 2)
  {
    *(a1 + v25) = 0;
    goto LABEL_48;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_49:
  if (v8 == v13)
  {
    v33 = a2 - v7;
    if (a2 < v7)
    {
      v34 = *(v6 + 56);

      v34();
      return result;
    }

    if (!v15)
    {
      return result;
    }

    v37 = a1;
    v38 = v15;
LABEL_68:
    bzero(a1, v38);
    *v37 = v33;
    return result;
  }

  a1 = ((a1 + v20) & ~v19);
  if (v12 != v13)
  {
    v39 = a1 + v24;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *v39 = 0u;
      *(v39 + 1) = 0u;
      *v39 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v39 + 3) = a2;
    }

    return result;
  }

  v33 = a2 - v11;
  if (a2 >= v11)
  {
    if (!v22)
    {
      return result;
    }

    v37 = a1;
    v38 = v22;
    goto LABEL_68;
  }

  v35 = *(v10 + 56);
  v36 = a2 + 1;

  v35(a1, v36, v11, v9);
  return result;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

uint64_t type metadata completion function for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data();
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!v5)
  {
    v7 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 32) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7;
  v9 = *(v4 + 80) & 0xF8 | 7;
  v10 = ((v8 + ((v8 + v9 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v19 = (*(v4 + 48))(a1, v5);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v6 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = (((((*(*(*(a4 + 32) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 9;
  if (v7)
  {
    v11 = v10;
  }

  v12 = *(v6 + 80) & 0xF8 | 7;
  v13 = ((v11 + ((v11 + v12 + ((v11 + v12 + ((v11 + v12) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 < a3)
  {
    v14 = a3 - v8;
    if (((v11 + ((v11 + v12 + ((v11 + v12 + ((v11 + v12) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v8)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v8;
    }

    if (v13)
    {
      v18 = ~v8 + a2;
      v19 = a1;
      bzero(a1, v13);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v13) = 0;
  }

  else if (v5)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v7 >= 2)
  {
    v20 = a2 - v7;
    if (a2 >= v7)
    {
      if (v10)
      {
        v22 = a1;
        bzero(a1, v10);
        *v22 = v20;
      }
    }

    else
    {
      v21 = *(v6 + 56);

      v21();
    }
  }
}

void type metadata completion function for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(uint64_t a1)
{
  v1 = *(a1 + 32);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for MTLVertexFormat(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((((*(*(*(a3 + 32) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  v7 = ((((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t Entity.isAccessibilityElement.getter()
{
  v1 = *(v0 + 16);
  result = REEntityGetComponent();
  if (result)
  {
    specialized __AccessibilityComponent.init(from:)(v3);
    outlined destroy of __AccessibilityComponent(v3);
    return BYTE1(v3[0]);
  }

  return result;
}

uint64_t Entity.isAccessibilityElement.setter(char a1)
{
  Entity.__accessibilityComponent.getter(v4);
  *&v9[2] = v5;
  *&v9[18] = v6;
  *&v9[34] = *v7;
  *&v9[48] = *&v7[14];
  v9[0] = v4[0];
  v9[1] = a1;
  v8[0] = *v9;
  v8[1] = *&v9[16];
  v8[2] = *&v9[32];
  v8[3] = *&v7[14];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v8, 0, v1);
  return outlined destroy of __AccessibilityComponent(v9);
}

uint64_t (*Entity.isAccessibilityElement.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)((v4 + 256));
    outlined destroy of __AccessibilityComponent(v4 + 256);
    v6 = *(v4 + 257);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 392) = v6;
  return Entity.isAccessibilityElement.modify;
}

uint64_t Entity.accessibilityLabel.getter()
{
  v1 = *(v0 + 16);
  if (!REEntityGetComponent())
  {
    return 0;
  }

  specialized __AccessibilityComponent.init(from:)(&v4);
  v2 = *(&v5 + 1);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;

  outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v2;
}

uint64_t Entity.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  Entity.__accessibilityComponent.getter(&v6);
  v11 = v8;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v15[24] = v10;
  *&v15[8] = v9;
  *&v14 = v7;
  *(&v14 + 1) = a1;
  *v15 = a2;
  v12[2] = *v15;
  v12[3] = *&v15[16];
  v13 = v6;
  v12[0] = v6;
  v12[1] = v14;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v2);
  return outlined destroy of __AccessibilityComponent(&v13);
}

uint64_t (*Entity.accessibilityLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(&v11);
    v7 = *(&v12 + 1);
    v6 = v13;
    v8 = v12;
    *v4 = v11;
    *(v4 + 16) = v8;
    v9 = v14;
    *(v4 + 32) = v13;
    *(v4 + 48) = v9;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v4 + 416) = v7;
  *(v4 + 424) = v6;
  return Entity.accessibilityLabel.modify;
}

uint64_t Entity.accessibilityDescription.getter()
{
  v1 = *(v0 + 16);
  if (!REEntityGetComponent())
  {
    return 0;
  }

  specialized __AccessibilityComponent.init(from:)(v4);
  v2 = *(&v5 + 1);
  v7[0] = v4[0];
  v7[1] = v4[1];
  v7[2] = v5;
  v7[3] = v6;

  outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v2;
}

uint64_t Entity.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{
  Entity.__accessibilityComponent.getter(&v6);
  v11 = v9;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  v13[0] = v6;
  v13[1] = v7;
  *&v14 = v8;
  *(&v14 + 1) = a1;
  *&v15 = a2;
  *(&v15 + 1) = v10;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v14;
  v12[3] = v15;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v2);
  return outlined destroy of __AccessibilityComponent(v13);
}

uint64_t (*Entity.accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(v11);
    v7 = *(&v12 + 1);
    v6 = v13;
    v8 = v11[1];
    *v4 = v11[0];
    *(v4 + 16) = v8;
    v9 = v13;
    *(v4 + 32) = v12;
    *(v4 + 48) = v9;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v4 + 416) = v7;
  *(v4 + 424) = v6;
  return Entity.accessibilityDescription.modify;
}

uint64_t Entity.__isAccessibilityRoot.getter()
{
  v1 = *(v0 + 16);
  result = REEntityGetComponent();
  if (result)
  {
    specialized __AccessibilityComponent.init(from:)(v3);
    outlined destroy of __AccessibilityComponent(v3);
    return LOBYTE(v3[0]);
  }

  return result;
}

void key path getter for Entity.__isAccessibilityRoot : Entity(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(*a1, v4);
  if (v5)
  {
    v3 = v4[0];
    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
}

uint64_t key path setter for Entity.__isAccessibilityRoot : Entity(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  Entity.__accessibilityComponent.getter(v5);
  v9[0] = v2;
  *&v9[1] = *&v5[1];
  *&v9[17] = v6;
  *&v9[33] = *v7;
  *&v9[48] = *&v7[15];
  v8[0] = *v9;
  v8[1] = *&v9[16];
  v8[2] = *&v9[32];
  v8[3] = *&v7[15];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v8, 0, v3);
  return outlined destroy of __AccessibilityComponent(v9);
}

uint64_t Entity.__isAccessibilityRoot.setter(char a1)
{
  Entity.__accessibilityComponent.getter(v4);
  v8[0] = a1;
  *&v8[1] = *&v4[1];
  *&v8[17] = v5;
  *&v8[33] = *v6;
  *&v8[48] = *&v6[15];
  v7[0] = *v8;
  v7[1] = *&v8[16];
  v7[2] = *&v8[32];
  v7[3] = *&v6[15];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v7, 0, v1);
  return outlined destroy of __AccessibilityComponent(v8);
}

int64_t Entity.__accessibilityComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    result = specialized __AccessibilityComponent.init(from:)(v18);
    v5 = *&v18[56];
    v6 = *&v18[40];
    v7 = *&v18[24];
    v8 = *&v18[8];
    v9 = v18[1];
    v10 = v18[0];
  }

  else
  {
    *v12 = 0;
    memset(&v12[8], 0, 48);
    *&v12[56] = MEMORY[0x1E69E7CC0];
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = MEMORY[0x1E69E7CC0];
    outlined init with copy of __AccessibilityComponent(v12, v18);
    outlined destroy of __AccessibilityComponent(&v13);
    *v18 = *v12;
    *&v18[16] = *&v12[16];
    *&v18[32] = *&v12[32];
    *&v18[48] = *&v12[48];
    outlined init with copy of __AccessibilityComponent(v12, &v11);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v18, 0, v1);
    result = outlined destroy of __AccessibilityComponent(v12);
    v5 = *&v12[56];
    v6 = *&v12[40];
    v7 = *&v12[24];
    v8 = *&v12[8];
    v9 = v12[1];
    v10 = v12[0];
  }

  *a1 = v10;
  *(a1 + 1) = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  return result;
}

void (*Entity.__isAccessibilityRoot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)((v4 + 256));
    outlined destroy of __AccessibilityComponent(v4 + 256);
    v6 = *(v4 + 256);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 392) = v6;
  return Entity.__isAccessibilityRoot.modify;
}

void Entity.__isAccessibilityRoot.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 128;
  v4 = *(*a1 + 384);
  v5 = *(*a1 + 392);
  v6 = (*a1 + 321);
  if (a2)
  {
    v7 = 129;
  }

  else
  {
    v3 = *a1 + 192;
    v7 = 193;
  }

  if (a2)
  {
    v8 = *a1;
  }

  else
  {
    v8 = (*a1 + 64);
  }

  Entity.__accessibilityComponent.getter(v3);
  *(v2 + 320) = v5;
  v9 = *(v2 + v7 + 16);
  *v6 = *(v2 + v7);
  v6[1] = v9;
  v6[2] = *(v2 + v7 + 32);
  *(v2 + 368) = *(v2 + v7 + 47);
  v10 = *(v2 + 336);
  *v8 = *(v2 + 320);
  v8[1] = v10;
  v11 = *(v2 + 368);
  v8[2] = *(v2 + 352);
  v8[3] = v11;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v8, 0, v4);
  outlined destroy of __AccessibilityComponent(v2 + 320);

  free(v2);
}

void key path getter for Entity.isAccessibilityElement : Entity(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(*a1, v4);
  if (v5)
  {
    v3 = BYTE1(v4[0]);
    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
}

uint64_t key path setter for Entity.isAccessibilityElement : Entity(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  Entity.__accessibilityComponent.getter(v5);
  *&v10[2] = v6;
  *&v10[18] = v7;
  *&v10[34] = *v8;
  *&v10[48] = *&v8[14];
  v10[0] = v5[0];
  v10[1] = v2;
  v9[0] = *v10;
  v9[1] = *&v10[16];
  v9[2] = *&v10[32];
  v9[3] = *&v8[14];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v9, 0, v3);
  return outlined destroy of __AccessibilityComponent(v10);
}

uint64_t (*Entity.__isAccessibilityEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)((v4 + 256));
    outlined destroy of __AccessibilityComponent(v4 + 256);
    v6 = *(v4 + 257);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 392) = v6;
  return Entity.__isAccessibilityEnabled.modify;
}

void Entity.isAccessibilityElement.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 128;
  v4 = *(*a1 + 384);
  v5 = (*a1 + 322);
  v6 = *(*a1 + 392);
  if (a2)
  {
    v7 = 128;
  }

  else
  {
    v7 = 192;
  }

  if (a2)
  {
    v8 = 130;
  }

  else
  {
    v3 = *a1 + 192;
    v8 = 194;
  }

  if (a2)
  {
    v9 = *a1;
  }

  else
  {
    v9 = (*a1 + 64);
  }

  Entity.__accessibilityComponent.getter(v3);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8 + 16);
  *v5 = *(v2 + v8);
  v5[1] = v11;
  v5[2] = *(v2 + v8 + 32);
  *(v2 + 368) = *(v2 + v8 + 46);
  *(v2 + 320) = v10;
  *(v2 + 321) = v6;
  v12 = *(v2 + 336);
  *v9 = *(v2 + 320);
  v9[1] = v12;
  v13 = *(v2 + 368);
  v9[2] = *(v2 + 352);
  v9[3] = v13;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v9, 0, v4);
  outlined destroy of __AccessibilityComponent(v2 + 320);

  free(v2);
}

uint64_t Entity.__accessibilityIdentifier.getter()
{
  v1 = *(v0 + 16);
  if (!REEntityGetComponent())
  {
    return 0;
  }

  specialized __AccessibilityComponent.init(from:)(v4);
  v2 = *(&v4[0] + 1);
  v5[0] = v4[0];
  v5[1] = v4[1];
  v5[2] = v4[2];
  v5[3] = v4[3];

  outlined destroy of BodyTrackingComponent?(v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v2;
}

void key path getter for Entity.__accessibilityIdentifier : Entity(uint64_t *a1@<X0>, void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(*a1, &v5);
  if (v7)
  {
    v4 = *(&v5 + 1);
    v3 = v6;

    outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t key path setter for Entity.__accessibilityIdentifier : Entity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  Entity.__accessibilityComponent.getter(&v6);
  v11 = v7;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v14[8] = v8;
  *&v14[24] = v9;
  *&v13 = v6;
  *(&v13 + 1) = v3;
  *&v14[40] = v10;
  *v14 = v2;
  v12[0] = v13;
  v12[1] = *v14;
  v12[2] = *&v14[16];
  v12[3] = *&v14[32];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v4);
  return outlined destroy of __AccessibilityComponent(&v13);
}

uint64_t Entity.__accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  Entity.__accessibilityComponent.getter(&v6);
  v11 = v7;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v14[8] = v8;
  *&v14[24] = v9;
  *&v13 = v6;
  *(&v13 + 1) = a1;
  *&v14[40] = v10;
  *v14 = a2;
  v12[0] = v13;
  v12[1] = *v14;
  v12[2] = *&v14[16];
  v12[3] = *&v14[32];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v2);
  return outlined destroy of __AccessibilityComponent(&v13);
}

void (*Entity.__accessibilityIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(&v11);
    v7 = *(&v11 + 1);
    v6 = v12;
    v8 = v12;
    *v4 = v11;
    *(v4 + 16) = v8;
    v9 = v14;
    *(v4 + 32) = v13;
    *(v4 + 48) = v9;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v4 + 416) = v7;
  *(v4 + 424) = v6;
  return Entity.__accessibilityIdentifier.modify;
}

void Entity.__accessibilityIdentifier.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 424);
  v3 = *(*a1 + 432);
  v5 = *(*a1 + 416);
  if (a2)
  {
    v6 = *(*a1 + 424);

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 200);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSSSgMd, &_sSSSgMR);
    v7 = *(v2 + 192);
    v8 = *(v2 + 232);
    *(v2 + 344) = *(v2 + 216);
    *(v2 + 360) = v8;
    *(v2 + 376) = *(v2 + 248);
    *(v2 + 320) = v7;
    *(v2 + 328) = v5;
    *(v2 + 336) = v4;
    v9 = *(v2 + 336);
    *(v2 + 64) = *(v2 + 320);
    *(v2 + 80) = v9;
    v10 = *(v2 + 368);
    *(v2 + 96) = *(v2 + 352);
    *(v2 + 112) = v10;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
    v11 = *(v2 + 424);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 400) = *(v2 + 264);
    outlined destroy of BodyTrackingComponent?(v2 + 400, &_sSSSgMd, &_sSSSgMR);
    v12 = *(v2 + 256);
    v13 = *(v2 + 296);
    *(v2 + 344) = *(v2 + 280);
    *(v2 + 360) = v13;
    *(v2 + 376) = *(v2 + 312);
    *(v2 + 320) = v12;
    *(v2 + 328) = v5;
    *(v2 + 336) = v4;
    v14 = *(v2 + 336);
    *(v2 + 128) = *(v2 + 320);
    *(v2 + 144) = v14;
    v15 = *(v2 + 368);
    *(v2 + 160) = *(v2 + 352);
    *(v2 + 176) = v15;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

void key path getter for Entity.accessibilityLabel : Entity(uint64_t *a1@<X0>, void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(*a1, &v5);
  if (v8)
  {
    v4 = v6;
    v3 = v7;

    outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t key path setter for Entity.accessibilityLabel : Entity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  Entity.__accessibilityComponent.getter(&v6);
  v11 = v8;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v15[24] = v10;
  *&v15[8] = v9;
  *&v14 = v7;
  *(&v14 + 1) = v3;
  *v15 = v2;
  v12[2] = *v15;
  v12[3] = *&v15[16];
  v13 = v6;
  v12[0] = v6;
  v12[1] = v14;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v4);
  return outlined destroy of __AccessibilityComponent(&v13);
}

uint64_t (*Entity.__accessibilityLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(&v11);
    v7 = *(&v12 + 1);
    v6 = v13;
    v8 = v12;
    *v4 = v11;
    *(v4 + 16) = v8;
    v9 = v14;
    *(v4 + 32) = v13;
    *(v4 + 48) = v9;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v4 + 416) = v7;
  *(v4 + 424) = v6;
  return Entity.__accessibilityLabel.modify;
}

void Entity.accessibilityLabel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 424);
  v3 = *(*a1 + 432);
  v5 = *(*a1 + 416);
  if (a2)
  {
    v6 = *(*a1 + 424);

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 216);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSSSgMd, &_sSSSgMR);
    v7 = *(v2 + 208);
    *(v2 + 376) = *(v2 + 248);
    *(v2 + 360) = *(v2 + 232);
    *(v2 + 336) = v7;
    *(v2 + 344) = v5;
    *(v2 + 352) = v4;
    v8 = *(v2 + 368);
    v9 = *(v2 + 336);
    *(v2 + 96) = *(v2 + 352);
    *(v2 + 112) = v8;
    v10 = *(v2 + 192);
    *(v2 + 320) = v10;
    *(v2 + 64) = v10;
    *(v2 + 80) = v9;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
    v11 = *(v2 + 424);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 400) = *(v2 + 280);
    outlined destroy of BodyTrackingComponent?(v2 + 400, &_sSSSgMd, &_sSSSgMR);
    v12 = *(v2 + 272);
    *(v2 + 376) = *(v2 + 312);
    *(v2 + 360) = *(v2 + 296);
    *(v2 + 336) = v12;
    *(v2 + 344) = v5;
    *(v2 + 352) = v4;
    v13 = *(v2 + 368);
    v14 = *(v2 + 336);
    *(v2 + 160) = *(v2 + 352);
    *(v2 + 176) = v13;
    v15 = *(v2 + 256);
    *(v2 + 320) = v15;
    *(v2 + 128) = v15;
    *(v2 + 144) = v14;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

void key path getter for Entity.accessibilityDescription : Entity(uint64_t *a1@<X0>, void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(*a1, v5);
  if (v8)
  {
    v4 = v6;
    v3 = v7;

    outlined destroy of BodyTrackingComponent?(v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t key path setter for Entity.accessibilityDescription : Entity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  Entity.__accessibilityComponent.getter(&v6);
  v11 = v9;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  v13[0] = v6;
  v13[1] = v7;
  *&v14 = v8;
  *(&v14 + 1) = v3;
  *&v15 = v2;
  *(&v15 + 1) = v10;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v14;
  v12[3] = v15;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v4);
  return outlined destroy of __AccessibilityComponent(v13);
}

uint64_t (*Entity.__accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(v11);
    v7 = *(&v12 + 1);
    v6 = v13;
    v8 = v11[1];
    *v4 = v11[0];
    *(v4 + 16) = v8;
    v9 = v13;
    *(v4 + 32) = v12;
    *(v4 + 48) = v9;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v4 + 416) = v7;
  *(v4 + 424) = v6;
  return Entity.__accessibilityDescription.modify;
}

void Entity.accessibilityDescription.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 424);
  v3 = *(*a1 + 432);
  v5 = *(*a1 + 416);
  if (a2)
  {
    v6 = *(*a1 + 424);

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 232);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSSSgMd, &_sSSSgMR);
    v7 = *(v2 + 224);
    v8 = *(v2 + 192);
    v9 = *(v2 + 208);
    *(v2 + 320) = v8;
    *(v2 + 336) = v9;
    v10 = *(v2 + 248);
    *(v2 + 352) = v7;
    *(v2 + 360) = v5;
    *(v2 + 368) = v4;
    *(v2 + 376) = v10;
    *(v2 + 64) = v8;
    *(v2 + 80) = v9;
    v11 = *(v2 + 368);
    *(v2 + 96) = *(v2 + 352);
    *(v2 + 112) = v11;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
    v12 = *(v2 + 424);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 400) = *(v2 + 296);
    outlined destroy of BodyTrackingComponent?(v2 + 400, &_sSSSgMd, &_sSSSgMR);
    v13 = *(v2 + 288);
    v14 = *(v2 + 256);
    v15 = *(v2 + 272);
    *(v2 + 320) = v14;
    *(v2 + 336) = v15;
    v16 = *(v2 + 312);
    *(v2 + 352) = v13;
    *(v2 + 360) = v5;
    *(v2 + 368) = v4;
    *(v2 + 376) = v16;
    *(v2 + 128) = v14;
    *(v2 + 144) = v15;
    v17 = *(v2 + 368);
    *(v2 + 160) = *(v2 + 352);
    *(v2 + 176) = v17;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

uint64_t Entity.__accessibilityCustomContent.getter()
{
  v1 = *(v0 + 16);
  if (!REEntityGetComponent())
  {
    return MEMORY[0x1E69E7CC0];
  }

  specialized __AccessibilityComponent.init(from:)(v4);
  v2 = *(&v5 + 1);
  v6[0] = v4[0];
  v6[1] = v4[1];
  v6[2] = v4[2];
  v6[3] = v5;

  outlined destroy of BodyTrackingComponent?(v6, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v2;
}

void key path getter for Entity.__accessibilityCustomContent : Entity(uint64_t *a1@<X0>, void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(*a1, v4);
  v3 = v5;
  if (v5)
  {

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v3;
}

uint64_t key path setter for Entity.__accessibilityCustomContent : Entity(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  Entity.__accessibilityComponent.getter(&v5);
  v10 = v9;
  outlined destroy of BodyTrackingComponent?(&v10, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  *&v13 = v8;
  *(&v13 + 1) = v2;
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v13;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v11, 0, v3);
  return outlined destroy of __AccessibilityComponent(v12);
}

uint64_t Entity.__accessibilityCustomContent.setter(uint64_t a1)
{
  Entity.__accessibilityComponent.getter(&v4);
  v9 = v8;
  outlined destroy of BodyTrackingComponent?(&v9, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  *&v12 = v7;
  *(&v12 + 1) = a1;
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v12;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v10, 0, v1);
  return outlined destroy of __AccessibilityComponent(v11);
}

void (*Entity.__accessibilityCustomContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = *(v1 + 16);
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(v10);
    v6 = *(&v11 + 1);
    v7 = v10[1];
    *v4 = v10[0];
    *(v4 + 16) = v7;
    v8 = v11;
    *(v4 + 32) = v10[2];
    *(v4 + 48) = v8;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 400) = v6;
  return Entity.__accessibilityCustomContent.modify;
}

void Entity.__accessibilityCustomContent.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 400);
  v3 = *(*a1 + 408);
  if (a2)
  {
    v5 = *(*a1 + 400);

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 248);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
    v6 = *(v2 + 240);
    v7 = *(v2 + 192);
    v8 = *(v2 + 208);
    *(v2 + 320) = v7;
    *(v2 + 336) = v8;
    v9 = *(v2 + 224);
    *(v2 + 352) = v9;
    *(v2 + 368) = v6;
    *(v2 + 376) = v4;
    *(v2 + 64) = v7;
    *(v2 + 80) = v8;
    v10 = *(v2 + 368);
    *(v2 + 96) = v9;
    *(v2 + 112) = v10;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
    v11 = *(v2 + 400);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 392) = *(v2 + 312);
    outlined destroy of BodyTrackingComponent?(v2 + 392, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
    v12 = *(v2 + 304);
    v13 = *(v2 + 256);
    v14 = *(v2 + 272);
    *(v2 + 320) = v13;
    *(v2 + 336) = v14;
    v15 = *(v2 + 288);
    *(v2 + 352) = v15;
    *(v2 + 368) = v12;
    *(v2 + 376) = v4;
    *(v2 + 128) = v13;
    *(v2 + 144) = v14;
    v16 = *(v2 + 368);
    *(v2 + 160) = v15;
    *(v2 + 176) = v16;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

uint64_t Entity._sendEvent<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = REEntityGetSceneNullable();
  if (result)
  {
    v7 = result;
    v8 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v8)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v7);
    }

    Scene.eventService.getter(v13);

    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    EventService.publish<A>(_:on:componentType:)(a1, v11, 0, 0, v9, a2, v10);
    outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t Entity._sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  result = REEntityGetSceneNullable();
  if (result)
  {
    v9 = result;
    v10 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v10)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v9);
    }

    Scene.eventService.getter(v15);

    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    EventService.publish<A>(_:on:componentType:)(a1, v13, 0, 0, v11, a2, v12, a3);
    outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t Entity.sendEvent(_:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return Entity._sendEvent<A>(_:)(v2, v1);
}

{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return Entity._sendEvent<A>(_:)(v3, v1, v2);
}

uint64_t Entity.sendEvent<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  result = REEntityGetSceneNullable();
  if (result)
  {
    v13 = result;
    v14 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v14)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v13);
    }

    Scene.eventService.getter(v17);

    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    EventService.publish<A>(_:on:componentType:)(a1, a2, a3, a4, v15, a5, v16);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

uint64_t Entity.sendEvent<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  result = REEntityGetSceneNullable();
  if (result)
  {
    v15 = result;
    v16 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v16)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v15);
    }

    Scene.eventService.getter(v19);

    v17 = v20;
    v18 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    EventService.publish<A>(_:on:componentType:)(a1, a2, a3, a4, v17, a5, v18, a6);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

void __AccessibilityComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REAccessibilityComponentSetIsRoot();
  v4 = v1[1];
  REAccessibilityComponentSetEnabled();
  if (*(v1 + 2))
  {
    v5 = *(v1 + 1);
    String.utf8CString.getter();
  }

  REAccessibilityComponentSetIdentifier();
  swift_unknownObjectRelease();
  if (*(v1 + 4))
  {
    v6 = *(v1 + 3);
    String.utf8CString.getter();
  }

  REAccessibilityComponentSetLabel();
  swift_unknownObjectRelease();
  if (*(v1 + 6))
  {
    v7 = *(v1 + 5);
    String.utf8CString.getter();
  }

  REAccessibilityComponentSetDescription();
  swift_unknownObjectRelease();
  REAccessibilityComponentClearCustomContent();
  v8 = *(v1 + 7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 64);
    while (1)
    {
      v11 = *(v10 - 4);
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;

      v16 = MEMORY[0x1C68F3280](v11, v12);

      v17 = MEMORY[0x1C68F3280](v13, v14);

      if (v15 >> 31)
      {
        break;
      }

      v10 += 5;
      REAccessibilityComponentAddCustomContent();

      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

double protocol witness for static Component.__fromCore(_:) in conformance __AccessibilityComponent@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  specialized __AccessibilityComponent.init(from:)(v7);
  v4 = v7[1];
  *a2 = v7[0];
  a2[1] = v4;
  result = *&v8;
  v6 = v9;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t LocalizedStringResource.init(stringRepresentation:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-v4];
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;

  (*(v7 + 8))(v10, v6);
  if (v13 >> 60 == 15)
  {
    v18 = type metadata accessor for LocalizedStringResource();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    v14 = type metadata accessor for PropertyListDecoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v17 = type metadata accessor for LocalizedStringResource();
    lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data?(v11, v13);
    v19 = *(v17 - 8);
    v20 = *(v19 + 56);
    v20(v5, 0, 1, v17);
    (*(v19 + 32))(a1, v5, v17);
    return v20(a1, 0, 1, v17);
  }
}

uint64_t AccessibilityRotorNavigationEvent.publish(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, void (*a9)(char *, uint64_t, uint64_t, uint64_t))
{
  v28 = a6;
  v25 = a4;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v26 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v18[3];
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  (*(v19 + 16))(v29, v21, a2, a3, v25, v21, v20, v19);
  v22 = v29[4];
  (*(v14 + 16))(v17, v27, a5);
  v26(v17, v22, a5, v28);

  return (*(v14 + 8))(v17, a5);
}

uint64_t AccessibilityComponent.CustomContent.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessibilityComponent.CustomContent.label.setter(uint64_t a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccessibilityComponent.CustomContent.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessibilityComponent.CustomContent(0) + 20);
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccessibilityComponent.CustomContent.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessibilityComponent.CustomContent(0) + 20);
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccessibilityComponent.CustomContent.importance.setter(uint64_t a1)
{
  result = type metadata accessor for AccessibilityComponent.CustomContent(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AccessibilityComponent.CustomContent.init(label:value:importance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for AccessibilityComponent.CustomContent(0);
  result = (v9)(a4 + *(v10 + 20), a2, v8);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

BOOL static AccessibilityComponent.CustomContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1C68F21E0]() & 1) != 0 && (v4 = type metadata accessor for AccessibilityComponent.CustomContent(0), (MEMORY[0x1C68F21E0](a1 + *(v4 + 20), a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t AccessibilityComponent.init(from:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityComponent.RotorTypeInternal(0);
  v189 = *(v4 - 8);
  v190 = v4;
  v5 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v181 = &v158 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v187 = (&v158 - v10);
  v196 = type metadata accessor for String.Encoding();
  v166 = *(v196 - 8);
  v11 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AccessibilityComponent.CustomContent(0);
  v160 = *(v161 - 8);
  v13 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v158 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v184 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v158 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v167 = &v158 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v186 = &v158 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v188 = (&v158 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v183 = &v158 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v158 - v31;
  v33 = type metadata accessor for LocalizedStringResource();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v171 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v180 = &v158 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v173 = &v158 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v172 = &v158 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v163 = &v158 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v162 = &v158 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v175 = &v158 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v182 = &v158 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v177 = &v158 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v158 - v54;
  v56 = type metadata accessor for AccessibilityComponent(0);
  v57 = v56[5];
  v179 = v34;
  v58 = *(v34 + 56);
  v58(&a2[v57], 1, 1, v33);
  v59 = v56[6];
  v191 = v58;
  v192 = v34 + 56;
  v58(&a2[v59], 1, 1, v33);
  v176 = v56;
  v164 = v56[10];
  *&a2[v164] = 0;
  IsEnabled = REAccessibilityComponentIsEnabled();
  v178 = a2;
  *a2 = IsEnabled;
  Label = REAccessibilityComponentGetLabel();
  v194 = a1;
  if (Label)
  {
    String.init(cString:)();
    LocalizedStringResource.init(stringRepresentation:)(v32);
    v62 = v179;
    if ((*(v179 + 48))(v32, 1, v33) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      String.init(cString:)();
      v63 = v183;
      LocalizedStringResource.init(stringLiteral:)();
      v191(v63, 0, 1, v33);
      outlined assign with take of LocalizedStringResource?(v63, &v178[v57]);
    }

    else
    {
      v64 = *(v62 + 32);
      v64(v55, v32, v33);
      v65 = v178;
      outlined destroy of BodyTrackingComponent?(&v178[v57], &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      v64(&v65[v57], v55, v33);
      v191(&v65[v57], 0, 1, v33);
    }
  }

  v193 = v33;
  Value = REAccessibilityComponentGetValue();
  v67 = v187;
  if (Value)
  {
    String.init(cString:)();
    v68 = v188;
    LocalizedStringResource.init(stringRepresentation:)(v188);
    v69 = v179;
    v70 = v193;
    if ((*(v179 + 48))(v68, 1, v193) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v188, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      String.init(cString:)();
      v71 = v183;
      LocalizedStringResource.init(stringLiteral:)();
      v191(v71, 0, 1, v70);
      outlined assign with take of LocalizedStringResource?(v71, &v178[v59]);
    }

    else
    {
      v72 = *(v69 + 32);
      v73 = v177;
      v72(v177, v188, v70);
      v74 = v178;
      outlined destroy of BodyTrackingComponent?(&v178[v59], &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      v72(&v74[v59], v73, v70);
      v191(&v74[v59], 0, 1, v70);
    }
  }

  v75 = v176[7];
  *&v178[v75] = REAccessibilityComponentGetTraits();
  result = REAccessibilityComponentGetCustomContentCount();
  if (result < 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v77 = result;
  if (result)
  {
    v78 = 0;
    v188 = (v166 + 8);
    v177 = (v179 + 32);
    v168 = (v179 + 8);
    v169 = MEMORY[0x1E69E7CC0];
    v183 = result;
    while (1)
    {
      v79 = REAccessibilityComponentGetCustomContentLabelAtIndex();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = v195;
      static String.Encoding.utf8.getter();
      v81 = String.data(using:allowLossyConversion:)();
      v83 = v82;

      v84 = *v188;
      (*v188)(v80, v196);
      if (v83 >> 60 != 15)
      {
        v85 = type metadata accessor for PropertyListDecoder();
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_allocObject();
        PropertyListDecoder.init()();
        lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
        v88 = v186;
        v89 = v193;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        outlined consume of Data?(v81, v83);
        v191(v88, 0, 1, v89);
        v90 = *v177;
        v91 = v175;
        (*v177)(v175, v88, v89);
        v170 = v90;
        v90(v182, v91, v89);
        v92 = REAccessibilityComponentGetCustomContentValueAtIndex();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v93 = v195;
        static String.Encoding.utf8.getter();
        v94 = String.data(using:allowLossyConversion:)();
        v96 = v95;

        v84(v93, v196);
        if (v96 >> 60 == 15)
        {
          (*v168)(v182, v89);
          v67 = v187;
          v77 = v183;
        }

        else
        {
          v97 = *(v85 + 48);
          v98 = *(v85 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          v99 = v167;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          outlined consume of Data?(v94, v96);
          v191(v99, 0, 1, v89);
          v100 = v163;
          v101 = v170;
          v170(v163, v99, v89);
          v102 = v162;
          v101(v162, v100, v89);
          result = REAccessibilityComponentGetCustomContentImportanceAtIndex();
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

          v103 = result;
          v104 = v159;
          v101(v159, v182, v89);
          v105 = v102;
          v106 = v161;
          v101((v104 + *(v161 + 20)), v105, v89);
          *(v104 + *(v106 + 24)) = v103;
          outlined init with take of AccessibilityComponent.RotorTypeInternal(v104, v165, type metadata accessor for AccessibilityComponent.CustomContent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169[2] + 1, 1, v169);
          }

          v67 = v187;
          v77 = v183;
          v108 = v169[2];
          v107 = v169[3];
          if (v108 >= v107 >> 1)
          {
            v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107 > 1, v108 + 1, 1, v169);
          }

          v109 = v169;
          v169[2] = v108 + 1;
          outlined init with take of AccessibilityComponent.RotorTypeInternal(v165, v109 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v108, type metadata accessor for AccessibilityComponent.CustomContent);
        }
      }

      if (v77 == ++v78)
      {
        goto LABEL_24;
      }
    }
  }

  v169 = MEMORY[0x1E69E7CC0];
LABEL_24:
  *&v178[v176[8]] = v169;
  result = REAccessibilityComponentGetSystemRotorsCount();
  if (result < 0)
  {
    goto LABEL_61;
  }

  v110 = result;
  if (result)
  {
    v111 = 0;
    v112 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = REAccessibilityComponentGetSystemRotorAtIndex();
      if (result < 0)
      {
        break;
      }

      *v67 = result;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112[2] + 1, 1, v112);
      }

      v114 = v112[2];
      v113 = v112[3];
      if (v114 >= v113 >> 1)
      {
        v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113 > 1, v114 + 1, 1, v112);
      }

      ++v111;
      v112[2] = v114 + 1;
      outlined init with take of AccessibilityComponent.RotorTypeInternal(v67, v112 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v114, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
      if (v110 == v111)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v112 = MEMORY[0x1E69E7CC0];
LABEL_35:
  result = REAccessibilityComponentGetCustomRotorsCount();
  if (result < 0)
  {
    goto LABEL_62;
  }

  v115 = result;
  if (result)
  {
    v116 = 0;
    v117 = (v166 + 8);
    v187 = (v179 + 32);
    v188 = MEMORY[0x1E69E7CC0];
    v186 = result;
    do
    {
      CustomRotorAtIndex = REAccessibilityComponentGetCustomRotorAtIndex();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v119 = v195;
      static String.Encoding.utf8.getter();
      v120 = String.data(using:allowLossyConversion:)();
      v122 = v121;

      (*v117)(v119, v196);
      if (v122 >> 60 != 15)
      {
        v123 = type metadata accessor for PropertyListDecoder();
        v124 = *(v123 + 48);
        v125 = *(v123 + 52);
        swift_allocObject();
        PropertyListDecoder.init()();
        lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
        v126 = v185;
        v127 = v193;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        outlined consume of Data?(v120, v122);
        v191(v126, 0, 1, v127);
        v128 = *v187;
        v129 = v173;
        (*v187)(v173, v126, v127);
        v130 = v172;
        v128(v172, v129, v127);
        v131 = v174;
        v128(v174, v130, v127);
        swift_storeEnumTagMultiPayload();
        outlined init with take of AccessibilityComponent.RotorTypeInternal(v131, v181, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v188[2] + 1, 1, v188);
        }

        v133 = v188[2];
        v132 = v188[3];
        v115 = v186;
        if (v133 >= v132 >> 1)
        {
          v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v132 > 1, v133 + 1, 1, v188);
        }

        v135 = v188;
        v134 = v189;
        v188[2] = v133 + 1;
        outlined init with take of AccessibilityComponent.RotorTypeInternal(v181, v135 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v133, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
      }

      ++v116;
    }

    while (v115 != v116);
  }

  else
  {
    v188 = MEMORY[0x1E69E7CC0];
  }

  v136 = v176[9];
  v197 = v112;
  specialized Array.append<A>(contentsOf:)(v188);
  v137 = v178;
  *&v178[v136] = v197;
  result = REAccessibilityComponentGetSystemActions();
  if (result < 0)
  {
    goto LABEL_63;
  }

  *&v137[v164] = result;
  result = REAccessibilityComponentGetCustomActionsCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v138 = result;
    if (result)
    {
      v139 = 0;
      v140 = (v166 + 8);
      v190 = (v179 + 32);
      v141 = MEMORY[0x1E69E7CC0];
      do
      {
        CustomActionAtIndex = REAccessibilityComponentGetCustomActionAtIndex();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v143 = v195;
        static String.Encoding.utf8.getter();
        v144 = String.data(using:allowLossyConversion:)();
        v146 = v145;

        result = (*v140)(v143, v196);
        if (v146 >> 60 != 15)
        {
          v147 = type metadata accessor for PropertyListDecoder();
          v148 = *(v147 + 48);
          v149 = *(v147 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
          v150 = v184;
          v151 = v193;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          outlined consume of Data?(v144, v146);
          v191(v150, 0, 1, v151);
          v152 = *v190;
          v153 = v171;
          (*v190)(v171, v150, v151);
          v152(v180, v153, v151);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141);
          }

          v155 = v141[2];
          v154 = v141[3];
          v156 = v179;
          if (v155 >= v154 >> 1)
          {
            v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v154 > 1, v155 + 1, 1, v141);
            v156 = v179;
            v141 = v157;
          }

          v141[2] = v155 + 1;
          result = (v152)(v141 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v155, v180, v193);
        }

        ++v139;
      }

      while (v138 != v139);
    }

    else
    {
      v141 = MEMORY[0x1E69E7CC0];
    }

    *&v178[v176[11]] = v141;
    return result;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t AccessibilityComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v118 - v9;
  v123 = type metadata accessor for AccessibilityComponent.RotorTypeInternal(0);
  v119 = *(v123 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v123 - 8);
  v122 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for AccessibilityComponent.CustomContent(0);
  v12 = *(v125 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v125);
  v126 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for String.Encoding();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v129 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v118 - v23;
  v25 = *v2;
  v130 = *a1;
  REAccessibilityComponentSetEnabled();
  v26 = type metadata accessor for AccessibilityComponent(0);
  outlined init with copy of LocalizedStringResource?(&v2[v26[5]], v24);
  v131 = v5;
  v27 = *(v5 + 48);
  v28 = v27(v24, 1, v4);
  v132 = v4;
  v120 = v26;
  v121 = v2;
  if (v28 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v24, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  }

  else
  {
    v29 = type metadata accessor for PropertyListEncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v118 = v21;
    v128 = v12;
    v33 = v32;
    v35 = v34;
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v37 = v36;
    v38 = v33;
    v4 = v132;
    outlined consume of Data._Representation(v38, v35);

    (*(v131 + 8))(v24, v4);
    if (v37)
    {
      String.utf8CString.getter();
    }

    v26 = v120;
    v2 = v121;
    v12 = v128;
    v21 = v118;
  }

  REAccessibilityComponentSetLabel();
  swift_unknownObjectRelease();
  outlined init with copy of LocalizedStringResource?(&v2[v26[6]], v21);
  if (v27(v21, 1, v4) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  }

  else
  {
    v39 = type metadata accessor for PropertyListEncoder();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
    v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v44 = v43;
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v46 = v45;
    v47 = v44;
    v4 = v132;
    outlined consume of Data._Representation(v42, v47);

    (*(v131 + 8))(v21, v4);
    if (v46)
    {
      String.utf8CString.getter();
    }

    v2 = v121;
  }

  REAccessibilityComponentSetValue();
  swift_unknownObjectRelease();
  REAccessibilityComponentClearCustomContent();
  v48 = *&v2[v26[8]];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v48 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v128 = v12[9];
    v51 = v126;
    do
    {
      outlined init with copy of AccessibilityComponent.CustomContent(v50, v51, type metadata accessor for AccessibilityComponent.CustomContent);
      v52 = type metadata accessor for PropertyListEncoder();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      dispatch thunk of PropertyListEncoder.outputFormat.setter();
      lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
      v55 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v57 = v56;
      static String.Encoding.utf8.getter();
      v58 = String.init(data:encoding:)();
      v60 = v59;
      outlined consume of Data._Representation(v55, v57);

      if (v60)
      {
        v61 = v58;
        v62 = *(v125 + 20);
        v63 = *(v52 + 48);
        v64 = *(v52 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        dispatch thunk of PropertyListEncoder.outputFormat.setter();
        v65 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v67 = v66;
        static String.Encoding.utf8.getter();
        v68 = String.init(data:encoding:)();
        v70 = v69;
        outlined consume of Data._Representation(v65, v67);

        if (v70)
        {
          v71 = v68;
          v51 = v126;
          v72 = *(v126 + *(v125 + 24));
          v73 = MEMORY[0x1C68F3280](v61, v60);

          v74 = MEMORY[0x1C68F3280](v71, v70);

          if (v72 >> 31)
          {
            goto LABEL_41;
          }

          REAccessibilityComponentAddCustomContent();

          v4 = v132;
          goto LABEL_13;
        }
      }

      v4 = v132;
      v51 = v126;
LABEL_13:
      outlined destroy of AccessibilityComponent.CustomContent(v51, type metadata accessor for AccessibilityComponent.CustomContent);
      v50 += v128;
      --v49;
    }

    while (v49);
  }

  v77 = v120;
  v76 = v121;
  v78 = *&v121[v120[7]];
  REAccessibilityComponentSetTraits();
  REAccessibilityComponentClearSystemRotors();
  result = REAccessibilityComponentClearCustomRotors();
  v79 = *&v76[v77[9]];
  v80 = *(v79 + 16);
  if (v80)
  {
    v81 = v79 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v82 = *(v119 + 72);
    v128 = v131 + 32;
    v126 = (v131 + 8);
    v83 = v127;
    v84 = v124;
    v85 = v122;
    while (1)
    {
      outlined init with copy of AccessibilityComponent.CustomContent(v81, v85, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        (*v128)(v84, v85, v4);
        v86 = type metadata accessor for PropertyListEncoder();
        v87 = *(v86 + 48);
        v88 = *(v86 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        dispatch thunk of PropertyListEncoder.outputFormat.setter();
        lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
        v89 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v91 = v90;
        static String.Encoding.utf8.getter();
        v92 = String.init(data:encoding:)();
        v94 = v93;
        outlined consume of Data._Representation(v89, v91);

        if (v94)
        {
          v95 = MEMORY[0x1C68F3280](v92, v94);

          REAccessibilityComponentAddCustomRotor();
        }

        v4 = v132;
        v83 = v127;
        v84 = v124;
        v85 = v122;
        result = (*v126)(v124, v132);
      }

      else
      {
        if ((*v85 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        result = REAccessibilityComponentAddSystemRotor();
      }

      v81 += v82;
      if (!--v80)
      {
        goto LABEL_31;
      }
    }
  }

  v83 = v127;
LABEL_31:
  v97 = v120;
  v96 = v121;
  if ((*&v121[v120[10]] & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  REAccessibilityComponentSetSystemActions();
  result = REAccessibilityComponentClearCustomActions();
  v98 = *&v96[v97[11]];
  v99 = *(v98 + 16);
  if (v99)
  {
    v100 = *(v131 + 16);
    v101 = v98 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v102 = *(v131 + 72);
    v131 += 16;
    v103 = (v131 - 8);
    v128 = v102;
    v100(v83, v101, v4);
    while (1)
    {
      v104 = type metadata accessor for PropertyListEncoder();
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      dispatch thunk of PropertyListEncoder.outputFormat.setter();
      lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
      v107 = v100;
      v108 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v110 = v109;
      static String.Encoding.utf8.getter();
      v111 = String.init(data:encoding:)();
      v113 = v112;
      outlined consume of Data._Representation(v108, v110);

      if (v113)
      {
        v114 = MEMORY[0x1C68F3280](v111, v113);

        REAccessibilityComponentAddCustomAction();
      }

      v115 = v132;
      v100 = v107;
      v117 = v127;
      v116 = v128;
      result = (*v103)(v127, v132);
      v101 += v116;
      if (!--v99)
      {
        break;
      }

      v100(v117, v101, v115);
    }
  }

  return result;
}