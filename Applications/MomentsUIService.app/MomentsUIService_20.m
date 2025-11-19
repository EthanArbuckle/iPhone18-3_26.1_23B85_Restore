uint64_t MOEventBundleStore.deinit()
{

  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__allBundles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__privateUIBundles, v2);
  v3(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__publicUIBundles, v2);
  v4 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__isLoading;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t MOEventBundleStore.__deallocating_deinit()
{
  MOEventBundleStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t MOEventBundleStore.init()()
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v1 = *(v15 - 8);
  __chkstk_darwin(v15);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  *(v0 + 16) = 0xD000000000000029;
  *(v0 + 24) = 0x80000001002AEB90;
  v8 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__allBundles;
  v16 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService22MOEventBundleWithAssetCGMd);
  Published.init(initialValue:)();
  v9 = *(v5 + 32);
  v9(v0 + v8, v7, v4);
  v10 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__privateUIBundles;
  v16 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v9(v0 + v10, v7, v4);
  v11 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__publicUIBundles;
  v16 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v9(v0 + v11, v7, v4);
  v12 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__isLoading;
  LOBYTE(v16) = 0;
  Published.init(initialValue:)();
  (*(v1 + 32))(v0 + v12, v3, v15);
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isFirstRefresh) = 1;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningSoftRefresh) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_latestRawBundles) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_sourceThirdPartyBundleIds) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_failedResources) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_pendingHandlers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_softRefreshHandlers) = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager;
  *(v0 + v13) = [objc_allocWithZone(MOPromptManager) init];
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MOEventBundleStore@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MOEventBundleStore();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

BOOL MOEventBundle.hasPhotos.getter()
{
  v1 = [v0 resources];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOResource);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = [v7 type];

    ++v5;
  }

  while (v9 != 2);

  return v6;
}

BOOL MOEventBundle.accepted.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_9:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd);
    return 0;
  }

  return (swift_dynamicCast() & 1) != 0 && v7[0] != 3;
}

uint64_t MOEvent.interfaceCategory.getter()
{
  v1 = [v0 category];
  if (v1 == 5 || v1 == 17)
  {
    return 5;
  }

  return [v0 category];
}

uint64_t sub_10020C1FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_10020C248(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_10020C29C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_10020C2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t sub_10020C33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_10020C390(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 296);

  return v2(v3);
}

uint64_t sub_10020C3EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

void *specialized static MOEventBundleStore.filterBundlesForPublicUI(presentationDetails:bundles:)(char a1, unint64_t a2)
{
  v2 = a2;
  if (a1)
  {
  }

  else
  {
    if (a2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if ([v5 interfaceType] == 11)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        if (v7 == i)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

uint64_t sub_10020C604()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10020C67C()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t objectdestroyTm_1()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10020C778()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10020C7BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10020C7F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined copy of MOEventBundleStore.ResourceValidationResult?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10020C890()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10020C8E8()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10020C9A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(a1, v1 + v4, v9, v10, v11, v12, v14, v15);
}

uint64_t sub_10020CB54()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10020CE3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10020CEE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10020CF8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10020D034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_10020D088(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 464);

  return v2(v3);
}

uint64_t sub_10020D0E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  return result;
}

uint64_t sub_10020D138(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 488);

  return v2(v3);
}

uint64_t sub_10020D194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  return result;
}

uint64_t sub_10020D1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 512);

  return v2(v3);
}

uint64_t sub_10020D244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_10020D298(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 536);

  return v2(v3);
}

uint64_t sub_10020D2F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 552))();
  *a2 = result;
  return result;
}

uint64_t sub_10020D348(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 560);

  return v2(v3);
}

uint64_t type metadata accessor for MOEventBundleStore()
{
  result = type metadata singleton initialization cache for MOEventBundleStore;
  if (!type metadata singleton initialization cache for MOEventBundleStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MOEventBundleStore()
{
  type metadata accessor for Published<[MOEventBundleWithAsset]>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Bool>();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[MOEventBundleWithAsset]>()
{
  if (!lazy cache variable for type metadata for Published<[MOEventBundleWithAsset]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16MomentsUIService22MOEventBundleWithAssetCGMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[MOEventBundleWithAsset]>);
    }
  }
}

uint64_t sub_10020D574()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10020D738()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return closure #1 in closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(v0 + v2, v8, v9, v10, v11, v12, v14, v15);
}

uint64_t sub_10020D8FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined consume of MOEventBundleStore.ResourceValidationResult?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10020D984()
{

  return _swift_deallocObject(v0, 32, 7);
}

void specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MOEventBundleStore] calling fetchEventBundles", v5, 2u);
  }

  v6 = [objc_opt_self() sharedInstance];
  [v6 reset];

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
  specialized MOBundleProcessingSession.allowedSourceTypes.getter();
  type metadata accessor for MOEventBundleSourceType(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = partial apply for closure #1 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:);
  v11[4] = v7;
  v13[4] = partial apply for closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:);
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_150;
  v12 = _Block_copy(v13);

  [v8 fetchEventBundlesWithAllowedSourceTypes:isa respectOnboardingDates:1 respectLearnFromThisApp:1 handler:v12];
  _Block_release(v12);
}

uint64_t sub_10020DC9C()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t objectdestroy_146Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *CanvasAssetAccessoryView.borderColor.unsafeMutableAddressor()
{
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  return &static CanvasAssetAccessoryView.borderColor;
}

void one-time initialization function for unselectedConfig()
{
  v0 = [objc_opt_self() systemGrayColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor:v0];

  static CanvasAssetAccessoryView.unselectedConfig = v1;
}

uint64_t *CanvasAssetAccessoryView.unselectedConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for unselectedConfig != -1)
  {
    swift_once();
  }

  return &static CanvasAssetAccessoryView.unselectedConfig;
}

void one-time initialization function for borderColor()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 CGColor];

  static CanvasAssetAccessoryView.borderColor = v1;
}

id one-time initialization function for symbolTintColor()
{
  result = [objc_opt_self() whiteColor];
  static CanvasAssetAccessoryView.symbolTintColor = result;
  return result;
}

uint64_t *CanvasAssetAccessoryView.symbolTintColor.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolTintColor != -1)
  {
    swift_once();
  }

  return &static CanvasAssetAccessoryView.symbolTintColor;
}

uint64_t CanvasAssetAccessoryView.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CanvasAssetAccessoryView.isSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CanvasAssetAccessoryView.keyColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CanvasAssetAccessoryView.keyColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CanvasAssetAccessoryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_isSelected] = 2;
  v9 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_keyColor;
  *&v4[v9] = [objc_opt_self() systemBlueColor];
  v10 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_accessoryButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for CanvasAssetAccessoryView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  CanvasAssetAccessoryView.addButton()();

  return v11;
}

void CanvasAssetAccessoryView.addButton()()
{
  v1 = (*((swift_isaMask & *v0) + 0x68))();
  (*((swift_isaMask & *v0) + 0xA0))((v1 == 2) | (v1 & 1));
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_accessoryButton);
  v3 = [v2 layer];
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  v4 = static CanvasAssetAccessoryView.borderColor;
  [v3 setBorderColor:static CanvasAssetAccessoryView.borderColor];

  v5 = [v2 layer];
  [v5 setBackgroundColor:v4];

  v6 = [v2 layer];
  [v6 setBorderWidth:0.3];

  v7 = [v2 layer];
  [v0 frame];
  [v7 setCornerRadius:v8 * 0.5];

  v9 = [v2 layer];
  v10 = [objc_opt_self() blackColor];
  v11 = [v10 CGColor];

  [v9 setShadowColor:v11];
  v12 = [v2 layer];
  LODWORD(v13) = 1041865114;
  [v12 setShadowOpacity:v13];

  v14 = [v2 layer];
  [v14 setShadowRadius:3.0];

  v15 = [v2 layer];
  [v15 setShadowOffset:{0.0, 0.0}];

  v16 = [v2 layer];
  [v2 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v2 bounds];
  v25 = CGRectGetHeight(v46) * 0.5;
  v26 = [objc_opt_self() bezierPathWithRoundedRect:v18 cornerRadius:{v20, v22, v24, v25}];
  v27 = [v26 CGPath];

  [v16 setShadowPath:v27];
  v28 = [v2 layer];
  [v28 setShadowPathIsBounds:1];

  [v0 addSubview:v2];
  [v0 frame];
  Width = CGRectGetWidth(v47);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v2 widthAnchor];
  v31 = [v30 constraintEqualToConstant:Width];

  [v31 setActive:1];
  [v0 frame];
  Height = CGRectGetHeight(v48);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [v2 heightAnchor];
  v34 = [v33 constraintEqualToConstant:Height];

  [v34 setActive:1];
  v35 = [v2 superview];
  if (v35)
  {
    v36 = v35;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [v2 centerYAnchor];
    v38 = [v36 centerYAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:0.0];
    [v39 setActive:1];
  }

  v40 = [v2 superview];
  if (v40)
  {
    v44 = v40;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [v2 centerXAnchor];
    v42 = [v44 centerXAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    [v43 setConstant:0.0];
    [v43 setActive:1];
  }
}

Swift::Void __swiftcall CanvasAssetAccessoryView.updateCheckmark(isSelected:)(Swift::Bool isSelected)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002A9750;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 whiteColor];
  v5 = *((swift_isaMask & *v1) + 0x80);
  *(v3 + 40) = v5();
  *(v3 + 48) = [v4 whiteColor];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIColor);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() configurationWithPaletteColors:isa];

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for _UIImageSymbolConfiguration);
  v8 = [swift_getObjCClassFromMetadata() configurationPreferringMulticolor];
  v19 = [v7 configurationByApplyingConfiguration:v8];

  v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_accessoryButton);
  if (isSelected)
  {
    v10 = v19;
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    if (v12)
    {
      v13 = v5();
      v14 = [v12 imageWithTintColor:v13];
    }

    else
    {
      v14 = 0;
    }

    [v9 setImage:v14 forState:0];

    v18 = v5();
    [v9 setTintColor:v18];
  }

  else
  {
    if (one-time initialization token for unselectedConfig != -1)
    {
      swift_once();
    }

    v15 = static CanvasAssetAccessoryView.unselectedConfig;
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

    [v9 setImage:v17 forState:0];
    if (one-time initialization token for symbolTintColor != -1)
    {
      swift_once();
    }

    [v9 setTintColor:static CanvasAssetAccessoryView.symbolTintColor];
  }
}

uint64_t CanvasAssetAccessoryView.setTapTarget(target:action:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_accessoryButton);
  outlined init with copy of Any?(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  [v4 addTarget:v10 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

id CanvasAssetAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasAssetAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized CanvasAssetAccessoryView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_isSelected) = 2;
  v1 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_keyColor;
  *(v0 + v1) = [objc_opt_self() systemBlueColor];
  v2 = OBJC_IVAR____TtC16MomentsUIService24CanvasAssetAccessoryView_accessoryButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10020F188@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_10020F23C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

void *MOSuggestionCarouselView.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionCarouselView.collectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_collectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionCarouselView.assetViewModels.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_assetViewModels;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionCarouselView.selectedAssetIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_selectedAssetIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  result = (*((swift_isaMask & *v1) + 0xE0))(v4);
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*MOSuggestionCarouselView.selectedAssetIdentifiers.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionCarouselView.selectedAssetIdentifiers.modify;
}

uint64_t MOSuggestionCarouselView.selectedAssetIdentifiers.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = (*((swift_isaMask & **(a1 + 24)) + 0xE0))(result);
    if (result)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t MOSuggestionCarouselView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionCarouselView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

void MOSuggestionCarouselView.controller.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*MOSuggestionCarouselView.controller.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_controller;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOSuggestionSheetInterstitialView.controller.modify;
}

id MOSuggestionCarouselView.init(controller:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_collectionView] = 0;
  v3 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl;
  *&v1[v3] = [objc_allocWithZone(UIPageControl) init];
  *&v1[OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_assetViewModels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_selectedAssetIdentifiers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MOSuggestionCarouselView();
  v4 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  MOSuggestionCarouselView.configureViewHierarchy()();
  return v6;
}

Swift::Void __swiftcall MOSuggestionCarouselView.reloadAll()()
{
  v1 = MOSuggestionCarouselView.configurePageControl()();
  v2 = (*((swift_isaMask & *v0) + 0x80))(v1);
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }
}

void MOSuggestionCarouselView.reloadAll(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = MOSuggestionCarouselView.configurePageControl()();
  v6 = (*((swift_isaMask & *v2) + 0x80))(v5);
  if (v6)
  {
    v7 = v6;
    (*((swift_isaMask & *v6) + 0x70))(a1, a2);
  }
}

Swift::Void __swiftcall MOSuggestionCarouselView.reloadCell(_:index:)(Swift::OpaquePointer _, Swift::Int index)
{
  v5 = *((swift_isaMask & *v2) + 0xB8);

  v5(v6);
  if (_._rawValue >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > index)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static MOAngelLogger.assets);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "[MOSuggestionSheetAssetGridView] Refusing to reconfigure due to size / index mismatch", v11, 2u);
    }

    goto LABEL_11;
  }

  if (*((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = (*((swift_isaMask & *v2) + 0x80))();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_1002A48B0;
  IndexPath.init(row:section:)();
  oslog = Array._bridgeToObjectiveC()().super.isa;

  [v8 reconfigureItemsAtIndexPaths:oslog];

LABEL_11:
}

void MOSuggestionCarouselView.reloadCellWith(_:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*((swift_isaMask & *v2) + 0xB0))();
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 > a2)
  {
    v8 = *((swift_isaMask & *v3) + 0xC0);

    v9 = v8(v29);
    v11 = v10;
    v12 = *v10;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v11 = v12;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      *v11 = v12;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
      }

      else
      {
        *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a1;

        v14 = v9(v29, 0);
        v29[0] = (*(*a1 + 512))(v14);
        v29[1] = v15;
        v28[0] = 35;
        v28[1] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v16 = StringProtocol.components<A>(separatedBy:)();

        if (v16[2])
        {
          v17 = v16[4];
          v18 = v16[5];

          v19 = (*((swift_isaMask & *v3) + 0xD8))(v29);
          specialized Set._Variant.insert(_:)(v28, v17, v18);

          v20 = v19(v29, 0);
          v21 = (*((swift_isaMask & *v3) + 0x80))(v20);
          if (v21)
          {
            v22 = v21;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
            type metadata accessor for IndexPath();
            *(swift_allocObject() + 16) = xmmword_1002A48B0;
            IndexPath.init(row:section:)();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v22 reconfigureItemsAtIndexPaths:isa];
          }

          return;
        }
      }

      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (one-time initialization token for assets != -1)
  {
LABEL_22:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static MOAngelLogger.assets);
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v25, "[MOSuggestionSheetAssetGridView] Refusing to reconfigure due to size / index mismatch", v26, 2u);
  }
}

void MOSuggestionCarouselView.configureViewHierarchy()()
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v4 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v4 setScrollDirection:1];
  [v4 setSectionInset:{0.0, 50.0, 0.0, 50.0}];
  v5 = [objc_allocWithZone(type metadata accessor for MOSuggestionSheetCollectionView()) initWithFrame:v4 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];

  type metadata accessor for MOSuggestionCarouselAssetCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v8];

  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setDataSource:v0];
  [v10 setDelegate:v0];

  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setAllowsSelection:1];

  [v10 setAllowsMultipleSelection:1];
  [v0 addSubview:v10];
  v12 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl;
  [v0 addSubview:*(v0 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl)];
  [*(v0 + v12) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002AB350;
  v15 = [v10 topAnchor];
  v16 = [v0 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v14 + 32) = v17;
  v18 = [v10 leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v14 + 40) = v20;
  v21 = [v10 trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v14 + 48) = v23;
  v24 = [*(v0 + v12) centerXAnchor];
  v25 = [v0 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v14 + 56) = v26;
  v27 = [*(v0 + v12) topAnchor];
  v28 = [v10 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v14 + 64) = v29;
  v30 = [*(v0 + v12) bottomAnchor];
  v31 = [v0 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v14 + 72) = v32;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  v34 = *((swift_isaMask & *v0) + 0x88);
  v35 = v10;
  v34(v10);
}

id MOSuggestionCarouselView.configurePageControl()()
{
  v1 = *((swift_isaMask & *v0) + 0xB0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl;
  if (v3 >= 2)
  {
    v6 = *(v0 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl);
    v7 = v1();
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v6 setNumberOfPages:v8];

    v9 = *(v0 + v4);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 blackColor];
    [v11 setCurrentPageIndicatorTintColor:v12];

    v13 = *(v0 + v4);
    v14 = [v10 grayColor];
    v15 = [v14 colorWithAlphaComponent:0.5];

    [v13 setPageIndicatorTintColor:v15];
    [*(v0 + v4) setAccessibilityContainerType:4];
    v16 = *(v0 + v4);
    v17 = [v10 clearColor];
    [v16 setBackgroundColor:v17];

    v5 = &selRef_setUserInteractionEnabled_;
  }

  else
  {
    v5 = &selRef_setHidden_;
  }

  v18 = *(v0 + v4);
  v19 = *v5;

  return [v18 v19];
}

void MOSuggestionCarouselView.updateSelectedAssets(_:)()
{
  v1 = v0;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.assets);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Interstitial] Updating carousel selections)", v5, 2u);
  }

  v6 = *((swift_isaMask & *v1) + 0xD0);

  v8 = v6(v7);
  v9 = (*((swift_isaMask & *v1) + 0x80))(v8);
  if (v9)
  {
    v10 = v9;
    [v9 reloadData];
  }
}

id MOSuggestionCarouselView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCarouselView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int __swiftcall MOSuggestionCarouselView.collectionView(_:numberOfItemsInSection:)(UICollectionView _, Swift::Int numberOfItemsInSection)
{
  v3 = (*((swift_isaMask & *v2) + 0xB0))(_.super.super.super.super.isa, numberOfItemsInSection);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4;
}

void *MOSuggestionCarouselView.collectionView(_:cellForItemAt:)(NSObject *a1)
{
  v6 = isa;
  v8 = &swift_isaMask;
  v9 = (*((swift_isaMask & *isa) + 0xF8))();
  if (!v9)
  {
    goto LABEL_28;
  }

  v1 = v9;
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  type metadata accessor for MOSuggestionCarouselAssetCell();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    goto LABEL_27;
  }

  v3 = v10;
  v5 = (*((swift_isaMask & *v6) + 0xB0))();
  v11 = IndexPath.item.getter();
  if (v5 >> 62)
  {
    isa = v11;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_22;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v11 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if (v11 >= v12)
      {
        goto LABEL_30;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
LABEL_22:
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v4 = *(v5 + 8 * v11 + 32);
      }

      v14 = (*((*v8 & *v6) + 0xC8))(v13);
      v15 = (*v4 + 512);
      v38 = *v15;
      v16 = (*v15)();
      LOBYTE(v5) = v17;
      v42 = v16;
      v43 = v17;
      v40 = 35;
      v41 = 0xE100000000000000;
      v6 = lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.components<A>(separatedBy:)();

      if (!v18[2])
      {
        break;
      }

      v5 = v18[4];
      v19 = v18[5];

      LOBYTE(v5) = specialized Set.contains(_:)(v5, v19, v14);

      if (v5)
      {
        v20 = IndexPath._bridgeToObjectiveC()().super.isa;
        [a1 selectItemAtIndexPath:v20 animated:0 scrollPosition:1];
      }

      v21 = *((swift_isaMask & *v3) + 0xB0);

      v21(v22);
      v23 = [v3 setSelected:v5 & 1];
      v24 = (*((swift_isaMask & *v1) + 0x1B0))(v23);
      v25 = objc_opt_self();
      v26 = &selRef_systemBlueColor;
      if ((v24 & 1) == 0)
      {
        v26 = &selRef_systemIndigoColor;
      }

      v27 = [v25 *v26];
      (*((swift_isaMask & *v3) + 0xE0))(v27);
      if (one-time initialization token for assets != -1)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static MOAngelLogger.assets);

      a1 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(a1, v29))
      {

        goto LABEL_19;
      }

      v8 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v8 = 67109378;
      *(v8 + 1) = v5 & 1;
      *(v8 + 4) = 2080;
      v31 = v38();
      v5 = v32;
      v42 = v31;
      v43 = v32;
      v40 = 35;
      v41 = 0xE100000000000000;
      isa = StringProtocol.components<A>(separatedBy:)();

      if (*(isa + 16))
      {
        v33 = *(isa + 32);
        v34 = *(isa + 40);

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v39);

        *(v8 + 10) = v35;
        _os_log_impl(&_mh_execute_header, a1, v29, "[Interstitial] cellForItemAt: %{BOOL}d id: %s", v8, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v30);

LABEL_19:

        return v3;
      }

      __break(1u);
LABEL_27:

LABEL_28:
      __break(1u);
LABEL_29:
      v12 = v9;
      v11 = isa;
      if (isa < 0)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_15;
  }

LABEL_30:

  v37 = [objc_allocWithZone(UICollectionViewCell) init];

  return v37;
}

void MOSuggestionCarouselView.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, id a2)
{
  v4 = v2;
  v7 = &swift_isaMask;
  v8 = (*((swift_isaMask & *v2) + 0xF8))();
  if (!v8)
  {
    return;
  }

  v39 = v8;
  v9 = *((swift_isaMask & *v2) + 0xB0);
  v10 = v9();
  v11 = IndexPath.item.getter();
  if (v10 >> 62)
  {
    v32 = v11;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_32;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_39:

    return;
  }

  while (1)
  {
    if (v11 >= v12)
    {
      goto LABEL_39;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
LABEL_32:
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v3 = *(v10 + 8 * v11 + 32);
    }

    type metadata accessor for MOSuggestionCarouselAssetCell();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      break;
    }

    v10 = v13;
    v38 = a1;
    a2 = a2;
    a1 = IndexPath.item.getter();
    v14 = v9();
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

LABEL_34:
    v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:

    v17 = v3;
    if (a1 >= v15)
    {

      return;
    }

    v18 = a2;
    a2 = (*((*v7 & *v4) + 0xC8))(v16);
    v37 = *(v17->isa + 64);
    v19 = v37();
    v21 = v20;
    v43 = v19;
    v44 = v20;
    v41 = 35;
    v42 = 0xE100000000000000;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v22 = StringProtocol.components<A>(separatedBy:)();

    if (!v22[2])
    {
      __break(1u);
LABEL_36:
      swift_once();
      goto LABEL_18;
    }

    v23 = v22[4];
    v9 = v22[5];

    v21 = specialized Set.contains(_:)(v23, v9, a2);

    if (v21)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v38 selectItemAtIndexPath:isa animated:0 scrollPosition:1];
    }

    [v10 setSelected:v21 & 1];
    v25 = (*((*v7 & *v39) + 0x1B0))();
    v26 = objc_opt_self();
    v27 = &selRef_systemBlueColor;
    if ((v25 & 1) == 0)
    {
      v27 = &selRef_systemIndigoColor;
    }

    (*((*v7 & *v10) + 0xE0))([v26 *v27]);
    a2 = v18;
    if (one-time initialization token for assets != -1)
    {
      goto LABEL_36;
    }

LABEL_18:
    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static MOAngelLogger.assets);

    v3 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v3, v29))
    {

      goto LABEL_28;
    }

    v10 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v10 = 67109378;
    *(v10 + 4) = v21 & 1;
    *(v10 + 8) = 2080;
    v30 = v37();
    a1 = v31;
    v43 = v30;
    v44 = v31;
    v41 = 35;
    v42 = 0xE100000000000000;
    v32 = StringProtocol.components<A>(separatedBy:)();

    if (*(v32 + 16))
    {
      v34 = *(v32 + 32);
      v35 = *(v32 + 40);

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v40);

      *(v10 + 10) = v36;
      _os_log_impl(&_mh_execute_header, v3, v29, "[Interstitial] willDisplay isSelected: %{BOOL}d id: %s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v7);

LABEL_28:

      return;
    }

    __break(1u);
LABEL_38:
    v12 = v33;
    v11 = v32;
    if (v32 < 0)
    {
      goto LABEL_39;
    }
  }
}

uint64_t @objc MOSuggestionCarouselView.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

double MOSuggestionCarouselView.collectionView(_:layout:sizeForItemAt:)(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = a2;
    [v4 minimumInteritemSpacing];
    v7 = v6;
    [v4 sectionInset];
    v9 = v7 + v8;
  }

  else
  {
    v9 = 0.0;
  }

  [a1 frame];
  v11 = v10;

  return v11 - v9 + -40.0;
}

uint64_t MOSuggestionCarouselView.scrollToIndex(index:animated:velocity:)(int64_t a1, char a2, double a3)
{
  result = (*((swift_isaMask & *v3) + 0x80))();
  if (result)
  {
    v8 = result;
    if (a1 < 0 || ((v9 = (*((swift_isaMask & *v3) + 0xB0))(), v9 >> 62) ? (v10 = _CocoaArrayWrapper.endIndex.getter()) : (v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v10 <= a1))
    {

      return 0;
    }

    else
    {
      [v8 frame];
      v11 = CGRectGetWidth(v26) + -50.0 + -40.0;
      v12 = a1 * v11;
      if (v12 > 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = v8;
      [v14 contentSize];
      v16 = v15;
      if (v13 <= v16)
      {
        v16 = v13;
      }

      v17 = v16;
      [v14 contentOffset];
      v19 = v18;

      if (a2)
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v14;
        *(v21 + 24) = v17;
        *(v21 + 32) = v19;
        v25[4] = partial apply for closure #1 in MOSuggestionInterstitialCarouselView.scrollToIndex(index:shouldScroll:velocity:);
        v25[5] = v21;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 1107296256;
        v25[2] = thunk for @escaping @callee_guaranteed () -> ();
        v25[3] = &block_descriptor_37;
        v22 = _Block_copy(v25);
        v23 = v14;

        [v20 animateWithDuration:v22 animations:a3];
        _Block_release(v22);
      }

      else
      {
        [v14 setContentOffset:0 animated:{v17, v19}];
      }

      v24 = *(v3 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl);
      [v24 setCurrentPage:a1];

      return *&v17;
    }
  }

  return result;
}

void MOSuggestionCarouselView.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, double *a2, double a3)
{
  [a1 frame];
  if (CGRectGetWidth(v15) > 0.0)
  {
    [a1 frame];
    v6 = CGRectGetWidth(v16) + -50.0 + -40.0;
    [a1 contentOffset];
    v8 = v7;
    v9 = *a2;
    v10 = v8 / v6;
    if (v9 < v8)
    {
      v10 = floorf(v10);
      if ((LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (v10 <= -9.2234e18)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (v10 < 9.2234e18)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v10 = ceilf(v10);
    if ((LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v10 > -9.2234e18)
      {
        if (v10 < 9.2234e18)
        {
LABEL_10:
          v11 = v10;
          [a1 frame];
          Width = CGRectGetWidth(v17);
          v13 = MOSuggestionCarouselView.scrollToIndex(index:animated:velocity:)(v11, 1, (1.0 - fabs(a3 / Width)) * 0.14 + 0.01);
          if ((v14 & 1) == 0)
          {
            *a2 = v13;
          }

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_14;
  }
}

uint64_t (*MOSuggestionCarouselView.assetTypeSummary.getter())()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService19MOAssetAndMediaTypeV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v35 = v1;
  v32 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xB0))();
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_37:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v33 = v3 & 0xC000000000000001;
      v28 = v3 + 32;
      v29 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v4;
      v31 = v3;
      while (1)
      {
        if (v33)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v5 >= *(v29 + 16))
          {
            goto LABEL_36;
          }

          v6 = *(v28 + 8 * v5);

          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v8 = (*(*v6 + 632))();
        if (v8)
        {
          v9 = v8;
          v10 = (*(*v6 + 776))();
          v11 = (*((swift_isaMask & *v32) + 0xC8))();
          v12 = (*(*v6 + 512))();
          v1 = v13;
          v34[0] = v12;
          v34[1] = v13;
          v34[9] = 35;
          v34[10] = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v14 = StringProtocol.components<A>(separatedBy:)();

          if (!v14[2])
          {
            goto LABEL_35;
          }

          v1 = v14[4];
          v15 = v14[5];

          if (*(v11 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v16 = Hasher._finalize()();
            v17 = -1 << *(v11 + 32);
            v18 = v16 & ~v17;
            if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
LABEL_25:

              v4 = v30;
              v3 = v31;
              goto LABEL_7;
            }

            v19 = ~v17;
            while (1)
            {
              v20 = (*(v11 + 48) + 16 * v18);
              v21 = *v20 == v1 && v20[1] == v15;
              if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v22 = v35;
            v3 = v31;
            if (!v35[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v9, v10, 0), (v23 & 1) == 0))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v34[0] = v22;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v9, v10, 0, isUniquelyReferenced_nonNull_native);

              v35 = v34[0];
              v4 = v30;
              goto LABEL_7;
            }

            result = specialized Dictionary.subscript.modify(v34, v9, v10, 0);
            v4 = v30;
            if ((*(v25 + 8) & 1) == 0)
            {
              if (__OFADD__(*v25, 1))
              {
                __break(1u);
                return result;
              }

              ++*v25;
            }

            (result)(v34, 0);
          }

          else
          {
          }
        }

LABEL_7:
        if (v5 == v4)
        {

          v1 = v35;
          goto LABEL_39;
        }
      }
    }
  }

LABEL_39:
  v27 = specialized static MOSuggestionInterstitialListAssetViewModel.assetTypeDictionaryToCountString(dict:)(v1);

  return v27;
}

void specialized MOSuggestionCarouselView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_collectionView) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_pageControl;
  *(v0 + v1) = [objc_allocWithZone(UIPageControl) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_assetViewModels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_selectedAssetIdentifiers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService24MOSuggestionCarouselView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized MOSuggestionCarouselView.collectionView(_:didSelectItemAt:)()
{
  v2 = v0;
  v3 = (*((swift_isaMask & *v0) + 0xB0))();
  v4 = IndexPath.item.getter();
  if (v3 >> 62)
  {
    v17 = v4;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_26;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    if (v4 >= v5)
    {
      goto LABEL_32;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
LABEL_26:
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        swift_once();
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v4 + 32);
    }

    v8 = (*v6 + 512);
    v1 = *v8;
    if ((*v8)(v7) == 0x6C6F686563616C70 && v9 == 0xEB00000000726564)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
    }

    if (one-time initialization token for assets != -1)
    {
      goto LABEL_28;
    }

LABEL_17:
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static MOAngelLogger.assets);

    v3 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v14))
    {
      v32 = v14;
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v15 = 136315138;
      v34 = v1();
      v35 = v16;
      v36 = 35;
      v37 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v17 = StringProtocol.components<A>(separatedBy:)();

      if (!*(v17 + 16))
      {
        goto LABEL_30;
      }

      v19 = *(v17 + 32);
      v20 = *(v17 + 40);

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v3, v32, "[MOSuggestionCarouselView] selecting %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    v22 = v1();
    v3 = v23;
    v34 = v22;
    v35 = v23;
    v36 = 35;
    v37 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v1 = &v34;
    v17 = StringProtocol.components<A>(separatedBy:)();

    if (*(v17 + 16))
    {
      v24 = *(v17 + 32);
      v25 = *(v17 + 40);

      v26 = (*((swift_isaMask & *v2) + 0xD8))(&v34);
      specialized Set._Variant.insert(_:)(&v36, v24, v25);

      v27 = v26(&v34, 0);
      if ((*((swift_isaMask & *v2) + 0xE0))(v27))
      {
        v29 = v28;
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(ObjectType, v29);
        swift_unknownObjectRelease();
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v5 = v18;
    v4 = v17;
    if (v17 < 0)
    {
      goto LABEL_32;
    }
  }

LABEL_32:
}

uint64_t specialized MOSuggestionCarouselView.collectionView(_:didDeselectItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = &swift_isaMask;
  v5 = (*((swift_isaMask & *v1) + 0xB0))();
  v6 = a1;
  v7 = IndexPath.item.getter();
  if (v5 >> 62)
  {
    v6 = v7;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_19;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v7 & 0x8000000000000000) == 0)
  {
    do
    {
      if (v7 >= v8)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
LABEL_19:
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static MOAngelLogger.assets);

      v5 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v5, v11))
      {
        v12 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v27 = v4;
        *v12 = 136315138;
        v28 = (*(*v9 + 512))();
        v29 = v13;
        v30 = 35;
        v31 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v6 = StringProtocol.components<A>(separatedBy:)();

        if (!*(v6 + 16))
        {
          goto LABEL_22;
        }

        v14 = *(v6 + 32);
        v15 = *(v6 + 40);

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v27);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v5, v11, "[MOSuggestionCarouselView] un-selecting %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v4);

        v4 = &swift_isaMask;
      }

      else
      {
      }

      v17 = (*(*v9 + 512))();
      v5 = v18;
      v28 = v17;
      v29 = v18;
      v30 = 35;
      v31 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v6 = StringProtocol.components<A>(separatedBy:)();

      if (*(v6 + 16))
      {
        v19 = *(v6 + 32);
        v20 = *(v6 + 40);

        v21 = (*((*v4 & *v2) + 0xD8))(&v28);
        specialized Set._Variant.remove(_:)(v19, v20);

        v22 = v21(&v28, 0);
        if ((*((*v4 & *v2) + 0xE0))(v22))
        {
          v24 = v23;
          ObjectType = swift_getObjectType();
          (*(v24 + 8))(ObjectType, v24);
          swift_unknownObjectRelease();
        }
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v8 = v7;
      v7 = v6;
    }

    while ((v6 & 0x8000000000000000) == 0);
  }
}

uint64_t sub_1002134D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100213520@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_10021357C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1002135E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_100213640(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xB8);

  return v2(v3);
}

uint64_t sub_1002136A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_100213700(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xD0);

  return v2(v3);
}

uint64_t sub_100213764@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1002137C0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0xE8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100213834@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_100213890(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x100);
  v4 = *a1;
  return v3(v2);
}

uint64_t MOSuggestionAssetWorkoutRouteProvider.getAsset(workoutUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MOSuggestionAssetWorkoutProvider();
  inited = swift_initStackObject();
  v8 = [objc_allocWithZone(HKHealthStore) init];
  *(inited + 24) = v8;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v3;

  MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(a1, partial apply for closure #1 in MOSuggestionAssetWorkoutRouteProvider.getAsset(workoutUUID:completion:), v9);
}

uint64_t closure #1 in MOSuggestionAssetWorkoutRouteProvider.getAsset(workoutUUID:completion:)(void *a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  if (a1)
  {
    v7 = a4[4];
    a4[4] = a1;
    v8 = a1;

    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *(*a4 + 160);

    v10(partial apply for closure #1 in closure #1 in MOSuggestionAssetWorkoutRouteProvider.getAsset(workoutUUID:completion:), v9);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static MOAngelLogger.shared);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to locate workout", v15, 2u);
    }

    return a2(0);
  }
}

void closure #1 in closure #1 in MOSuggestionAssetWorkoutRouteProvider.getAsset(workoutUUID:completion:)(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v8 = a1;
    a2(a1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static MOAngelLogger.shared);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate route", v7, 2u);
    }

    a2(0);
  }
}

void MOSuggestionAssetWorkoutRouteProvider.generateRoute(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 predicateForObjectsFromWorkout:v7];
    v9 = [objc_opt_self() workoutRouteType];
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v2;
    v11 = objc_allocWithZone(HKAnchoredObjectQuery);
    v14[4] = partial apply for closure #1 in MOSuggestionAssetWorkoutRouteProvider.generateRoute(completion:);
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
    v14[3] = &block_descriptor_38;
    v12 = _Block_copy(v14);

    v13 = [v11 initWithType:v9 predicate:v8 anchor:0 limit:0 resultsHandler:v12];

    _Block_release(v12);

    [*(v2 + 16) executeQuery:v13];
  }

  else
  {
    a1(0);
  }
}

void closure #1 in MOSuggestionAssetWorkoutRouteProvider.generateRoute(completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v14 = a8;
    v15 = a2;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v15;
    a8 = v14;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    a6(0);
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = a8;
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v10 + 16))
    {
      __break(1u);
      return;
    }

    v11 = a8;
    v12 = *(a2 + 32);
  }

  v17 = v12;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    goto LABEL_12;
  }

  (*(*v11 + 168))(v13, a6, a7);
}

void MOSuggestionAssetWorkoutRouteProvider.fetchRouteLocations(_:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + 32);
  if (v6)
  {
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v6;
    v8[4] = a2;
    v8[5] = a3;
    v9 = objc_allocWithZone(HKWorkoutRouteQuery);
    v13[4] = partial apply for closure #1 in MOSuggestionAssetWorkoutRouteProvider.fetchRouteLocations(_:completion:);
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ();
    v13[3] = &block_descriptor_9_0;
    v10 = _Block_copy(v13);
    v11 = v6;

    v12 = [v9 initWithRoute:a1 dataHandler:v10];
    _Block_release(v10);

    [*(v3 + 16) executeQuery:v12];
  }

  else
  {
    a2(0);
  }
}

void closure #1 in MOSuggestionAssetWorkoutRouteProvider.fetchRouteLocations(_:completion:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id))
{
  if (a2)
  {
    if (a2 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v11 < 0)
      {
        __break(1u);
        return;
      }

      v12 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = v13;
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        ++v12;
        (*(*static MOLocationShifter.shared + 104))(v14);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v11 != v12);
    }

    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);
    swift_endAccess();
  }

  if (a3)
  {
    swift_beginAccess();
    v15 = objc_allocWithZone(MOSuggestionAssetWorkoutRoute);
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v15 init:isa workout:a6];

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static MOAngelLogger.shared);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Fetched workout route", v21, 2u);
    }

    v22 = v17;
    a7(v17);
  }
}

void *MOSuggestionAssetWorkoutRouteProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(HKHealthStore) init];
  v0[3] = _swiftEmptyArrayStorage;
  v0[4] = 0;
  return v0;
}

void *MOSuggestionAssetWorkoutRouteProvider.init()()
{
  v0[2] = [objc_allocWithZone(HKHealthStore) init];
  v0[3] = _swiftEmptyArrayStorage;
  v0[4] = 0;
  return v0;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKSample);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKDeletedObject);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100214618()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CLLocation);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_10021475C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *MOSuggestionMotionAssetView.__allocating_init(image:title:subtitle:assignedTileSize:frame:snowglobeView:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, double a8, double a9, double a10, double a11)
{
  v12 = v11;
  v21 = objc_allocWithZone(v12);
  v22 = String._bridgeToObjectiveC()();
  v23 = objc_opt_self();
  v24 = [v23 colorNamed:v22];

  if (!v24)
  {
    v24 = [v23 systemWhiteColor];
  }

  *&v21[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_motionBackground] = v24;
  v25 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_exerciseNameLabel;
  *&v21[v25] = closure #1 in variable initialization expression of MOSuggestionMotionAssetView.exerciseNameLabel();
  v26 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_workoutDataLabel;
  v27 = [objc_allocWithZone(UILabel) init];
  v28 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v27 setFont:v28];

  [v27 setTextAlignment:0];
  [v27 setAdjustsFontForContentSizeCategory:1];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  *&v21[v26] = v27;
  v29 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_labelStack;
  v30 = [objc_allocWithZone(UIStackView) init];
  [v30 setAxis:1];
  [v30 setAlignment:1];
  *&v21[v29] = v30;
  v31 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_imageView;
  type metadata accessor for MOSuggestionRoundView();
  *&v21[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = &v21[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_title];
  *v32 = a2;
  v32[1] = a3;
  v21[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_assignedTileSize] = a6;
  v33 = &v21[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_subtitle];
  *v33 = a4;
  v33[1] = a5;
  *&v21[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_snowglobeView] = a7;
  v45.receiver = v21;
  v45.super_class = v12;
  v34 = a7;
  v35 = objc_msgSendSuper2(&v45, "initWithFrame:", a8, a9, a10, a11);
  [v35 setContentMode:1];
  (*((swift_isaMask & *v35) + 0xE8))(a1);
  [v35 setIsAccessibilityElement:1];
  v36 = [objc_opt_self() mainBundle];
  v46._object = 0x80000001002B1E30;
  v37._countAndFlagsBits = 0x676E696B6C6157;
  v46._countAndFlagsBits = 0xD000000000000036;
  v37._object = 0xE700000000000000;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

  v39 = String._bridgeToObjectiveC()();

  [v35 setAccessibilityLabel:v39];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1002A48B0;
  *(v40 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v40 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v35;
}

id closure #1 in variable initialization expression of MOSuggestionMotionAssetView.exerciseNameLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1002A48B0;
  *(v3 + 32) = UIFontWeightTrait;
  *(v3 + 40) = UIFontWeightBold;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v1 fontDescriptorByAddingAttributes:isa];

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  [v0 setFont:v9];

  [v0 setTextAlignment:0];
  [v0 setLineBreakMode:4];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v0 setNumberOfLines:2];
  return v0;
}

id MOSuggestionMotionAssetView.exerciseNameLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_exerciseNameLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionMotionAssetView.exerciseNameLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_exerciseNameLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionMotionAssetView.workoutDataLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_workoutDataLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionMotionAssetView.workoutDataLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_workoutDataLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionMotionAssetView.labelStack.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_labelStack;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionMotionAssetView.labelStack.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_labelStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionMotionAssetView.init(image:title:subtitle:assignedTileSize:frame:snowglobeView:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, double a8, double a9, double a10, double a11)
{
  v21 = String._bridgeToObjectiveC()();
  v22 = objc_opt_self();
  v23 = [v22 colorNamed:v21];

  if (!v23)
  {
    v23 = [v22 systemWhiteColor];
  }

  *&v11[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_motionBackground] = v23;
  v24 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_exerciseNameLabel;
  *&v11[v24] = closure #1 in variable initialization expression of MOSuggestionMotionAssetView.exerciseNameLabel();
  v25 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_workoutDataLabel;
  v26 = [objc_allocWithZone(UILabel) init];
  v27 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v26 setFont:v27];

  [v26 setTextAlignment:0];
  [v26 setAdjustsFontForContentSizeCategory:1];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  *&v11[v25] = v26;
  v28 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_labelStack;
  v29 = [objc_allocWithZone(UIStackView) init];
  [v29 setAxis:1];
  [v29 setAlignment:1];
  *&v11[v28] = v29;
  v30 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_imageView;
  type metadata accessor for MOSuggestionRoundView();
  *&v11[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = &v11[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_title];
  *v31 = a2;
  v31[1] = a3;
  v11[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_assignedTileSize] = a6;
  v32 = &v11[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_subtitle];
  *v32 = a4;
  v32[1] = a5;
  *&v11[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_snowglobeView] = a7;
  v43.receiver = v11;
  v43.super_class = type metadata accessor for MOSuggestionMotionAssetView();
  v33 = a7;
  v34 = objc_msgSendSuper2(&v43, "initWithFrame:", a8, a9, a10, a11);
  [v34 setContentMode:1];
  (*((swift_isaMask & *v34) + 0xE8))(a1);
  [v34 setIsAccessibilityElement:1];
  v35 = [objc_opt_self() mainBundle];
  v44._object = 0x80000001002B1E30;
  v36._countAndFlagsBits = 0x676E696B6C6157;
  v44._countAndFlagsBits = 0xD000000000000036;
  v36._object = 0xE700000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v44);

  v38 = String._bridgeToObjectiveC()();

  [v34 setAccessibilityLabel:v38];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1002A48B0;
  *(v39 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v39 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v34;
}

Swift::Void __swiftcall MOSuggestionMotionAssetView.makeUIView(image:)(UIImage_optional image)
{
  isa = image.value.super.isa;
  v3 = [v1 setBackgroundColor:*(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_motionBackground)];
  (*((swift_isaMask & *v1) + 0xF0))(v3);
  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_snowglobeView);
  if (v4)
  {
    v140 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_snowglobeView);
    v5 = v4;
    [v1 addSubview:v5];
    v4 = [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    goto LABEL_14;
  }

  if (!isa)
  {
    v140 = 0;
    goto LABEL_14;
  }

  v6 = objc_allocWithZone(UIImageView);
  v138 = isa;
  v7 = [v6 initWithImage:?];
  [(objc_class *)v7 setContentMode:1];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() colorNamed:v8];

  [(objc_class *)v7 setTintColor:v9];
  v140 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_imageView);
  [v140 addSubview:v7];
  [v1 addSubview:v140];
  [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(objc_class *)v7 heightAnchor];
  v11 = [v140 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 multiplier:0.5];

  [v12 setActive:1];
  v13 = [(objc_class *)v7 widthAnchor];

  v14 = [v140 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 multiplier:0.5];

  [v15 setActive:1];
  v16 = [(objc_class *)v7 superview];
  if (v16)
  {
    v17 = v16;
    [(objc_class *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(objc_class *)v7 centerYAnchor];
    v19 = [v17 centerYAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:0.0];
    [v20 setActive:1];
  }

  v21 = [(objc_class *)v7 superview];
  if (!v21)
  {
    v22 = v138;
LABEL_12:

    goto LABEL_13;
  }

  v22 = v21;
  [(objc_class *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(objc_class *)v7 centerXAnchor];
  v24 = [(objc_class *)v22 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  [v25 setConstant:0.0];
  if (!v25)
  {

    v7 = v138;
    goto LABEL_12;
  }

  [v25 setActive:1];

LABEL_13:
  v4 = v140;
LABEL_14:
  v26 = *((swift_isaMask & *v1) + 0x98);
  v27 = (v26)(v4);
  v28 = String._bridgeToObjectiveC()();
  [v27 setText:v28];

  v29 = *((swift_isaMask & *v1) + 0xB0);
  v30 = v29();
  v31 = String._bridgeToObjectiveC()();
  [v30 setText:v31];

  v32 = v140;
  if (!v140)
  {
    return;
  }

  v33 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_assignedTileSize);
  if (v33 > 8)
  {
    goto LABEL_76;
  }

  if (((1 << v33) & 0xD0) != 0)
  {
    v55 = [v140 superview];
    if (v55)
    {
      v56 = v55;
      [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
      v57 = [v140 leadingAnchor];
      v58 = [v56 leadingAnchor];
      v59 = [v57 constraintEqualToAnchor:v58];

      [v59 setConstant:8.0];
      if (v59)
      {
        [v59 setActive:1];
      }
    }

    v60 = [v140 superview];
    if (v60)
    {
      v61 = v60;
      [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
      v62 = [v140 topAnchor];
      v63 = [v61 topAnchor];
      v64 = [v62 constraintEqualToAnchor:v63];

      [v64 setConstant:8.0];
      if (v64)
      {
        [v64 setActive:1];
      }
    }

    v65 = [v140 superview];
    if (v65)
    {
      v66 = v65;
      [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
      v67 = [v140 bottomAnchor];
      v68 = [v66 bottomAnchor];
      v69 = [v67 constraintEqualToAnchor:v68];

      if (v69)
      {
        [v69 setConstant:-8.0];
        [v69 setActive:1];
      }
    }

    v70 = [v140 widthAnchor];
    v71 = [v140 heightAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    [v72 setActive:1];
    v73 = *((swift_isaMask & *v1) + 0xC8);
    v74 = v73();
    v75 = v26();
    [v74 addArrangedSubview:v75];

    v76 = v73();
    v77 = v29();
    [v76 addArrangedSubview:v77];

    v78 = v73();
    [v78 setTranslatesAutoresizingMaskIntoConstraints:0];

    v79 = v73();
    [v1 addSubview:v79];

    v80 = v73();
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [v80 leadingAnchor];
    v82 = [v140 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    [v83 setConstant:8.0];
    [v83 setActive:1];

    v84 = v73();
    v85 = [v84 superview];
    if (v85)
    {
      v86 = v85;
      [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
      v87 = [v84 centerYAnchor];
      v88 = [v86 centerYAnchor];
      v89 = [v87 constraintEqualToAnchor:v88];

      [v89 setConstant:0.0];
      if (v89)
      {
        [v89 setActive:1];
      }
    }

    else
    {
      v89 = 0;
      v86 = v84;
    }

    v139 = v73();
    v90 = [v139 superview];
    if (v90)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (((1 << v33) & 0xC) == 0)
  {
    if (((1 << v33) & 0x120) == 0)
    {
LABEL_76:

      return;
    }

    v34 = v26();
    [v1 addSubview:v34];

    v35 = v29();
    [v1 addSubview:v35];

    if (v33 == 8)
    {
      v36 = v29;
      v37 = v26();
      v38 = objc_opt_self();
      v39 = [v38 preferredFontForTextStyle:UIFontTextStyleBody];
      v40 = [v39 fontDescriptor];
      v41 = [v40 fontDescriptorWithSymbolicTraits:2];

      if (v41)
      {
        v42 = [v38 fontWithDescriptor:v41 size:0.0];

        [v37 setFont:v42];
        v29 = v36;
        v43 = v36();
        v44 = [v38 preferredFontForTextStyle:UIFontTextStyleBody];
        v45 = [v44 fontDescriptor];
        v46 = [v45 fontDescriptorWithSymbolicTraits:2];

        if (v46)
        {
          v47 = [v38 fontWithDescriptor:v46 size:0.0];

          [v43 setFont:v47];
          goto LABEL_23;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_23:
    v48 = v26();
    v49 = [v48 superview];
    if (v49)
    {
      v50 = v49;
      [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
      v51 = [v48 topAnchor];
      v52 = [v50 topAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];

      [v53 setConstant:12.0];
      if (v53)
      {
        [v53 setActive:1];
      }

      p_align = (&stru_100327FE8 + 24);
    }

    else
    {
      v53 = 0;
      v50 = v48;
      p_align = &stru_100327FE8.align;
    }

    v91 = v26();
    v92 = [v91 superview];
    if (v92)
    {
      v93 = v92;
      [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
      v94 = [v91 leadingAnchor];
      v95 = [v93 leadingAnchor];
      v96 = [v94 constraintEqualToAnchor:v95];

      [v96 setConstant:16.0];
      if (v96)
      {
        [v96 setActive:1];
      }
    }

    else
    {
      v96 = 0;
      v93 = v91;
    }

    v97 = v26();
    v98 = [v97 superview];
    if (v98)
    {
      v99 = v98;
      [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
      v100 = [v97 trailingAnchor];
      v101 = [v99 trailingAnchor];
      v102 = [v100 constraintEqualToAnchor:v101];

      [v102 setConstant:-16.0];
      if (v102)
      {
        [v102 setActive:1];
      }
    }

    else
    {
      v102 = 0;
      v99 = v97;
    }

    v103 = v26();
    [v103 setTextAlignment:1];

    v104 = v26();
    [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
    v105 = [v140 *(p_align + 275)];
    v106 = [v104 *(p_align + 275)];
    v107 = [v105 constraintEqualToAnchor:v106 constant:24.0];

    [v107 setActive:1];
    v108 = v29();
    [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
    v109 = [v140 bottomAnchor];
    v110 = [v108 bottomAnchor];
    v111 = [v109 constraintEqualToAnchor:v110 constant:-24.0];

    [v111 setActive:1];
    v112 = [v140 superview];
    if (v112)
    {
      v113 = v112;
      [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
      v114 = [v140 centerXAnchor];
      v115 = [v113 centerXAnchor];
      v116 = [v114 constraintEqualToAnchor:v115];

      [v116 setConstant:0.0];
      [v116 setActive:1];
    }

    v117 = [v140 widthAnchor];
    v118 = [v140 heightAnchor];
    v119 = [v117 constraintEqualToAnchor:v118];

    [v119 setActive:1];
    v120 = v29();
    [v120 setTextAlignment:1];

    v121 = v26();
    [v121 setTextAlignment:1];

    v122 = v29();
    v123 = [v122 superview];
    if (v123)
    {
      v124 = v123;
      [v122 setTranslatesAutoresizingMaskIntoConstraints:0];
      v125 = [v122 bottomAnchor];
      v126 = [v124 bottomAnchor];
      v127 = [v125 constraintEqualToAnchor:v126];

      if (v127)
      {
        [v127 setConstant:-12.0];
        [v127 setActive:1];
      }
    }

    else
    {
      v127 = 0;
      v124 = v122;
    }

    v128 = v29();
    v129 = [v128 superview];
    if (v129)
    {
      v130 = v129;
      [v128 setTranslatesAutoresizingMaskIntoConstraints:0];
      v131 = [v128 leadingAnchor];
      v132 = [v130 leadingAnchor];
      v133 = [v131 constraintEqualToAnchor:v132];

      [v133 setConstant:0.0];
      if (v133)
      {
        [v133 setActive:1];
      }
    }

    else
    {
      v133 = 0;
      v130 = v128;
    }

    v139 = v29();
    v90 = [v139 superview];
    if (v90)
    {
LABEL_74:
      v137 = v90;
      [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
      v134 = [v139 trailingAnchor];
      v135 = [v137 trailingAnchor];
      v136 = [v134 constraintEqualToAnchor:v135];

      [v136 setConstant:-8.0];
      [v136 setActive:1];

      v32 = v137;
      goto LABEL_76;
    }

LABEL_75:

    v32 = v139;
    goto LABEL_76;
  }

  UIView.fillSuper(horizontalMargin:verticalMargin:)(8.0, 8.0);
}

Swift::Void __swiftcall MOSuggestionMotionAssetView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    v3 = &selRef_systemWhiteColor;
    v19 = 2;
    v4 = 0.55;
  }

  else
  {
    if (v2 != 2)
    {
      return;
    }

    v3 = &selRef_systemBlackColor;
    v19 = 1;
    v4 = 0.2;
  }

  v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_imageView);
  v6 = objc_opt_self();
  v7 = [v6 *v3];
  v8 = [v7 colorWithAlphaComponent:v4];

  [v5 setBackgroundColor:v8];
  v9 = *((swift_isaMask & *v0) + 0x98);
  v10 = v9();
  v11 = [v6 systemBackgroundColor];
  v12 = [v11 colorWithAlphaComponent:0.6];

  [v10 setTextColor:v12];
  v13 = *((swift_isaMask & *v0) + 0xB0);
  v14 = v13();
  v15 = [v6 secondarySystemBackgroundColor];
  v16 = [v15 colorWithAlphaComponent:0.5];

  [v14 setTextColor:v16];
  v17 = v9();
  [v17 setOverrideUserInterfaceStyle:v19];

  v18 = v13();
  [v18 setOverrideUserInterfaceStyle:v19];
}

Swift::Void __swiftcall MOSuggestionMotionAssetView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MOSuggestionMotionAssetView();
  v1 = objc_msgSendSuper2(&v6, "layoutSubviews");
  v2 = (*((swift_isaMask & *v0) + 0xB0))(v1);
  v3 = [v2 layer];

  v4 = [v0 traitCollection];
  [v4 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  [v3 setCompositingFilter:v5];
}

id MOSuggestionMotionAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionMotionAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionMotionAssetView.init(coder:)()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  if (!v3)
  {
    v3 = [v2 systemWhiteColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_motionBackground) = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_exerciseNameLabel;
  *(v0 + v4) = closure #1 in variable initialization expression of MOSuggestionMotionAssetView.exerciseNameLabel();
  v5 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_workoutDataLabel;
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v6 setFont:v7];

  [v6 setTextAlignment:0];
  [v6 setAdjustsFontForContentSizeCategory:1];
  [v6 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  *(v0 + v5) = v6;
  v8 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_labelStack;
  v9 = [objc_allocWithZone(UIStackView) init];
  [v9 setAxis:1];
  [v9 setAlignment:1];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_imageView;
  type metadata accessor for MOSuggestionRoundView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100217400@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1002174C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_100217580@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t *MOMusicPlaybackCoordinator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOMusicPlaybackCoordinator.shared;
}

uint64_t MOMusicPlaybackCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  MOMusicPlaybackCoordinator.init()();
  return v0;
}

uint64_t static MOMusicPlaybackCoordinator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t MOMusicPlaybackCoordinator.nowPlayingTrackID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MOMusicPlaybackCoordinator.nowPlayingTrackID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t MOMusicPlaybackCoordinator.init()()
{
  *(v0 + 16) = [objc_opt_self() systemMusicPlayer];
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  (*(*v0 + 224))();
  v1 = [*(v0 + 16) nowPlayingItem];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 playbackStoreID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    swift_beginAccess();
    *(v0 + 40) = v4;
    *(v0 + 48) = v6;
  }

  return v0;
}

id *MOMusicPlaybackCoordinator.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  (*(*v0 + 40))();
  [v0[2] endGeneratingPlaybackNotifications];

  return v0;
}

uint64_t MOMusicPlaybackCoordinator.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  (*(*v0 + 40))();
  [v0[2] endGeneratingPlaybackNotifications];

  return swift_deallocClassInstance();
}

uint64_t MOMusicPlaybackCoordinator.register(view:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (v7)
  {
    v8 = result;
    v9 = v7;
    v10 = (*(*v1 + 136))();
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      outlined init with copy of MOProtectedAppsManagerDelegate(a1, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
      }

      v13[2] = v15 + 1;
      outlined init with take of MOMusicPlaybackCoordinatorDelegate(v21, &v13[5 * v15 + 4]);
      v16 = (*(*v2 + 152))(v21);
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pGMd);
      v13 = swift_allocObject();
      *(v13 + 1) = xmmword_1002A48B0;
      outlined init with copy of MOProtectedAppsManagerDelegate(a1, (v13 + 4));
      v16 = (*(*v2 + 152))(v21);
    }

    v18 = v16;
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    *v19 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v8, v9, isUniquelyReferenced_nonNull_native);

    *v19 = v22;
    return v18(v21, 0);
  }

  return result;
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.subscribeToNowPlaying()()
{
  [*(v0 + 16) beginGeneratingPlaybackNotifications];
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"playbackStateDidChangeWithNote:" name:MPMusicPlayerControllerPlaybackStateDidChangeNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"nowPlayingItemChangedWithNote:" name:MPMusicPlayerControllerNowPlayingItemDidChangeNotification object:0];
}

Swift::Bool __swiftcall MOMusicPlaybackCoordinator.matchesNowPlayingMediaItem(track:)(Swift::String_optional track)
{
  object = track.value._object;
  countAndFlagsBits = track.value._countAndFlagsBits;
  v4 = [*(v1 + 16) nowPlayingItem];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 playbackStoreID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!object)
  {

    return 0;
  }

  if (v7 != countAndFlagsBits || v9 != object)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v11 & 1) != 0;
  }

  return 1;
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.sendPlayNotificationsForID(track:)(Swift::String track)
{
  object = track._object;
  countAndFlagsBits = track._countAndFlagsBits;
  v4 = (*(*v1 + 136))();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v6 & 1) != 0) && (v7 = *(*(v4 + 56) + 8 * v5), , , (v8 = *(v7 + 16)) != 0))
  {
    v9 = v7 + 32;
    do
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_0(v12, v13);
      (*(v11 + 16))(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.sendStopNotificationsForID(track:)(Swift::String track)
{
  object = track._object;
  countAndFlagsBits = track._countAndFlagsBits;
  v4 = (*(*v1 + 136))();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v6 & 1) != 0) && (v7 = *(*(v4 + 56) + 8 * v5), , , (v8 = *(v7 + 16)) != 0))
  {
    v9 = v7 + 32;
    do
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_0(v12, v13);
      (*(v11 + 24))(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.sendProgressNotificationsForID(track:progress:)(Swift::String track, Swift::Float progress)
{
  object = track._object;
  countAndFlagsBits = track._countAndFlagsBits;
  v6 = (*(*v2 + 136))();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , (v10 = *(v9 + 16)) != 0))
  {
    v11 = v9 + 32;
    do
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v11, v14);
      v12 = v15;
      v13 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      (*(v13 + 32))(v12, v13, progress);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.updateNowPlayingTrack()()
{
  v1 = (*(*v0 + 23))();
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v0[2] nowPlayingItem];
  if (v5)
  {
    v16 = v5;
    v6 = [v5 playbackStoreID];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    (*(*v0 + 24))(v7, v9);
    v10 = [v16 playbackStoreID];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v3 != v11 || v4 != v13)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        (*(*v0 + 32))(v3, v4);
      }

      return;
    }
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.updatePlayState()()
{
  v1 = [v0[2] nowPlayingItem];
  if (v1)
  {
    v9 = v1;
    v2 = [v1 playbackStoreID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = (*(*v0 + 41))();
    v7 = *v0;
    if (v6)
    {
      v7[32](v3, v5);
    }

    else
    {
      v7[31](v3, v5);

      (*(*v0 + 39))(v8);
    }
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.updateDelegateProgressIndication()()
{
  v1 = [v0[2] nowPlayingItem];
  if (v1)
  {
    v11 = v1;
    v2 = [v1 playbackStoreID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    [v0[2] currentPlaybackTime];
    v7 = v6;
    [v11 playbackDuration];
    v9 = v8;
    if (v9 > 0.0)
    {
      v10 = v7;
      (*(*v0 + 33))(v3, v5, v10 / v9);
    }
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.createTimerIfNeeded()()
{
  v1 = *(*v0 + 160);
  v2 = v1();
  if (v2)
  {
  }

  else
  {
    v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:"updateDelegateProgressIndication" selector:0 userInfo:1 repeats:1.0];
    v4 = (*(*v0 + 168))(v3);
    v5 = (v1)(v4);
    if (v5)
    {
      v6 = v5;
      [v5 setTolerance:0.2];
    }

    v7 = *(*v0 + 288);

    v7();
  }
}

Swift::Void __swiftcall MOMusicPlaybackCoordinator.invalidateTimerIfNeeded()()
{
  v1 = *(*v0 + 160);
  v2 = v1();
  if (v2)
  {

    v3 = v1();
    [v3 invalidate];

    v4 = *(*v0 + 168);

    v4(0);
  }
}

Swift::Bool __swiftcall MOMusicPlaybackCoordinator.updateTimerForPauseState()()
{
  v1 = [v0[2] playbackState];
  if (v1 != 1)
  {
    (*(*v0 + 40))();
  }

  return v1 != 1;
}

uint64_t MOMusicPlaybackCoordinator.doesMediaViewIDMatchNowPlaying(view:)(void *a1)
{
  result = [*(v1 + 16) nowPlayingItem];
  if (result)
  {
    v4 = result;
    v5 = [result playbackStoreID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v9);
    v11 = (*(v10 + 8))(v9, v10);
    if (v12)
    {
      if (v6 == v11 && v12 == v8)
      {

        return 1;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void MOMusicPlaybackCoordinator.handlePlayPauseButtonChange(view:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
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

  if ((*(*v1 + 344))(a1))
  {
    if ((*(*v1 + 336))())
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static MOAngelLogger.shared);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32[0] = v14;
        *v13 = 136315138;
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v32);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "[MOMusicPlayerCoordinator] pause trackId=%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
      }

      else
      {
      }

      v30 = v2[2];
      v31 = "pause";
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static MOAngelLogger.shared);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32[0] = v28;
        *v27 = 136315138;
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v32);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "[MOMusicPlayerCoordinator] Resuming trackId=%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
      }

      v30 = v2[2];
      v31 = "play";
    }

    [v30 v31];
  }

  else
  {
    v16 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002A48B0;
    *(v17 + 32) = v8;
    *(v17 + 40) = v9;

    v18 = v16;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setQueueWithStoreIDs:isa];

    v20 = v1[2];
    v21 = swift_allocObject();
    v21[2] = v8;
    v21[3] = v9;
    v21[4] = v1;
    v32[4] = partial apply for closure #1 in MOMusicPlaybackCoordinator.handlePlayPauseButtonChange(view:);
    v32[5] = v21;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 1107296256;
    v32[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v32[3] = &block_descriptor_39;
    v22 = _Block_copy(v32);
    v23 = v20;

    [v23 prepareToPlayWithCompletionHandler:v22];
    _Block_release(v22);
  }
}

void closure #1 in MOMusicPlaybackCoordinator.handlePlayPauseButtonChange(view:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static MOAngelLogger.shared);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v8 = Optional.debugDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[MOMusicPlayerCoordinator] error %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static MOAngelLogger.shared);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "[MOMusicPlayerCoordinator] Playing trackId=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    v19 = *(a4 + 16);

    [v19 play];
  }
}

uint64_t sub_1002194B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100219518@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_100219564(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_1002195B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_100219604(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10021965C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1002196A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

void MOSuggestionSheetListPlayButton.mediaAssetID.didset()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MOMusicPlaybackCoordinator.shared;
  v2 = type metadata accessor for MOSuggestionSheetListPlayButton();
  v11 = v2;
  v12 = &protocol witness table for MOSuggestionSheetListPlayButton;
  v10[0] = v0;
  v3 = *(*v1 + 216);
  v4 = v0;
  v3(v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v11 = v2;
  v12 = &protocol witness table for MOSuggestionSheetListPlayButton;
  v10[0] = v4;
  v5 = *(*v1 + 352);
  v6 = v4;
  v5(v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  v7 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (!v9)
  {
    v9 = [objc_allocWithZone(UIImage) init];
  }

  [v6 setImage:v9 forState:0];
}

uint64_t MOSuggestionSheetListPlayButton.mediaAssetID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void MOSuggestionSheetListPlayButton.mediaAssetID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  MOSuggestionSheetListPlayButton.mediaAssetID.didset();
}

void (*MOSuggestionSheetListPlayButton.mediaAssetID.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetListPlayButton.mediaAssetID.modify;
}

void MOSuggestionSheetListPlayButton.mediaAssetID.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MOSuggestionSheetListPlayButton.mediaAssetID.didset();
  }
}

id MOSuggestionSheetListPlayButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID];
  v10 = type metadata accessor for MOSuggestionSheetListPlayButton();
  *v9 = 0;
  *(v9 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionSheetListPlayButton.sharedInit()();

  return v11;
}

id MOSuggestionSheetListPlayButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID];
  v4 = type metadata accessor for MOSuggestionSheetListPlayButton();
  *v3 = 0;
  *(v3 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    MOSuggestionSheetListPlayButton.sharedInit()();
  }

  return v6;
}

uint64_t MOSuggestionSheetListPlayButton.sharedInit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UIButton.Configuration();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  static UIButton.Configuration.filled()();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.Size.medium(_:), v9);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
  UIButton.Configuration.cornerStyle.setter();
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v18 = [v16 systemIndigoColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v19 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  UIButton.Configuration.image.setter();
  v22 = [objc_opt_self() mainBundle];
  v31._object = 0x80000001002BA380;
  v23._countAndFlagsBits = 0x64654D2079616C50;
  v23._object = 0xEA00000000006169;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000027;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v31);

  v25 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v25];

  v26 = v30;
  (*(v13 + 16))(v4, v15, v30);
  (*(v13 + 56))(v4, 0, 1, v26);
  UIButton.configuration.setter();
  type metadata accessor for UIAction();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v27 forControlEvents:64];

  return (*(v13 + 8))(v15, v26);
}

void closure #1 in MOSuggestionSheetListPlayButton.sharedInit()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x80))();
  }
}

Swift::Void __swiftcall MOSuggestionSheetListPlayButton.setPublicUI(_:)(Swift::Bool a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  UIButton.configuration.getter();
  v8 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    outlined init with copy of UIButton.Configuration?(v7, v5);
    UIButton.configuration.setter();
    outlined destroy of UIButton.Configuration?(v7);
  }

  else
  {
    v9 = [objc_opt_self() systemIndigoColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  [v1 setNeedsUpdateConfiguration];
}

Swift::Void __swiftcall MOSuggestionSheetListPlayButton.touchPlayback()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MOMusicPlaybackCoordinator.shared;
  v4[3] = type metadata accessor for MOSuggestionSheetListPlayButton();
  v4[4] = &protocol witness table for MOSuggestionSheetListPlayButton;
  v4[0] = v0;
  v2 = *(*v1 + 360);
  v3 = v0;
  v2(v4);
  __swift_destroy_boxed_opaque_existential_0(v4);
}

id MOSuggestionSheetListPlayButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetListPlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void MOSuggestionSheetListPlayButton.didReceiveShouldPlayNotification()(const char *a1)
{
  v3 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.shared);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  v8 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v9 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v10 = v11;
  if (!v11)
  {
    v10 = [objc_allocWithZone(UIImage) init];
  }

  v12 = v10;
  [v3 setImage:? forState:?];
}

uint64_t sub_10021A7C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10021A820(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x60);

  return v4(v2, v3);
}

uint64_t sub_10021A898()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t MOSuggestionAssetReference.visualSubtypeWithCount.getter()
{
  type metadata accessor for MOMultiMapAssetReference(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MOSuggestionAssetReference.visualSubType.getter();
  }

  v1 = *(*v0 + 360);

  if (v1(v2) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return 15;
}

uint64_t one-time initialization function for assetTypeDirectMapping()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22MOSuggestionAssetsTypea_16MomentsUIService0d14AssetVisualSubF0OtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A7250;
  v1 = MOSuggestionAssetsTypePhoto;
  *(inited + 32) = MOSuggestionAssetsTypePhoto;
  *(inited + 40) = 12;
  v2 = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 48) = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 56) = 13;
  v3 = MOSuggestionAssetsTypeVideo;
  *(inited + 64) = MOSuggestionAssetsTypeVideo;
  *(inited + 72) = 14;
  v4 = MOSuggestionAssetsTypeWorkoutGroup;
  *(inited + 80) = MOSuggestionAssetsTypeWorkoutGroup;
  *(inited + 88) = 10;
  v5 = MOSuggestionAssetsTypeWorkout;
  *(inited + 96) = MOSuggestionAssetsTypeWorkout;
  *(inited + 104) = 7;
  v6 = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 112) = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 120) = 15;
  v7 = MOSuggestionAssetsTypeStateOfMindAsset;
  *(inited + 128) = MOSuggestionAssetsTypeStateOfMindAsset;
  *(inited + 136) = 25;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22MOSuggestionAssetsTypea_16MomentsUIService0c14AssetVisualSubE0OTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MOSuggestionAssetsTypea_16MomentsUIService0a14AssetVisualSubC0OtMd);
  result = swift_arrayDestroy();
  static MOSuggestionAssetReference.assetTypeDirectMapping = v15;
  return result;
}

unint64_t MOSuggestionAssetReference.mediaSubType.getter()
{
  v1 = (*(*v0 + 272))();
  if ((v2 & 1) != 0 || (v1 - 1) > 7)
  {
    return 26;
  }

  else
  {
    return 0x605041A011A0200uLL >> (8 * (v1 - 1));
  }
}

uint64_t MOSuggestionAssetReference.motionActivitySubType.getter()
{
  v1 = (*(*v0 + 280))();
  if (!v1)
  {
    return 26;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    return 17;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {

    return 17;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return 18;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

      return 18;
    }

    else
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
      {

        return 19;
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          return 19;
        }

        else
        {
          return 26;
        }
      }
    }
  }
}

uint64_t MOSuggestionAssetReference.genericMapSubType.getter()
{
  type metadata accessor for MOGenericMapAssetReference(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return 26;
  }

  v1 = *(*v0 + 344);

  v3 = v1(v2);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    return 20;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

    return 20;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    return 21;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {

    return 21;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    return 22;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    return 22;
  }

  else
  {
    return 26;
  }
}

unint64_t MOSuggestionAssetReference.visualSubType.getter()
{
  if (one-time initialization token for assetTypeDirectMapping != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionAssetReference.assetTypeDirectMapping;
  v2 = *(*v0 + 120);
  v3 = v2();
  v4 = v3;
  if (v1[2])
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v6)
    {
      v7 = *(v1[7] + v5);

      return v7;
    }
  }

  v9 = v2();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_14;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {

LABEL_14:

    return MOSuggestionAssetReference.mediaSubType.getter();
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_24;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {

LABEL_24:

    return MOSuggestionAssetReference.motionActivitySubType.getter();
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      return 26;
    }
  }

  return MOSuggestionAssetReference.genericMapSubType.getter();
}

void static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(ISIcon);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithBundleIdentifier:v7];

  if (one-time initialization token for iconDescriptor != -1)
  {
    swift_once();
  }

  v9 = static MOSuggestionAssetAppIconProvider.iconDescriptor;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = _s16MomentsUIService32MOSuggestionAssetAppIconProviderC11getImageFor16bundleIdentifier10completionySS_ySo7UIImageCSgctFZySo10CGImageRefaSgYbcfU_TA_0;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v12[3] = &block_descriptor_40;
  v11 = _Block_copy(v12);

  [v8 getCGImageForImageDescriptor:v9 completion:v11];
  _Block_release(v11);
}

uint64_t MOSuggestionAssetAppIconProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  *(v0 + 16) = [objc_allocWithZone(ISImageDescriptor) initWithSize:350.0 scale:{350.0, v3}];
  return v0;
}

uint64_t *MOSuggestionAssetAppIconProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetAppIconProvider.shared;
}

uint64_t static MOSuggestionAssetAppIconProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id one-time initialization function for iconDescriptor()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = [objc_allocWithZone(ISImageDescriptor) initWithSize:50.0 scale:{50.0, v2}];
  static MOSuggestionAssetAppIconProvider.iconDescriptor = result;
  return result;
}

void MOSuggestionAssetAppIconProvider.getAssetFor(bundleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(ISIcon);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithBundleIdentifier:v8];

  v10 = *(v4 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v13[4] = partial apply for closure #1 in MOSuggestionAssetAppIconProvider.getAssetFor(bundleIdentifier:completion:);
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v13[3] = &block_descriptor_6_2;
  v12 = _Block_copy(v13);

  [v9 getCGImageForImageDescriptor:v10 completion:v12];
  _Block_release(v12);
}

void closure #1 in MOSuggestionAssetAppIconProvider.getAssetFor(bundleIdentifier:completion:)(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = objc_allocWithZone(UIImage);
    v5 = a1;
    v6 = [v4 initWithCGImage:v5];
    v7 = MOSuggestionAssetsTypeAppIcon;
    type metadata accessor for UIImage();
    v8 = [objc_allocWithZone(MOSuggestionAsset) init:v6 type:v7 contentClassType:swift_getObjCClassFromMetadata()];
    a2();
  }

  else
  {
    a2();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10021B954()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #1 in static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:completion:)(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = objc_allocWithZone(UIImage);
    v5 = a1;
    v6 = [v4 initWithCGImage:v5];
    a2();
  }

  else
  {
    a2();
  }
}

uint64_t MOSuggestionAssetAppIconProvider.init()()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  *(v0 + 16) = [objc_allocWithZone(ISImageDescriptor) initWithSize:350.0 scale:{350.0, v3}];
  return v0;
}

void specialized static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:shouldApplyMask:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(ISIcon);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithBundleIdentifier:v9];

  if (one-time initialization token for iconDescriptor != -1)
  {
    swift_once();
  }

  v11 = static MOSuggestionAssetAppIconProvider.iconDescriptor;
  [static MOSuggestionAssetAppIconProvider.iconDescriptor setShouldApplyMask:a3 & 1];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v14[4] = partial apply for closure #1 in static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:shouldApplyMask:completion:);
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v14[3] = &block_descriptor_13;
  v13 = _Block_copy(v14);

  [v10 getCGImageForImageDescriptor:v11 completion:v13];
  _Block_release(v13);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

id static MOSuggestionTheme.Fonts.footnoteBoldTightLeading()(void *a1)
{
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*a1];
  v2 = [v1 fontDescriptorWithSymbolicTraits:32770];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  return v3;
}

id static MOSuggestionTheme.Colors.keyColor(publicUI:)(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_systemBlueColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_systemIndigoColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id static MOSuggestionTheme.Colors.backgroundPrimary()()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id static MOSuggestionTheme.Colors.backgroundGroupedSecondary()()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

  return v0;
}

id static MOSuggestionTheme.Colors.secondaryColor(publicUI:)(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_systemBlueColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_systemIndigoColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.15];

  return v5;
}

id static MOSuggestionTheme.Colors.textPrimary()()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id static MOSuggestionTheme.Colors.tertiaryFill()()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];

  return v0;
}

uint64_t *MOSuggestionTheme.Colors.exerciseGreen.unsafeMutableAddressor()
{
  if (one-time initialization token for exerciseGreen != -1)
  {
    swift_once();
  }

  return &static MOSuggestionTheme.Colors.exerciseGreen;
}

id static MOSuggestionTheme.Colors.backgroundGroupedPrimary()()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return v0;
}

id UIColor.init(rgbColorCodeRed:green:blue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a1 / 255.0;
  v6 = a2 / 255.0;
  v7 = a3 / 255.0;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:v5 green:v6 blue:v7 alpha:a4];
}

id one-time initialization function for exerciseGreen()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  static MOSuggestionTheme.Colors.exerciseGreen = result;
  return result;
}

id one-time initialization function for exerciseGreenFaded()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:0.18];
  static MOSuggestionTheme.Colors.exerciseGreenFaded = result;
  return result;
}

uint64_t *MOSuggestionTheme.Colors.exerciseGreenFaded.unsafeMutableAddressor()
{
  if (one-time initialization token for exerciseGreenFaded != -1)
  {
    swift_once();
  }

  return &static MOSuggestionTheme.Colors.exerciseGreenFaded;
}

id static MOSuggestionTheme.Colors.textWhite()()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id static MOSuggestionTheme.Colors.textSecondary()()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

id static MOSuggestionTheme.Colors.textTertiary()()
{
  v0 = [objc_opt_self() tertiaryLabelColor];

  return v0;
}

id static MOSuggestionTheme.Colors.darkModePlatterBackgroundColor()(double a1)
{
  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 colorWithAlphaComponent:a1];

  return v3;
}

id static MOSuggestionTheme.Colors.textQuaternary()()
{
  v0 = [objc_opt_self() quaternaryLabelColor];

  return v0;
}

id static MOSuggestionTheme.Colors.backgroundSecondary()()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

id static MOSuggestionTheme.Colors.backgroundTertiary()()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];

  return v0;
}

id static MOSuggestionTheme.Colors.primaryFill()()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id static MOSuggestionTheme.Colors.secondaryFill()()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

id static MOSuggestionTheme.Colors.backgroundGroupedTertiary()()
{
  v0 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];

  return v0;
}

void one-time initialization function for contactAsset()
{
  v0 = [objc_opt_self() systemGreenColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  static MOSuggestionTheme.Colors.contactAsset = v1;
}

uint64_t *MOSuggestionTheme.Colors.contactAsset.unsafeMutableAddressor()
{
  if (one-time initialization token for contactAsset != -1)
  {
    swift_once();
  }

  return &static MOSuggestionTheme.Colors.contactAsset;
}

id static MOSuggestionTheme.Fonts.footnote()(void *a1)
{
  v1 = [objc_opt_self() preferredFontForTextStyle:*a1];

  return v1;
}

Class static MOSuggestionTheme.Fonts.subheaderEmphFont()(void *a1, UIFontWeight *a2)
{
  v3 = [objc_opt_self() preferredFontForTextStyle:*a1];
  isa = UIFont.withWeight(_:)(*a2).super.isa;

  return isa;
}

void static MOSuggestionTheme.Fonts.footnoteBold()(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:*a1];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  if (v5)
  {
    [v2 fontWithDescriptor:v5 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

double static MOSuggestionTheme.Sizes.assetGridHeight(assetCount:totalWidth:)(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 0.0;
  }

  result = (a2 + -4.0) * 0.5;
  if (a1 > 5)
  {
    return result + result;
  }

  return result;
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  object = hex._object;
  countAndFlagsBits = hex._countAndFlagsBits;
  v3 = String.index(_:offsetBy:)();
  specialized Collection.subscript.getter(v3, countAndFlagsBits, object);

  static String._fromSubstring(_:)();

  v4 = objc_allocWithZone(NSScanner);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  v10 = 0;
  if ([v6 scanHexLongLong:&v10])
  {
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:BYTE3(v10) / 255.0 green:BYTE2(v10) / 255.0 blue:BYTE1(v10) / 255.0 alpha:v10 / 255.0];
  }

  else
  {
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  v8.super.isa = v7;

  return v8;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

id specialized static MOSuggestionTheme.Fonts.footnoteEmphShortFont()()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v2.super.isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v3 = [(objc_class *)v2.super.isa fontDescriptor];
  v4 = [(objc_class *)v2.super.isa fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits:v5 | 0x10000];
  if (v6)
  {
    v7 = [v0 fontWithDescriptor:v6 size:0.0];
  }

  else
  {

    return 0;
  }

  return v7;
}

id specialized static MOSuggestionTheme.Fonts.footnoteShortFont()()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v2 = [v1 fontDescriptor];
  v3 = [v1 fontDescriptor];
  v4 = [v3 symbolicTraits];

  v5 = [v2 fontDescriptorWithSymbolicTraits:v4 | 0x10000];
  if (v5)
  {
    v6 = [v0 fontWithDescriptor:v5 size:0.0];
  }

  else
  {

    return 0;
  }

  return v6;
}

void specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() whiteColor];
  v5 = v4;
  if (a2 == 2)
  {
    v6 = [v4 colorWithAlphaComponent:0.15];

    v7 = 1050253722;
    v5 = v6;
  }

  else
  {
    v7 = 1036831949;
  }

  [a1 setBackgroundColor:v5];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [a1 layer];
  [v8 setMasksToBounds:0];

  v9 = [a1 layer];
  [v9 setCornerRadius:8.0];

  v10 = [a1 layer];
  v11 = [objc_opt_self() blackColor];
  v12 = [v11 CGColor];

  [v10 setShadowColor:v12];
  v13 = [a1 layer];
  LODWORD(v14) = v7;
  [v13 setShadowOpacity:v14];

  v15 = [a1 layer];
  [v15 setShadowOffset:{0.0, 2.0}];

  v16 = [a1 layer];
  [v16 setShadowRadius:4.0];

  v17 = [a1 layer];
  [v17 setCornerCurve:kCACornerCurveContinuous];

  v18 = [a1 layer];
  [v18 setShadowPathIsBounds:1];
}

id specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:?];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v3 = [(objc_class *)isa fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_SitGMd);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1002A4A00;
  v7 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(v6 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v8 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(v6 + 40) = 38;
  *(v6 + 48) = v8;
  *(v6 + 56) = 1;
  v9 = UIFontDescriptorFeatureSettingsAttribute;
  v10 = v7;
  v11 = v8;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_SitMd);
  swift_arrayDestroy();
  *(v5 + 32) = v12;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaSiGGMd);
  *(inited + 40) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (UIFontDescriptorAttributeName, Any)(inited + 32);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v3 fontDescriptorByAddingAttributes:v13];

  v15 = [v0 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v16 = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  [(objc_class *)v16 pointSize];
  v18 = v17;

  v19 = [v0 fontWithDescriptor:v14 size:v18];
  return v19;
}

uint64_t outlined destroy of (UIFontDescriptorAttributeName, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29UIFontDescriptorAttributeNamea_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *MOSuggestionAssetGradientRouteRenderer.init(routeLocations:)(unint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer_routeLocations] = a1;
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
LABEL_13:
    v17 = [objc_opt_self() polylineWithCoordinates:v5 + 4 count:v4];

    v19.receiver = v2;
    v19.super_class = type metadata accessor for MOSuggestionAssetGradientRouteRenderer();
    v18 = objc_msgSendSuper2(&v19, "initWithOverlay:", v17);

    return v18;
  }

  v20 = _swiftEmptyArrayStorage;

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 coordinate];
      v11 = v10;
      v13 = v12;

      v20 = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v5 = v20;
      }

      ++v7;
      v5[2] = v15 + 1;
      v16 = &v5[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
    }

    while (v4 != v7);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall MOSuggestionAssetGradientRouteRenderer.canDrawLine(from:to:within:)(MKMapPoint from, MKMapPoint to, MKMapRect within)
{
  height = within.size.height;
  width = within.size.width;
  y = within.origin.y;
  x = within.origin.x;
  v9.origin.x = fmin(from.x, to.x);
  v9.origin.y = fmin(from.y, to.y);
  v9.size.width = vabdd_f64(from.x, to.x);
  v9.size.height = vabdd_f64(from.y, to.y);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return MKMapRectIntersectsRect(v8, v9);
}

id static MOSuggestionAssetGradientRouteRenderer.SpeedColor.averageColor.getter()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
}

uint64_t MOSuggestionAssetGradientRouteRenderer.draw(_:zoomScale:in:)(uint64_t a1, double a2, double a3, double a4, double a5, MKZoomScale a6)
{
  [objc_msgSend(v6 "overlay")];
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
  v13 = MKRoadWidthAtZoomScale(a6) * 0.666666667;
  [v6 applyStrokePropertiesToContext:a1 atZoomScale:a6];
  v16 = v6;
  v17 = v10;
  v18 = v12;
  return (*((swift_isaMask & *v6) + 0x78))(a1, partial apply for closure #1 in MOSuggestionAssetGradientRouteRenderer.draw(_:zoomScale:in:), &v15, v13);
}

void MOSuggestionAssetGradientRouteRenderer.draw(lineWidth:in:pointFromMapPoint:)(CGContext *a1, double (*a2)(double, double), uint64_t a3, CGFloat a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v56 = v4;
  v13 = *(v4 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer_routeLocations);
  v14 = v13 >> 62;
  v57 = v13;
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v61 = v57 & 0xC000000000000001;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v15 = *(v57 + 32);
    }

    v16 = v15;
    v17 = [v15 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v19 = v18;
    v20 = *(v10 + 8);
    v55 = v10 + 8;
    v62 = v20;
    v20(v12, v9);
    v21 = v57;
    if (v14)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v16;
    if (!v22)
    {
LABEL_21:

      return;
    }

    if (v22 >= 1)
    {
      v53 = a1;
      v23 = 0;
      v24 = *((swift_isaMask & *v56) + 0x68);
      v58 = (swift_isaMask & *v56) + 104;
      v59 = v24;
      v52 = a4 + a4;
      v51 = xmmword_1002A4A00;
      v54 = a2;
      v60 = v22;
      do
      {
        if (v61)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v21 + 8 * v23 + 32);
        }

        v34 = v33;
        [v63 coordinate];
        v35 = MKMapPointForCoordinate(v70);
        [v34 coordinate];
        v36 = MKMapPointForCoordinate(v71);
        v37 = a2(v35.x, v35.y);
        v39 = v38;
        v40 = a2(v36.x, v36.y);
        if (v59(a4, v37, v39, v40, v41))
        {
          v42 = a3;
          v43 = [v34 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          Date.timeIntervalSinceReferenceDate.getter();
          v45 = v44;
          v46 = v9;
          v62(v12, v9);
          v47 = v45 - v19;
          [v34 speed];
          v49 = v48;
          Mutable = CGPathCreateMutable();
          v65 = 0;
          v66 = 0;
          v64 = 0x3FF0000000000000;
          v67 = 0x3FF0000000000000;
          v68 = 0;
          v69 = 0;
          CGMutablePathRef.move(to:transform:)();
          CGMutablePathRef.addLine(to:transform:)();
          if (v47 > 5.0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
            v25 = swift_allocObject();
            *(v25 + 16) = v51;
            *(v25 + 32) = 0;
            *(v25 + 40) = v52;
            v26 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();

            v27 = v53;
            CGContextAddPath(v53, v26);
            CGContextSetLineWidth(v27, a4);
            CGContextSetLineCap(v27, kCGLineCapRound);
            v28 = [objc_opt_self() grayColor];
            v29 = [v28 CGColor];

            CGContextSetStrokeColorWithColor(v27, v29);
            v30 = kCGPathStroke;
          }

          else
          {
            v26 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
            v27 = v53;
            CGContextAddPath(v53, v26);
            v29 = MOSuggestionAssetGradientRouteRenderer.relativeColor(for:)(v49);
            CGContextSetFillColorWithColor(v27, v29);
            v30 = kCGPathFill;
          }

          CGContextDrawPath(v27, v30);
          v63 = v34;
          a3 = v42;
          a2 = v54;
          v9 = v46;
          v21 = v57;
        }

        ++v23;
        v31 = [v34 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v19 = v32;

        v62(v12, v9);
      }

      while (v60 != v23);
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

char *MOSuggestionAssetGradientRouteRenderer.relativeColor(for:)(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetGradientRouteRenderer_routeLocations);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *&_swiftEmptyArrayStorage[2];
    if (!v13)
    {

LABEL_43:
      v41 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_44:
      v42 = v41;
      v43 = [v41 CGColor];

      return v43;
    }

LABEL_14:
    v14 = _swiftEmptyArrayStorage[4];
    v15 = v14;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v17 = &_swiftEmptyArrayStorage[5];
      v15 = _swiftEmptyArrayStorage[4];
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
        }

        --v16;
      }

      while (v16);
    }

    v20 = v13;
    if (v13 > 3)
    {
      v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = vdupq_lane_s64(*&v20, 0);
      v24 = &_swiftEmptyArrayStorage[6];
      v22 = 0.0;
      v25 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vdivq_f64(v24[-1], v23);
        v27 = vdivq_f64(*v24, v23);
        v22 = v22 + v26.f64[0] + v26.f64[1] + v27.f64[0] + v27.f64[1];
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v13 == v21)
      {
LABEL_26:
        v31 = v13 - 1;
        if (v13 != 1)
        {
          v32 = &_swiftEmptyArrayStorage[5];
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v14 < v33)
            {
              v14 = v34;
            }

            --v31;
          }

          while (v31);
        }

        if (v22 * 0.9 >= a1)
        {
          if (a1 < 0.0 || v22 == 0.0)
          {
            goto LABEL_43;
          }
        }

        else if (a1 < 0.0 || v22 == 0.0 || v22 * 1.1 > a1)
        {
          goto LABEL_43;
        }

        v35 = (a1 - v15) / (v14 - v15);
        if (v35 >= 0.5)
        {
          v40 = v35 + -0.5 + v35 + -0.5;
          v37 = round(v40 * -179.0 + 255.0);
          v38 = round(v40 * 13.0 + 204.0);
          v39 = v40 * 100.0 + 0.0;
        }

        else
        {
          v36 = v35 + v35;
          v37 = round(v36 * 0.0 + 255.0);
          v38 = round(v36 * 145.0 + 59.0);
          v39 = 48.0 - v36 * 48.0;
        }

        v41 = [objc_allocWithZone(UIColor) initWithRed:v37 / 255.0 green:v38 / 255.0 blue:round(v39) / 255.0 alpha:0.85];
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0.0;
    }

    v28 = v13 - v21;
    v29 = &_swiftEmptyArrayStorage[v21 + 4];
    do
    {
      v30 = *v29++;
      v22 = v22 + v30 / v20;
      --v28;
    }

    while (v28);
    goto LABEL_26;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 speed];
      v10 = v9;

      v12 = *&_swiftEmptyArrayStorage[2];
      v11 = *&_swiftEmptyArrayStorage[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = v13;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id MOSuggestionAssetGradientRouteRenderer.__allocating_init(overlay:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithOverlay:a1];
  swift_unknownObjectRelease();
  return v2;
}

id MOSuggestionAssetGradientRouteRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAssetGradientRouteRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t key path getter for MOSuggestionSheetCollectionView.callback : MOSuggestionSheetCollectionView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x58))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionSheetCollectionView.callback : MOSuggestionSheetCollectionView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((swift_isaMask & **a2) + 0x60);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionSheetCollectionView.callback.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(*v1);
  return v2;
}

uint64_t MOSuggestionSheetCollectionView.callback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id MOSuggestionSheetCollectionView.reloadDataWithCompletion(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x60);

  v5(a1, a2);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  objc_msgSendSuper2(&v7, "reloadData");
  return [v2 layoutIfNeeded];
}

Swift::Void __swiftcall MOSuggestionSheetCollectionView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  v1 = objc_msgSendSuper2(&v4, "layoutSubviews");
  v2 = (*((swift_isaMask & *v0) + 0x58))(v1);
  if (v2)
  {
    v3 = v2;
    v2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }

  (*((swift_isaMask & *v0) + 0x60))(0, 0);
}

id MOSuggestionSheetCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback];
  v12 = type metadata accessor for MOSuggestionSheetCollectionView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v15.receiver = v5;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:collectionViewLayout:", a1, a2, a3, a4, a5);

  return v13;
}

id MOSuggestionSheetCollectionView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback];
  v4 = type metadata accessor for MOSuggestionSheetCollectionView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id MOSuggestionSheetCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10021ED98()
{

  return _swift_deallocObject(v0, 32, 7);
}

double MOLinkShareView.intrinsicContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOLinkShareView();
  objc_msgSendSuper2(&v2, "intrinsicContentSize");
  return 0.0;
}

id MOLinkShareView.init(metadata:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MOLinkShareView();
  v3 = objc_msgSendSuper2(&v5, "initWithMetadata:", a1);

  return v3;
}

id MOLinkShareView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for MOLinkShareView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id MOLinkShareView.init(presentationProperties:)(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MOLinkShareView();
  v3 = objc_msgSendSuper2(&v5, "initWithPresentationProperties:", a1);
  swift_unknownObjectRelease();
  return v3;
}

id @objc MOLinkShareView.init(metadata:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MOLinkShareView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id MOLinkShareView.init(presentationProperties:url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  outlined init with copy of URL?(a2, &v17 - v7);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  v14 = type metadata accessor for MOLinkShareView();
  v17.receiver = v3;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithPresentationProperties:URL:", a1, v12);
  swift_unknownObjectRelease();

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a2, &_s10Foundation3URLVSgMd);
  return v15;
}

id MOLinkShareView.init(metadataLoadedFrom:)(uint64_t a1)
{
  return MOLinkShareView.init(url:)(a1, &URL._bridgeToObjectiveC(), &selRef_initWithMetadataLoadedFromURL_, &type metadata accessor for URL);
}

{
  return MOLinkShareView.init(url:)(a1, &URLRequest._bridgeToObjectiveC(), &selRef_initWithMetadataLoadedFromRequest_, &type metadata accessor for URLRequest);
}

id MOLinkShareView.init(url:)(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v7 = v4;
  v9 = a2();
  v13.receiver = v7;
  v13.super_class = type metadata accessor for MOLinkShareView();
  v10 = objc_msgSendSuper2(&v13, *a3, v9);

  v11 = a4(0);
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id @objc MOLinkShareView.init(url:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), SEL *a7)
{
  v12 = a4(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v16 = a5(a3);
  v17 = a6(v16);
  v18 = type metadata accessor for MOLinkShareView();
  v21.receiver = a1;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, *a7, v17);

  (*(v13 + 8))(v15, v12);
  return v19;
}

id MOLinkShareView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOLinkShareView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id MOSuggestionAssetLinkPreviewView.makeUIView(context:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPLinkMetadata) init];
  v8 = [a2 title];
  [v7 setTitle:v8];

  v9 = [a2 URL];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = 0;
  }

  [v7 setURL:v13];

  v14 = [a2 iconProvider];
  [v7 setIconProvider:v14];

  v15 = [objc_allocWithZone(type metadata accessor for MOLinkShareView()) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  [v15 setMetadata:v7];
  [v15 _setPreferredSizeClass:4];

  return v15;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MOSuggestionAssetLinkPreviewView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MOSuggestionAssetLinkPreviewView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance MOSuggestionAssetLinkPreviewView()
{
  lazy protocol witness table accessor for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void closure #1 in MOSuggestionAssetLinkPreviewProvider.getAssetFor(url:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v32 = a5;
  v33 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static MOAngelLogger.shared);
  (*(v9 + 16))(v11, a3, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a1;
    v16 = v15;
    *v15 = 134217984;
    URL.absoluteString.getter();
    v17 = String.hashValue.getter();

    (*(v9 + 8))(v11, v8);
    *(v16 + 1) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Assets] Link Preview completed fetching data for %ld", v16, 0xCu);
    a1 = v31;

    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);

    if (!a1)
    {
      goto LABEL_9;
    }
  }

  if (!a2)
  {
    v18 = a1;
    v19 = MOSuggestionAssetsTypeLinkPreview;
    type metadata accessor for LPLinkMetadata();
    v20 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v18;
    v23 = [v20 init:v22 type:v19 contentClassType:ObjCClassFromMetadata];
    v33();

    return;
  }

LABEL_9:
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *(v26 + 4) = v28;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "[Assets] LPMetadata error: %@", v26, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v27, &_sSo8NSObjectCSgMd);
  }

  (v33)(0);
}

void specialized MOSuggestionAssetLinkPreviewProvider.getAssetFor(url:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v32 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v33 = [objc_allocWithZone(LPMetadataProvider) init];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static MOAngelLogger.shared);
  v11 = *(v5 + 16);
  v11(v9, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v15 = v14;
    *v14 = 134217984;
    URL.absoluteString.getter();
    v16 = String.hashValue.getter();
    v29 = v6;
    v17 = v11;
    v18 = v16;

    (*(v5 + 8))(v9, v4);
    *(v15 + 1) = v18;
    v11 = v17;
    v6 = v29;
    _os_log_impl(&_mh_execute_header, v12, v13, "[Assets] Link Preview fetching data for %ld", v15, 0xCu);
    a1 = v30;
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }

  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = v31;
  v11(v31, a1, v4);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  (*(v5 + 32))(v24 + v23, v22, v4);
  v25 = (v24 + ((v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v34;
  *v25 = v32;
  v25[1] = v26;
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetLinkPreviewProvider.getAssetFor(url:completion:);
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_41;
  v27 = _Block_copy(aBlock);

  v28 = v33;
  [v33 startFetchingMetadataForURL:v21 completionHandler:v27];
  _Block_release(v27);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetLinkPreviewView and conformance MOSuggestionAssetLinkPreviewView);
  }

  return result;
}

uint64_t sub_1002202C4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void partial apply for closure #1 in MOSuggestionAssetLinkPreviewProvider.getAssetFor(url:completion:)(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  closure #1 in MOSuggestionAssetLinkPreviewProvider.getAssetFor(url:completion:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for LPLinkMetadata()
{
  result = lazy cache variable for type metadata for LPLinkMetadata;
  if (!lazy cache variable for type metadata for LPLinkMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LPLinkMetadata);
  }

  return result;
}

uint64_t CLLocation.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static MOLocationShifter.shared + 104))();
}

uint64_t MOLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  MOLocationShifter.init()();
  return v0;
}

uint64_t *MOLocationShifter.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOLocationShifter.shared;
}

uint64_t static MOLocationShifter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall MOLocationShifter.shiftNeeded(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  [(objc_class *)a1.super.isa coordinate];
  v3 = v2;
  [(objc_class *)isa coordinate];
  return [objc_opt_self() isLocationShiftRequiredForCoordinate:{v3, v4}];
}

CLLocation __swiftcall MOLocationShifter.shiftedIfNecessary(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v74 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(objc_class *)isa coordinate];
  v13 = v12;
  [(objc_class *)isa coordinate];
  v15 = v14;
  if ([objc_opt_self() isLocationShiftRequiredForCoordinate:{v13, v14}])
  {
    v79 = v7;
    v80 = v2;
    v81 = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    [(objc_class *)isa horizontalAccuracy];
    *(v17 + 16) = v18;
    v19 = *(v84 + 16);
    [(objc_class *)isa horizontalAccuracy];
    v82 = v17 + 16;
    v83 = v16 + 16;
    if ([v19 shiftCoordinate:v16 + 16 accuracy:v17 + 16 shiftedCoordinate:v13 shiftedAccuracy:{v15, v20}])
    {
      v21 = *(v16 + 16);
      v22 = *(v16 + 24);
      [(objc_class *)isa altitude];
      v24 = v23;
      v25 = *(v17 + 16);
      [(objc_class *)isa verticalAccuracy];
      v27 = v26;
      v28 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = objc_allocWithZone(CLLocation);
      v30 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v29 initWithCoordinate:v30 altitude:v21 horizontalAccuracy:v22 verticalAccuracy:v24 timestamp:{v25, v27}];

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v76 = v11;
      v77 = v9;
      v78 = v8;
      v35 = dispatch_group_create();
      dispatch_group_enter(v35);
      [(objc_class *)isa horizontalAccuracy];
      v37 = v36;
      v38 = swift_allocObject();
      v38[2] = v16;
      v38[3] = v17;
      v38[4] = v35;
      v90 = partial apply for closure #1 in MOLocationShifter.shiftedIfNecessary(_:);
      v91 = v38;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v39 = v16;
      v88 = thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ();
      v89 = &block_descriptor_42;
      v40 = _Block_copy(&aBlock);
      v74 = v39;

      v75 = v17;

      v41 = v35;

      v90 = closure #2 in MOLocationShifter.shiftedIfNecessary(_:);
      v91 = 0;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> ();
      v89 = &block_descriptor_9_1;
      v42 = _Block_copy(&aBlock);
      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      v90 = partial apply for closure #3 in MOLocationShifter.shiftedIfNecessary(_:);
      v91 = v43;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v89 = &block_descriptor_15_2;
      v44 = _Block_copy(&aBlock);
      v45 = v41;

      [v19 shiftCoordinate:v40 accuracy:v42 withCompletionHandler:v44 mustGoToNetworkCallback:*(v84 + 24) errorHandler:v13 callbackQueue:{v15, v37}];
      _Block_release(v44);
      _Block_release(v42);
      _Block_release(v40);
      static DispatchTime.now()();
      v46 = v79;
      + infix(_:_:)();
      v47 = v81;
      v48 = *(v80 + 8);
      v48(v5, v81);
      OS_dispatch_group.wait(timeout:)();
      v48(v46, v47);
      if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static MOAngelLogger.assets);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "[LocationShifter] Timed out", v52, 2u);
        }
      }

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static MOAngelLogger.assets);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v78;
      v58 = v77;
      v59 = v76;
      v60 = v75;
      v61 = v74;
      if (v56)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "[LocationShifter] Returning shifted location", v62, 2u);
      }

      swift_beginAccess();
      v63 = *(v61 + 16);
      v64 = *(v61 + 24);
      [(objc_class *)isa altitude];
      v66 = v65;
      swift_beginAccess();
      v67 = *(v60 + 16);
      [(objc_class *)isa verticalAccuracy];
      v69 = v68;
      v70 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = objc_allocWithZone(CLLocation);
      v72 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v71 initWithCoordinate:v72 altitude:v63 horizontalAccuracy:v64 verticalAccuracy:v66 timestamp:{v67, v69}];

      (*(v58 + 8))(v59, v57);
    }

    v33 = v31;
  }

  else
  {
    v32 = isa;

    v33 = v32;
  }

  result._internal = v34;
  result.super.isa = v33;
  return result;
}

void closure #1 in MOLocationShifter.shiftedIfNecessary(_:)(uint64_t a1, uint64_t a2, NSObject *a3, double a4, double a5, double a6)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static MOAngelLogger.assets);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[LocationShifter] Shifted location async", v15, 2u);
  }

  swift_beginAccess();
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  swift_beginAccess();
  *(a2 + 16) = a6;
  dispatch_group_leave(a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ()(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

void closure #2 in MOLocationShifter.shiftedIfNecessary(_:)()
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MOAngelLogger.assets);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "[LocationShifter] Needs to download shifting function", v2, 2u);
  }
}

void closure #3 in MOLocationShifter.shiftedIfNecessary(_:)(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.assets);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "[LocationShifter] error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }

  dispatch_group_leave(group);
}

__C::CLLocationCoordinate2D __swiftcall MOLocationShifter.shiftedIfNecessary(_:)(__C::CLLocationCoordinate2D a1)
{
  v2 = [objc_allocWithZone(CLLocation) initWithLatitude:a1.latitude longitude:a1.longitude];
  v3 = (*(*v1 + 104))();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

uint64_t MOLocationShifter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MOLocationShifter.init()()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v7[0] - 8);
  __chkstk_darwin(v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = [objc_allocWithZone(GEOLocationShifter) init];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_10022166C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002216D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t CLLocationCoordinate2D.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static MOLocationShifter.shared + 112))();
}

uint64_t *MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD.unsafeMutableAddressor()
{
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    swift_once();
  }

  return &static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;
}

uint64_t MOMapLocation.__allocating_init(latitude:longitude:title:clusterCount:geoMapItem:confidenceLevel:isWork:enclosingArea:horizontalUncertainty:isScaledDownPOI:poiCateogory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v20 + v21, 1, 1, v22);
  v23(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v22);
  v24 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
  v25 = v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
  v27 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
  v28 = (v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
  v30 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
  v31 = (v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = a9;
  *(v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = a10;
  v32 = (v20 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
  *v32 = a1;
  v32[1] = a2;
  swift_beginAccess();
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  swift_beginAccess();
  *(v20 + v24) = a5;
  swift_beginAccess();
  *(v20 + v26) = a11;
  swift_beginAccess();
  *(v20 + v27) = a6;
  swift_beginAccess();
  *v28 = a7;
  v28[1] = a8;
  swift_beginAccess();
  *(v20 + v29) = a12;
  swift_beginAccess();
  *(v20 + v30) = a13;
  swift_beginAccess();
  *v31 = a14;
  v31[1] = a15;
  return v20;
}

uint64_t one-time initialization function for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v7, &_sypSgMd);
    goto LABEL_12;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v4 = 0x4062C00000000000;
    goto LABEL_13;
  }

  v4 = v5;
LABEL_13:
  static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD = v4;
  return result;
}

double static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD.getter()
{
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    swift_once();
  }

  return *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;
}

uint64_t key path setter for MOMapLocation.startDate : MOMapLocation(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 200))(v6);
}

uint64_t key path setter for MOMapLocation.endDate : MOMapLocation(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 224))(v6);
}

uint64_t MOMapLocation.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t MOMapLocation.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

double MOMapLocation.latitude.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.latitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double MOMapLocation.longitude.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.longitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOMapLocation.mapItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t MOMapLocation.clusterCount.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
  swift_beginAccess();
  return *v1;
}

uint64_t MOMapLocation.clusterCount.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

double MOMapLocation.confidenceLevel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.confidenceLevel.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOMapLocation.isWork.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.isWork.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOMapLocation.userPlaceType.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.userPlaceType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOMapLocation.enclosingArea.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOMapLocation.enclosingArea.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double MOMapLocation.horizontalUncertainty.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.horizontalUncertainty.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOMapLocation.isScaledDownPOI.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.isScaledDownPOI.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOMapLocation.init(latitude:longitude:title:clusterCount:geoMapItem:confidenceLevel:isWork:enclosingArea:horizontalUncertainty:isScaledDownPOI:poiCateogory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v21 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v15 + v21, 1, 1, v22);
  v23(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v22);
  v24 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
  v25 = v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
  v27 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
  v28 = (v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
  v30 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
  v31 = (v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = a9;
  *(v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = a10;
  v32 = (v15 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
  *v32 = a1;
  v32[1] = a2;
  swift_beginAccess();
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  swift_beginAccess();
  *(v15 + v24) = a5;
  swift_beginAccess();
  *(v15 + v26) = a11;
  swift_beginAccess();
  *(v15 + v27) = a6;
  swift_beginAccess();
  *v28 = a7;
  v28[1] = a8;
  swift_beginAccess();
  *(v15 + v29) = a12;
  swift_beginAccess();
  *(v15 + v30) = a13;
  swift_beginAccess();
  *v31 = a14;
  v31[1] = a15;

  return v15;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MOMapLocation.shiftedIfNecessary.getter()
{
  v1 = v0;
  v2 = (*(*v0 + 240))();
  v3 = [objc_allocWithZone(CLLocation) initWithLatitude:v2 longitude:(*(*v0 + 264))()];
  v4 = *(*v0 + 288);
  if (v4())
  {

    swift_unknownObjectRelease();
LABEL_8:

    return v1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MOLocationShifter.shared;
  if (((*(*static MOLocationShifter.shared + 96))(v3) & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = (*(*v5 + 104))(v3);
  [v6 coordinate];
  v8 = v7;
  v9 = [v6 coordinate];
  v11 = v10;
  v12 = (*(*v1 + 336))(v9);
  v37 = v13;
  v38 = v12;
  v36 = (*(*v1 + 312))();
  v35 = v14;
  v39 = v4();
  v15 = (*(*v1 + 360))();
  v34 = (*(*v1 + 384))();
  v16 = (*(*v1 + 432))();
  v32 = v17;
  v33 = v16;
  v18 = (*(*v1 + 456))();
  type metadata accessor for MOMapLocation();
  v1 = swift_allocObject();
  v19 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v21(v1 + v19, 1, 1, v20);
  v21(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v20);

  v22 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
  v23 = v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
  v25 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
  v26 = (v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
  v28 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
  v29 = (v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = v8;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = v11;
  v30 = (v1 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
  *v30 = v38;
  v30[1] = v37;
  swift_beginAccess();
  *v23 = v36;
  *(v23 + 8) = v35 & 1;
  swift_beginAccess();
  *(v1 + v22) = v39;
  swift_beginAccess();
  *(v1 + v24) = v15;
  swift_beginAccess();
  *(v1 + v25) = v34 & 1;
  swift_beginAccess();
  *v26 = v33;
  v26[1] = v32;
  swift_beginAccess();
  *(v1 + v27) = v18;
  swift_beginAccess();
  *(v1 + v28) = 0;
  swift_beginAccess();
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  return v1;
}

uint64_t type metadata accessor for MOMapLocation()
{
  result = type metadata singleton initialization cache for MOMapLocation;
  if (!type metadata singleton initialization cache for MOMapLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MOMapLocation.deinit()
{
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, &_s10Foundation4DateVSgMd);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MOMapLocation.__deallocating_deinit()
{
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, &_s10Foundation4DateVSgMd);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002236CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_100223720(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 296);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_10022377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100223834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100223888(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 344);

  return v4(v2, v3);
}

uint64_t sub_10022399C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100223A44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_100223AE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100223B3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 440);

  return v4(v2, v3);
}

uint64_t sub_100223C50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100223CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100223D4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);

  return v4(v2, v3);
}

void type metadata completion function for MOMapLocation()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t MOSuggestionSheetStateOfMindTipCellModel.__allocating_init(publicUI:tip:)(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 17) = 2;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 17) = a2;
  return v4;
}

uint64_t MOSuggestionSheetStateOfMindTipCell.tipModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetStateOfMindTipCell_tipModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((swift_isaMask & *v1) + 0x98))(v4);
}

uint64_t (*MOSuggestionSheetStateOfMindTipCell.tipModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetStateOfMindTipCell.tipModel.modify;
}

uint64_t MOSuggestionSheetStateOfMindTipCell.tipModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x98))(result);
  }

  return result;
}

void MOSuggestionSheetStateOfMindTipCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetStateOfMindTipCell_tipModel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MOSuggestionSheetStateOfMindTipCell.init(frame:)()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetStateOfMindTipCell_tipModel] = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
  v4 = objc_msgSendSuper2(&v8, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v5 = *((swift_isaMask & *v4) + 0x98);
  v6 = v4;
  v5();

  return v6;
}

Swift::Void __swiftcall MOSuggestionSheetStateOfMindTipCell.setUpTip()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectWeakAssign();
    [v3 removeFromSuperview];
  }

  v4 = (*((swift_isaMask & *v1) + 0x78))();
  if (v4)
  {
    (*(*v4 + 96))();
  }

  lazy protocol witness table accessor for type MOSuggestionStateOfMindTip and conformance MOSuggestionStateOfMindTip();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for TipUIView());
  v27 = TipUIView.init(_:arrowEdge:actionHandler:)();
  [v1 addSubview:v27];
  swift_unknownObjectWeakAssign();
  v6 = [objc_opt_self() grayColor];
  [v27 setTintColor:v6];

  v7 = [v27 superview];
  if (v7)
  {
    v8 = v7;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v27 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:0.0];
    if (v11)
    {
      [v11 setActive:1];
    }
  }

  v12 = [v27 superview];
  if (v12)
  {
    v13 = v12;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v27 bottomAnchor];
    v15 = [v13 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    if (v16)
    {
      [v16 setConstant:-0.0];
      [v16 setActive:1];
    }
  }

  v17 = [v27 superview];
  if (v17)
  {
    v18 = v17;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v27 leadingAnchor];
    v20 = [v18 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setConstant:20.0];
    if (v21)
    {
      [v21 setActive:1];
    }
  }

  v22 = [v27 superview];
  if (v22)
  {
    v23 = v22;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v27 trailingAnchor];
    v25 = [v23 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:-20.0];
    if (v26)
    {
      [v26 setActive:1];
    }
  }

  TipUIView.imageSize.setter();
}

void closure #1 in MOSuggestionSheetStateOfMindTipCell.setUpTip()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Tips.Action.id.getter() == 0x656C62616E65 && v2 == 0xE600000000000000)
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
LABEL_7:

        return;
      }
    }

    specialized MOSuggestionSheetStateOfMindTipCell.enableButtonTapped()();
    goto LABEL_7;
  }
}

id MOSuggestionSheetStateOfMindTipCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MOSuggestionStateOfMindTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrSayxGAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrSayxGAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO23IgnoresDisplayFrequencyVGMd);
  v8 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  *(swift_allocObject() + 16) = xmmword_1002A48B0;
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();

  v12 = v8;
  v13 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v12 = v4;
  v13 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v10 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v10;
}

void *MOSuggestionStateOfMindTip.actions.getter(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48B0;
  *(swift_allocObject() + 16) = a1;
  Tips.Action.init(id:perform:_:)();
  v6 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  return v6;
}

uint64_t closure #1 in MOSuggestionStateOfMindTip.actions.getter(char a1)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v12) = 2;
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v7 = objc_opt_self();
  v8 = &selRef_systemBlueColor;
  if ((a1 & 1) == 0)
  {
    v8 = &selRef_systemIndigoColor;
  }

  v9 = [v7 *v8];
  Color.init(_:)();
  v10 = Text.foregroundStyle<A>(_:)();
  outlined consume of Text.Storage(v2, v4, v6 & 1);

  return v10;
}

void *protocol witness for Tip.actions.getter in conformance MOSuggestionStateOfMindTip()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48B0;
  *(swift_allocObject() + 16) = v1;
  Tips.Action.init(id:perform:_:)();
  v6 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  return v6;
}

uint64_t MOSuggestionSheetStateOfMindTipCellModel.tip.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t MOSuggestionSheetStateOfMindTipCellModel.init(publicUI:tip:)(char a1, char a2)
{
  *(v2 + 17) = 2;
  *(v2 + 16) = a1;
  swift_beginAccess();
  *(v2 + 17) = a2;
  return v2;
}

uint64_t sub_1002252B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized static Tips.ActionBuilder.buildFinalResult(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  v6 = __chkstk_darwin(v30);
  v29 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      outlined init with take of (offset: Int, element: Tips.Action)(v16, v9);
      Tips.Action.with(index:)();
      outlined destroy of (offset: Int, element: Tips.Action)(v9);
      v31 = v10;
      v19 = v2;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      v10[2] = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

void specialized MOSuggestionSheetStateOfMindTipCell.enableButtonTapped()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    [v4 openSensitiveURL:v8 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized MOSuggestionStateOfMindTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002BAA50;
  v1._object = 0x80000001002BAA30;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t specialized MOSuggestionStateOfMindTip.message.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002BAA00;
  v1._countAndFlagsBits = 0xD000000000000075;
  v1._object = 0x80000001002BA980;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t sub_100225AC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_100225B24(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x80);

  return v2(v3);
}

uint64_t sub_100225B88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t outlined init with take of (offset: Int, element: Tips.Action)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (offset: Int, element: Tips.Action)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id MOCircularProgressIndicatorView.borderLayer.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOCircularProgressIndicatorView.borderLayer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOCircularProgressIndicatorView.progressLayer.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_progressLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOCircularProgressIndicatorView.progressLayer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_progressLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOCircularProgressIndicatorView.playPauseButton.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playPauseButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOCircularProgressIndicatorView.playPauseButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playPauseButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOCircularProgressIndicatorView.config.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_config;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOCircularProgressIndicatorView.config.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOCircularProgressIndicatorView.playButtonConfig.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playButtonConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOCircularProgressIndicatorView.playButtonConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playButtonConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOCircularProgressIndicatorView.mediaAssetID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_mediaAssetID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOCircularProgressIndicatorView.mediaAssetID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_mediaAssetID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *MOCircularProgressIndicatorView.init(mediaAssetID:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderLayer;
  *&v2[v3] = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_progressLayer;
  *&v2[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playPauseButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_config;
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = objc_opt_self();
  v10 = [v9 configurationWithHierarchicalColor:v8];

  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:15.0];
  v13 = [v9 configurationWithFont:v12];

  v14 = [v10 configurationByApplyingConfiguration:v13];
  *&v2[v6] = v14;
  v15 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playButtonConfig;
  v16 = [v7 whiteColor];
  v17 = [v9 configurationWithHierarchicalColor:v16];

  v18 = [v11 systemFontOfSize:15.0];
  v19 = [v9 configurationWithFont:v18];

  v20 = [v17 configurationByApplyingConfiguration:v19];
  *&v2[v15] = v20;
  v21 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_blurMaterialView;
  v22 = [objc_opt_self() effectWithStyle:11];
  v23 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v22];

  *&v2[v21] = v23;
  v24 = &v2[OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_mediaAssetID];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderPath;
  *&v2[v25] = [objc_allocWithZone(UIBezierPath) init];
  swift_beginAccess();
  *v24 = a1;
  *(v24 + 1) = a2;

  v26 = type metadata accessor for MOCircularProgressIndicatorView();
  v74.receiver = v2;
  v74.super_class = v26;
  v27 = objc_msgSendSuper2(&v74, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = one-time initialization token for shared;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v73[3] = v26;
  v73[4] = &protocol witness table for MOCircularProgressIndicatorView;
  v73[0] = v29;
  (*(*static MOMusicPlaybackCoordinator.shared + 216))(v73);
  __swift_destroy_boxed_opaque_existential_0(v73);
  v30 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderLayer;
  swift_beginAccess();
  v31 = *&v29[v30];
  v32 = String._bridgeToObjectiveC()();
  [v31 setName:v32];

  [*&v29[v30] setLineWidth:2.5];
  v33 = *&v29[v30];
  v34 = [v7 whiteColor];
  v35 = [v34 colorWithAlphaComponent:0.6];

  v36 = [v35 CGColor];
  [v33 setStrokeColor:v36];

  v37 = *&v29[v30];
  v38 = [v7 clearColor];
  v39 = [v38 CGColor];

  [v37 setFillColor:v39];
  [*&v29[v30] setLineCap:kCALineCapRound];
  v40 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_progressLayer;
  swift_beginAccess();
  v41 = *&v29[v40];
  v42 = String._bridgeToObjectiveC()();
  [v41 setName:v42];

  v43 = *&v29[v40];
  v44 = [v7 clearColor];
  v45 = [v44 CGColor];

  [v43 setFillColor:v45];
  v46 = *&v29[v40];
  v47 = [v7 whiteColor];
  v48 = [v47 CGColor];

  [v46 setStrokeColor:v48];
  [*&v29[v40] setLineWidth:2.5];
  v49 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_blurMaterialView;
  [*&v29[OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_blurMaterialView] _setCornerRadius:15.0];
  v50 = *&v29[v49];
  v51 = v29;
  [v51 addSubview:v50];
  p_align = &stru_100327FE8.align;
  [*&v29[v49] setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = *&v29[v49];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v54 = [v51 layer];

  [v54 addSublayer:*&v29[v30]];
  v55 = [v51 layer];

  [v55 addSublayer:*&v29[v40]];
  (*((swift_isaMask & *v51) + 0x158))();
  v56 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playPauseButton;
  swift_beginAccess();
  [v51 addSubview:*&v51[v56]];
  [*&v51[v56] setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = *&v51[v56];
  v58 = [v57 superview];
  v59 = &stru_100327FE8.align;
  if (v58)
  {
    v60 = v58;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v61 = [v57 centerYAnchor];
    v62 = [v60 centerYAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    [v63 setConstant:0.0];
    if (v63)
    {
      [v63 setActive:1];
    }

    v59 = (&stru_100327FE8 + 24);
    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v63 = 0;
    v60 = v57;
  }

  v64 = *&v51[v56];
  v65 = [v64 superview];
  if (v65)
  {
    v66 = v65;
    [v64 *(p_align + 222)];
    v67 = [v64 centerXAnchor];
    v68 = [v66 centerXAnchor];
    v69 = [v67 *(v59 + 278)];

    [v69 setConstant:0.0];
    if (v69)
    {
      [v69 setActive:1];
    }
  }

  else
  {
    v69 = 0;
    v66 = v64;
  }

  return v51;
}

Swift::Void __swiftcall MOCircularProgressIndicatorView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MOCircularProgressIndicatorView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  [v0 bounds];
  CGRectGetMidX(v6);
  [v0 bounds];
  CGRectGetMidY(v7);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderPath;
  v2 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderPath) addArcWithCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  v3 = (*((swift_isaMask & *v0) + 0x90))(v2);
  v4 = [*(v0 + v1) CGPath];
  [v3 setPath:v4];
}

Swift::Void __swiftcall MOCircularProgressIndicatorView.setupPlayPauseButton()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MOMusicPlaybackCoordinator.shared;
  v21[3] = type metadata accessor for MOCircularProgressIndicatorView();
  v21[4] = &protocol witness table for MOCircularProgressIndicatorView;
  v21[0] = v0;
  v2 = *(*v1 + 352);
  v3 = v0;
  v4 = v2(v21);
  v5 = __swift_destroy_boxed_opaque_existential_0(v21);
  v6 = (*((swift_isaMask & *v3) + 0xC0))(v5);
  if (v4)
  {
    v7 = (*((swift_isaMask & *v3) + 0xD8))();
  }

  else
  {
    v7 = (*((swift_isaMask & *v3) + 0xF0))();
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  [v6 setImage:v9 forState:0];
  v10 = (*((swift_isaMask & *v3) + 0xA8))();
  [v10 setHidden:(v4 & 1) == 0];

  v11 = (*((swift_isaMask & *v3) + 0x90))();
  [v11 setHidden:(v4 & 1) == 0];

  v12 = *((swift_isaMask & *v3) + 0xC0);
  v13 = v12();
  v14 = [v13 imageView];

  if (v14)
  {
    [v14 setContentMode:1];
  }

  v15 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v3 action:"touchPlayback:"];
  v16 = (v12)([v3 setUserInteractionEnabled:1]);
  [v16 addGestureRecognizer:v15];

  v17 = v12();
  [v17 setUserInteractionEnabled:1];

  v18 = v12();
  [v18 setDeliversTouchesForGesturesToSuperview:0];

  v19 = v12();
  v20 = [objc_opt_self() labelColor];
  [v19 setTintColor:v20];
}

Swift::Void __swiftcall MOCircularProgressIndicatorView.setProgress(progress:)(Swift::Float progress)
{
  [v1 bounds];
  CGRectGetMidX(v14);
  [v1 bounds];
  CGRectGetMidY(v15);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v4 = v3;
  v6 = v5;
  v7 = [objc_allocWithZone(UIBezierPath) init];
  v8 = *((swift_isaMask & *v1) + 0x160);
  v9 = v8(-90.0);
  v10 = [v7 addArcWithCenter:1 radius:v4 startAngle:v6 endAngle:13.75 clockwise:{v9, (v8)((progress * 360.0) + -90.0).n128_f32[0]}];
  v11 = (*((swift_isaMask & *v1) + 0xA8))(v10);
  v12 = [v7 CGPath];
  [v11 setPath:v12];
}

Swift::Void __swiftcall MOCircularProgressIndicatorView.touchPlayback(_:)(UITapGestureRecognizer a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MOMusicPlaybackCoordinator.shared;
  v5[3] = type metadata accessor for MOCircularProgressIndicatorView();
  v5[4] = &protocol witness table for MOCircularProgressIndicatorView;
  v5[0] = v1;
  v3 = *(*v2 + 360);
  v4 = v1;
  v3(v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
}

id MOCircularProgressIndicatorView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for MOCircularProgressIndicatorView();
  v8 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  v9 = *((swift_isaMask & *v4) + 0xC0);
  v10 = v9();
  v11 = v10;
  if (!v8)
  {

    goto LABEL_5;
  }

  type metadata accessor for UIView();
  v12 = v8;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = [v4 superview];
    goto LABEL_6;
  }

  v14 = v9();
  v8 = v12;
LABEL_6:

  return v14;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

id MOCircularProgressIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOCircularProgressIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOCircularProgressIndicatorView.didReceiveShouldPlayNotification()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MOCircularProgressIndicatorView] Start Playing Notification", v5, 2u);
  }

  v6 = (*((swift_isaMask & *v1) + 0xC0))();
  v7 = (*((swift_isaMask & *v1) + 0xD8))();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  [v6 setImage:v9 forState:0];
  v10 = (*((swift_isaMask & *v1) + 0xA8))();
  [v10 setHidden:0];

  v11 = (*((swift_isaMask & *v1) + 0x90))();
  [v11 setHidden:0];
}

Swift::Void __swiftcall MOCircularProgressIndicatorView.didReceiveShouldStopNotification()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.shared);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MOCircularProgressIndicatorView] Stop Playing Notification", v5, 2u);
  }

  v6 = (*((swift_isaMask & *v1) + 0xC0))();
  v7 = (*((swift_isaMask & *v1) + 0xF0))();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  [v6 setImage:v9 forState:0];
  v10 = (*((swift_isaMask & *v1) + 0xA8))();
  [v10 setHidden:1];

  v11 = (*((swift_isaMask & *v1) + 0x90))();
  [v11 setHidden:1];

  v12 = *((swift_isaMask & *v1) + 0x168);
  v13.n128_u64[0] = 0;

  v12(v13);
}

void specialized MOCircularProgressIndicatorView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderLayer;
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playPauseButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_config;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = objc_opt_self();
  v8 = [v7 configurationWithHierarchicalColor:v6];

  v9 = objc_opt_self();
  v10 = [v9 systemFontOfSize:15.0];
  v11 = [v7 configurationWithFont:v10];

  v12 = [v8 configurationByApplyingConfiguration:v11];
  *(v0 + v4) = v12;
  v13 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_playButtonConfig;
  v14 = [v5 whiteColor];
  v15 = [v7 configurationWithHierarchicalColor:v14];

  v16 = [v9 systemFontOfSize:15.0];
  v17 = [v7 configurationWithFont:v16];

  v18 = [v15 configurationByApplyingConfiguration:v17];
  *(v0 + v13) = v18;
  v19 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_blurMaterialView;
  v20 = [objc_opt_self() effectWithStyle:11];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  *(v0 + v19) = v21;
  v22 = (v0 + OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_mediaAssetID);
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC16MomentsUIService31MOCircularProgressIndicatorView_borderPath;
  *(v0 + v23) = [objc_allocWithZone(UIBezierPath) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002283B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_100228474@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_100228534@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1002285F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_1002286B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_100228774@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1002287D8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x128);

  return v4(v2, v3);
}

uint64_t *MOPresenterServer.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOPresenterServer.shared;
}

void MOPresenterServer.sendSuggestionSheetStateUpdate(to:for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v40 = type metadata accessor for Logger();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v35 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Client.connectionUUID.getter();
  v16 = (*((swift_isaMask & *v2) + 0xC0))(v15);
  v38 = v13;
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    swift_beginAccess();
    if ((*(v16 + 56) & 1) != 0 || (v17 = SuggestionSheetViewState.rawValue.getter(), v17 != SuggestionSheetViewState.rawValue.getter()))
    {
      v37 = v7;
      v39 = a1;
      v18 = [objc_allocWithZone(NSNumber) initWithInteger:SuggestionSheetViewState.rawValue.getter()];
      v35[1] = type metadata accessor for CommonLogger();
      static CommonLogger.presentation.getter();
      v19 = v18;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = a2;
        v24 = v23;
        *v22 = 138412290;
        *(v22 + 4) = v19;
        *v23 = v19;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "[MOPresenterServer] acknowledging state transition to %@", v22, 0xCu);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v24, &_sSo8NSObjectCSgMd);
        a2 = v36;
      }

      v26 = v42 + 8;
      v27 = *(v42 + 8);
      v28 = v40;
      v27(v11, v40);
      *(v16 + 48) = v39;
      *(v16 + 56) = 0;
      v29 = MOPresenterServer.remoteTarget(client:)(a2);
      if (!v29)
      {

        return;
      }

      v30 = v29;
      v42 = v26;
      static CommonLogger.presentation.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v36 = a2;
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "[MOPresenterServer] Inform client of state change", v33, 2u);
      }

      v27(v41, v28);
      [v30 didReceiveStateUpdateRequest:v19];

      swift_unknownObjectRelease();
      v7 = v37;
    }

    v34 = SuggestionSheetViewState.rawValue.getter();
    if (v34 == SuggestionSheetViewState.rawValue.getter())
    {
      Client.connectionUUID.getter();
      (*(v38 + 56))(v7, 0, 1, v12);
      MOPresenterServer.removeConnectionID(connectionID:)(v7);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v7, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
    }
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

void MOPresenterServer.didConnectToServerWindow(with:connectionId:delegate:)(void (*a1)(void, void), void *a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  specialized MOPresenterServer.didConnectToServerWindow(with:connectionId:delegate:)(a1, a2, a3, v4, ObjectType, a4);
}

Swift::Void __swiftcall MOPresenterServer.cleanUpAllConnections()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOPresenterServer] Cleaning up all connections", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = *(v1 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v12 lock];
  v13 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v28 = v12;
    v29 = v1;
    v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(v15, 0);
    v17 = *(type metadata accessor for UUID() - 8);
    v18 = v16;
    v19 = specialized Sequence._copySequenceContents(initializing:)(&v30, v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v15, v14);

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
    if (v19 != v15)
    {
      __break(1u);
      return;
    }

    v12 = v28;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  [v12 unlock];
  v20 = v18[2];
  if (v20)
  {
    v21 = type metadata accessor for UUID();
    v22 = *(v21 - 8);
    v23 = *(v22 + 16);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = v18;
    v25 = v18 + v24;
    v26 = *(v22 + 72);
    v27 = (v22 + 56);
    do
    {
      v23(v4, v25, v21);
      (*v27)(v4, 0, 1, v21);
      MOPresenterServer.removeConnectionID(connectionID:)(v4);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s10Foundation4UUIDVSgMd);
      v25 += v26;
      --v20;
    }

    while (v20);
  }
}

void MOPresenterServer.sendNotificationScheduleChange(to:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSNumber) initWithInteger:NotificationScheduleConfiguration.rawValue.getter()];
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = a3;
    v17 = v16;
    *v15 = 138412290;
    *(v15 + 4) = v11;
    *v16 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "[MOPresenterServer] acknowledging notification state transition to %@", v15, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v17, &_sSo8NSObjectCSgMd);
    a3 = v26;

    v4 = v25;
  }

  (*(v7 + 8))(v9, v6);
  v29 = 0;
  v28 = _swiftEmptyArrayStorage;
  v19 = *(v4 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v19 lock];
  closure #1 in MOPresenterServer.sendNotificationScheduleChange(to:for:)(v4, v27, a3, &v29, &v28);
  [v19 unlock];
  v20 = v28;
  if (v28 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_12;
    }
  }

  if (v21 < 1)
  {
    __break(1u);

    [v20 unlock];
    __break(1u);
    return;
  }

  v22 = 0;
  do
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v20 + 8 * v22 + 32);
      swift_unknownObjectRetain();
    }

    ++v22;
    v24 = [objc_allocWithZone(NSNumber) initWithInteger:NotificationScheduleConfiguration.rawValue.getter()];
    [v23 didReceiveNotificationScheduleChange:v24];
    swift_unknownObjectRelease();
  }

  while (v21 != v22);
LABEL_12:
  if (v29)
  {
    [v29 didReceiveNotificationScheduleChange:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *MOServerConnectionProperties.connectionHost.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MOServerConnectionProperties.activationState.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t MOServerConnectionProperties.currentViewState.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

void *MOServerConnectionProperties.delegate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void MOServerConnectionProperties.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

void *MOServerConnectionProperties.pendingPresentationOptions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void MOServerConnectionProperties.pendingPresentationOptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void *MOServerConnectionProperties.unfulfilledUpdateState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void MOServerConnectionProperties.unfulfilledUpdateState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

void *MOServerConnectionProperties.unfulfilledUpdateIsAnimated.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void MOServerConnectionProperties.unfulfilledUpdateIsAnimated.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t MOServerConnectionProperties.appName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t MOServerConnectionProperties.appName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t MOServerConnectionProperties.bundleID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t MOServerConnectionProperties.bundleID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t MOServerConnectionProperties.urlBasedAsset.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

id *MOServerConnectionProperties.deinit()
{

  return v0;
}

uint64_t MOServerConnectionProperties.__deallocating_deinit()
{
  MOServerConnectionProperties.deinit();

  return swift_deallocClassInstance();
}

uint64_t MOServerConnectionProperties.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 4;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI13URLBasedAsset_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t MOServerConnectionProperties.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 4;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI13URLBasedAsset_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  return v0;
}

id static MOPresenterServer.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MOPresenterServer.shared;

  return v1;
}

uint64_t MOPresenterServer.connectionProperties(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v3 lock];
  v4 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  [v3 unlock];
  return v8;
}

Swift::Void __swiftcall MOPresenterServer.start()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock];
  [v1 lock];
  [v1 unlock];
  MOPresenterServer.setupListener()();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v2, v0, @objc closure #1 in MOPresenterServer.subscribeToScreenLockNotification(), v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

Swift::Void __swiftcall MOPresenterServer.setupListener()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v5 lock];
  v16 = v0;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in closure #1 in MOPresenterServer.setupListener();
  *(v6 + 24) = v15;
  aBlock[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_43;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = [v8 listenerWithConfigurator:v7];
  _Block_release(v7);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener);
    *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener) = v9;
    v11 = v9;

    [v5 unlock];
    [v11 activate];
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[BSServiceConnectionHost] listener active", v14, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }
}

id MOPresenterServer.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock];
  [v1 lock];
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener];
  [v1 unlock];
  [v2 invalidate];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOPresenterServer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Void __swiftcall MOPresenterServer.invalidateListener()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener);
  [v1 unlock];
  [v2 invalidate];
}

id MOPresenterServer.init()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session;
  type metadata accessor for MOBundleProcessingSession();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static SuggestionNotificationManager.shared;
  *(v2 + 112) = static SuggestionNotificationManager.shared;
  *(v2 + 120) = 0;
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
  v5 = v3;
  *&v0[v4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy10Foundation4UUIDVGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  *&v0[v6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__listener] = 0;
  v7 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock;
  *&v0[v7] = [objc_allocWithZone(NSRecursiveLock) init];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MOPresenterServer();
  return objc_msgSendSuper2(&v9, "init");
}

void closure #1 in MOPresenterServer.listener(_:didReceive:withContext:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v10];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v11];

  [a1 setUserInfo:a4];
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a3;
  v27 = partial apply for closure #1 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:);
  v28 = v12;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v26 = &block_descriptor_127_0;
  v13 = _Block_copy(&v23);
  v14 = a5;
  v15 = a3;

  [a1 setInvalidationHandler:v13];
  _Block_release(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v27 = partial apply for closure #2 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:);
  v28 = v16;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v26 = &block_descriptor_133;
  v17 = _Block_copy(&v23);
  v18 = v14;
  v19 = v15;

  [a1 setInterruptionHandler:v17];
  _Block_release(v17);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v27 = partial apply for closure #3 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:);
  v28 = v20;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v26 = &block_descriptor_139_1;
  v21 = _Block_copy(&v23);
  v22 = v18;

  [a1 setActivationHandler:v21];
  _Block_release(v21);
}

uint64_t static MOPresenterServer.getConnectionIdentifier(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && [a1 userInfo])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t MOPresenterServer.removeConnectionID(connectionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v4 - 8);
  v73 = &v59[-v5];
  v6 = type metadata accessor for Logger();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v71 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v59[-v12];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v72 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v17);
  v68 = &v59[-v19];
  __chkstk_darwin(v18);
  v21 = &v59[-v20];
  outlined init with copy of (String, Date?)(a1, v13, &_s10Foundation4UUIDVSgMd);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v13, &_s10Foundation4UUIDVSgMd);
  }

  v23 = *(v15 + 32);
  v23(v21, v13, v14);
  v24 = (*((swift_isaMask & *v2) + 0xC0))(v21);
  if (v24)
  {
    v25 = v24;
    v64 = *(v2 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
    [v64 lock];
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v21);
    swift_endAccess();

    swift_beginAccess();
    v26 = *(v25 + 16);
    v67 = v15 + 32;
    v66 = v23;
    if (v26)
    {
      v27 = [v26 remoteProcess];
    }

    else
    {
      v27 = 0;
    }

    v63 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v27);
    v29 = v28;

    if (v29)
    {
      v30 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
      swift_beginAccess();
      v31 = *(v2 + v30);
      if (*(v31 + 16))
      {

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v29);
        if (v33)
        {
          v34 = *(*(v31 + 56) + 8 * v32);

          v35 = specialized Set.contains(_:)(v21, v34);

          if (v35)
          {
            v36 = MOPresenterServer._clientConnectionsImpl.modify();
            v37 = specialized Dictionary.subscript.modify(v74, v63, v29);
            if (*v38)
            {
              specialized Set._Variant.remove(_:)(v21, v11);
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4UUIDVSgMd);
              (v37)(v74, 0);

              (v36)(v75, 0);
            }

            else
            {
              (v37)(v74, 0);

              (v36)(v75, 0);
              (*(v15 + 56))(v11, 1, 1, v14);
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4UUIDVSgMd);
            }

            goto LABEL_15;
          }
        }

        else
        {
        }
      }
    }

LABEL_15:
    v39 = *(v25 + 16);
    swift_beginAccess();
    v40 = *(v25 + 64);
    v65 = v40;
    v41 = v39;
    [v64 unlock];
    v64 = v41;
    [v41 invalidate];
    specialized MOPresenterServer.destroyScene(with:)(v40);
    if (v29)
    {
      type metadata accessor for CommonLogger();
      v42 = v71;
      static CommonLogger.presentation.getter();
      v43 = v68;
      (*(v15 + 16))(v68, v21, v14);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v61 = v44;
        v47 = v43;
        v48 = v46;
        v62 = swift_slowAlloc();
        v74[0] = v62;
        *v48 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
        v60 = v45;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v15 + 8))(v47, v14);
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v74);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v29, v74);
        v53 = v61;
        _os_log_impl(&_mh_execute_header, v61, v60, "[MOPresenterServer] Connection  %s removed for client: %s", v48, 0x16u);
        swift_arrayDestroy();

        (*(v69 + 8))(v71, v70);
      }

      else
      {

        (*(v15 + 8))(v43, v14);
        (*(v69 + 8))(v42, v70);
      }
    }

    v54 = type metadata accessor for TaskPriority();
    v55 = v73;
    (*(*(v54 - 8) + 56))(v73, 1, 1, v54);
    v56 = v72;
    (*(v15 + 16))(v72, v21, v14);
    v57 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    v66(v58 + v57, v56, v14);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in MOPresenterServer.removeConnectionID(connectionID:), v58);
  }

  return (*(v15 + 8))(v21, v14);
}