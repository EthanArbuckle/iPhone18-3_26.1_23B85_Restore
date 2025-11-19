char *CallsSearchController.results.getter()
{
  swift_beginAccess();

  v1 = specialized _arrayForceCast<A, B>(_:)(v0);

  return v1;
}

uint64_t CallsSearchController.results.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a1 + 32;
    do
    {
      outlined init with copy of Any(v5, &v9);
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 32;
      --v4;
    }

    while (v4);

    v6 = v10;
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v7 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  *(v2 + v7) = v6;
}

uint64_t key path getter for CallsSearchController.results : CallsSearchController@<X0>(char **a1@<X8>)
{
  swift_beginAccess();

  v3 = specialized _arrayForceCast<A, B>(_:)(v2);

  *a1 = v3;
  return result;
}

uint64_t key path setter for CallsSearchController.results : CallsSearchController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = specialized _arrayForceCast<A, B>(_:)(*a1);
  v4 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for CHHandle, CHHandle_ptr, &_sSo8CHHandleCSgMd);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for CNContact, CNContact_ptr, &_sSo9CNContactCSgMd);
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo15CNKeyDescriptor_pMd);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_s11MobilePhone7Message_pMd);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      outlined init with copy of Any(v4, &v5);
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t *a2)
{
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
    return v5;
  }

  v14 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        swift_dynamicCast();
        v14 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
          v5 = v14;
        }

        v5[2] = v9 + 1;
        outlined init with take of Any(v13, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        swift_dynamicCast();
        v14 = v5;
        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v5 = v14;
        }

        v5[2] = v12 + 1;
        outlined init with take of Any(v13, &v5[4 * v12 + 4]);
        v10 += 8;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = 0;
        do
        {
          v10 = v9 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          type metadata accessor for NSMutableArray(0, a2);
          __swift_instantiateConcreteTypeFromMangledNameV2(a4);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v9 = v10;
        }

        while (v7 != v10);
      }

      else
      {
        v11 = (a1 + 32);
        type metadata accessor for NSMutableArray(0, a2);
        do
        {
          v12 = *v11++;
          v13 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(a4);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v7;
        }

        while (v7);
      }

      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

void (*CallsSearchController.results.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();

  v7 = specialized _arrayForceCast<A, B>(_:)(v6);

  *(v4 + 24) = v7;
  return CallsSearchController.results.modify;
}

void CallsSearchController.results.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {

    v7 = specialized _arrayForceCast<A, B>(_:)(v6);

    *(v4 + v3) = v7;
  }

  else
  {
    v8 = specialized _arrayForceCast<A, B>(_:)(v5);

    *(v4 + v3) = v8;
  }

  free(v2);
}

uint64_t CallsSearchController.resultIDs.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t CallsSearchController.maximumNumberOfRowsInSection.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallsSearchController.delegate.getter()
{
  return CallsSearchController.delegate.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t CallsSearchController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallsSearchController.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___MPCallsSearchController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CallsSearchController.delegate.modify;
}

void CallsSearchController.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id @objc CallsSearchController.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void CallsSearchController.hostingNavigationController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*CallsSearchController.hostingNavigationController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___MPCallsSearchController_hostingNavigationController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return VoicemailSearchMetadataView.delegate.modify;
}

uint64_t CallsSearchController.detailsPresenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MPCallsSearchController_detailsPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id CallsSearchController.searchManager.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController____lazy_storage___searchManager;
  v2 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___searchManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___searchManager);
  }

  else
  {
    type metadata accessor for ApplicationServices();
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 callProviderManager];

    v6 = [objc_allocWithZone(MPSearchManager) initWithItemType:0 callProviderManager:v5];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id CallsSearchController.contactsService.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController____lazy_storage___contactsService;
  v2 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___contactsService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___contactsService);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___MPCallsSearchController_recentsController);
    v5 = type metadata accessor for ContactsService();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___MPContactsService_dataProvider] = v4;
    v12.receiver = v6;
    v12.super_class = v5;
    v7 = v4;
    v8 = objc_msgSendSuper2(&v12, "init");
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id CallsSearchController.callServices.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController____lazy_storage___callServices;
  v2 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___callServices);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___callServices);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR___MPCallsSearchController_featureFlags) groupConversations];
    v5 = *(v0 + OBJC_IVAR___MPCallsSearchController_recentsController);
    v6 = type metadata accessor for RecentsCallServices();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices____lazy_storage___eventSignal] = 0;
    v7[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_groupConversationsEnabled] = v4;
    *&v7[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_recentsCallServicesDialer] = v5;
    v13.receiver = v7;
    v13.super_class = v6;
    v8 = v5;
    v9 = objc_msgSendSuper2(&v13, "init");
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id CallsSearchController.recentsDetailPresenter.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController____lazy_storage___recentsDetailPresenter;
  v2 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___recentsDetailPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___recentsDetailPresenter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___MPCallsSearchController_recentsController);
    v5 = CallsSearchController.callReportingViewModel.getter();
    v6 = type metadata accessor for RecentsDetailPresenter();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v10 = __swift_project_value_buffer(v9, static Logger.mobilePhone);
    (*(*(v9 - 8) + 16))(&v7[v8], v10, v9);
    v11 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
    *&v7[v11] = [objc_allocWithZone(TUFeatureFlags) init];
    *&v7[OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore] = 1;
    *&v7[OBJC_IVAR___MPRecentsDetailPresenter_recentsController] = v4;
    *&v7[OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel] = v5;
    v16.receiver = v7;
    v16.super_class = v6;
    v12 = objc_msgSendSuper2(&v16, "init");
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id CallsSearchController.callReportingViewModel.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController____lazy_storage___callReportingViewModel;
  v2 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___callReportingViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPCallsSearchController____lazy_storage___callReportingViewModel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CallReportingViewModel()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id CallsSearchController.__allocating_init(recentsController:searchResultsController:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  v7 = objc_allocWithZone(v2);
  v8 = CallsSearchController.init(recentsController:featureFlags:)(a1, v6);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id CallsSearchController.init(recentsController:searchResultsController:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = [objc_allocWithZone(TUFeatureFlags) init];
  v6 = objc_allocWithZone(ObjectType);
  v7 = CallsSearchController.init(recentsController:featureFlags:)(a1, v5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id CallsSearchController.init(recentsController:featureFlags:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___MPCallsSearchController_sectionTitle];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v24._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x534C4C4143;
  v10.value._countAndFlagsBits = 0x746E656365524850;
  v9._object = 0xE500000000000000;
  v10.value._object = 0xE900000000000073;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

  *v6 = v12;
  *&v2[OBJC_IVAR___MPCallsSearchController_sectionIndex] = 0x7FFFFFFFFFFFFFFFLL;
  *&v2[OBJC_IVAR___MPCallsSearchController_sectionType] = 2;
  v13 = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR___MPCallsSearchController_resultIDs] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  *&v2[OBJC_IVAR___MPCallsSearchController_recentCalls] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection] = 5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___MPCallsSearchController_detailsPresenter] = 0;
  Logger.init(subsystem:category:)();
  v15 = &v2[OBJC_IVAR___MPCallsSearchController_searchText];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController_searchTokens] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR___MPCallsSearchController____lazy_storage___searchManager] = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController_spotlightSearchResultIDs] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR___MPCallsSearchController__cellConfigurator] = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController____lazy_storage___contactsService] = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController____lazy_storage___callServices] = 0;
  v16 = &v2[OBJC_IVAR___MPCallsSearchController____lazy_storage___callAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController____lazy_storage___recentsDetailPresenter] = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController____lazy_storage___callReportingViewModel] = 0;
  *&v2[OBJC_IVAR___MPCallsSearchController_recentsController] = a1;
  *&v2[OBJC_IVAR___MPCallsSearchController_featureFlags] = a2;
  v17 = a1;
  v18 = a2;
  v19 = [v17 recentCalls];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_beginAccess();
  *&v2[v14] = v13;

  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "init");
  [v17 addDelegate:v21 queue:0];

  return v21;
}

uint64_t CallsSearchController.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v6;
  v4[33] = v5;

  return (_swift_task_switch)(CallsSearchController.search(with:searchTokens:), v6, v5);
}

uint64_t CallsSearchController.search(with:searchTokens:)()
{
  if (![*(v0[30] + OBJC_IVAR___MPCallsSearchController_featureFlags) callHistorySearchEnabled])
  {

    goto LABEL_24;
  }

  v1 = v0[30];
  v2 = v0[28];
  v3 = (v1 + OBJC_IVAR___MPCallsSearchController_searchText);
  v4 = *(v1 + OBJC_IVAR___MPCallsSearchController_searchText + 8);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    if (*v3 != v0[27] || v4 != v2)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v1 = v0[30];
      if ((v6 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v7 = v0[29];

    LOBYTE(v7) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo13UISearchTokenC_Tt1g5(v8, v7);

    v1 = v0[30];
    if (v7)
    {

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteSearchFor:v0[30]];
        swift_unknownObjectRelease();
      }

      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_15:
  v11 = v0[28];
  v10 = v0[29];
  *v3 = v0[27];
  v3[1] = v11;

  *(v1 + OBJC_IVAR___MPCallsSearchController_searchTokens) = v10;

  if (v2)
  {
    v12 = String.count.getter();
    v13 = v0[29];
    if (v12 > 0)
    {
LABEL_19:
      v14 = CallsSearchController.searchManager.getter();
      v0[34] = v14;
      v15 = String._bridgeToObjectiveC()();
      v0[35] = v15;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UISearchToken);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[36] = isa;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = CallsSearchController.search(with:searchTokens:);
      v17 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGs5Error_pGMd);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> () with result type [String];
      v0[13] = &block_descriptor_8;
      v0[14] = v17;
      [v14 searchWithText:v15 searchTokens:isa completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_19;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_19;
    }
  }

  v18 = v0[30];

  v19 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  *(v18 + v19) = _swiftEmptyArrayStorage;

  v20 = OBJC_IVAR___MPCallsSearchController_resultIDs;
  swift_beginAccess();
  *(v18 + v20) = _swiftEmptyArrayStorage;

  *(v18 + OBJC_IVAR___MPCallsSearchController_spotlightSearchResultIDs) = _swiftEmptyArrayStorage;

  [*(v18 + OBJC_IVAR___MPCallsSearchController_recentsController) setPreFetchingPredicate:0];
LABEL_24:
  v21 = v0[1];

  return v21();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = CallsSearchController.search(with:searchTokens:);
  }

  else
  {
    v5 = CallsSearchController.search(with:searchTokens:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v32 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[18];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v31);
    *(v9 + 12) = 2048;
    v11 = *(v4 + 16);

    *(v9 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v5, v6, "CallsSearchController: Completed search for %s. Got %ld results", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (!*(v4 + 16))
  {
    v15 = v0[30];

    v16 = [objc_opt_self() predicateWithValue:0];
    *(v15 + OBJC_IVAR___MPCallsSearchController_spotlightSearchResultIDs) = _swiftEmptyArrayStorage;
    v17 = v16;

LABEL_7:
    [*(v0[30] + OBJC_IVAR___MPCallsSearchController_recentsController) setPreFetchingPredicate:v17];

    goto LABEL_8;
  }

  v31[0] = v4;

  specialized MutableCollection<>.sort(by:)(v31);
  v12 = v0[30];
  v13 = v31[0];
  v14 = OBJC_IVAR___MPCallsSearchController_spotlightSearchResultIDs;
  v31[0] = *(v12 + OBJC_IVAR___MPCallsSearchController_spotlightSearchResultIDs);
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(v31);

  v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v13, v31[0]);

  if ((v20 & 1) == 0)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v25, v26, "CallsSearchController: Search calls did changed! Search results count: %ld", v27, 0xCu);
    }

    else
    {
    }

    *(v12 + v14) = v4;

    v28 = objc_opt_self();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v28 predicateForCallsWithAnyUniqueIDs:isa];

    v17 = v30;
    goto LABEL_7;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "CallsSearchController: Search calls did not change for calls search controller.", v23, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didCompleteSearchFor:v0[30]];
    swift_unknownObjectRelease();
  }

LABEL_8:
  v18 = v0[1];

  return v18();
}

{
  v14 = v0;
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];

  swift_willThrow();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "CallsSearchController: Failed to search for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = [objc_opt_self() predicateWithValue:0];

  v11 = v0[1];

  return v11();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> () with result type [String](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo13UISearchTokenC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UISearchToken);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11MobilePhone16VoicemailAccountC_Tt1g5(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for VoicemailAccount();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t @objc closure #1 in CallsSearchController.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in CallsSearchController.search(with:searchTokens:), v6, v5);
}

uint64_t @objc closure #1 in CallsSearchController.search(with:searchTokens:)()
{
  v1 = v0[4];
  v2 = v0[2];

  v0[7] = _Block_copy(v1);
  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v0[8] = v5;
  v6 = v0[5];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UISearchToken);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[9] = v7;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in CallsSearchController.search(with:searchTokens:);

  return CallsSearchController.search(with:searchTokens:)(v3, v5, v7);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall CallsSearchController.cancelPreviousSearchRequests()()
{
  v1 = v0;
  if ([*(v0 + OBJC_IVAR___MPCallsSearchController_featureFlags) callHistorySearchEnabled])
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "CallsSearchController: cancelling previous search requests", v4, 2u);
    }

    v5 = CallsSearchController.searchManager.getter();
    MPSearchManager.cancelPreviousSearch()();

    v6 = *(v1 + OBJC_IVAR___MPCallsSearchController_recentsController);

    [v6 cancelSearchFetchOperations];
  }
}

id CallsSearchController.cellConfigurator(for:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MPCallsSearchController__cellConfigurator;
  v5 = *(v1 + OBJC_IVAR___MPCallsSearchController__cellConfigurator);
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UITableView);
      v8 = v5;
      v9 = a1;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        return v5;
      }
    }

    else
    {
      v44 = v5;
    }

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "CallsSearchController is being used with more than one tableView. This may lead to unexpected behavior.", v47, 2u);
    }

    v48 = a1;
    RecentsCellConfigurator.tableView.setter(a1);
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v58 = v4;
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = CallsSearchController.callReportingViewModel.getter();
      v55 = CallsSearchController.contactsService.getter();
      v14 = type metadata accessor for ReportFlowPresenter();
      v15 = objc_allocWithZone(v14);
      swift_unknownObjectWeakInit();
      v16 = OBJC_IVAR___MPReportFlowPresenter_logger;
      v17 = one-time initialization token for mobilePhone;
      v18 = v12;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      v50 = __swift_project_value_buffer(v19, static Logger.mobilePhone);
      v20 = *(*(v19 - 8) + 16);
      v20(&v15[v16], v50, v19);
      *&v15[OBJC_IVAR___MPReportFlowPresenter_classificationViewController] = 0;
      *&v15[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel] = v13;
      swift_unknownObjectWeakAssign();
      *&v15[OBJC_IVAR___MPReportFlowPresenter_contactsService] = v55;
      v60.receiver = v15;
      v60.super_class = v14;
      v21 = v13;
      v54 = objc_msgSendSuper2(&v60, "init");

      v52 = *(v1 + OBJC_IVAR___MPCallsSearchController_recentsController);
      v53 = *(v1 + OBJC_IVAR___MPCallsSearchController_featureFlags);
      v22 = *(v1 + OBJC_IVAR___MPCallsSearchController____lazy_storage___contactsService);
      v23 = *(v2 + OBJC_IVAR___MPCallsSearchController____lazy_storage___callReportingViewModel);
      v51 = v22;
      v24 = CallsSearchController.callServices.getter();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v56 = type metadata accessor for RecentsCellConfigurator();
      v26 = objc_allocWithZone(v56);
      v27 = &v26[OBJC_IVAR___MPRecentsCellConfigurator_cellIdentifier];
      *v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27[1] = v28;
      v20(&v26[OBJC_IVAR___MPRecentsCellConfigurator_logger], v50, v19);
      swift_unknownObjectWeakInit();
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___recentsReminderActionProvider] = 0;
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator____lazy_storage___remindMeActionConfigurator] = 0;
      swift_unknownObjectWeakInit();
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPLegacyRecentsTableViewCell);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      v30 = String._bridgeToObjectiveC()();

      [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v30];

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator_recentsController] = v52;
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator_featureFlags] = v53;
      v26[OBJC_IVAR___MPRecentsCellConfigurator_tapTargets] = 1;
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator_callReportingViewModel] = v23;
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator_reportFlowPresenter] = v54;
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator_contactsService] = v51;
      v31 = objc_opt_self();
      v32 = v23;
      v33 = v51;
      v34 = v52;
      v35 = v53;
      v36 = v54;
      v37 = [v31 sharedInstance];
      v38 = [v37 contactStore];

      v39 = [objc_opt_self() settingsWithContactStore:v38 threeDTouchEnabled:1];
      *&v26[OBJC_IVAR___MPRecentsCellConfigurator_avatarViewControllerSettings] = v39;
      v40 = &v26[OBJC_IVAR___MPRecentsCellConfigurator_placeCallAction];
      *v40 = partial apply for implicit closure #3 in implicit closure #2 in CallsSearchController.cellConfigurator(for:);
      v40[1] = v25;
      v41 = &v26[OBJC_IVAR___MPRecentsCellConfigurator_removeCallsAtIndexPaths];
      *v41 = partial apply for closure #1 in CallsSearchController.cellConfigurator(for:);
      v41[1] = v57;
      swift_unknownObjectWeakAssign();
      v59.receiver = v26;
      v59.super_class = v56;

      v5 = objc_msgSendSuper2(&v59, "init");

      v42 = *(v2 + v58);
      *(v2 + v58) = v5;
      v43 = v5;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void closure #1 in CallsSearchController.cellConfigurator(for:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CallsSearchController.removeCalls(at:)(a1);
  }
}

Swift::Void __swiftcall CallsSearchController.removeCalls(at:)(Swift::OpaquePointer at)
{
  v2 = v1;
  v3 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage;
  v4 = *(at._rawValue + 2);
  if (v4)
  {
    v6 = *(type metadata accessor for IndexPath() - 8);
    v7 = at._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      closure #1 in CallsSearchController.removeCalls(at:)(v7, v2, &v30);
      v7 += v8;
      --v4;
    }

    while (v4);
    v3 = v30;
  }

  v9 = *(v3 + 2);
  if (v9)
  {
    v29[3] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = OBJC_IVAR___MPCallsSearchController_recentCalls;
    v11 = (v3 + 32);
    do
    {
      v13 = *v11++;
      v12 = v13;
      swift_beginAccess();
      v14 = *(v2 + v10);
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);

          __break(1u);
          return;
        }

        if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v14 + 8 * v12 + 32);
      }

      swift_endAccess();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v9;
    }

    while (v9);
  }

  v29[0] = v3;

  specialized MutableCollection<>.sort(by:)(v29);
  v16 = *(v29[0] + 2);
  if (v16)
  {
    v17 = OBJC_IVAR___MPCallsSearchController_recentCalls;
    v18 = v29[0] + 32;
    do
    {
      v20 = *v18;
      v18 += 8;
      v19 = v20;
      swift_beginAccess();
      v21 = *(v2 + v17);
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + v17) = v21;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        *(v2 + v17) = v21;
      }

      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v23)
      {
        goto LABEL_25;
      }

      v24 = v23 - 1;
      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20);
      memmove(((v21 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 32), ((v21 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 40), 8 * (v23 - 1 - v19));
      *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) = v24;
      *(v2 + v17) = v21;
      swift_endAccess();
    }

    while (--v16);
  }

  v26 = *(v2 + OBJC_IVAR___MPCallsSearchController_recentsController);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 deleteRecentCalls:isa];

  swift_beginAccess();

  CallsSearchController.update(with:)(v28);
}

Swift::Int __swiftcall CallsSearchController.numberOfRowsInConsolidatedView()()
{
  if (![*(v0 + OBJC_IVAR___MPCallsSearchController_featureFlags) callHistorySearchEnabled])
  {
    return 0;
  }

  swift_beginAccess();

  v2 = specialized _arrayForceCast<A, B>(_:)(v1);

  v3 = *(v2 + 2);

  v4 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  if (*(v0 + v4) >= v3)
  {
    return v3;
  }

  else
  {
    return *(v0 + v4);
  }
}

Swift::Void __swiftcall CallsSearchController.registerCell(with:)(UITableView with)
{
  v1 = CallsSearchController.cellConfigurator(for:)(with.super.super.super.super.isa);
}

id CallsSearchController.tableView(_:willDisplay:forRowAt:)()
{
  v1 = *(v0 + OBJC_IVAR___MPCallsSearchController_recentsController);
  v2 = IndexPath.row.getter();

  return [v1 continuousScrollingReachedIndexPath:v2];
}

uint64_t CallsSearchController.tableView(_:cellForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = CallsSearchController.cellConfigurator(for:)(a1);
  if (v11)
  {
    v38 = v11;
    v12 = OBJC_IVAR___MPCallsSearchController_recentCalls;
    swift_beginAccess();
    v13 = *(v2 + v12);
    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (IndexPath.row.getter() >= v14)
    {
      (*(v7 + 16))(v9, a2, v6);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      v33 = os_log_type_enabled(v31, v32);
      v18 = v38;
      if (v33)
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        v35 = v18;
        v36 = IndexPath.row.getter();
        (*(v7 + 8))(v9, v6);
        *(v34 + 4) = v36;
        v18 = v35;
        _os_log_impl(&_mh_execute_header, v31, v32, "We do not have a recentsItem for row %ld, cannot return a well formed cell.\nThis is programmer error.\nIts the job of the caller to make sure the table view is in sync with the datasource.", v34, 0xCu);
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }

      v20 = getter of emptyCell #1 in CallsSearchController.tableView(_:cellForRowAt:)(v10, a1);
      goto LABEL_22;
    }

    v15 = IndexPath.row.getter();
    result = swift_beginAccess();
    v17 = *(v2 + v12);
    if ((v17 & 0xC000000000000001) == 0)
    {
      v18 = v38;
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v17 + 8 * v15 + 32);
LABEL_9:
        swift_endAccess();
        v20 = RecentsCellConfigurator.cell(for:recentCall:)(a2, v19);

        v21 = *(v3 + OBJC_IVAR___MPCallsSearchController_searchText + 8);
        if (v21)
        {
          v22 = *(v3 + OBJC_IVAR___MPCallsSearchController_searchText);
          v23 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v23 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (v23)
          {
            objc_opt_self();
            v24 = swift_dynamicCastObjCClass();
            if (v24)
            {
              v25 = v24;

              v20 = v20;
              v26 = String._bridgeToObjectiveC()();

              [v25 configureCellForHighlightingWithText:v26];

LABEL_23:
              return v20;
            }
          }
        }

LABEL_22:

        goto LABEL_23;
      }

      __break(1u);
      return result;
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = v38;
    goto LABEL_9;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "We do not have a navigation controller, cannot return a well formed cell.", v29, 2u);
  }

  v30 = getter of emptyCell #1 in CallsSearchController.tableView(_:cellForRowAt:)(v10, a1);

  return v30;
}

id getter of emptyCell #1 in CallsSearchController.tableView(_:cellForRowAt:)(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = closure #1 in getter of emptyCell #1 in CallsSearchController.tableView(_:cellForRowAt:)(a2);
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

uint64_t closure #1 in getter of emptyCell #1 in CallsSearchController.tableView(_:cellForRowAt:)(void *a1)
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UITableViewCell);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = String._bridgeToObjectiveC()();
  [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];

  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dequeueReusableCellWithIdentifier:v4];

  if (v5)
  {
    return v5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CallsSearchController.highlightMatchedText(in:)(UITableViewCell in)
{
  v2 = *(v1 + OBJC_IVAR___MPCallsSearchController_searchText + 8);
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *(v1 + OBJC_IVAR___MPCallsSearchController_searchText) & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;

        v7 = in.super.super.super.isa;
        v8 = String._bridgeToObjectiveC()();

        [v6 configureCellForHighlightingWithText:v8];
      }
    }
  }
}

void CallsSearchController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  swift_beginAccess();

  v5 = specialized _arrayForceCast<A, B>(_:)(v4);

  v6 = *(v5 + 2);

  if (IndexPath.row.getter() >= v6)
  {
    goto LABEL_7;
  }

  v7 = IndexPath.row.getter();

  v9 = specialized _arrayForceCast<A, B>(_:)(v8);

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(v9 + 2))
  {
    outlined init with copy of Any(&v9[32 * v7 + 32], v16);

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
    if (swift_dynamicCast())
    {
      CallsSearchController.showRecentCall(_:)(v15);
      v10 = [objc_opt_self() shared];
      v11 = OBJC_IVAR___MPCallsSearchController_sectionType;
      swift_beginAccess();
      v12 = *(v2 + v11);
      if (*(v2 + OBJC_IVAR___MPCallsSearchController_searchText + 8))
      {

        v13 = String.count.getter();
      }

      else
      {
        v13 = -1;
      }

      [v10 logSearchResultInteraction:1 cellType:v12 searchLength:v13];

      v14.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectRowAtIndexPath:v14.super.isa animated:0];

      goto LABEL_10;
    }

LABEL_7:
    v14.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:v14.super.isa animated:0];
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t CallsSearchController.tableView(_:trailingSwipeActionsConfigurationForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.row.getter() >= v12)
  {
    (*(v7 + 16))(v9, a2, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v23 = IndexPath.row.getter();
      (*(v7 + 8))(v9, v6);
      *(v22 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, v21, "We do not have a recentsItem for row %ld, cannot return a swipe actions configuration.\nThis is programmer error.\nIts the job of the caller to make sure the table view is in sync with the datasource.", v22, 0xCu);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    return 0;
  }

  else
  {
    result = CallsSearchController.cellConfigurator(for:)(a1);
    if (result)
    {
      v14 = result;
      v15 = IndexPath.row.getter();
      result = swift_beginAccess();
      v16 = *(v3 + v10);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 8 * v15 + 32);
LABEL_9:
        v18 = v17;
        swift_endAccess();
        v19 = RecentsCellConfigurator.trailingSwipeActionsConfigurationForRow(at:recentCall:)(a2, v18);

        return v19;
      }

      __break(1u);
    }
  }

  return result;
}

void *CallsSearchController.update(with:)(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  *(v1 + v4) = a1;

  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = v1;
    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 uniqueId];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v6 != v8);
    v5 = a1 >> 62;
    v2 = v23;
  }

  v18 = OBJC_IVAR___MPCallsSearchController_resultIDs;
  swift_beginAccess();
  *(v2 + v18) = _swiftEmptyArrayStorage;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (v5)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v19, v20, "CallsSearchController: Fetched calls. Found %ld calls", v21, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteSearchFor:v2];
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall CallsSearchController.sectionNeedsIndexing()()
{
  v0 = objc_opt_self();
  if ([v0 shouldReindexCallsDueToVersionMismatch])
  {
    return 1;
  }

  else
  {
    return [v0 shouldReindexCallsDueToDeferredReindexing];
  }
}

uint64_t CallsSearchController.configure(cardController:presentationResultForIndex:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + OBJC_IVAR___MPCallsSearchController__cellConfigurator);
  if (!v10)
  {
    return 1;
  }

  v11 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v10;
  if (IndexPath.row.getter() >= v13)
  {
    (*(v7 + 16))(v9, a2, v6);
    v19 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v23 = IndexPath.row.getter();
      (*(v7 + 8))(v9, v6);
      *(v22 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, v21, "We do not have a recentsItem for row %ld, ignoring configure request for avatar card.\nThis is programmer error.\nIts the job of the caller to make sure the table view is in sync with the datasource.", v22, 0xCu);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v20 = 1;
    goto LABEL_15;
  }

  v15 = IndexPath.row.getter();
  result = swift_beginAccess();
  v17 = *(v3 + v11);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v15 + 32);
LABEL_9:
    v19 = v18;
    swift_endAccess();
    v20 = RecentsCellConfigurator.configure(cardController:for:)(a1, v19);
LABEL_15:

    return v20;
  }

  __break(1u);
  return result;
}

void closure #1 in CallsSearchController.removeCalls(at:)(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = IndexPath.row.getter();
  v11 = OBJC_IVAR___MPCallsSearchController_recentCalls;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12 >> 62)
  {
    if (v10 < _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(v7 + 16))(v9, a1, v6);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      v21 = IndexPath.row.getter();
      (*(v7 + 8))(v9, v6);
      *(v20 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v18, v19, "There's no recentCalls item for row %ld, ignoring deletion request for call.\nThis is a programmer error.\nIt's the job of the caller to make sure the table view is in sync with the datasource.", v20, 0xCu);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    return;
  }

  if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = IndexPath.row.getter();
  v14 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *a3 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    *a3 = v14;
  }

  *(v14 + 2) = v17 + 1;
  *&v14[8 * v17 + 32] = v13;
}

UIViewController __swiftcall CallsSearchController.viewForDetails()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR___MPCallsSearchController_recentsController);
  v4 = *(v0 + OBJC_IVAR___MPCallsSearchController_featureFlags);
  v5 = objc_allocWithZone(ObjectType);
  v6 = v3;
  v7 = CallsSearchController.init(recentsController:featureFlags:)(v6, v4);
  v8 = &v7[OBJC_IVAR___MPCallsSearchController_sectionTitle];
  swift_beginAccess();
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *&v7[OBJC_IVAR___MPCallsSearchController_searchTokens] = *(v1 + OBJC_IVAR___MPCallsSearchController_searchTokens);

  v10 = OBJC_IVAR___MPCallsSearchController_maximumNumberOfRowsInSection;
  swift_beginAccess();
  *&v7[v10] = 0x7FFFFFFFFFFFFFFFLL;
  v11 = *(v1 + OBJC_IVAR___MPCallsSearchController_searchText + 8);
  v12 = &v7[OBJC_IVAR___MPCallsSearchController_searchText];
  *v12 = *(v1 + OBJC_IVAR___MPCallsSearchController_searchText);
  *(v12 + 1) = v11;

  v13 = OBJC_IVAR___MPCallsSearchController_detailsPresenter;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR___MPCallsSearchController_detailsPresenter;
  swift_beginAccess();
  *&v7[v15] = v14;

  v16 = [objc_allocWithZone(MPSearchViewController) init];
  v17 = swift_unknownObjectWeakLoadStrong();
  [v16 setHostingNavigationController:v17];

  MPSearchViewController.detailsPresenter.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100209A80;
  *(v18 + 32) = v7;
  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setSearchControllers:isa];

  v21 = [v6 recentCalls];
  if (v21)
  {
    v22 = v21;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  CallsSearchController.update(with:)(v23);

  return v16;
}

Swift::Void __swiftcall CallsSearchController.recentsController(_:didChangeUnreadCallCount:)(PHRecentsController *_, Swift::UInt didChangeUnreadCallCount)
{
  v2 = [(PHRecentsController *)_ recentCalls];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  CallsSearchController.update(with:)(v4);
}

uint64_t @objc CallsSearchController.recentsController(_:didUpdate:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 recentCalls];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  CallsSearchController.update(with:)(v8);
}

uint64_t sub_10012CEF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)(a1, v4, v5, v6, v7, v8);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8CHHandleCG_So9CNContactCs5NeverOTg5076_s11MobilePhone21CallsSearchControllerC14showRecentCallyySo08CHRecentH0CFSo9e4CSo8D6CXEfU_SDyAgJGSo0Q4CallC0H5Phone0jkL0CTf1cn_nTf4nggg_n(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  v51 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v6)
    {
      return result;
    }

    v56 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v53 = result;
    v54 = v8;
    v55 = 1;
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    v42 = v4;
  }

  else
  {
    v6 = *(a1 + 16);
    result = _swiftEmptyArrayStorage;
    if (!v6)
    {
      return result;
    }

    v42 = v4;
    v56 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = _HashTable.startBucket.getter();
    v9 = *(v5 + 36);
    v53 = result;
    v54 = v9;
    v55 = 0;
  }

  v10 = 0;
  v50 = v6;
  v45 = OBJC_IVAR___MPCallsSearchController_recentsController;
  v44 = v5 + 56;
  v43 = v5 + 64;
  v46 = v5;
  while (v10 < v6)
  {
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_50;
    }

    v14 = v53;
    v13 = v54;
    v15 = v55;
    specialized Set.subscript.getter(v53, v54, v55, v5);
    v17 = v16;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = v16;
      v19 = __CocoaDictionary.lookup(_:)();

      if (!v19)
      {
        goto LABEL_18;
      }

      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      swift_dynamicCast();
      if (!v52[0])
      {
        goto LABEL_18;
      }
    }

    else if (!*(a2 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v21 & 1) == 0) || !*(*(a2 + 56) + 8 * v20))
    {
LABEL_18:
      v22 = v17;
      v23 = [v22 type];
      if (v23 > 3)
      {
        v24 = 1;
      }

      else
      {
        v24 = qword_10020C9A8[v23];
      }

      v25 = [v22 value];
      if (!v25)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = String._bridgeToObjectiveC()();
      }

      v26 = [objc_allocWithZone(TUHandle) initWithType:v24 value:v25];

      v27 = [a3 isoCountryCode];
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v17 = [*(a4 + v45) metadataCache];
      if (v30)
      {
        v31 = String._bridgeToObjectiveC()();
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_opt_self() contactForHandle:v26 isoCountryCode:v31 metadataCache:v17];

      v5 = v46;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v51)
    {
      v6 = v50;
      if (!v15)
      {
        goto LABEL_55;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8CHHandleC_GMd);
      v11 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v11(v52, 0);
      if (v10 == v50)
      {
LABEL_47:
        outlined consume of Set<CHHandle>.Index._Variant(v53, v54, v55);
        return v56;
      }
    }

    else
    {
      v6 = v50;
      if (v15)
      {
        goto LABEL_56;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v33 = 1 << *(v5 + 32);
      if (v14 >= v33)
      {
        goto LABEL_51;
      }

      v34 = v14 >> 6;
      v35 = *(v44 + 8 * (v14 >> 6));
      if (((v35 >> v14) & 1) == 0)
      {
        goto LABEL_52;
      }

      if (*(v5 + 36) != v13)
      {
        goto LABEL_53;
      }

      v36 = v35 & (-2 << (v14 & 0x3F));
      if (v36)
      {
        v33 = __clz(__rbit64(v36)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v34 << 6;
        v38 = v34 + 1;
        v39 = (v43 + 8 * v34);
        while (v38 < (v33 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = outlined consume of Set<CHHandle>.Index._Variant(v14, v13, 0);
            v33 = __clz(__rbit64(v40)) + v37;
            goto LABEL_46;
          }
        }

        result = outlined consume of Set<CHHandle>.Index._Variant(v14, v13, 0);
      }

LABEL_46:
      v53 = v33;
      v54 = v13;
      v55 = 0;
      if (v10 == v50)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8CHHandleC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8CHHandleCGMd);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10012EC54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012EC94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CallsSearchController()
{
  result = type metadata singleton initialization cache for CallsSearchController;
  if (!type metadata singleton initialization cache for CallsSearchController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CallsSearchController()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10012EF3C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in CallsSearchController.search(with:searchTokens:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return @objc closure #1 in CallsSearchController.search(with:searchTokens:)(v2, v3, v5, v4);
}

uint64_t outlined consume of Set<CHHandle>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id CarPlayAvatarViewRepresentable.makeUIView(context:)()
{
  v0 = objc_allocWithZone(CNAvatarView);

  return [v0 init];
}

void CarPlayAvatarViewRepresentable.updateUIView(_:context:)(void *a1)
{
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setContacts:isa];
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable()
{
  result = lazy protocol witness table cache variable for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable;
  if (!lazy protocol witness table cache variable for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable;
  if (!lazy protocol witness table cache variable for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable);
  }

  return result;
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance CarPlayAvatarViewRepresentable(void *a1)
{
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setContacts:isa];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CarPlayAvatarViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CarPlayAvatarViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CarPlayAvatarViewRepresentable()
{
  lazy protocol witness table accessor for type CarPlayAvatarViewRepresentable and conformance CarPlayAvatarViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void *_s11MobilePhone23VoicemailAccountManagerC21accountSourceProvider9diskCache6loggerACyxq_GAA0cdE8Protocol_pyYbYTc_q_2os6LoggerVtcfcAA0cdE4DataC_AA0cdeJ0VyAMGTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a2;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone28VoicemailAccountManagerCacheVyAD0efG4DataCGGMd);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v41 - v14);
  v16 = *((swift_isaMask & *v4) + 0x68);
  v17 = [type metadata accessor for VoicemailAccountManagerData() empty];
  *&v5[v16] = v17;
  v18 = &v5[*((swift_isaMask & *v5) + 0x70)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v5[*((swift_isaMask & *v5) + 0x80)];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = *((swift_isaMask & *v5) + 0x88);
  v21 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  swift_allocObject();
  *&v5[v20] = PassthroughSubject.init()();
  v22 = &v5[*((swift_isaMask & *v5) + 0x90)];
  *v22 = 0;
  *(v22 + 1) = _swiftEmptyArrayStorage;
  v23 = &v5[*((swift_isaMask & *v5) + 0x98)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = *((swift_isaMask & *v5) + 0xA0);
  type metadata accessor for TaskQueue();
  *&v5[v24] = TaskQueue.__allocating_init()();
  *v15 = 0;
  v25 = *(v12 + 36);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVy11MobilePhone28VoicemailAccountManagerCacheVyAD0efG4DataCGGMd);
  bzero(v15 + v25, *(*(v26 - 8) + 64));
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(a3, v15 + v25, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
  memcpy(&v5[*((swift_isaMask & *v5) + 0xA8)], v15, v13);
  v27 = *((swift_isaMask & *v5) + 0xB0);
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v5[v27], a4, v28);
  v30 = &v5[*((swift_isaMask & *v5) + 0x78)];
  v31 = v44;
  *v30 = v43;
  *(v30 + 1) = v31;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v45, "init");
  v33 = (v32 + *((swift_isaMask & *v32) + 0xA8));
  v34 = v32;
  os_unfair_lock_lock(v33);
  _s11MobilePhone23VoicemailAccountManagerC17loadCacheFromDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_AA0cdE4DataC_AA0cdeG0VyAGGTg5(v33 + *(v12 + 36), v34);
  os_unfair_lock_unlock(v33);
  static TaskPriority.low.getter();
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v37 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v38 = swift_allocObject();
  v38[2] = inited;
  v38[3] = v37;
  v38[4] = v34;
  v39 = v34;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache(), v38);

  (*(v29 + 8))(a4, v28);
  return v39;
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v25 = a2;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v24 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, v23, v7);
  outlined init with copy of Binding<EditMode>?(v25, v6, &_s10Foundation4UUIDVSgMd);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v24 + 80) + v17 + 8) & ~*(v24 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v15;
  (*(v8 + 32))(&v19[v16], v10, v7);
  v20 = v26;
  *&v19[v17] = v26;
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v6, &v19[v18], &_s10Foundation4UUIDVSgMd);
  v21 = v20;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &_s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5TATu, v19);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5TY0_, 0, 0);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5TY0_()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    outlined init with copy of Binding<EditMode>?(v0[8], v0[11], &_s10Foundation4UUIDVSgMd);
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;
      outlined init with copy of Binding<EditMode>?(v7, v8, &_s10Foundation4UUIDVSgMd);
      v13 = v9;
      v14 = String.init<A>(describing:)();
      v16 = v15;
      outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation4UUIDVSgMd);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
      outlined destroy of (NSAttributedStringKey, Any)(v11, &_sSo8NSObjectCSgMd);

      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {

      outlined destroy of (NSAttributedStringKey, Any)(v7, &_s10Foundation4UUIDVSgMd);
    }

    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_TQ1_;
    v22 = v0[7];
    v21 = v0[8];

    return specialized VoicemailAccountManager.updateCache(for:uuid:)(v22, v21);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t specialized VoicemailAccountManager.updateCache(for:uuid:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for CancellationError();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v3[20] = v5;
  v3[21] = *(v5 + 64);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v3[25] = *(v7 + 64);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return (_swift_task_switch)(specialized VoicemailAccountManager.updateCache(for:uuid:), 0, 0);
}

uint64_t specialized VoicemailAccountManager.updateCache(for:uuid:)()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = *((swift_isaMask & *v1) + 0xB0);
  v0[28] = v3;
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Updating voicemail account Cache with updates: %@", v8, 0xCu);
    outlined destroy of (NSAttributedStringKey, Any)(v9, &_sSo8NSObjectCSgMd);
  }

  v11 = v0[27];
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[16];
  v15 = v0[14];

  swift_unknownObjectWeakInit();
  v16 = *(v13 + 16);
  v16(v11, &v1[v3], v12);
  v17 = (v14 + *((swift_isaMask & *v14) + 0x80));
  v18 = v15;
  os_unfair_lock_lock(v17);
  lock = v17;
  if (*&v17[2]._os_unfair_lock_opaque)
  {
    v19 = *&v17[2]._os_unfair_lock_opaque;
  }

  else
  {
    v20 = v0[26];
    v64 = v20;
    v65 = v0[27];
    v21 = v0[24];
    v22 = v0[23];
    v23 = v0[16];
    v24 = (*(v23 + *((swift_isaMask & *v23) + 0x78)))();
    *&v17[2]._os_unfair_lock_opaque = v24;
    v25 = (v23 + *((swift_isaMask & *v23) + 0x90));
    swift_unknownObjectRetain_n();
    os_unfair_lock_lock(v25);
    v26 = v20;
    v27 = v22;
    v16(v26, v65, v22);
    v28 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v23;
    v30 = v27;
    v31 = v25;
    (*(v21 + 32))(v29 + v28, v64, v30);
    v19 = v24;
    v0[6] = _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5TA;
    v0[7] = v29;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed VoicemailAccountManagerUpdate, @in_guaranteed UUID?) -> ();
    v0[5] = &block_descriptor_9;
    v32 = _Block_copy(v0 + 2);
    v33 = v23;

    v34 = [v19 listenForChangesWithHandler:v32];
    v0[11] = swift_getObjectType();
    v0[8] = v34;
    v35 = *&v25[2]._os_unfair_lock_opaque;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[2]._os_unfair_lock_opaque = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = *(v35 + 16);

      *&v31[2]._os_unfair_lock_opaque = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v35);

      v35 = *&v31[2]._os_unfair_lock_opaque;
    }

    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    if (v38 >= v37 >> 1)
    {
      *&v31[2]._os_unfair_lock_opaque = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
    }

    swift_unknownObjectRelease();
    *(*&v31[2]._os_unfair_lock_opaque + 16) = v38 + 1;
    outlined init with take of Any(v0 + 4, (*&v31[2]._os_unfair_lock_opaque + 32 * v38 + 32));
    os_unfair_lock_unlock(v31);
  }

  v39 = v0[27];
  v41 = v0[23];
  v40 = v0[24];
  v42 = v0[22];
  v66 = v0[20];
  v44 = v0[15];
  v43 = v0[16];
  v45 = v0[14];
  swift_unknownObjectRetain_n();
  specialized closure #1 in VoicemailAccountManager.updateCache(for:uuid:)(v19, (v0 + 12), v45);
  swift_unknownObjectRelease_n();

  os_unfair_lock_unlock(lock);
  (*(v40 + 8))(v39, v41);
  swift_unknownObjectWeakDestroy();
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Binding<EditMode>?(v44, v42, &_s10Foundation4UUIDVSgMd);
  v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v45;
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v42, v48 + v47, &_s10Foundation4UUIDVSgMd);
  v49 = v45;

  dispatch thunk of TaskQueue.async(_:)();

  v50 = v43 + *((swift_isaMask & *v43) + 0x98);
  os_unfair_lock_lock(v50);
  updated = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_AA0cdE4DataC_AA0cdeG0VyAQGTg5(v50 + 1);
  v0[29] = updated;
  os_unfair_lock_unlock(v50);
  if (updated)
  {

    v52 = swift_task_alloc();
    v0[30] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v0[31] = v53;
    *v52 = v0;
    v52[1] = specialized VoicemailAccountManager.updateCache(for:uuid:);

    return Task.value.getter(v53, updated, &type metadata for () + 8, v53, &protocol self-conformance witness table for Error);
  }

  else
  {
    v54 = v0[14];
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v0[14];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v57;
      *v59 = v57;
      v60 = v57;
      _os_log_impl(&_mh_execute_header, v55, v56, "Finished Updating voicemail account Cache with updates: %@", v58, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v59, &_sSo8NSObjectCSgMd);
    }

    v61 = v0[1];

    return v61();
  }
}

{
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = specialized VoicemailAccountManager.updateCache(for:uuid:);
  }

  else
  {
    v2 = specialized VoicemailAccountManager.updateCache(for:uuid:);
  }

  return (_swift_task_switch)(v2, 0, 0);
}

{

  v1 = *(v0 + 112);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished Updating voicemail account Cache with updates: %@", v5, 0xCu);
    outlined destroy of (NSAttributedStringKey, Any)(v6, &_sSo8NSObjectCSgMd);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v0[13] = v0[32];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
    }

    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[17];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v10, &_sSo8NSObjectCSgMd);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed VoicemailAccountManagerUpdate, @in_guaranteed UUID?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a2;
  v9();

  return outlined destroy of (NSAttributedStringKey, Any)(v8, &_s10Foundation4UUIDVSgMd);
}

uint64_t specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return (_swift_task_switch)(specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache(), v7, v6);
}

uint64_t specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()()
{
  ContinuousClock.init()();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();
  }

  else
  {
    v8 = specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();
  }

  return (_swift_task_switch)(v8, v7, v6);
}

{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = static VoicemailAccountManagerUpdate.all;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache();
  v5 = *(v0 + 24);

  return (specialized VoicemailAccountManager.updateCache(for:uuid:))(v2, v5);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(specialized Clock.sleep(for:tolerance:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #2 in VoicemailAccountManager.updateCache(for:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);
  v3[9] = swift_task_alloc();

  return (_swift_task_switch)(specialized closure #2 in VoicemailAccountManager.updateCache(for:uuid:), 0, 0);
}

uint64_t specialized closure #2 in VoicemailAccountManager.updateCache(for:uuid:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (!Strong)
  {

    v4 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[11] = *((swift_isaMask & *Strong) + 0x88);
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #2 in VoicemailAccountManager.updateCache(for:uuid:), v3, v2);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_AA0cdE4DataC_AA0cdeG0VyAQGTg5(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    Task.cancel()();
  }

  static TaskPriority.low.getter();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &_s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TATu, v7);

  *a1 = v8;
  return v8;
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TY0_, 0, 0);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TY0_()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    ContinuousClock.init()();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TQ1_;

    return specialized Clock.sleep(for:tolerance:)(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TQ1_()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TY3_;
  }

  else
  {
    v3 = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TY2_;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

void _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TY2_()
{
  v1 = *(v0 + 96);
  static Task<>.checkCancellation()();
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = (v3 + *((swift_isaMask & *v3) + 0xA8));
    os_unfair_lock_lock(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone28VoicemailAccountManagerCacheVyAD0efG4DataCGGMd);
    _s11MobilePhone23VoicemailAccountManagerC16writeCacheToDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_AA0cdE4DataC_AA0cdeG0VyAGGTg5(v4 + *(v5 + 28), v3);
    os_unfair_lock_unlock(v4);
    v6 = *(v0 + 80);
    v7 = (v6 + *((swift_isaMask & *v6) + 0x98));
    os_unfair_lock_lock(v7);

    *&v7[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v7);
  }

  v2 = *(v0 + 8);

  v2();
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TY3_()
{

  v1 = *(v0 + 8);

  return v1();
}

void _s11MobilePhone23VoicemailAccountManagerC17loadCacheFromDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_AA0cdE4DataC_AA0cdeG0VyAGGTg5(uint64_t a1, void *a2)
{
  v3 = specialized VoicemailAccountManagerCache.read()();
  if (v3)
  {
    v4 = v3;
    v5 = a2 + *((swift_isaMask & *a2) + 0x70);
    os_unfair_lock_lock(v5);

    *(v5 + 1) = v4;
    os_unfair_lock_unlock(v5);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No cache was found for AccountSource", v8, 2u);
    }
  }
}

void _s11MobilePhone23VoicemailAccountManagerC16writeCacheToDisk33_919A6ECA62650D38DFB63EF032987E64LLyyFyq_zYuYTXEfU_AA0cdE4DataC_AA0cdeG0VyAGGTg5(uint64_t a1, void *a2)
{
  v2 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v2);
  v3 = *&v2[2]._os_unfair_lock_opaque;
  v4 = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    v5 = specialized VoicemailAccountManagerCache.update(with:)(v4);
    v6 = Logger.logObject.getter();
    if (v5)
    {
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Failed to update cache on Disk";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
      }
    }

    else
    {
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Updated cache on Disk";
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v4 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, v10, "Failed to update cache on Disk because the cache was nil", v11, 2u);
  }

LABEL_11:
}

uint64_t specialized VoicemailAccountManagerCache.update(with:)(void *a1)
{
  v2 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
  __chkstk_darwin(v43);
  v5 = (&v39 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v44 = a1;
  type metadata accessor for VoicemailAccountManagerData();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type VoicemailAccountManagerData and conformance VoicemailAccountManagerData, type metadata accessor for VoicemailAccountManagerData);
  v39 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v40 = v13;
  v41 = v7;
  v42 = v6;
  URL.init(fileURLWithPath:)();
  v14 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 directoryExistsAtPath:v15];

  if (v16)
  {
    goto LABEL_4;
  }

  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v44 = 0;
  v20 = [v14 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v44];

  if (v20)
  {
    v21 = v44;
LABEL_4:
    v23 = v39;
    v22 = v40;
    Data.write(to:options:)();

    outlined consume of Data._Representation(v23, v22);
    v24 = v42;
    v25 = *(v41 + 8);
    v25(v10, v42);
    v25(v12, v24);
    return 0;
  }

  v27 = v44;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  outlined consume of Data._Representation(v39, v40);
  v28 = v42;
  v29 = *(v41 + 8);
  v29(v10, v42);
  v29(v12, v28);
  outlined init with copy of Binding<EditMode>?(v2, v5, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v32 = 136315394;
    v35 = *v5;
    v36 = v5[1];

    outlined destroy of (NSAttributedStringKey, Any)(v5, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v44);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v38;
    *v33 = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to write to %s: %@", v32, 0x16u);
    outlined destroy of (NSAttributedStringKey, Any)(v33, &_sSo8NSObjectCSgMd);

    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {

    outlined destroy of (NSAttributedStringKey, Any)(v5, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
  }

  return 1;
}

uint64_t specialized VoicemailAccountManagerCache.read()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v5 = (&v20 - v4);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v6 = [objc_opt_self() defaultManager];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 contentsAtPath:v7];

  if (v8)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    type metadata accessor for VoicemailAccountManagerData();
    _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type VoicemailAccountManagerData and conformance VoicemailAccountManagerData, type metadata accessor for VoicemailAccountManagerData);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v9, v11);

    return v21;
  }

  else
  {
    outlined init with copy of Binding<EditMode>?(v1, v5, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = *v5;
      v17 = v5[1];

      outlined destroy of (NSAttributedStringKey, Any)(v5, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to read from %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {

      outlined destroy of (NSAttributedStringKey, Any)(v5, &_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
    }

    return 0;
  }
}

uint64_t one-time initialization function for cacheDirectory()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_allocate_value_buffer(v0, static VoicemailAccountManagerComposer.cacheDirectory);
  v1 = __swift_project_value_buffer(v0, static VoicemailAccountManagerComposer.cacheDirectory);
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:5 inDomains:1];

  v4 = type metadata accessor for URL();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    (*(v10 + 16))(v1, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v4);

    v6 = v10;
    v7 = 0;
  }

  else
  {

    v6 = *(v4 - 8);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(v1, v7, 1, v4);
}

uint64_t one-time initialization function for mobilePhoneCacheDirectory()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v1 = __chkstk_darwin(v0);
  v3 = &v10 - v2;
  __swift_allocate_value_buffer(v1, static VoicemailAccountManagerComposer.mobilePhoneCacheDirectory);
  v4 = __swift_project_value_buffer(v0, static VoicemailAccountManagerComposer.mobilePhoneCacheDirectory);
  if (one-time initialization token for cacheDirectory != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static VoicemailAccountManagerComposer.cacheDirectory);
  outlined init with copy of Binding<EditMode>?(v5, v3, &_s10Foundation3URLVSgMd);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v3, &_s10Foundation3URLVSgMd);
    v8 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v7 + 8))(v3, v6);
    v8 = 0;
  }

  return (*(v7 + 56))(v4, v8, 1, v6);
}

uint64_t VoicemailAccountManagerComposer.cacheDirectory.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static VoicemailAccountManagerComposer.cacheDirectory.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of Binding<EditMode>?(v6, a3, &_s10Foundation3URLVSgMd);
}

uint64_t one-time initialization function for cacheFilePath()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v0);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for mobilePhoneCacheDirectory != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, static VoicemailAccountManagerComposer.mobilePhoneCacheDirectory);
  outlined init with copy of Binding<EditMode>?(v7, v2, &_s10Foundation3URLVSgMd);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    result = outlined destroy of (NSAttributedStringKey, Any)(v2, &_s10Foundation3URLVSgMd);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v11 = *(v4 + 8);
    v11(v2, v3);
    v9 = URL.path.getter();
    v10 = v12;
    result = (v11)(v6, v3);
  }

  static VoicemailAccountManagerComposer.cacheFilePath = v9;
  qword_1002CEF68 = v10;
  return result;
}

uint64_t *VoicemailAccountManagerComposer.cacheFilePath.unsafeMutableAddressor()
{
  if (one-time initialization token for cacheFilePath != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerComposer.cacheFilePath;
}

uint64_t static VoicemailAccountManagerComposer.cacheFilePath.getter()
{
  if (one-time initialization token for cacheFilePath != -1)
  {
    swift_once();
  }

  v0 = static VoicemailAccountManagerComposer.cacheFilePath;

  return v0;
}

uint64_t VoicemailAccountManagerComposer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *VoicemailAccountManagerComposer.compose()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone28VoicemailAccountManagerCacheVyAA0cdE4DataCGMd);
  __chkstk_darwin(v6);
  v8 = (&v28 - v7);
  v9 = type metadata accessor for VoicemailAccountManagerComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  if (one-time initialization token for cacheFilePath != -1)
  {
    swift_once();
  }

  v12 = qword_1002CEF68;
  if (qword_1002CEF68)
  {
    v31 = v10;
    v32 = v6;
    v33 = v5;
    v30 = static VoicemailAccountManagerComposer.cacheFilePath;
    v13 = one-time initialization token for mobilePhone;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v2, static Logger.mobilePhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v1;
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Creating VoicemailAccountManager as the VoicemailAccountManager since caching is enabled.", v17, 2u);
      v1 = v29;
    }

    outlined init with copy of VoicemailAccountManagerComposer(v1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v19 = swift_allocObject();
    outlined init with take of VoicemailAccountManagerComposer(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = *(v3 + 16);
    v20(v8 + *(v32 + 44), v14, v2);
    *v8 = v30;
    v8[1] = v12;
    v21 = v33;
    v20(v33, v14, v2);
    v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone23VoicemailAccountManagerCyAA0cdE4DataCAA0cdE5CacheVyAEGGMd));
    return _s11MobilePhone23VoicemailAccountManagerC21accountSourceProvider9diskCache6loggerACyxq_GAA0cdE8Protocol_pyYbYTc_q_2os6LoggerVtcfcAA0cdE4DataC_AA0cdeJ0VyAMGTg5(_s11MobilePhone31VoicemailAccountManagerComposerV7composeAA023VVMVoicemailCountSourceC6Status_AA0cdE8ProtocolAA0c15BadgeCalculatordE0So8NSObjectCXcyFAaF_pyYbYTcfU_TA, v19, v8, v21);
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, static Logger.mobilePhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get path for VMD cache. Reverting to VMD without caching.", v26, 2u);
    }

    v27 = objc_allocWithZone(type metadata accessor for VoicemailAccountManagerWithDelegateDecorator());
    return _s11MobilePhone44VoicemailAccountManagerWithDelegateDecoratorC10vmdFactoryACSo011VMVoicemailE0CAA0cgH0CYbYTc_tcfc(_s11MobilePhone31VoicemailAccountManagerComposerV3vmd33_1427BB1B47FFCC20F148FD2FFB90AB7DLLQryFSo011VMVoicemailE0CAA0C17DelegateDecoratorCYbYTcfU_, 0);
  }
}

uint64_t type metadata accessor for VoicemailAccountManagerComposer()
{
  result = type metadata singleton initialization cache for VoicemailAccountManagerComposer;
  if (!type metadata singleton initialization cache for VoicemailAccountManagerComposer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id _s11MobilePhone31VoicemailAccountManagerComposerV3vmd33_1427BB1B47FFCC20F148FD2FFB90AB7DLLQryFSo011VMVoicemailE0CAA0C17DelegateDecoratorCYbYTcfU_(uint64_t a1)
{
  v2 = objc_allocWithZone(VMVoicemailManager);

  return [v2 initWithStateSync:1 mailSync:0 delegate:a1 delegateQueue:0];
}

uint64_t outlined init with copy of VoicemailAccountManagerComposer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailAccountManagerComposer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100133CE0()
{
  v1 = *(type metadata accessor for VoicemailAccountManagerComposer() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of VoicemailAccountManagerComposer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailAccountManagerComposer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id _s11MobilePhone31VoicemailAccountManagerComposerV7composeAA023VVMVoicemailCountSourceC6Status_AA0cdE8ProtocolAA0c15BadgeCalculatordE0So8NSObjectCXcyFAaF_pyYbYTcfU_TA()
{
  type metadata accessor for VoicemailAccountManagerComposer();

  return _s11MobilePhone31VoicemailAccountManagerComposerV7composeAA023VVMVoicemailCountSourceC6Status_AA0cdE8ProtocolAA0c15BadgeCalculatordE0So8NSObjectCXcyFAaF_pyYbYTcfU_();
}

uint64_t sub_100133E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100133F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for VoicemailAccountManagerComposer()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100133FE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in VoicemailAccountManager.scheduleInitialUpdateOfCache()(a1, v4, v5, v6);
}

uint64_t sub_1001340D4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5TA(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5(a1, a2, v6, v7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100134234()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013426C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for specialized closure #2 in VoicemailAccountManager.updateCache(for:uuid:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #2 in VoicemailAccountManager.updateCache(for:uuid:)(v4, v5, v0 + v3);
}

uint64_t sub_10013447C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_AA0cdE4DataC_AA0cdeG0VyAQGTg5(a1, v4, v5, v6);
}

uint64_t sub_100134570()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5TA(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _s11MobilePhone23VoicemailAccountManagerC04withD6Source33_919A6ECA62650D38DFB63EF032987E64LLyqd__qd__AA0cdE8Protocol_pXElFqd__AaF_pSgzYuYTXEfU_ySayypGzYuYTXEfU_yAA0cdE6UpdateC_10Foundation4UUIDVSgtcfU_yyYacfU_AA0cdE4DataC_AA0cdE5CacheVyAPGytTg5(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t _s11MobilePhone14VoicemailActorCACScAAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecentCallsListView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
  *a1 = EnvironmentObject.init()();
  a1[1] = v2;
  v3 = *(type metadata accessor for RecentCallsListView() + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for RecentCallsListView()
{
  result = type metadata singleton initialization cache for RecentCallsListView;
  if (!type metadata singleton initialization cache for RecentCallsListView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RecentCallsListView.recentsController.getter()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t RecentCallsListView.$recentsController.getter()
{
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t RecentCallsListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy6TipKit0eD0VyAD03AnyE0VG_AA15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentmD0VGAA21_TraitWritingModifierVyAA08OnDeleteQ3KeyVGGtGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy6TipKit0eD0VyAD03AnyE0VG_AA15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentmD0VGAA21_TraitWritingModifierVyAA08OnDeleteQ3KeyVGGtGMd);
  List<>.init(content:)();
  type metadata accessor for RecentCallsListView();
  specialized Environment.wrappedValue.getter(v5);
  v6 = Optional<A>.isEditing.getter();
  outlined destroy of (NSAttributedStringKey, Any)(v5, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy6TipKit0iH0VyAJ03AnyI0VG_ACyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoH0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGAA011_PreferencetU0VyAU0r5CallsehyX0VGGMd) + 36)) = v6 & 1;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVy6TipKit0iH0VyAJ03AnyI0VG_ACyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoH0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGAA011_PreferencetU0VyAU0r5CallsehyX0VGGAA05_TaskU0VGMd) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v7 = &async function pointer to closure #2 in RecentCallsListView.body.getter;
  v7[1] = 0;
  return result;
}

uint64_t closure #1 in RecentCallsListView.body.getter@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentF4ViewVGMd);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentH4ViewVGAA21_TraitWritingModifierVyAA08OnDeleteM3KeyVGGMd);
  v6 = __chkstk_darwin(v36);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v37 = &v35 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A4ViewVyAA03AnyA0VGMd);
  v38 = *(v41 - 8);
  v12 = __chkstk_darwin(v41);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v44[3] = type metadata accessor for RecentsUnknownCallersTip();
  v44[4] = _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type RecentsUnknownCallersTip and conformance RecentsUnknownCallersTip, &type metadata accessor for RecentsUnknownCallersTip);
  __swift_allocate_boxed_opaque_existential_1(v44);
  RecentsUnknownCallersTip.init()();
  v17 = v16;
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v18 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    static Published.subscript.getter();

    v35 = v19;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12CHRecentCallCGMd);
    type metadata accessor for RecentCallView(0);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [CHRecentCall] and conformance [A], &_sSaySo12CHRecentCallCGMd);
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type RecentCallView and conformance RecentCallView, type metadata accessor for RecentCallView);
    ForEach<>.init(_:id:content:)();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in RecentCallsListView.body.getter;
    *(v21 + 24) = v20;
    (*(v39 + 32))(v10, v5, v40);
    v22 = v37;
    v23 = &v10[*(v36 + 36)];
    *v23 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
    v23[1] = v21;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v10, v22, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentH4ViewVGAA21_TraitWritingModifierVyAA08OnDeleteM3KeyVGGMd);
    v24 = v38;
    v25 = *(v38 + 16);
    v26 = v17;
    v27 = v17;
    v28 = v41;
    v25(v14, v27, v41);
    v29 = v42;
    outlined init with copy of Binding<EditMode>?(v22, v42, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentH4ViewVGAA21_TraitWritingModifierVyAA08OnDeleteM3KeyVGGMd);
    v30 = v43;
    v25(v43, v14, v28);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A4ViewVyAA03AnyA0VG_7SwiftUI15ModifiedContentVyAG7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentlC0VGAG21_TraitWritingModifierVyAG08OnDeleteP3KeyVGGtMd);
    outlined init with copy of Binding<EditMode>?(v29, &v30[*(v31 + 48)], &_s7SwiftUI15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentH4ViewVGAA21_TraitWritingModifierVyAA08OnDeleteM3KeyVGGMd);
    v32 = v35;
    outlined destroy of (NSAttributedStringKey, Any)(v22, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentH4ViewVGAA21_TraitWritingModifierVyAA08OnDeleteM3KeyVGGMd);
    v33 = *(v24 + 8);
    v33(v26, v28);
    outlined destroy of (NSAttributedStringKey, Any)(v29, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentH4ViewVGAA21_TraitWritingModifierVyAA08OnDeleteM3KeyVGGMd);
    return (v33)(v14, v28);
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in RecentCallsListView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static RecentsUnknownCallersTip.spamBlockingAppsEditorialURLString.getter();
  URL.init(string:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return outlined destroy of (NSAttributedStringKey, Any)(v2, &_s10Foundation3URLVSgMd);
  }

  (*(v4 + 32))(v6, v2, v3);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = TUOpenSensitiveURL();

  if (v11)
  {
    type metadata accessor for TPTipsHelper();
    dispatch thunk of static TPTipsHelper.donateEventKnownStoryLaunched()();
  }

  return (*(v4 + 8))(v6, v3);
}

void key path getter for CHRecentCall.uniqueId : CHRecentCall(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueId];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t closure #2 in closure #1 in RecentCallsListView.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
  v4 = v3;
  v5 = EnvironmentObject.init()();
  v7 = v6;
  *a2 = v4;
  State.init(wrappedValue:)();
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  v8 = type metadata accessor for RecentCallView(0);
  v9 = *(v8 + 28);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 32);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #2 in RecentCallsListView.body.getter()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return (_swift_task_switch)(closure #2 in RecentCallsListView.body.getter, v2, v1);
}

{
  type metadata accessor for TPTipsHelper();
  *(v0 + 40) = static TPTipsHelper.taskQueue.getter();
  v3 = (&async function pointer to dispatch thunk of TaskQueue.sync<A>(_:) + async function pointer to dispatch thunk of TaskQueue.sync<A>(_:));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #2 in RecentCallsListView.body.getter;

  return v3();
}

{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return (_swift_task_switch)(closure #2 in RecentCallsListView.body.getter, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #2 in RecentCallsListView.body.getter()
{
  type metadata accessor for TPTipsHelper();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in RecentCallsListView.body.getter;

  return static TPTipsHelper.shared.getter();
}

{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in closure #2 in RecentCallsListView.body.getter, v2, v1);
}

{
  v1 = *(v0 + 24);

  dispatch thunk of TPTipsHelper.setup()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #2 in RecentCallsListView.body.getter(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return (_swift_task_switch)(closure #1 in closure #2 in RecentCallsListView.body.getter, 0, 0);
}

uint64_t default argument 0 of RecentCallsListView.init(recentsController:)()
{
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);

  return EnvironmentObject.init()();
}

uint64_t RecentCallsListView.init(recentsController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = *(type metadata accessor for RecentCallsListView() + 20);
  *(a3 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for View.body.getter in conformance RecentCallsListView@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy6TipKit0eD0VyAD03AnyE0VG_AA15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentmD0VGAA21_TraitWritingModifierVyAA08OnDeleteQ3KeyVGGtGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy6TipKit0eD0VyAD03AnyE0VG_AA15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentmD0VGAA21_TraitWritingModifierVyAA08OnDeleteQ3KeyVGGtGMd);
  List<>.init(content:)();
  specialized Environment.wrappedValue.getter(v5);
  v6 = Optional<A>.isEditing.getter();
  outlined destroy of (NSAttributedStringKey, Any)(v5, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy6TipKit0iH0VyAJ03AnyI0VG_ACyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoH0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGAA011_PreferencetU0VyAU0r5CallsehyX0VGGMd) + 36)) = v6 & 1;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVy6TipKit0iH0VyAJ03AnyI0VG_ACyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoH0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGAA011_PreferencetU0VyAU0r5CallsehyX0VGGAA05_TaskU0VGMd) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v7 = &async function pointer to closure #2 in RecentCallsListView.body.getter;
  v7[1] = 0;
  return result;
}

uint64_t static RecentCallsListViewPreferenceKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  static RecentCallsListViewPreferenceKey.defaultValue = a1;
  return result;
}

uint64_t static RecentCallsListViewPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  result = a2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance RecentCallsListViewPreferenceKey@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RecentCallsListViewPreferenceKey.defaultValue;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance RecentCallsListViewPreferenceKey(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &type metadata accessor for ContentSizeCategory, a1);
}

{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  outlined init with copy of Binding<EditMode>?(v2, &v13 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v10, a1, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &type metadata accessor for ColorScheme, a1);
}

uint64_t sub_100136218@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RecentCallsListViewPreferenceKey.defaultValue;
  return result;
}

uint64_t sub_100136264(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RecentCallsListViewPreferenceKey.defaultValue = v1;
  return result;
}

uint64_t sub_1001362C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA8EditModeOGSgGMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_10013639C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA8EditModeOGSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for RecentCallsListView()
{
  type metadata accessor for EnvironmentObject<ObservableRecentsController>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Binding<EditMode>?>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for RecentCallsListViewPreferenceData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>>, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>>, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>>, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVy6TipKit0iH0VyAJ03AnyI0VG_ACyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoH0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGAA011_PreferencetU0VyAU0r5CallsehyX0VGGAA05_TaskU0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>();
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>>, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVy6TipKit0iH0VyAJ03AnyI0VG_ACyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoH0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGAA011_PreferencetU0VyAU0r5CallsehyX0VGGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy6TipKit0gF0VyAH03AnyG0VG_AA15ModifiedContentVyAA7ForEachVySaySo12CHRecentCallCGSS11MobilePhone06RecentoF0VGAA21_TraitWritingModifierVyAA08OnDeleteS3KeyVGGtGGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _PreferenceWritingModifier<RecentCallsListViewPreferenceKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVy11MobilePhone019RecentCallsListViewC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(TipView<AnyTip>, ModifiedContent<ForEach<[CHRecentCall], String, RecentCallView>, _TraitWritingModifier<OnDeleteTraitKey>>)>>, _PreferenceWritingModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void sub_10013674C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setUniqueId:v3];
}

uint64_t _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001367F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  outlined init with copy of Binding<EditMode>?(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100136A7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id VoicemailDelegateDecorator.__allocating_init(onUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  *&v6[v7] = TaskQueue.__allocating_init()();
  v8 = &v6[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.mobilePhone);
  (*(*(v10 - 8) + 16))(&v6[v9], v11, v10);
  v12 = &v6[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate];
  *v12 = a1;
  *(v12 + 1) = a2;
  v14.receiver = v6;
  v14.super_class = v3;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t VoicemailDelegateDecorator.onUpdate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);

  return v1;
}

uint64_t VoicemailDelegateDecorator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id VoicemailDelegateDecorator.init(onUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  *&v2[v7] = TaskQueue.__allocating_init()();
  v8 = &v2[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.mobilePhone);
  (*(*(v10 - 8) + 16))(&v3[v9], v11, v10);
  v12 = &v3[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate];
  *v12 = a1;
  *(v12 + 1) = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for onlineStatus != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.onlineStatus;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

void VoicemailDelegateDecorator.onlineStatusDidChange()(const char *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask]);
  _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_Tm(v3 + 1, v1, v4, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21capabilitiesDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC21capabilitiesDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21capabilitiesDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for capabilities != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.capabilities;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

void @objc VoicemailDelegateDecorator.onlineStatusDidChange()(char *a1, uint64_t a2, const char *a3)
{
  v4 = &a1[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  v6 = a1;
  os_unfair_lock_lock(v4);
  _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_Tm(v4 + 1, v6, v5, a3);
  os_unfair_lock_unlock(v4);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC32subscriptionStateStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC32subscriptionStateStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC32subscriptionStateStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for subscriptionStatus != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.subscriptionStatus;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC22syncInProgresDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC22syncInProgresDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC22syncInProgresDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for syncInProgress != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.syncInProgress;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC28managerStorageUsageDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC28managerStorageUsageDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC28managerStorageUsageDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for storageUsage != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.storageUsage;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC27transcribingStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC27transcribingStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC27transcribingStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for transcribingStatus != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.transcribingStatus;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for accounts != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.accounts;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  outlined destroy of (NSAttributedStringKey, Any)(v1, &_s10Foundation4UUIDVSgMd);

  v2 = *(v4 + 8);

  return v2();
}

void VoicemailDelegateDecorator.greetingDidChange(byCarrier:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v1[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask]);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "VoicemailDelegateDecorator: received greetingDidChange", v10, 2u);
  }

  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v5 + 32))(v12 + v11, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v13 = v2;
  v14 = dispatch thunk of TaskQueue.async(_:)();

  *(v7 + 1) = v14;
  os_unfair_lock_unlock(v7);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailDelegateDecorator: received greetingDidChange", v11, 2u);
    a1 = v18;
  }

  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = a2;
  v15 = dispatch thunk of TaskQueue.async(_:)();

  *a1 = v15;
  return result;
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[4] = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for greeting != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = static VoicemailAccountManagerUpdate.greeting;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v8 = v0[4];

  return v10(v4, v8);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  outlined destroy of (NSAttributedStringKey, Any)(v1, &_s10Foundation4UUIDVSgMd);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC17greetingDidChange9byCarriery10Foundation4UUIDV_tFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v4, v0 + v3);
}

Swift::Void __swiftcall VoicemailDelegateDecorator.voicemailsDidChangeInitial(_:added:deleted:updated:)(Swift::Bool _, Swift::OpaquePointer_optional added, Swift::OpaquePointer_optional deleted, Swift::OpaquePointer_optional updated)
{
  v5 = &v4[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  os_unfair_lock_lock(&v4[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask]);
  _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_Tm(v5 + 1, v4, v6, "VoicemailDelegateDecorator: received voicemailsDidChange");

  os_unfair_lock_unlock(v5);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_Tm(uint64_t *a1, void *a2, uint64_t a3, const char *a4)
{

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }

  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  v11 = dispatch thunk of TaskQueue.async(_:)();

  *a1 = v11;
  return result;
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC26voicemailsDidChangeInitial_5added7deleted7updatedySb_SaySo11VMVoicemailCGSgA2KtFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return (_swift_task_switch)(_s11MobilePhone26VoicemailDelegateDecoratorC26voicemailsDidChangeInitial_5added7deleted7updatedySb_SaySo11VMVoicemailCGSgA2KtFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_, 0, 0);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC26voicemailsDidChangeInitial_5added7deleted7updatedySb_SaySo11VMVoicemailCGSgA2KtFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TY0_()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate);
  if (one-time initialization token for voicemails != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = static VoicemailAccountManagerUpdate.voicemails;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TQ1_;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t type metadata accessor for VoicemailDelegateDecorator()
{
  result = type metadata singleton initialization cache for VoicemailDelegateDecorator;
  if (!type metadata singleton initialization cache for VoicemailDelegateDecorator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailDelegateDecorator()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1001391A0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScTyyts5NeverOGSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC26voicemailsDidChangeInitial_5added7deleted7updatedySb_SaySo11VMVoicemailCGSgA2KtFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC26voicemailsDidChangeInitial_5added7deleted7updatedySb_SaySo11VMVoicemailCGSgA2KtFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100139328()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _s11MobilePhone26VoicemailDelegateDecoratorC17accountsDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC27transcribingStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC27transcribingStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC28managerStorageUsageDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC28managerStorageUsageDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC22syncInProgresDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC22syncInProgresDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC32subscriptionStateStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC32subscriptionStateStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21capabilitiesDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC21capabilitiesDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

uint64_t _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _s11MobilePhone26VoicemailDelegateDecoratorC21onlineStatusDidChangeyyFyScTyyts5NeverOGSgzYuYTXEfU_yyYaYbcfU_(v2);
}

Swift::Void __swiftcall PHVoicemailInboxListViewController.startObservingPreferences()()
{
  v18.super_class = PHVoicemailInboxListViewController;
  objc_msgSendSuper2(&v18, "startObservingPreferences");
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(NSUserDefaults);

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    swift_bridgeObjectRelease_n();
    v8 = type metadata accessor for Defaults.Observation();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
    *v10 = 0xD000000000000015;
    *(v10 + 1) = 0x8000000100240590;
    *&v9[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = v7;
    v11 = &v9[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
    *v11 = partial apply for closure #1 in PHVoicemailInboxListViewController.startObservingPreferences();
    v11[1] = v1;
    v17.receiver = v9;
    v17.super_class = v8;
    v12 = v7;

    v13 = objc_msgSendSuper2(&v17, "init");
    v14 = String._bridgeToObjectiveC()();
    [v12 addObserver:v13 forKeyPath:v14 options:0 context:0];

    v15 = [v0 observations];
    [v15 insertObject:v13 atIndex:0];
  }

  else
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v16 = v2;
    *(v16 + 8) = v4;
    *(v16 + 72) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1001399D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in PHVoicemailInboxListViewController.startObservingPreferences()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _updateGreetingButtonAllowed];
  }
}

Swift::Bool __swiftcall PHVoicemailInboxListViewController.shouldShowGreetingButton()()
{
  if (one-time initialization token for featureFlags != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    if (TUCallScreeningEnabled())
    {
      return 1;
    }

    v2 = [(objc_class *)isa voicemailController];
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    v4 = [v2 accountManager];

    if (!v4)
    {
      return 0;
    }

    isa = [v4 accounts];
    type metadata accessor for VoicemailAccount();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (1)
    {
      v1 = v6 != v7;
      if (v6 == v7)
      {
LABEL_18:
        swift_unknownObjectRelease();

        return v1;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v10 = [v4 isGreetingChangeSupportedForAccountUUID:isa];

      ++v7;
      if (v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return (specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:))(a1, a2);
}

uint64_t @objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:), v6, v5);
}

uint64_t @objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)(v8, v7);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:)(a1, a2, a3);
}

uint64_t PhoneApplication.switchToTab(_:to:)(uint64_t a1, int a2)
{
  *(v3 + 284) = a2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v2;
  type metadata accessor for MainActor();
  *(v3 + 248) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 256) = v5;
  *(v3 + 264) = v4;

  return (_swift_task_switch)(PhoneApplication.switchToTab(_:to:), v5, v4);
}

uint64_t PhoneApplication.switchToTab(_:to:)()
{
  v21 = v0;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.mobilePhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 284);
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000100244D70, &v20);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100244DA0, &v20);
    *(v5 + 22) = 2082;
    *(v0 + 280) = v4;
    type metadata accessor for PHTabViewType(0);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v20);

    *(v5 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s %s]: Switching to tab %{public}s", v5, 0x20u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 284);
  if ([*(v0 + 232) currentTabViewType] == v9)
  {

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = [*(v0 + 232) viewControllerForTabViewType:*(v0 + 284)];
  if (v12 && (*(v0 + 224) = v12, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22PhoneTabViewController_So06UIViewD0CXcMd), __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CallsAppUI0A7Testing_pMd), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v0 + 208))
    {
      outlined init with take of Tip((v0 + 184), v0 + 144);
      v13 = swift_task_alloc();
      *(v0 + 272) = v13;
      *v13 = v0;
      v13[1] = PhoneApplication.switchToTab(_:to:);
      v14 = *(v0 + 284);
      v15 = *(v0 + 232);

      return specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:)(v15, v0 + 144, v14);
    }
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
  }

  v16 = *(v0 + 284);
  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  outlined destroy of (NSAttributedStringKey, Any)(v0 + 184, &_s10CallsAppUI0A7Testing_pSgMd);
  *(v0 + 16) = v0;
  *(v0 + 24) = PhoneApplication.switchToTab(_:to:);
  v19 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) () -> () with result type ();
  *(v0 + 104) = &block_descriptor_10;
  *(v0 + 112) = v19;
  [v18 switchToTabWaitingForViewDidLoad:v17 to:v16 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return (_swift_task_switch)(PhoneApplication.switchToTab(_:to:), v3, v2);
}

{

  __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return (_swift_task_switch)(PhoneApplication.switchToTab(_:to:), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:)(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = a1;
  v16 = v5;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = a4;
  *(v18 + 40) = v15;
  *(v18 + 48) = v16;
  *(v18 + 56) = a2;
  *(v18 + 64) = 0x6154686374697753;
  *(v18 + 72) = 0xE900000000000062;
  *(v18 + 80) = a5;
  *(v18 + 88) = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:), v18);
}

uint64_t closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 48) = v13;
  *(v8 + 56) = v14;
  *(v8 + 116) = a7;
  *(v8 + 120) = v15;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  type metadata accessor for MainActor();
  *(v8 + 64) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 72) = v10;
  *(v8 + 80) = v9;

  return (_swift_task_switch)(closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:), v10, v9);
}

uint64_t closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:)()
{
  v18 = v0;
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v1)
  {
    if (one-time initialization token for mobilePhone == -1)
    {
LABEL_4:
      *(v0 + 88) = 0;
      v2 = *(v0 + 24);
      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.mobilePhone);
      v4 = v2;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 24);
        v8 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v8 = 136315650;
        *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000100244D70, &v17);
        *(v8 + 12) = 2080;
        *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000100244E10, &v17);
        *(v8 + 22) = 2082;
        *(v0 + 112) = [v7 currentTabViewType];
        type metadata accessor for PHTabViewType(0);
        v9 = String.init<A>(reflecting:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

        *(v8 + 24) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "[%s %s]: Current tab %{public}s", v8, 0x20u);
        swift_arrayDestroy();
      }

      v12 = swift_task_alloc();
      *(v0 + 96) = v12;
      *v12 = v0;
      v12[1] = closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:);
      v13 = *(v0 + 116);
      v14 = *(v0 + 24);

      return PhoneApplication.switchToTab(_:to:)(v14, v13);
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  [*(v0 + 32) finishedTest:**(v0 + 56) waitForCommit:1 extraResults:0];
  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return (_swift_task_switch)(closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:), v3, v2);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = String._bridgeToObjectiveC()();
  [v2 startedSubTest:v3 forTest:*v1];

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:);
  v5 = *(v0 + 120);
  v6 = *(v0 + 24);

  return PhoneApplication.switchToTab(_:to:)(v6, v5);
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return (_swift_task_switch)(closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:), v3, v2);
}

{
  v22 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88) + 1;
  v5 = String._bridgeToObjectiveC()();
  [v2 finishedSubTest:v5 forTest:*v1];

  if (v4 == v3)
  {

    [*(v0 + 32) finishedTest:**(v0 + 56) waitForCommit:1 extraResults:0];
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    ++*(v0 + 88);
    v8 = *(v0 + 24);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.mobilePhone);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v14 = 136315650;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000100244D70, &v21);
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000100244E10, &v21);
      *(v14 + 22) = 2082;
      *(v0 + 112) = [v13 currentTabViewType];
      type metadata accessor for PHTabViewType(0);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v21);

      *(v14 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s %s]: Current tab %{public}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    v18 = swift_task_alloc();
    *(v0 + 96) = v18;
    *v18 = v0;
    v18[1] = closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:);
    v19 = *(v0 + 116);
    v20 = *(v0 + 24);

    return PhoneApplication.switchToTab(_:to:)(v20, v19);
  }
}

uint64_t specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)(uint64_t a1, int a2)
{
  *(v2 + 212) = a2;
  *(v2 + 64) = a1;
  v3 = type metadata accessor for Notification();
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  *(v2 + 104) = swift_task_alloc();
  v4 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = type metadata accessor for MainActor();
  *(v2 + 144) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 152) = v6;
  *(v2 + 160) = v5;

  return (_swift_task_switch)(specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:), v6, v5);
}

uint64_t specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)()
{
  v1 = *(v0 + 212);
  v2 = *(v0 + 64);
  v3 = [objc_opt_self() defaultCenter];
  *(v0 + 168) = NSNotificationCenter.notifications(named:object:)();

  [v2 switchToTab:v1];

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  *(v0 + 176) = @"PHPhoneTabBarControllerTabViewDidAppearNotificationTabTypeKey";
  *(v0 + 184) = static MainActor.shared.getter();
  v4 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:);
  }

  return (_swift_task_switch)(v7, v4, v6);
}

{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return (_swift_task_switch)(specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:), v1, v2);
}

{
  v53 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    goto LABEL_3;
  }

  (*(v3 + 32))(*(v0 + 96), v1, v2);
  Notification.object.getter();
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
    if (swift_dynamicCast())
    {
      v51 = *(v0 + 56);
      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v9 = *(v0 + 72);
      v8 = *(v0 + 80);
      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.mobilePhone);
      (*(v8 + 16))(v7, v6, v9);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v15 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = *(v0 + 72);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v17 = 136315650;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000100244D70, &v52);
        *(v17 + 12) = 2080;
        *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000100244E50, &v52);
        *(v17 + 22) = 2080;
        lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator(&lazy protocol witness table cache variable for type Notification and conformance Notification, &type metadata accessor for Notification);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v19;
        v21 = *(v15 + 8);
        v21(v14, v16);
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v52);

        *(v17 + 24) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "[%s %s]: Recieved Notification: %s", v17, 0x20u);
        swift_arrayDestroy();

        v23 = v21;
      }

      else
      {

        v23 = *(v15 + 8);
        v23(v14, v16);
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v51 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        v27 = v26;

        if (v27)
        {
          swift_unknownObjectRetain();

          objc_opt_self();
          v28 = swift_dynamicCastObjCClass();
          if (!v28)
          {
            swift_unknownObjectRelease();
          }

LABEL_21:
          v29 = [objc_allocWithZone(NSNumber) initWithInt:*(v0 + 212)];
          v30 = v29;
          if (v28)
          {
            if (v29)
            {
              type metadata accessor for NSNumber();
              v31 = static NSObject.== infix(_:_:)();

              if ((v31 & 1) == 0)
              {
                goto LABEL_30;
              }

LABEL_26:

              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.default.getter();
              v34 = os_log_type_enabled(v32, v33);
              v36 = *(v0 + 120);
              v35 = *(v0 + 128);
              v37 = *(v0 + 112);
              v38 = *(v0 + 96);
              v50 = *(v0 + 72);
              if (v34)
              {
                v49 = *(v0 + 128);
                v39 = *(v0 + 212);
                v48 = *(v0 + 96);
                v40 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                *v40 = 136315650;
                *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000100244D70, &v52);
                *(v40 + 12) = 2080;
                *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000100244E50, &v52);
                *(v40 + 22) = 2082;
                *(v0 + 208) = v39;
                type metadata accessor for PHTabViewType(0);
                v41 = String.init<A>(reflecting:)();
                v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v52);

                *(v40 + 24) = v43;
                _os_log_impl(&_mh_execute_header, v32, v33, "[%s %s]: Switched to tab %{public}s", v40, 0x20u);
                swift_arrayDestroy();

                v23(v48, v50);
                (*(v36 + 8))(v49, v37);
              }

              else
              {

                v23(v38, v50);
                (*(v36 + 8))(v35, v37);
              }

LABEL_3:

              v4 = *(v0 + 8);

              return v4();
            }

            v30 = v28;
          }

          else if (!v29)
          {
            goto LABEL_26;
          }

LABEL_30:
          v23(*(v0 + 96), *(v0 + 72));
          goto LABEL_31;
        }
      }

      else
      {
      }

      v28 = 0;
      goto LABEL_21;
    }

    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 16, &_sypSgMd);
  }

LABEL_31:
  *(v0 + 184) = static MainActor.shared.getter();
  v44 = lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v45 = swift_task_alloc();
  *(v0 + 192) = v45;
  *v45 = v0;
  v45[1] = specialized PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:);
  v46 = *(v0 + 104);
  v47 = *(v0 + 112);

  return dispatch thunk of AsyncIteratorProtocol.next()(v46, v47, v44);
}

{
  *(v0 + 48) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 152) = a3;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd);
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd);
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;

  return (_swift_task_switch)(specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:), v7, v6);
}

uint64_t specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:)()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 16) = dispatch thunk of CallsTesting.finishedFirstLoadSubject.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  Publisher<>.values.getter();

  [v2 switchToTab:v1];
  AsyncPublisher.makeAsyncIterator()();
  *(v0 + 128) = static MainActor.shared.getter();
  v3 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:);
  v5 = *(v0 + 48);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 156, v5, v3);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:);
  }

  return (_swift_task_switch)(v7, v4, v6);
}

{

  *(v0 + 157) = *(v0 + 156);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return (_swift_task_switch)(specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:), v1, v2);
}

{
  v1 = *(v0 + 157);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);

    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 128) = static MainActor.shared.getter();
    v10 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd);
    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:);
    v12 = *(v0 + 48);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 156, v12, v10);
  }
}

{
  *(v0 + 24) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t partial apply for closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:)(uint64_t a1)
{
  v13 = *(v1 + 16);
  v11 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:)(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 92, 7);
}

uint64_t sub_10013CD6C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:)(v2, v3, v5, v4);
}

uint64_t lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContentSizeCategory.requiresAccessibleLayout.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v12 = v6 == enum case for ContentSizeCategory.extraSmall(_:) || v6 == enum case for ContentSizeCategory.small(_:) || v6 == enum case for ContentSizeCategory.medium(_:) || v6 == enum case for ContentSizeCategory.large(_:) || v6 == enum case for ContentSizeCategory.extraLarge(_:) || v6 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v6 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v13 = !v12;
  if (!v12 && v6 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v6 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v6 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v6 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v6 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v3 + 8))(v5, v2);
  }

  return v13;
}

uint64_t Optional<A>.isEditing.getter()
{
  v1 = type metadata accessor for EditMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8EditModeOSg_ADtMd);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8EditModeOSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v29 - v14;
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  outlined init with copy of Binding<EditMode>?(v0, v9, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA8EditModeOGMd);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v9, &_s7SwiftUI7BindingVyAA8EditModeOGSgMd);
    v19 = 1;
  }

  else
  {
    Binding.wrappedValue.getter();
    outlined destroy of (NSAttributedStringKey, Any)(v9, &_s7SwiftUI7BindingVyAA8EditModeOGMd);
    v19 = 0;
  }

  v20 = *(v2 + 56);
  v20(v17, v19, 1, v1);
  (*(v2 + 104))(v15, enum case for EditMode.active(_:), v1);
  v20(v15, 0, 1, v1);
  v21 = *(v4 + 48);
  outlined init with copy of Binding<EditMode>?(v17, v6, &_s7SwiftUI8EditModeOSgMd);
  outlined init with copy of Binding<EditMode>?(v15, &v6[v21], &_s7SwiftUI8EditModeOSgMd);
  v22 = *(v2 + 48);
  if (v22(v6, 1, v1) != 1)
  {
    v24 = v30;
    outlined init with copy of Binding<EditMode>?(v6, v30, &_s7SwiftUI8EditModeOSgMd);
    if (v22(&v6[v21], 1, v1) != 1)
    {
      v25 = v29;
      (*(v2 + 32))(v29, &v6[v21], v1);
      lazy protocol witness table accessor for type EditMode and conformance EditMode();
      v26 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v2 + 8);
      v27(v25, v1);
      outlined destroy of (NSAttributedStringKey, Any)(v15, &_s7SwiftUI8EditModeOSgMd);
      outlined destroy of (NSAttributedStringKey, Any)(v17, &_s7SwiftUI8EditModeOSgMd);
      v27(v26, v1);
      outlined destroy of (NSAttributedStringKey, Any)(v6, &_s7SwiftUI8EditModeOSgMd);
      return v23 & 1;
    }

    outlined destroy of (NSAttributedStringKey, Any)(v15, &_s7SwiftUI8EditModeOSgMd);
    outlined destroy of (NSAttributedStringKey, Any)(v17, &_s7SwiftUI8EditModeOSgMd);
    (*(v2 + 8))(v24, v1);
    goto LABEL_9;
  }

  outlined destroy of (NSAttributedStringKey, Any)(v15, &_s7SwiftUI8EditModeOSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v17, &_s7SwiftUI8EditModeOSgMd);
  if (v22(&v6[v21], 1, v1) != 1)
  {
LABEL_9:
    outlined destroy of (NSAttributedStringKey, Any)(v6, &_s7SwiftUI8EditModeOSg_ADtMd);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of (NSAttributedStringKey, Any)(v6, &_s7SwiftUI8EditModeOSgMd);
  v23 = 1;
  return v23 & 1;
}

unint64_t lazy protocol witness table accessor for type EditMode and conformance EditMode()
{
  result = lazy protocol witness table cache variable for type EditMode and conformance EditMode;
  if (!lazy protocol witness table cache variable for type EditMode and conformance EditMode)
  {
    type metadata accessor for EditMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditMode and conformance EditMode);
  }

  return result;
}

uint64_t Image.init(symbolDescriber:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v2);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = specialized Image.init(symbolDescriber:)(v6, v2, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t View.asAnyView.getter(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return AnyView.init<A>(_:)();
}

uint64_t Image.init(symbolDescription:)(void *a1)
{
  v2 = specialized Image.init(symbolDescription:)(a1);
  v6 = *a1;
  outlined destroy of String(&v6);
  v5 = a1[3];
  outlined destroy of UIFontTextStyle(&v5);
  v4 = a1[4];
  outlined destroy of (NSAttributedStringKey, Any)(&v4, &_sSo21UIContentSizeCategoryaSgMd);
  return v2;
}

uint64_t specialized Image.init(symbolDescriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v7);
  (*(a3 + 8))(&v11, a2, a3);
  v8 = specialized Image.init(symbolDescription:)(&v11);
  v16 = v11;
  outlined destroy of String(&v16);
  v15 = v12;
  outlined destroy of UIFontTextStyle(&v15);
  v14 = v13;
  outlined destroy of (NSAttributedStringKey, Any)(&v14, &_sSo21UIContentSizeCategoryaSgMd);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t specialized Image.init(symbolDescription:)(void *a1)
{
  if (specialized static UIImage.image(for:)(a1))
  {

    return Image.init(uiImage:)();
  }

  else
  {
    _StringGuts.grow(_:)(40);
    v2._object = 0x8000000100244EB0;
    v2._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v2);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for intents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents16_AssistantIntentVGMd);
  type metadata accessor for _AssistantIntent();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100209AA0;
  specialized OpenMobilePhoneAppDeepLinks.init()();
  lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();
  result = _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  static PFTAssistantIntentsProvider.intents = v0;
  return result;
}

uint64_t closure #1 in variable initialization expression of static PFTAssistantIntentsProvider.intents(uint64_t a1)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_11MobilePhone04OpenfgA9DeepLinksVGMd);
  v2 = *(v1 - 8);
  v45 = v1;
  v46 = v2;
  __chkstk_darwin(v1);
  v4 = v36 - v3;
  v40 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_11MobilePhone04OpenhiA9DeepLinksV_GMd);
  __chkstk_darwin(v8);
  lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x206E65704FLL;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v44 = lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  LODWORD(v39) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v5;
  v38 = *(v5 + 104);
  v12 = v40;
  v38(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v11 + 8);
  v36[1] = v11 + 8;
  v37 = v13;
  v13(v7, v12);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = *(v46 + 8);
  v46 += 8;
  v41 = v15;
  v42 = v16;
  v16(v4, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20656D20776F6853;
  v17._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  (v38)(v7, v39, v12);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v37(v7, v12);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v45;
  v42(v4, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x6F6850206E65704FLL;
  v21._object = 0xEB0000000020656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v20;
  v24 = v42;
  v42(v4, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0xEE0020656E6F6850;
  v25._countAndFlagsBits = 0x20656D20776F6853;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v45;
  v24(v4, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0x6F685020776F6853;
  v28._object = 0xEB0000000020656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24(v4, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_11MobilePhone04OpenijD9DeepLinksVGGGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10020D050;
  v32 = v40;
  *(v31 + 32) = v41;
  *(v31 + 40) = v32;
  v33 = v38;
  *(v31 + 48) = v39;
  *(v31 + 56) = v33;
  *(v31 + 64) = v30;
  v34 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v34;
}

uint64_t closure #2 in variable initialization expression of static PFTAssistantIntentsProvider.intents()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  _AssistantIntent.IntentProjection.subscript.getter();

  lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100209AA0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t closure #1 in closure #2 in variable initialization expression of static PFTAssistantIntentsProvider.intents()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10020D050;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t *PFTAssistantIntentsProvider.intents.unsafeMutableAddressor()
{
  if (one-time initialization token for intents != -1)
  {
    swift_once();
  }

  return &static PFTAssistantIntentsProvider.intents;
}

uint64_t (*static PFTAssistantIntentsProvider.intents.modify())()
{
  if (one-time initialization token for intents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return PhoneVoicemailBadgeController.listeners.modify;
}

uint64_t *PFTAssistantIntentsProvider.negativePhrases.unsafeMutableAddressor()
{
  if (one-time initialization token for negativePhrases != -1)
  {
    swift_once();
  }

  return &static PFTAssistantIntentsProvider.negativePhrases;
}

uint64_t static PFTAssistantIntentsProvider.intents.getter(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PFTAssistantIntentsProvider.intents.setter(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static PFTAssistantIntentsProvider.negativePhrases.modify())()
{
  if (one-time initialization token for negativePhrases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return VoicemailSearchViewCell.callButtonTapHandler.modify;
}

uint64_t key path getter for static PFTAssistantIntentsProvider.intents : PFTAssistantIntentsProvider.Type@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static PFTAssistantIntentsProvider.intents : PFTAssistantIntentsProvider.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
}

uint64_t protocol witness for static _AssistantIntentsProvider.intents.getter in conformance PFTAssistantIntentsProvider(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

char *static VoicemailManagerFactory.getFTVoiceMail(onVoicemailsChanged:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, static Logger.mobilePhone);
  (*(v5 + 16))(v7, v8, v4);
  type metadata accessor for MessageStoreController();
  v9 = static MessageStoreController.shared.getter();
  v10 = objc_allocWithZone(type metadata accessor for FaceTimeVoicemailManager(0));

  v11 = specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(v7, a1, a2, v9, v10);

  return v11;
}

char *specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v30 = a2;
  v36 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v34 = &v30 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TaskPriority();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v37[3] = type metadata accessor for MessageStoreController();
  v37[4] = &protocol witness table for MessageStoreController;
  v35 = a4;
  v37[0] = a4;
  v14 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_analyticsReporter;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, static Logger.mobilePhone);
  v16 = *(v10 + 16);
  v16(a5 + v14, v15, v9);
  *(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_providers) = &outlined read-only object #0 of specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:);
  *(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes) = &outlined read-only object #1 of specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:);
  v17 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messagesChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  swift_allocObject();
  *(a5 + v17) = PassthroughSubject.init()();
  v18 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_operationQueue;
  type metadata accessor for TaskQueue();
  static TaskPriority.high.getter();
  *(a5 + v18) = TaskQueue.__allocating_init(priority:)();
  v19 = v36;
  v16(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger, v36, v9);
  v20 = (a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_onVoicemailsChanged);
  v21 = v33;
  *v20 = v30;
  v20[1] = v21;
  outlined init with copy of Tip(v37, a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v16(v12, v19, v9);
  type metadata accessor for MessageStoreDelegate(0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + OBJC_IVAR____TtC11MobilePhoneP33_16A679D6AB3E8F4F37E91E12102EA1A620MessageStoreDelegate_logger, v12, v9);
  *(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreDelegate) = v22;

  v23 = CachedVoicemailManager.init(serviceName:)(1397576774, 0xE400000000000000);
  v24 = v34;
  (*(v31 + 56))(v34, 1, 1, v32);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v26 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v27 = swift_allocObject();
  v27[2] = inited;
  v27[3] = v26;
  v27[4] = v23;
  v28 = v23;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:), v27);

  MessageStoreController.addDelegate(_:)();

  (*(v10 + 8))(v19, v9);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v28;
}

uint64_t sub_10013F2CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013F304()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel);

  v5 = String._bridgeToObjectiveC()();

  v43 = [objc_opt_self() alertControllerWithTitle:v5 message:0 preferredStyle:0];

  v41 = v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v48 = partial apply for closure #1 in ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:);
  v49 = v6;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v47 = &block_descriptor_11;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v11 = *(v2 + OBJC_IVAR___MPReportFlowPresenter_contactsService);
  v12 = *&v11[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (v14)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  v42 = v10;
  v16 = [a1 validRemoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = a1;
    v20 = v11;
    v21 = specialized Sequence.compactMap<A>(_:)(v18, v15, v19, v20);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;

  v24 = String._bridgeToObjectiveC()();

  v48 = partial apply for closure #2 in ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:);
  v49 = v23;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v47 = &block_descriptor_7;
  v25 = _Block_copy(&aBlock);

  v26 = [v9 actionWithTitle:v24 style:2 handler:v25];
  _Block_release(v25);

  v27 = v26;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v21;
  v29[4] = a1;
  v30 = a1;

  v31 = String._bridgeToObjectiveC()();

  v48 = partial apply for closure #3 in ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:);
  v49 = v29;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v47 = &block_descriptor_14_0;
  v32 = _Block_copy(&aBlock);

  v33 = [v9 actionWithTitle:v31 style:2 handler:v32];
  _Block_release(v32);

  [v43 addAction:v26];
  [v43 addAction:v33];
  [v43 addAction:v42];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    [Strong presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &aBlock);
      _os_log_impl(&_mh_execute_header, v35, v36, "ReportFlowPresenter: in %s, failed to present alert because alertPresentingViewController was nil", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    [v39 fetchSharing];
  }
}

uint64_t sub_10013FA74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(void **a1)
{
  v98 = type metadata accessor for Logger();
  v3 = *(v98 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v98);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel);
  v104 = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v105 = &protocol witness table for CHRecentCall;
  aBlock = a1;

  v7 = a1;
  v8 = dispatch thunk of CarrierVoiceSpamReportHelper.reportSpamAlertControllerCarrierName(for:)();
  v10 = v9;

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  specialized CallReportingViewModel.getCarrierSpamReportAlertTitle(carrierName:)(v8, v10);

  v11 = String._bridgeToObjectiveC()();

  v100 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v85 = Strong;
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v84 = v7;
    v14 = ObjCClassFromMetadata;
    v97 = ObjCClassFromMetadata;
    v99 = objc_opt_self();
    v15 = [v99 bundleForClass:v14];
    v107._object = 0xE000000000000000;
    v16.value._countAndFlagsBits = 0x746E656365524850;
    v17._object = 0x80000001002408E0;
    v17._countAndFlagsBits = 0xD000000000000021;
    v16.value._object = 0xE900000000000073;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v107._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v107);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;

    v94 = OBJC_IVAR___MPReportFlowPresenter_logger;
    v81 = *(v1 + OBJC_IVAR___MPReportFlowPresenter_contactsService);
    v93 = *(v3 + 16);
    v95 = v1;
    v96 = v3 + 16;
    v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v98;
    v93(v82, v1 + OBJC_IVAR___MPReportFlowPresenter_logger, v98);
    v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v92 = *(v3 + 80);
    v88 = v21;
    v79 = v6;
    v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = v22;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = v23;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v89 = v24;
    v25 = swift_allocObject();
    v26 = *(v3 + 32);
    v87 = v3 + 32;
    v91 = v26;
    v27 = v5;
    v28 = v20;
    v26(v25 + v21, v27, v20);
    v29 = v81;
    *(v25 + v22) = v81;
    v30 = v84;
    *(v25 + v23) = v84;
    v31 = v79;
    *(v25 + v24) = v79;
    v32 = v85;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v85;
    v33 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v84 = v30;
    v34 = v29;
    v35 = v31;
    v81 = v32;
    v36 = String._bridgeToObjectiveC()();

    v105 = partial apply for closure #1 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:);
    v106 = v25;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v85 = &v103;
    v103 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v104 = &block_descriptor_20_0;
    v37 = _Block_copy(&aBlock);

    countAndFlagsBits = objc_opt_self();
    v38 = [countAndFlagsBits actionWithTitle:v36 style:2 handler:v37];
    _Block_release(v37);

    v39 = v100;
    [v100 addAction:v38];

    v40 = v97;
    v41 = [v99 bundleForClass:v97];
    v108._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD000000000000028;
    v42._object = 0x8000000100240910;
    v43.value._countAndFlagsBits = 0x746E656365524850;
    v43.value._object = 0xE900000000000073;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v108._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v108);

    v45 = v82;
    v93(v82, v95 + v94, v28);
    v46 = swift_allocObject();
    v91(v46 + v88, v45, v28);
    v47 = v34;
    *(v46 + v90) = v34;
    v48 = v84;
    *(v46 + v86) = v84;
    *(v46 + v89) = v35;
    v49 = v81;
    *(v46 + v33) = v81;
    v50 = v48;
    v51 = v47;
    v52 = v35;
    v53 = v49;
    v54 = String._bridgeToObjectiveC()();

    v105 = partial apply for closure #2 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:);
    v106 = v46;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v104 = &block_descriptor_26;
    v55 = _Block_copy(&aBlock);

    v56 = countAndFlagsBits;
    v57 = [countAndFlagsBits actionWithTitle:v54 style:2 handler:v55];
    _Block_release(v55);

    [v39 addAction:v57];
    v58 = [v99 bundleForClass:v40];
    v109._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0x4C45434E4143;
    v59._object = 0xE600000000000000;
    v60.value._countAndFlagsBits = 0x746E656365524850;
    v60.value._object = 0xE900000000000073;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v109._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v109);

    v62 = swift_allocObject();
    *(v62 + 16) = v52;
    *(v62 + 24) = v50;
    v63 = v50;
    v64 = v52;
    v65 = String._bridgeToObjectiveC()();

    v105 = partial apply for closure #3 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:);
    v106 = v62;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v104 = &block_descriptor_32;
    v66 = _Block_copy(&aBlock);

    v67 = [v56 actionWithTitle:v65 style:1 handler:v66];
    _Block_release(v66);

    v68 = v100;
    [v100 addAction:v67];

    v69 = v68;
    v70 = [v69 popoverPresentationController];
    if (v70)
    {
      v71 = v70;
      [v70 setPermittedArrowDirections:1];
    }

    v72 = [v69 popoverPresentationController];

    if (v72)
    {
      v73 = [v53 view];
      [v72 setSourceView:v73];
    }

    [v53 presentViewController:v69 animated:1 completion:0];
    [v53 fetchSharing];
  }

  else
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000100244F50, &aBlock);
      _os_log_impl(&_mh_execute_header, v74, v75, "ReportFlowPresenter: in %s, failed to present alert because alertPresentingViewController was nil", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
    }
  }
}

void ReportFlowPresenter.showReportingExtension(for:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v83 = type metadata accessor for Date();
  isa = v83[-1].isa;
  v7 = __chkstk_darwin(v83);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v69 - v10;
  v12 = [a1 date];
  if (v12)
  {
    v82 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = [a1 isoCountryCode];
    if (v14)
    {
      v15 = v14;
      v16 = [a1 callerId];
      if (v16)
      {
        v74 = v16;
        v77 = a1;
        v78 = v3;
        v81 = v11;
        v17 = [a1 callerId];
        if (v17)
        {
          v18 = v17;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v30 = v83;
        (*(isa + 2))(v9, v81, v83);
        v80 = v1;
        if (v20)
        {
          v31 = String._bridgeToObjectiveC()();
        }

        else
        {
          v31 = 0;
        }

        v32 = objc_allocWithZone(ILCallCommunication);
        v33 = Date._bridgeToObjectiveC()().super.isa;
        v34 = [v32 initWithSender:v31 dateReceived:v33];

        v35 = *(isa + 1);
        v79 = isa + 8;
        v76 = v35;
        v35(v9, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_100209A80;
        *(v36 + 32) = v34;
        v37 = objc_allocWithZone(ILCallClassificationRequest);
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for ILCallCommunication);
        v73 = v34;
        v38 = Array._bridgeToObjectiveC()().super.isa;

        v39 = [v37 initWithCallCommunications:v38];

        v40 = objc_allocWithZone(ILClassificationUIExtensionHostViewController);
        v41 = v39;
        v42 = v74;
        v43 = [v40 initUnactivatedVCWithRequest:v41 sender:v74 isoCountryCode:v15];
        v75 = v41;

        v44 = v80;
        v45 = *(v80 + OBJC_IVAR___MPReportFlowPresenter_classificationViewController);
        *(v80 + OBJC_IVAR___MPReportFlowPresenter_classificationViewController) = v43;
        v70 = v43;
        v46 = v43;
        v72 = v46;

        [v46 setDelegate:v44];
        v71 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v74 = OBJC_IVAR___MPReportFlowPresenter_logger;
        v47 = v82;
        v48 = v78;
        (*(v4 + 16))(v82, v44 + OBJC_IVAR___MPReportFlowPresenter_logger, v78);
        v49 = (*(v4 + 80) + 16) & ~*(v4 + 80);
        v50 = (v5 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
        v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        (*(v4 + 32))(v53 + v49, v47, v48);
        v54 = v73;
        *(v53 + v50) = v73;
        v55 = v77;
        *(v53 + v51) = v77;
        v56 = v72;
        *(v53 + v52) = v71;
        *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;
        aBlock[4] = partial apply for closure #1 in ReportFlowPresenter.showReportingExtension(for:);
        aBlock[5] = v53;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_39;
        v57 = _Block_copy(aBlock);
        v58 = v54;
        v59 = v56;
        v60 = v55;

        [v59 activateExtensionWithCompletion:v57];
        _Block_release(v57);
        v61 = v59;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = 138412290;
          *(v64 + 4) = v61;
          *v65 = v70;
          v66 = v61;
          _os_log_impl(&_mh_execute_header, v62, v63, "Created classification view controller: %@, waiting for ready", v64, 0xCu);
          outlined destroy of NSObject?(v65);

          v67 = v58;
          v61 = v75;
          v68 = v81;
        }

        else
        {
          v67 = v62;
          v62 = v58;
          v68 = v81;
          v66 = v75;
        }

        v76(v68, v83);
        return;
      }

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100244F80, aBlock);
        v28 = "ReportFlowPresenter: in %s, Unable to show reporting extension for call because the callerId is nil";
        goto LABEL_15;
      }
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100244F80, aBlock);
        v28 = "ReportFlowPresenter: in %s, Unable to show reporting extension for call because the isoCountryCode is nil";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v24, v25, v28, v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
      }
    }

    (*(isa + 1))(v11, v83);
    return;
  }

  v83 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v83, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100244F80, aBlock);
    _os_log_impl(&_mh_execute_header, v83, v21, "ReportFlowPresenter: in %s, Unable to show reporting extension for call because the date is nil", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v29 = v83;
  }
}

void ReportFlowPresenter.presentBlockAllAlert(for:)(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v38 = partial apply for closure #1 in ReportFlowPresenter.presentBlockAllAlert(for:);
  v39 = v6;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v37 = &block_descriptor_43;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v11 = *(v2 + OBJC_IVAR___MPReportFlowPresenter_contactsService);
  v12 = *&v11[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (v14)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 validRemoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = a1;
    v20 = v11;
    v21 = specialized Sequence.compactMap<A>(_:)(v18, v15, v19, v20);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;

  v24 = String._bridgeToObjectiveC()();

  v38 = partial apply for closure #2 in ReportFlowPresenter.presentBlockAllAlert(for:);
  v39 = v23;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v37 = &block_descriptor_50;
  v25 = _Block_copy(&aBlock);

  v26 = [v9 actionWithTitle:v24 style:2 handler:v25];
  _Block_release(v25);

  [v5 addAction:v26];
  [v5 addAction:v10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000100244FC0, &aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "ReportFlowPresenter: in %s, failed to present alert because alertPresentingViewController was nil", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    [v32 fetchSharing];
  }
}