uint64_t sub_1003E60E0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003525A4(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1003E73F0(v6);
}

uint64_t sub_1003E6208(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__state;
  swift_beginAccess();
  sub_1003E74C8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1003E6274()
{
  swift_getKeyPath();
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003E6334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose);
  *v3 = a2;
  v3[1] = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v4);
}

uint64_t sub_1003E638C()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = static MapsSyncStore.sharedStore.getter();
  v3 = type metadata accessor for LibraryDataOperationsProvider();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  *(v1 + 48) = objc_msgSendSuper2(&v7, "init");
  v5 = (v1 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose);
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LibraryRecentsDataProvider();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel_dataProvider) = sub_10049B968();
  sub_1003E6498();
  return v1;
}

uint64_t sub_1003E6498()
{
  v1 = *v0;
  v2 = type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_allocObject();
  swift_weakInit();
  v10 = v5;
  v11 = v1;
  withObservationTracking<A>(_:onChange:)();

  swift_getKeyPath();
  v8 = v0;
  v9 = v4;
  v12 = v0;
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1003E73F0(v4);
}

uint64_t sub_1003E664C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003E6978(a1);
  }

  else
  {
    sub_1003E66E0();
    type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1003E66E0()
{
  v0 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for EmptyStateViewModel.Icon();
  v4 = __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0xD000000000000015;
  v6[1] = 0x8000000101235D10;
  (*(v7 + 104))(v6, enum case for EmptyStateViewModel.Icon.systemIcon(_:), v4);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8.super.isa = qword_1019600D8;
  v16._object = 0x8000000101235D80;
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x8000000101235D30;
  v10._object = 0x8000000101235D60;
  v16._countAndFlagsBits = 0xD000000000000029;
  v10._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v16);
  v17._object = 0x8000000101235E20;
  v11._countAndFlagsBits = 0xD000000000000028;
  v11._object = 0x8000000101235DB0;
  v12._countAndFlagsBits = 0xD00000000000003ELL;
  v12._object = 0x8000000101235DE0;
  v17._countAndFlagsBits = 0xD000000000000034;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v8, v12, v17);
  v13 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  return EmptyStateViewModel.init(icon:title:details:button:)();
}

uint64_t sub_1003E6978@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel_dataProvider);
  swift_getKeyPath();
  sub_1003E75E8(&qword_10190BCE0, type metadata accessor for LibraryRecentsDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
LABEL_20:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v8 = type metadata accessor for LibraryListSavedItemCellModel();
    swift_getObjectType();
    v9 = sub_1004BE674(v6, v8);
    ++v5;
    if (v9)
    {
      v10 = v9;
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = &v10[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler];
      v13 = *&v10[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_savedItemActionHandler];
      *v12 = sub_1003E7630;
      v12[1] = v11;
      v14 = v10;

      sub_1000588AC(v13);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v7;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }

LABEL_22:

    sub_1003E66E0();
    type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_17:
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003E6C7C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10020AAE4(0, 0, v4, &unk_101203EA8, v7);
}

uint64_t sub_1003E6DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E6E38, v6, v5);
}

uint64_t sub_1003E6E38()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003E6498();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003E6EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [objc_allocWithZone(MUPresentationOptions) init];
    [v11 setSourceView:a5];
    swift_getKeyPath();
    sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v10 + 16);
    if (v12)
    {

      v12(v10, a2, a3, a4, v11);
      sub_1000588AC(v12);
    }
  }
}

uint64_t sub_1003E701C()
{
  sub_1000588AC(*(v0 + 16));
  sub_1000588AC(*(v0 + 32));

  sub_1003E73F0(v0 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__state);

  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose));
  sub_1001F4E08(v0 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__actionDelegate);
  v1 = OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003E70D8()
{
  sub_1003E701C();

  return swift_deallocClassInstance();
}

uint64_t sub_1003E7158()
{
  result = type metadata accessor for LibraryRecentlyAddedViewModel.State(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003E7280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003E72C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1003E7324()
{
  type metadata accessor for EmptyStateViewModel();
  if (v0 <= 0x3F)
  {
    sub_1003E7398();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003E7398()
{
  if (!qword_10191FE08)
  {
    type metadata accessor for LibraryListSavedItemCellModel();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10191FE08);
    }
  }
}

uint64_t sub_1003E73F0(uint64_t a1)
{
  v2 = type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1003E7454())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1003E752C;
}

uint64_t sub_1003E74C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E7534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1003E6DA0(a1, v4, v5, v6);
}

uint64_t sub_1003E75E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E7638()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_1003E7684(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v11 = a1;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v8 = a5;
  return v6(&v11, v9, &v8);
}

void sub_1003E7728(unint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1003F168C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1003E79AC()
{
  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960048);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10004DEB8(*&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery], *&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8], &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "SearchFindMyFriendOperation is starting for query: %s", v5, 0xCu);
    sub_10004E3D0(v6);
  }

  if ([v2 isCancelled])
  {
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10004DEB8(*&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery], *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8], &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "SearchFindMyFriendOperation is cancelled: %s. Marking it as finished.", v10, 0xCu);
      sub_10004E3D0(v11);
    }

    v12 = String._bridgeToObjectiveC()();
    [v7 willChangeValueForKey:v12];

    v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isFinishedOperation] = 1;
    v15 = String._bridgeToObjectiveC()();
    [v7 didChangeValueForKey:v15];
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    [v2 willChangeValueForKey:v13];

    v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isExecutingOperation] = 1;
    v14 = String._bridgeToObjectiveC()();
    [v2 didChangeValueForKey:v14];

    [v2 main];
  }
}

id sub_1003E7D50()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38[-1] - v7;
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v38[-1] - v10;
  if (v0[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isOffline])
  {
    Date.init()();
    if (qword_101906738 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960048);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "SearchFindMyFriendOperation is offline, building contacts only.", v15, 2u);
    }

    static TaskPriority.userInitiated.getter();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    (*(v3 + 16))(v5, v8, v2);
    v17 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v1;
    (*(v3 + 32))(&v18[v17], v5, v2);
    v19 = v1;
    sub_10020AAE4(0, 0, v11, &unk_101204080, v18);

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v21 = *&v0[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchFindMySession];
    if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC4Maps19SearchFindMySession_session)) != 0)
    {

      GEOConfigGetDouble();
      v24 = v23;
      static TaskPriority.userInitiated.getter();
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v24;
      v26[5] = v1;
      v26[6] = v22;
      v27 = v1;
      *&v27[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_findFriendsTask] = sub_10020AAE4(0, 0, v11, &unk_101204070, v26);
    }

    else
    {
      if (qword_101906738 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100021540(v28, qword_101960048);
      v29 = v1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_10004DEB8(*&v29[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery], *&v29[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8], v38);
        _os_log_impl(&_mh_execute_header, v30, v31, "SearchFindMyFriendOperation: No session found: %s", v32, 0xCu);
        sub_10004E3D0(v33);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        swift_beginAccess();
        sub_100014C84(0, &qword_10191FF40);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v35 searchFindMyFriendOperation:v29 didMatchResults:isa];

        swift_unknownObjectRelease();
      }

      return [v29 markOperationAsComplete];
    }
  }
}

uint64_t sub_1003E8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = type metadata accessor for Date();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_1003E83D4, 0, 0);
}

uint64_t sub_1003E83D4()
{
  v13 = v0;
  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = type metadata accessor for Logger();
  v0[30] = sub_100021540(v2, qword_101960048);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10004DEB8(*(v6 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery), *(v6 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8), &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "SearchFindMyFriendOperation: Starting to build contacts for query: %s", v7, 0xCu);
    sub_10004E3D0(v8);
  }

  v9 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_1003E8610;
  v10 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&unk_10191FF48);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003E8AD4;
  v0[13] = &unk_101617110;
  v0[14] = v10;
  [v9 contactsMatchingSearchQueryWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003E8610()
{

  return _swift_task_switch(sub_1003E86F0, 0, 0);
}

uint64_t sub_1003E86F0()
{
  v35 = v0;
  v1 = *(v0 + 192);
  (*(*(v0 + 216) + 16))(*(v0 + 232), *(v0 + 200), *(v0 + 208));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  if (v5)
  {
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10004DEB8(*(v10 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery), *(v10 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8), &v34);
    *(v11 + 12) = 2048;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v14 = v13;
    v15 = *(v8 + 8);
    v15(v7, v9);
    v15(v6, v9);
    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "SearchFindMyFriendOperation: Finished building contacts\n searchQuery:%s\n Time taken: %f", v11, 0x16u);
    sub_10004E3D0(v12);
  }

  else
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 216);

    (*(v17 + 8))(v6, v16);
  }

  v18 = *(v0 + 192);
  [v18 createAutocompletePersonContacts];
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = 136315138;
    swift_beginAccess();
    sub_100014C84(0, &qword_10191FF40);

    v24 = Array.description.getter();
    v26 = v25;

    v27 = sub_10004DEB8(v24, v26, &v34);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "SearchFindMyFriendOperation: calling delegate method with items: %s", v22, 0xCu);
    sub_10004E3D0(v23);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = *(v0 + 192);
    swift_beginAccess();
    sub_100014C84(0, &qword_10191FF40);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 searchFindMyFriendOperation:v30 didMatchResults:isa];
    swift_unknownObjectRelease();
  }

  [*(v0 + 192) markOperationAsComplete];

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1003E8AD4(uint64_t a1, char a2)
{
  v3 = *sub_10005E838((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1003E8B30(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_1003E8B54, 0, 0);
}

uint64_t sub_1003E8B54()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1003E8C68;
  v5.n128_u64[0] = v0[2];

  return runWithTimeout<A>(seconds:block:)(v4, &unk_101204098, v3, &type metadata for () + 8, v5);
}

uint64_t sub_1003E8C68()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1003E8D98;
  }

  else
  {

    v2 = sub_1003E8D84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E8D98()
{
  v18 = v0;

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960048);
  swift_errorRetain();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 138412546;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10004DEB8(*(v6 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery), *(v6 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8), &v17);
    _os_log_impl(&_mh_execute_header, v4, v5, "SearchFindMyFriendOperation: encountered error: %@ for searchQuery:%s", v7, 0x16u);
    sub_100024F64(v8, &qword_1019144F0);

    sub_10004E3D0(v9);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v0 + 24);
    sub_100014C84(0, &qword_10191FF40);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 searchFindMyFriendOperation:v13 didMatchResults:isa];
    swift_unknownObjectRelease();
  }

  [*(v0 + 24) markOperationAsComplete];

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003E9024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[169] = a3;
  v3[168] = a2;
  sub_1000CE6B8(&qword_1019162C0);
  v3[170] = swift_task_alloc();
  v4 = type metadata accessor for Location();
  v3[171] = v4;
  v3[172] = *(v4 - 8);
  v3[173] = swift_task_alloc();
  v3[174] = swift_task_alloc();
  v3[175] = swift_task_alloc();
  v3[176] = swift_task_alloc();
  v3[177] = swift_task_alloc();
  v3[178] = swift_task_alloc();
  sub_1000CE6B8(&qword_10191FF58);
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();
  v5 = sub_1000CE6B8(&qword_10191FF60);
  v3[181] = v5;
  v3[182] = *(v5 - 8);
  v3[183] = swift_task_alloc();
  v3[184] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[185] = v6;
  v3[186] = *(v6 - 8);
  v3[187] = swift_task_alloc();
  v3[188] = swift_task_alloc();
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v3[192] = swift_task_alloc();
  v3[193] = swift_task_alloc();
  v3[194] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v3[195] = v7;
  v3[196] = *(v7 - 8);
  v3[197] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[198] = v8;
  v3[199] = *(v8 - 8);
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();

  return _swift_task_switch(sub_1003E93CC, 0, 0);
}

uint64_t sub_1003E93CC()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[204] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    v0[205] = v3;
    *(v3 + 16) = v2;
    v4 = v2;
    swift_asyncLet_begin();
    Date.init()();
    if (qword_101906738 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[206] = sub_100021540(v5, qword_101960048);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = &v6[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
      v12 = *&v6[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
      v13 = *(v11 + 1);

      v14 = sub_10004DEB8(v12, v13, &v20);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "SearchFindMyFriendOperation: Friends for \n searchQuery:%s", v9, 0xCu);
      sub_10004E3D0(v10);
    }

    v15 = swift_allocObject();
    v0[207] = v15;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v17 = swift_task_alloc();
    v0[208] = v17;
    *v17 = v0;
    v17[1] = sub_1003E9870;

    return Session.friendsSharingLocationsWithMe(filter:)(sub_1003F2AB8, v15);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1003E9870(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1672) = a1;
  *(v3 + 1680) = v1;

  if (v1)
  {
    v4 = sub_1003ECEA0;
  }

  else
  {

    v4 = sub_1003E99C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003E99C4()
{
  v79 = v0;
  v1 = v0[204];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[199];
  v5 = v0[198];
  v6 = *(v4 + 16);
  v0[211] = v6;
  v0[212] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v5);
  v7 = v1;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v77 = v0;
  if (os_log_type_enabled(v8, v9))
  {
    v73 = v0[204];
    v75 = v0[202];
    v10 = v0[201];
    v11 = v0[199];
    v12 = v0[198];
    v13 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = Array.description.getter();
    v16 = sub_10004DEB8(v14, v15, v78);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = *(v73 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery);
    v18 = *(v73 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8);

    v19 = sub_10004DEB8(v17, v18, v78);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2048;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v22 = *(v11 + 8);
    v22(v10, v12);
    v22(v75, v12);
    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "SearchFindMyFriendOperation: Found friends:%s\n searchQuery:%s\n Time taken: %f", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[202];
    v24 = v0[199];
    v25 = v0[198];

    v22 = *(v24 + 8);
    v22(v23, v25);
  }

  v65 = v22;
  v0[213] = v22;
  v26 = v0[209];
  v27 = sub_1000D1B7C(_swiftEmptyArrayStorage);
  v71 = *(v26 + 16);
  v72 = v26;
  if (v71)
  {
    v28 = 0;
    v29 = v0[196];
    v69 = v0[209] + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v70 = v29;
    v30 = v0[186];
    v68 = (v30 + 8);
    v74 = (v30 + 32);
    v66 = (v29 + 8);
    v67 = v30;
    do
    {
      if (v28 >= *(v72 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      v32 = v0[194];
      v33 = v0[193];
      v76 = v0[192];
      v34 = v0[185];
      (*(v70 + 16))(v0[197], v69 + *(v70 + 72) * v28, v0[195]);
      Friend.handle.getter();
      v35 = Handle.identifier.getter();
      v37 = v36;
      (*v68)(v32, v34);
      Friend.handle.getter();
      v38 = *v74;
      (*v74)(v76, v33, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v27;
      v40 = sub_100297040(v35, v37);
      v42 = v27[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_30;
      }

      v46 = v41;
      if (v27[3] >= v45)
      {
        v48 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = v38;
          v57 = v40;
          sub_10012D99C();
          v40 = v57;
          v38 = v56;
        }
      }

      else
      {
        sub_100128C00(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_100297040(v35, v37);
        v48 = v77;
        if ((v46 & 1) != (v47 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v49 = v48[197];
      v50 = v48[195];
      v51 = v48[192];
      v52 = v48[185];
      if (v46)
      {
        v31 = v40;

        v27 = v78[0];
        (*(v67 + 40))(*(v78[0] + 56) + *(v67 + 72) * v31, v51, v52);
        (*v66)(v49, v50);
      }

      else
      {
        v27 = v78[0];
        *(v78[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v53 = (v27[6] + 16 * v40);
        *v53 = v35;
        v53[1] = v37;
        v38(v27[7] + *(v67 + 72) * v40, v51, v52);
        (*v66)(v49, v50);
        v54 = v27[2];
        v44 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v44)
        {
          goto LABEL_31;
        }

        v27[2] = v55;
      }

      ++v28;
      v0 = v77;
    }

    while (v71 != v28);
  }

  v0[214] = v27;
  if (sub_1003EE850())
  {
    v65(v0[203], v0[198]);

    v58 = v0 + 2;
    v59 = v0 + 227;
    v60 = v0 + 82;
    v61 = sub_1003ECB90;

    return _swift_asyncLet_finish(v58, v59, v61, v60);
  }

  v62 = objc_opt_self();
  v0[215] = v62;
  v58 = [v62 sharedManager];
  if (!v58)
  {
    __break(1u);
    return _swift_asyncLet_finish(v58, v59, v61, v60);
  }

  v63 = v58;
  v0[216] = [v58 contactStore];

  return _swift_asyncLet_get(v0 + 2, v0 + 227, sub_1003EA0B8, v0 + 122);
}

uint64_t sub_1003EA0B8()
{

  return _swift_task_switch(sub_1003EA144, 0, 0);
}

uint64_t sub_1003EA144()
{
  v1 = *(v0 + 1816);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "SearchFindMyFriendOperation: did fetch contacts: %{BOOL}d", v4, 8u);
  }

  v5 = *(v0 + 1712);

  v6 = *(v5 + 16);
  if (!v6)
  {

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "SearchFindMyFriendOperation: no handles were found from FindMy.", v43, 2u);
    }

    v44 = *(v0 + 1632);

    [v44 createAutocompletePersonContacts];
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "SearchFindMyFriendOperation: calling delegate method with no items", v47, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      v50 = *(v0 + 1632);
      swift_beginAccess();
      sub_100014C84(0, &qword_10191FF40);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v49 searchFindMyFriendOperation:v50 didMatchResults:isa];
      swift_unknownObjectRelease();
    }

    v52 = *(v0 + 1728);
    v53 = *(v0 + 1704);
    v54 = *(v0 + 1624);
    v55 = *(v0 + 1584);
    [*(v0 + 1632) markOperationAsComplete];

    v53(v54, v55);

    v38 = v0 + 16;
    v39 = v0 + 1816;
    v40 = v0 + 1104;
    goto LABEL_31;
  }

  v7 = *(v0 + 1712);
  v8 = *(v0 + 1488);
  v66 = *(v0 + 1448);
  v67 = *(v0 + 1464);
  sub_1005119D8(0, v6, 0);
  v9 = v7 + 64;
  v10 = _HashTable.startBucket.getter();
  v11 = 0;
  v12 = *(v7 + 36);
  v58 = v7 + 72;
  v59 = v6;
  v64 = (v8 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v65 = (v8 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60 = v12;
  v61 = v7 + 64;
  v62 = v7;
  v63 = v8;
  do
  {
    if ((v10 & 0x8000000000000000) != 0 || v10 >= 1 << *(v7 + 32))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_38;
    }

    if (v12 != *(v7 + 36))
    {
      goto LABEL_39;
    }

    v69 = 1 << v10;
    v70 = v10 >> 6;
    v68 = v11;
    v14 = *(v0 + 1472);
    v15 = *(v66 + 48);
    v71 = *(v0 + 1528);
    v16 = *(v0 + 1480);
    v17 = *(v0 + 1464);
    v18 = *(v7 + 56);
    v19 = (*(v7 + 48) + 16 * v10);
    v20 = *v19;
    v21 = v19[1];
    v22 = v8[9];
    *(v0 + 1736) = v22;
    v72 = v20;
    v74 = v22;
    v23 = v8[2];
    *(v0 + 1744) = v23;
    *(v0 + 1752) = v65;
    v75 = v10;
    v23(v14 + v15, v18 + v22 * v10, v16);
    *v17 = v72;
    *(v67 + 8) = v21;
    v24 = *(v66 + 48);
    v25 = v8[4];
    *(v0 + 1760) = v25;
    *(v0 + 1768) = v64;
    v73 = v25;
    v25(&v17[v24], v14 + v15, v16);
    v23(v71, &v17[v24], v16);

    sub_100024F64(v17, &qword_10191FF60);
    v27 = _swiftEmptyArrayStorage[2];
    v26 = _swiftEmptyArrayStorage[3];
    if (v27 >= v26 >> 1)
    {
      sub_1005119D8(v26 > 1, v27 + 1, 1);
    }

    *(v0 + 1776) = _swiftEmptyArrayStorage;
    v28 = *(v0 + 1528);
    v29 = *(v0 + 1480);
    _swiftEmptyArrayStorage[2] = v27 + 1;
    v8 = v63;
    v73(_swiftEmptyArrayStorage + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v27 * v74, v28, v29);
    v7 = v62;
    v13 = 1 << *(v62 + 32);
    if (v75 >= v13)
    {
      goto LABEL_40;
    }

    v9 = v61;
    v30 = *(v61 + 8 * v70);
    if ((v30 & v69) == 0)
    {
      goto LABEL_41;
    }

    v12 = v60;
    if (v60 != *(v62 + 36))
    {
      goto LABEL_42;
    }

    v31 = v30 & (-2 << (v75 & 0x3F));
    if (v31)
    {
      v13 = __clz(__rbit64(v31)) | v75 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v70 << 6;
      v33 = (v58 + 8 * v70);
      v34 = v70 + 1;
      while (v34 < (v13 + 63) >> 6)
      {
        v36 = *v33++;
        v35 = v36;
        v32 += 64;
        ++v34;
        if (v36)
        {
          sub_1003F2B70(v75, v60, 0);
          v13 = __clz(__rbit64(v35)) + v32;
          goto LABEL_6;
        }
      }

      sub_1003F2B70(v75, v60, 0);
    }

LABEL_6:
    v11 = v68 + 1;
    v10 = v13;
  }

  while (v68 + 1 != v59);
  if (sub_1003EE850())
  {
    v37 = *(v0 + 1728);
    (*(v0 + 1704))(*(v0 + 1624), *(v0 + 1584));

    v38 = v0 + 16;
    v39 = v0 + 1816;
    v40 = v0 + 784;
LABEL_31:

    return _swift_asyncLet_finish(v38, v39, sub_1003ECB90, v40);
  }

  *(v0 + 1784) = CFAbsoluteTimeGetCurrent();
  v56 = swift_task_alloc();
  *(v0 + 1792) = v56;
  *v56 = v0;
  v56[1] = sub_1003EA8A8;

  return Session.locations(for:reverseGeocode:)(_swiftEmptyArrayStorage, 0);
}

uint64_t sub_1003EA8A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1800) = a1;
  *(v3 + 1808) = v1;

  if (v1)
  {

    v4 = sub_1003ED1E8;
  }

  else
  {
    v4 = sub_1003EAA08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003EAA08()
{
  v303 = v0;
  Current = CFAbsoluteTimeGetCurrent();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1784);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = Current - v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "SearchFindMyFriendOperation: did fetch locations. Time Take: %f", v5, 0xCu);
  }

  if (sub_1003EE850())
  {
    v6 = *(v0 + 1728);
    (*(v0 + 1704))(*(v0 + 1624), *(v0 + 1584));

    v7 = sub_1003ECB90;
    v8 = v0 + 16;
    v9 = v0 + 1816;
    v10 = v0 + 848;
  }

  else
  {
    v297 = *(v0 + 1800);
    v285 = *(v0 + 1728);
    v11 = *(v0 + 1712);
    v12 = *(v0 + 1456);
    v293 = *(v0 + 1432);
    v294 = *(v0 + 1440);
    v13 = *(v0 + 1376);
    v14 = -1;
    v15 = -1 << *(v11 + 32);
    if (-v15 < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & *(v11 + 64);
    v286 = *(v0 + 1632);
    v268 = (v286 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery);
    v275 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_context;
    v284 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_singularResults;
    v278 = (63 - v15) >> 6;
    v295 = (v12 + 48);
    v296 = (v12 + 56);
    v273 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_autocompleteItems;
    v299 = (*(v0 + 1488) + 8);
    v276 = (v13 + 8);
    v277 = *(v0 + 1376);
    v289 = (v13 + 56);

    v17 = 0;
    while (2)
    {
      if (v16)
      {
        v22 = *(v0 + 1712);
        goto LABEL_20;
      }

      if (v278 <= v17 + 1)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = v278;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v25 >= v278)
        {
          (*v296)(*(v0 + 1432), 1, 1, *(v0 + 1448));
          v300 = 0;
          v17 = v24;
          goto LABEL_21;
        }

        v22 = *(v0 + 1712);
        v16 = *(v22 + 8 * v25 + 64);
        ++v17;
      }

      while (!v16);
      v17 = v25;
LABEL_20:
      v26 = *(v0 + 1760);
      v27 = *(v0 + 1520);
      v28 = *(v0 + 1480);
      v29 = *(v0 + 1448);
      v30 = *(v0 + 1432);
      v300 = (v16 - 1) & v16;
      v31 = __clz(__rbit64(v16)) | (v17 << 6);
      v32 = (*(v22 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      (*(v0 + 1744))(v27, *(v22 + 56) + *(v0 + 1736) * v31, v28);
      v35 = *(v29 + 48);
      *v30 = v34;
      *(v293 + 8) = v33;
      v26(&v30[v35], v27, v28);
      (*v296)(v30, 0, 1, v29);

LABEL_21:
      v36 = *(v0 + 1448);
      v37 = *(v0 + 1440);
      sub_1003F2AC0(*(v0 + 1432), v37);
      if ((*v295)(v37, 1, v36) != 1)
      {
        v38 = *(v0 + 1440);
        v39 = *v38;
        v40 = *(v294 + 8);
        (*(v0 + 1760))(*(v0 + 1512), v38 + *(*(v0 + 1448) + 48), *(v0 + 1480));
        v41 = Handle.contactIdentifier.getter();
        if (v42)
        {
          v43 = v42;
          if (v285)
          {
            v44 = v41;
            v45 = *(v0 + 1720);
            v46 = *(v0 + 1728);
            v47 = String._bridgeToObjectiveC()();
            v48 = [v45 sharedManager];
            if (v48)
            {
              v49 = v48;
              v50 = [v48 properties];

              if (v50)
              {
                v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1002B0394(v51);
              }

              v69 = *(v0 + 1728);
              sub_1000CE6B8(&unk_101918400);
              isa = Array._bridgeToObjectiveC()().super.isa;

              *(v0 + 1288) = 0;
              v71 = [v69 unifiedContactWithIdentifier:v47 keysToFetch:isa error:v0 + 1288];

              v72 = v71;
              v73 = *(v0 + 1288);
              v287 = v39;
              if (v72)
              {
                v74 = *(v286 + v275);
                v290 = v72;
                v75 = objc_allocWithZone(SearchAddressBookOperationMatch);
                v76 = v73;
                v77 = v75;
                v78 = v290;
                v292 = [v77 initWithContact:v290 context:v74];

                v79 = Logger.logObject.getter();
                v80 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v79, v80))
                {
                  v81 = swift_slowAlloc();
                  v302[0] = swift_slowAlloc();
                  *v81 = 136315394;
                  *(v81 + 4) = sub_10004DEB8(v39, v40, v302);
                  *(v81 + 12) = 2080;
                  v82 = sub_10004DEB8(v44, v43, v302);

                  *(v81 + 14) = v82;
                  _os_log_impl(&_mh_execute_header, v79, v80, "SearchFindMyFriendOperation: Handle:%s has a matching contact: %s", v81, 0x16u);
                  swift_arrayDestroy();
                  v78 = v290;
                }

                else
                {
                }

                v106 = type metadata accessor for MapsAutocompletePerson();
                v107 = objc_allocWithZone(v106);
                v108 = sub_10050AF34(0, 0, 0, 0);
                v109 = *(v286 + v284);
                v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_placeSummaryShowsStackedIconsAndLabels] = v109 ^ 1;
                if ((v109 & 1) == 0)
                {
                  v110 = [v292 autocompleteMatchInfo];
                  v111 = *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo];
                  *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo] = v110;
                }

                if (*(v286 + v284) == 1 && ([v78 mutableCopy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100014C84(0, &qword_10191FF68), (swift_dynamicCast() & 1) != 0))
                {
                  v112 = *(v0 + 1336);
                  sub_1000CE6B8(&unk_101918B20);
                  v113 = Array._bridgeToObjectiveC()().super.isa;
                  [v112 setPostalAddresses:v113];

                  v114 = *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact];
                  *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact] = v112;
                }

                else
                {
                  v114 = *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact];
                  *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact] = v78;
                  v115 = v78;
                }

                v281 = v106;
                v282 = v40;
                if (*(v297 + 16) && (v116 = sub_10029741C(*(v0 + 1512)), (v117 & 1) != 0))
                {
                  v118 = *(v0 + 1424);
                  v119 = *(v0 + 1416);
                  v120 = *(v0 + 1368);
                  v272 = *(v277 + 16);
                  v272(v119, *(v297 + 56) + *(v277 + 72) * v116, v120);
                  (*(v277 + 32))(v118, v119, v120);

                  v121 = Logger.logObject.getter();
                  v122 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v121, v122))
                  {
                    v123 = swift_slowAlloc();
                    v124 = swift_slowAlloc();
                    v302[0] = v124;
                    *v123 = 136315138;
                    *(v123 + 4) = sub_10004DEB8(v39, v40, v302);
                    _os_log_impl(&_mh_execute_header, v121, v122, "SearchFindMyFriendOperation: Handle:%s has a location", v123, 0xCu);
                    sub_10004E3D0(v124);
                  }

                  v125 = *(v0 + 1744);
                  v126 = *(v0 + 1520);
                  v127 = *(v0 + 1480);
                  v274 = *(v0 + 1424);
                  v128 = *(v0 + 1408);
                  v270 = *(v0 + 1368);
                  v125(v126, *(v0 + 1512), v127);
                  MyHandle = type metadata accessor for SearchFindMyHandle(0);
                  v130 = objc_allocWithZone(MyHandle);
                  UUID.init()();
                  v125(&v130[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v126, v127);
                  *(v0 + 1224) = v130;
                  *(v0 + 1232) = MyHandle;
                  v271 = objc_msgSendSuper2((v0 + 1224), "init");
                  v279 = *v299;
                  (*v299)(v126, v127);
                  v272(v128, v274, v270);
                  MyLocation = type metadata accessor for SearchFindMyLocation(0);
                  v132 = objc_allocWithZone(MyLocation);
                  UUID.init()();
                  v272(&v132[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v128, v270);
                  *(v0 + 1240) = v132;
                  *(v0 + 1248) = MyLocation;
                  v133 = objc_msgSendSuper2((v0 + 1240), "init");
                  v134 = *v276;
                  (*v276)(v128, v270);
                  MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
                  v136 = objc_allocWithZone(MyLocationHandle);
                  v137 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
                  *&v136[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
                  *&v136[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v271;
                  *&v136[v137] = v133;
                  *(v0 + 1256) = v136;
                  *(v0 + 1264) = MyLocationHandle;
                  v138 = objc_msgSendSuper2((v0 + 1256), "init");
                  v134(v274, v270);
                  v139 = v138;
                  v78 = v290;
                }

                else
                {

                  v140 = Logger.logObject.getter();
                  v141 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v140, v141))
                  {
                    v142 = swift_slowAlloc();
                    v143 = swift_slowAlloc();
                    v144 = v39;
                    v145 = v143;
                    v302[0] = v143;
                    *v142 = 136315138;
                    *(v142 + 4) = sub_10004DEB8(v144, v40, v302);
                    _os_log_impl(&_mh_execute_header, v140, v141, "SearchFindMyFriendOperation: Handle:%s does not have a location", v142, 0xCu);
                    sub_10004E3D0(v145);
                  }

                  v146 = *(v0 + 1744);
                  v147 = *(v0 + 1520);
                  v148 = *(v0 + 1480);
                  v146(v147, *(v0 + 1512), v148);
                  v149 = type metadata accessor for SearchFindMyHandle(0);
                  v150 = objc_allocWithZone(v149);
                  UUID.init()();
                  v146(&v150[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v147, v148);
                  *(v0 + 1272) = v150;
                  *(v0 + 1280) = v149;
                  v151 = objc_msgSendSuper2((v0 + 1272), "init");
                  v279 = *v299;
                  (*v299)(v147, v148);
                  v152 = type metadata accessor for MapsFindMyLocationHandle();
                  v153 = objc_allocWithZone(v152);
                  v154 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
                  *&v153[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
                  *&v153[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v151;
                  *&v153[v154] = 0;
                  *(v0 + 1208) = v153;
                  *(v0 + 1216) = v152;
                  v139 = objc_msgSendSuper2((v0 + 1208), "init");
                }

                v155 = *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle];
                *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle] = v139;

                v156 = *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo];
                *&v108[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo] = 0;

                v157 = v108;
                v158 = Logger.logObject.getter();
                v159 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v158, v159))
                {
                  v160 = swift_slowAlloc();
                  v161 = swift_slowAlloc();
                  v162 = swift_slowAlloc();
                  v302[0] = v162;
                  *v160 = 138412546;
                  *(v160 + 4) = v157;
                  *v161 = v157;
                  *(v160 + 12) = 2080;
                  v163 = v157;
                  *(v160 + 14) = sub_10004DEB8(v287, v282, v302);
                  _os_log_impl(&_mh_execute_header, v158, v159, "SearchFindMyFriendOperation: Successfully built a person:\n%@ for key:%s", v160, 0x16u);
                  sub_100024F64(v161, &qword_1019144F0);

                  sub_10004E3D0(v162);
                }

                *(v0 + 752) = v281;
                *(v0 + 728) = v157;
                v164 = v157;
                v165 = [v292 autocompleteMatchInfo];
                v166 = *(v0 + 752);
                if (v166)
                {
                  v167 = sub_10005E838((v0 + 728), *(v0 + 752));
                  v168 = *(v166 - 8);
                  v169 = swift_task_alloc();
                  (*(v168 + 16))(v169, v167, v166);
                  v170 = _bridgeAnythingToObjectiveC<A>(_:)();
                  (*(v168 + 8))(v169, v166);

                  sub_10004E3D0(v0 + 728);
                }

                else
                {
                  v170 = 0;
                }

                v177 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v170 sourceType:10 sourceSubtype:0 matchInfo:v165];

                swift_unknownObjectRelease();
                if (v177)
                {

                  v178 = v177;
                  v179 = Logger.logObject.getter();
                  v180 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v179, v180))
                  {
                    v181 = swift_slowAlloc();
                    v182 = swift_slowAlloc();
                    v183 = swift_slowAlloc();
                    v184 = v178;
                    v185 = v164;
                    v186 = v183;
                    v302[0] = v183;
                    *v181 = 138412546;
                    *(v181 + 4) = v184;
                    *v182 = v177;
                    *(v181 + 12) = 2080;
                    v187 = v184;
                    v188 = sub_10004DEB8(v287, v282, v302);

                    *(v181 + 14) = v188;
                    _os_log_impl(&_mh_execute_header, v179, v180, "SearchFindMyFriendOperation: \nAC item:%@ \nkey:%s", v181, 0x16u);
                    sub_100024F64(v182, &qword_1019144F0);

                    sub_10004E3D0(v186);
                    v164 = v185;

                    v78 = v290;
                  }

                  else
                  {
                  }

                  v16 = v300;
                  v205 = [v78 identifier];
                  v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v208 = v207;

                  swift_beginAccess();
                  v209 = sub_1003C4EA4(v206, v208);
                  v211 = v210;
                  swift_endAccess();
                  sub_1003F2B30(v209, v211);

                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*(v286 + v273) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v286 + v273) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  v212 = *(v0 + 1512);
                  v213 = *(v0 + 1480);
                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();

                  v279(v212, v213);
                }

                else
                {
                  v288 = v164;
                  v189 = *(v0 + 1744);
                  v190 = *(v0 + 1512);
                  v191 = *(v0 + 1504);
                  v192 = *(v0 + 1480);

                  v189(v191, v190, v192);
                  v193 = Logger.logObject.getter();
                  v194 = static os_log_type_t.error.getter();
                  v195 = os_log_type_enabled(v193, v194);
                  v196 = *(v0 + 1512);
                  v197 = *(v0 + 1504);
                  v198 = *(v0 + 1480);
                  if (v195)
                  {
                    v283 = *(v0 + 1512);
                    v199 = swift_slowAlloc();
                    v200 = swift_slowAlloc();
                    v302[0] = v200;
                    *v199 = 136315138;
                    v201 = Handle.identifier.getter();
                    v203 = v202;
                    v279(v197, v198);
                    v204 = sub_10004DEB8(v201, v203, v302);

                    *(v199 + 4) = v204;
                    _os_log_impl(&_mh_execute_header, v193, v194, "SearchFindMyFriendOperation: Unable to create AC item for handle:%s", v199, 0xCu);
                    sub_10004E3D0(v200);

                    v279(v283, v198);
                  }

                  else
                  {

                    v279(v197, v198);
                    v279(v196, v198);
                  }

                  v16 = v300;
                }
              }

              else
              {
                v83 = *(v0 + 1632);
                v84 = v73;

                v85 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v86 = v83;
                swift_errorRetain();
                v87 = Logger.logObject.getter();
                v88 = static os_log_type_t.error.getter();

                v269 = v85;
                if (os_log_type_enabled(v87, v88))
                {
                  v89 = swift_slowAlloc();
                  v90 = swift_slowAlloc();
                  v91 = swift_slowAlloc();
                  v302[0] = v91;
                  *v89 = 138412546;
                  swift_errorRetain();
                  v92 = _swift_stdlib_bridgeErrorToNSError();
                  *(v89 + 4) = v92;
                  *v90 = v92;
                  *(v89 + 12) = 2080;
                  v93 = *v268;
                  v94 = v268[1];

                  v95 = sub_10004DEB8(v93, v94, v302);

                  *(v89 + 14) = v95;
                  _os_log_impl(&_mh_execute_header, v87, v88, "SearchFindMyFriendOperation: encountered contact matching error: %@ for searchQuery:%s", v89, 0x16u);
                  sub_100024F64(v90, &qword_1019144F0);

                  sub_10004E3D0(v91);
                }

                (*(v0 + 1744))(*(v0 + 1496), *(v0 + 1512), *(v0 + 1480));
                v96 = Logger.logObject.getter();
                v97 = static os_log_type_t.info.getter();
                v98 = os_log_type_enabled(v96, v97);
                v99 = *(v0 + 1496);
                v100 = *(v0 + 1480);
                if (v98)
                {
                  v101 = swift_slowAlloc();
                  v102 = swift_slowAlloc();
                  v302[0] = v102;
                  *v101 = 136315138;
                  v280 = Handle.identifier.getter();
                  v104 = v103;
                  v291 = *v299;
                  (*v299)(v99, v100);
                  v105 = sub_10004DEB8(v280, v104, v302);

                  *(v101 + 4) = v105;
                  _os_log_impl(&_mh_execute_header, v96, v97, "SearchFindMyFriendOperation: Creating a regular find my handle:%s", v101, 0xCu);
                  sub_10004E3D0(v102);
                }

                else
                {

                  v291 = *v299;
                  (*v299)(v99, v100);
                }

                if (*(v297 + 16) && (v214 = sub_10029741C(*(v0 + 1512)), (v215 & 1) != 0))
                {
                  v216 = *(v0 + 1392);
                  v217 = *(v0 + 1384);
                  v218 = *(v0 + 1368);
                  v219 = *(v277 + 16);
                  v219(v217, *(v297 + 56) + *(v277 + 72) * v214, v218);
                  (*(v277 + 32))(v216, v217, v218);

                  v220 = Logger.logObject.getter();
                  v221 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v220, v221))
                  {
                    v222 = swift_slowAlloc();
                    v223 = swift_slowAlloc();
                    v302[0] = v223;
                    *v222 = 136315138;
                    v224 = sub_10004DEB8(v287, v40, v302);

                    *(v222 + 4) = v224;
                    _os_log_impl(&_mh_execute_header, v220, v221, "SearchFindMyFriendOperation: Handle:%s and has location.", v222, 0xCu);
                    sub_10004E3D0(v223);
                  }

                  else
                  {
                  }

                  v234 = *(v0 + 1632);
                  v235 = *(v0 + 1512);
                  v236 = *(v0 + 1480);
                  v237 = *(v0 + 1392);
                  v238 = *(v0 + 1368);
                  v239 = *(v0 + 1360);
                  v219(v239, v237, v238);
                  (*v289)(v239, 0, 1, v238);
                  sub_1003EDA5C(v235, v239, v234);

                  sub_100024F64(v239, &qword_1019162C0);
                  (*v276)(v237, v238);
                  v291(v235, v236);
                  v16 = v300;
                }

                else
                {

                  v225 = Logger.logObject.getter();
                  v226 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v225, v226))
                  {
                    v227 = swift_slowAlloc();
                    v228 = swift_slowAlloc();
                    v302[0] = v228;
                    *v227 = 136315138;
                    v229 = sub_10004DEB8(v287, v40, v302);

                    *(v227 + 4) = v229;
                    _os_log_impl(&_mh_execute_header, v225, v226, "SearchFindMyFriendOperation: Handle:%s and does not have location.", v227, 0xCu);
                    sub_10004E3D0(v228);
                  }

                  else
                  {
                  }

                  v16 = v300;
                  v230 = *(v0 + 1632);
                  v231 = *(v0 + 1512);
                  v232 = *(v0 + 1480);
                  v233 = *(v0 + 1360);
                  (*v289)(v233, 1, 1, *(v0 + 1368));
                  sub_1003EDA5C(v231, v233, v230);

                  sub_100024F64(v233, &qword_1019162C0);
                  v291(v231, v232);
                }
              }

              continue;
            }

LABEL_100:
            __break(1u);
          }
        }

        if (*(v297 + 16) && (v52 = sub_10029741C(*(v0 + 1512)), (v53 & 1) != 0))
        {
          v54 = *(v277 + 16);
          v54(*(v0 + 1400), *(v297 + 56) + *(v277 + 72) * v52, *(v0 + 1368));

          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v59 = v39;
            v60 = v58;
            v302[0] = v58;
            *v57 = 136315138;
            v61 = sub_10004DEB8(v59, v40, v302);

            *(v57 + 4) = v61;
            _os_log_impl(&_mh_execute_header, v55, v56, "SearchFindMyFriendOperation: No matching contact Handle:%s but has location.", v57, 0xCu);
            sub_10004E3D0(v60);
          }

          else
          {
          }

          v171 = *(v0 + 1632);
          v172 = *(v0 + 1512);
          v173 = *(v0 + 1480);
          v174 = *(v0 + 1400);
          v175 = *(v0 + 1368);
          v176 = *(v0 + 1360);
          v54(v176, v174, v175);
          (*v289)(v176, 0, 1, v175);
          sub_1003EDA5C(v172, v176, v171);
          sub_100024F64(v176, &qword_1019162C0);
          (*v276)(v174, v175);
          (*v299)(v172, v173);
          v16 = v300;
        }

        else
        {

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v66 = v39;
            v67 = v65;
            v302[0] = v65;
            *v64 = 136315138;
            v68 = sub_10004DEB8(v66, v40, v302);

            *(v64 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v62, v63, "SearchFindMyFriendOperation: No matching contact Handle:%s and does not have location.", v64, 0xCu);
            sub_10004E3D0(v67);
          }

          else
          {
          }

          v16 = v300;
          v18 = *(v0 + 1632);
          v19 = *(v0 + 1512);
          v20 = *(v0 + 1480);
          v21 = *(v0 + 1360);
          (*v289)(v21, 1, 1, *(v0 + 1368));
          sub_1003EDA5C(v19, v21, v18);
          sub_100024F64(v21, &qword_1019162C0);
          (*v299)(v19, v20);
        }

        continue;
      }

      break;
    }

    if (sub_1003EE850())
    {
      v240 = *(v0 + 1728);
      (*(v0 + 1704))(*(v0 + 1624), *(v0 + 1584));

      v7 = sub_1003ECC1C;
      v8 = v0 + 16;
      v9 = v0 + 1816;
      v10 = v0 + 1296;
    }

    else
    {
      [*(v0 + 1632) createAutocompletePersonContacts];
      if (sub_1003EE850())
      {
        v241 = *(v0 + 1728);
        (*(v0 + 1704))(*(v0 + 1624), *(v0 + 1584));

        v7 = sub_1003ECB90;
        v8 = v0 + 16;
        v9 = v0 + 1816;
        v10 = v0 + 1168;
      }

      else
      {
        v242 = *(v0 + 1632);
        (*(v0 + 1688))(*(v0 + 1600), *(v0 + 1624), *(v0 + 1584));
        v243 = v242;
        v244 = Logger.logObject.getter();
        v245 = static os_log_type_t.info.getter();

        v246 = os_log_type_enabled(v244, v245);
        v247 = *(v0 + 1704);
        if (v246)
        {
          v248 = *(v0 + 1608);
          v298 = *(v0 + 1600);
          v301 = *(v0 + 1584);
          v249 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          v302[0] = v250;
          *v249 = 136315394;
          swift_beginAccess();
          sub_100014C84(0, &qword_10191FF40);

          v251 = Array.description.getter();
          v253 = v252;

          v254 = sub_10004DEB8(v251, v253, v302);

          *(v249 + 4) = v254;
          *(v249 + 12) = 2048;
          Date.init()();
          Date.timeIntervalSince(_:)();
          v256 = v255;
          v247(v248, v301);
          v247(v298, v301);
          *(v249 + 14) = v256;
          _os_log_impl(&_mh_execute_header, v244, v245, "SearchFindMyFriendOperation: calling delegate method with items: %s \n Time taken: %f", v249, 0x16u);
          sub_10004E3D0(v250);
        }

        else
        {
          v257 = *(v0 + 1600);
          v258 = *(v0 + 1584);

          v247(v257, v258);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v260 = Strong;
          v261 = *(v0 + 1632);
          swift_beginAccess();
          sub_100014C84(0, &qword_10191FF40);

          v262 = Array._bridgeToObjectiveC()().super.isa;

          [v260 searchFindMyFriendOperation:v261 didMatchResults:v262];
          swift_unknownObjectRelease();
        }

        v263 = *(v0 + 1728);
        v264 = *(v0 + 1704);
        v265 = *(v0 + 1624);
        v266 = *(v0 + 1584);
        [*(v0 + 1632) markOperationAsComplete];

        v264(v265, v266);

        v7 = sub_1003ECB90;
        v8 = v0 + 16;
        v9 = v0 + 1816;
        v10 = v0 + 1104;
      }
    }
  }

  return _swift_asyncLet_finish(v8, v9, v7, v10);
}

uint64_t sub_1003ECB90()
{

  return _swift_task_switch(sub_1003F2D90, 0, 0);
}

uint64_t sub_1003ECC1C()
{

  return _swift_task_switch(sub_1003ECCA8, 0, 0);
}

uint64_t sub_1003ECCA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ECEA0()
{
  (*(v0[199] + 8))(v0[203], v0[198]);

  return _swift_asyncLet_finish(v0 + 2, v0 + 227, sub_1003ECF58, v0 + 114);
}

uint64_t sub_1003ECF58()
{

  return _swift_task_switch(sub_1003ECFE4, 0, 0);
}

uint64_t sub_1003ECFE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED1E8()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1584);

  v1(v2, v3);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1816, sub_1003ED2C4, v0 + 1040);
}

uint64_t sub_1003ED2C4()
{

  return _swift_task_switch(sub_1003ED350, 0, 0);
}

uint64_t sub_1003ED350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED554(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1003ED574, 0, 0);
}

uint64_t sub_1003ED574()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1003ED690;
  v2 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&unk_10191FF48);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003E8AD4;
  v0[13] = &unk_1016171B0;
  v0[14] = v2;
  [v1 contactsMatchingSearchQueryWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003ED690()
{

  return _swift_task_switch(sub_1003ED770, 0, 0);
}

id sub_1003ED794()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v26 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0;
    return (v14 & 1);
  }

  v8 = Strong;
  Friend.handle.getter();
  v9 = Handle.identifier.getter();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v6, v0);
  v26[3] = v9;
  v26[4] = v11;
  v13 = *&v8[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8];
  v26[1] = *&v8[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
  v26[2] = v13;
  sub_1000E5580();
  v14 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

  Friend.handle.getter();
  Handle.prettyName.getter();
  v16 = v15;
  v12(v3, v0);
  if (!v16)
  {
LABEL_9:

    return (v14 & 1);
  }

  result = [objc_allocWithZone(AutocompleteMatchInfo) initWithType:1];
  if (result)
  {
    v18 = result;
    v19 = objc_allocWithZone(AutocompleteStringMatcher);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithString:v20 requiredMatchLength:1 matchInfo:v18];

    v22 = String._bridgeToObjectiveC()();

    v23 = [v21 matchForAutocompleteSearchString:v22];

    if (v23)
    {
      [v23 fractionOfMatch];
      v25 = v24;

      if (v25 > 0.0)
      {
        v14 = 1;
      }

      return (v14 & 1);
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1003EDA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v76 = a1;
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = sub_1000CE6B8(&qword_1019162C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for Location();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
  v74 = sub_10050AF34(0, 0, 0, 0);
  sub_10027169C(a2, v12);
  v21 = (*(v14 + 48))(v12, 1, v13);
  v72 = v4;
  if (v21 == 1)
  {
    sub_100024F64(v12, &qword_1019162C0);
    v22 = v5;
    v23 = *(v5 + 16);
    v24 = v76;
    v23(v9, v76, v4);
    MyHandle = type metadata accessor for SearchFindMyHandle(0);
    v26 = objc_allocWithZone(MyHandle);
    UUID.init()();
    v23(&v26[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v9, v4);
    v82.receiver = v26;
    v82.super_class = MyHandle;
    v27 = objc_msgSendSuper2(&v82, "init");
    v71 = *(v22 + 8);
    v71(v9, v4);
    MyLocationHandle = type metadata accessor for MapsFindMyLocationHandle();
    v29 = objc_allocWithZone(MyLocationHandle);
    v30 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
    *&v29[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
    *&v29[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v27;
    *&v29[v30] = 0;
    v81.receiver = v29;
    v81.super_class = MyLocationHandle;
    v31 = objc_msgSendSuper2(&v81, "init");
    v32 = v24;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v33 = *(v5 + 16);
    v33(v9, v76, v4);
    v68 = v19;
    v34 = v33;
    v69 = v33;
    v35 = type metadata accessor for SearchFindMyHandle(0);
    v36 = objc_allocWithZone(v35);
    UUID.init()();
    v34(&v36[OBJC_IVAR____TtC4Maps18SearchFindMyHandle_handle], v9, v4);
    v79.receiver = v36;
    v79.super_class = v35;
    v70 = objc_msgSendSuper2(&v79, "init");
    v71 = *(v5 + 8);
    v71(v9, v4);
    v37 = *(v14 + 16);
    v38 = v68;
    v37(v16, v68, v13);
    MyLocation = type metadata accessor for SearchFindMyLocation(0);
    v40 = objc_allocWithZone(MyLocation);
    UUID.init()();
    v37(&v40[OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location], v16, v13);
    v78.receiver = v40;
    v78.super_class = MyLocation;
    v41 = objc_msgSendSuper2(&v78, "init");
    v42 = *(v14 + 8);
    v43 = v16;
    v23 = v69;
    v42(v43, v13);
    v44 = type metadata accessor for MapsFindMyLocationHandle();
    v45 = objc_allocWithZone(v44);
    v46 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
    *&v45[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location] = 0;
    *&v45[OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle] = v70;
    *&v45[v46] = v41;
    v77.receiver = v45;
    v77.super_class = v44;
    v31 = objc_msgSendSuper2(&v77, "init");
    v42(v38, v13);
    v32 = v76;
  }

  v47 = v74;
  v48 = *&v74[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle];
  *&v74[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle] = v31;

  v49 = *&v47[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo];
  *&v47[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo] = 0;

  v50 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v47 sourceType:10 sourceSubtype:0 matchInfo:0];
  v51 = v75;
  if (v50)
  {
    v52 = v50;
    v53 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_autocompleteItems;
    v54 = v73;
    swift_beginAccess();
    v55 = v52;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v54 + v53) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v54 + v53) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    if (qword_101906738 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100021540(v56, qword_101960048);
    v57 = v72;
    v23(v51, v32, v72);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v47;
      v62 = swift_slowAlloc();
      v80[0] = v62;
      *v60 = 136315138;
      v63 = Handle.identifier.getter();
      v65 = v64;
      v71(v51, v57);
      v66 = sub_10004DEB8(v63, v65, v80);

      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "SearchFindMyFriendOperation: Unable to create AC item for handle:%s", v60, 0xCu);
      sub_10004E3D0(v62);
    }

    else
    {

      v71(v51, v57);
    }
  }
}

id sub_1003EE244()
{
  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960048);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = *&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
    v9 = *&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8];
    v10 = v2;
    *(v5 + 14) = sub_10004DEB8(v8, v9, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "SearchFindMyFriendOperation: %@ was cancelled for searchQuery:%s.", v5, 0x16u);
    sub_100024F64(v6, &qword_1019144F0);

    sub_10004E3D0(v7);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "SearchFindMyFriendOperation: calling delegate method with no items", v13, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_100014C84(0, &qword_10191FF40);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v15 searchFindMyFriendOperation:v2 didMatchResults:isa];

    swift_unknownObjectRelease();
  }

  if (*&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_findFriendsTask])
  {

    Task.cancel()();
  }

  return [v2 markOperationAsComplete];
}

id sub_1003EE588()
{
  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960048);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = *&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
    v9 = *&v2[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8];
    v10 = v2;

    v11 = sub_10004DEB8(v8, v9, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "SearchFindMyFriendOperation: deallocating operation:%@ for query:%s", v5, 0x16u);
    sub_100024F64(v6, &qword_1019144F0);

    sub_10004E3D0(v7);
  }

  [v2 markOperationAsComplete];
  MyFriendOperation = type metadata accessor for SearchFindMyFriendOperation();
  v15.receiver = v2;
  v15.super_class = MyFriendOperation;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_1003EE850()
{
  if (([v0 isFinished] & 1) != 0 || (result = objc_msgSend(v0, "isCancelled"), result))
  {
    if (qword_101906738 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960048);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "SearchFindMyFriendOperation: %%@ is cancelled or finished: %@. Treating it as No-Op.", v6, 0xCu);
      sub_100024F64(v7, &qword_1019144F0);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_100014C84(0, &qword_10191FF40);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v10 searchFindMyFriendOperation:v3 didMatchResults:isa];

      swift_unknownObjectRelease();
    }

    [v3 markOperationAsComplete];
    return 1;
  }

  return result;
}

uint64_t sub_1003EEAB8()
{
  v1[49] = v0;
  v2 = type metadata accessor for Date();
  v1[50] = v2;
  v1[51] = *(v2 - 8);
  v1[52] = swift_task_alloc();

  return _swift_task_switch(sub_1003EEBA4, 0, 0);
}

uint64_t sub_1003EEBA4()
{
  v179 = v0;
  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 49);
  v2 = type metadata accessor for Logger();
  *(v0 + 53) = sub_100021540(v2, qword_101960048);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v174 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 49);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v178[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10004DEB8(*(v6 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery), *(v6 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8), v178);
    _os_log_impl(&_mh_execute_header, v4, v5, " [⌛] SearchFindMyFriendOperation: Starting to build contacts for searchQuery:%s", v7, 0xCu);
    sub_10004E3D0(v8);
  }

  v0[54] = CFAbsoluteTimeGetCurrent();
  v9 = swift_allocObject();
  *(v0 + 55) = v9;
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v10 = (v9 + 16);
  v11 = swift_allocObject();
  *(v0 + 56) = v11;
  *(v11 + 16) = sub_1000D1D68(_swiftEmptyArrayStorage);
  v12 = swift_allocObject();
  *(v0 + 57) = v12;
  *(v12 + 16) = sub_1000D1D68(_swiftEmptyArrayStorage);
  v13 = objc_opt_self();
  if (![v13 addressBookAllowed])
  {

    v43 = 0;
LABEL_88:

    v152 = *(v0 + 1);

    return v152(v43);
  }

  v14 = [v13 sharedManager];
  if (!v14)
  {
    __break(1u);
    goto LABEL_100;
  }

  v15 = v14;
  v176 = [v14 contactStore];
  *(v174 + 58) = v176;

  v14 = [v13 sharedManager];
  if (!v14)
  {
LABEL_100:
    __break(1u);
    return _swift_continuation_await(v14);
  }

  v16 = v14;
  v17 = [v14 properties];

  if (v17)
  {
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1002B0394(v18);
  }

  v19 = *(v174 + 49);
  v20 = objc_allocWithZone(CNContactFetchRequest);
  sub_1000CE6B8(&unk_101918400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithKeysToFetch:isa];
  *(v174 + 59) = v22;

  v23 = objc_opt_self();
  v24 = (v19 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery);
  v25 = v174;
  v26 = *v24;
  *(v174 + 60) = *v24;
  v27 = v24[1];
  *(v174 + 61) = v27;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v23 predicateForContactsMatchingName:v28];

  [v22 setPredicate:v29];
  [v22 setSortOrder:1];
  CFAbsoluteTimeGetCurrent();
  if (v176)
  {
    v30 = *(v174 + 49);
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v9;
    v31[4] = v11;
    v31[5] = v12;
    *(v174 + 22) = sub_1003F2788;
    *(v174 + 23) = v31;
    *(v174 + 18) = _NSConcreteStackBlock;
    *(v174 + 19) = 1107296256;
    *(v174 + 20) = sub_1003F14FC;
    *(v174 + 21) = &unk_101617098;
    v32 = _Block_copy(v174 + 18);
    v33 = v30;
    v34 = v176;

    v174[48] = 0.0;
    v35 = [v34 enumerateContactsAndMatchInfoWithFetchRequest:v22 error:v174 + 48 usingBlock:v32];
    _Block_release(v32);

    v25 = v174;
    v36 = *(v174 + 48);
    if (!v35)
    {
      v61 = v36;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v62 = *(v174 + 49);
      Current = CFAbsoluteTimeGetCurrent();
      v64 = v62;
      swift_errorRetain();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = *(v174 + 60);
        v68 = *(v174 + 61);
        v69 = *(v174 + 58);
        v170 = *(v174 + 59);
        v70 = v174[54];
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v178[0] = v73;
        *v71 = 138412802;
        swift_errorRetain();
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 4) = v74;
        *v72 = v74;
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_10004DEB8(v67, v68, v178);
        *(v71 + 22) = 2048;
        *(v71 + 24) = Current - v70;
        _os_log_impl(&_mh_execute_header, v65, v66, "[⌛]SearchFindMyFriendOperation: Error encountered while fetching contacts:%@ for query:%s\n Time taken: %f", v71, 0x20u);
        sub_100024F64(v72, &qword_1019144F0);

        sub_10004E3D0(v73);
      }

      else
      {
        v75 = *(v174 + 59);
      }

      v43 = 0;
      v0 = v174;
      goto LABEL_88;
    }

    v37 = v36;
  }

  if (sub_1003EE850())
  {
    v38 = *(v25 + 49);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v178[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10004DEB8(v26, v27, v178);
      _os_log_impl(&_mh_execute_header, v39, v40, " [⌛] SearchFindMyFriendOperation: Cancelled, Not building contacts for:%s", v41, 0xCu);
      sub_10004E3D0(v42);
    }

    v43 = 0;
    v0 = v174;
    goto LABEL_88;
  }

  if (GEOConfigGetBOOL())
  {
    swift_beginAccess();
    if (*v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_21;
      }
    }

    else if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_21:
      v44 = [objc_opt_self() currentContext];
      v45 = v44;
      *(v25 + 62) = v44;
      if (v44)
      {
        v47 = *(v25 + 51);
        v46 = *(v25 + 52);
        v48 = *(v25 + 50);
        v49 = v44;
        v50 = String._bridgeToObjectiveC()();
        [v49 setConsumerIdentifier:v50];

        v51 = v49;
        Date.init()();
        v52 = Date._bridgeToObjectiveC()().super.isa;
        (*(v47 + 8))(v46, v48);
        [v51 setDate:v52];

        v25 = v174;
      }

      v53 = [objc_opt_self() defaultSettings];
      v54 = v53;
      *(v25 + 63) = v53;
      if (v53)
      {
        [v53 setMaxNumberOfPeopleSuggested:100];
        [v54 setAggregateByIdentifier:1];
      }

      v55 = v25 + 2;
      v56 = v25 + 47;
      v57 = v25 + 10;
      v58 = v25;
      v59 = [objc_allocWithZone(_CDPeopleSuggester) init];
      *(v58 + 64) = v59;
      [v59 setContext:v45];
      [v59 setSettings:v54];
      v58[46] = 0.0;
      CFAbsoluteTimeGetCurrent();
      *(v58 + 2) = v58;
      *(v58 + 7) = v56;
      *(v58 + 3) = sub_1003F022C;
      v60 = swift_continuation_init();
      *(v58 + 17) = sub_1000CE6B8(&unk_10191FF20);
      *(v58 + 10) = _NSConcreteStackBlock;
      *(v58 + 11) = 1107296256;
      *(v58 + 12) = sub_1003F1590;
      *(v58 + 13) = &unk_101617048;
      *(v58 + 14) = v60;
      [v59 suggestPeopleWithCompletionHandler:v57];
      v14 = v55;

      return _swift_continuation_await(v14);
    }
  }

  v76 = *(v25 + 55);
  swift_beginAccess();
  v25[43] = *(v76 + 16);
  sub_1000CE6B8(&qword_10191FED8);
  sub_1000CE6B8(&qword_10191FEE0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1011E1D60;
  swift_getKeyPath();

  KeyPathComparator.init<A>(_:order:)();
  swift_getKeyPath();
  KeyPathComparator.init<A>(_:order:)();
  *(v25 + 44) = v77;
  sub_1000CE6B8(&qword_10191FEE8);
  sub_1000CE6B8(&qword_10191FEF0);
  sub_1000414C8(&qword_10191FEF8, &qword_10191FEE8);
  sub_1000414C8(&qword_10191FF00, &qword_10191FEF0);
  sub_1000414C8(&qword_10191FF08, &qword_10191FEE0);
  v78 = Sequence.sorted<A, B>(using:)();

  *(v76 + 16) = v78;

  if (v78 >> 62)
  {
    goto LABEL_97;
  }

  v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:
  v80 = v174;
  v81 = *(v174 + 49);
  v158 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_context;
  v169 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsDict;
  v159 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsArray;

  if (!v79)
  {
    v140 = v81;
LABEL_84:

    v141 = CFAbsoluteTimeGetCurrent();
    v142 = v140;
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v143, v144))
    {
      v165 = *(v80 + 60);
      v166 = *(v80 + 61);
      v172 = *(v80 + 59);
      v168 = *(v80 + 58);
      v145 = v80[54];
      v146 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v146 = 134218498;
      *(v146 + 4) = v141 - v145;
      *(v146 + 12) = 2080;
      swift_beginAccess();

      sub_1000CE6B8(&qword_10191AF28);
      v147 = Dictionary.description.getter();
      v149 = v148;

      v150 = sub_10004DEB8(v147, v149, v178);
      v0 = v174;

      *(v146 + 14) = v150;
      *(v146 + 22) = 2080;
      *(v146 + 24) = sub_10004DEB8(v165, v166, v178);
      _os_log_impl(&_mh_execute_header, v143, v144, "[⌛(%f)]SearchFindMyFriendOperation: Finished fetching \n contacts:%s\n searchQuery:%s", v146, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v151 = *(v80 + 59);

      v0 = v174;
    }

    v43 = 1;
    goto LABEL_88;
  }

  v162 = v81;
  v83 = 0;
  v155 = v82 & 0xFFFFFFFFFFFFFF8;
  v156 = v82 & 0xC000000000000001;
  v154 = v82 + 32;
  v84 = &selRef_signDetails;
  v85 = &selRef_isReloadingRefinementsWithSearchSession_;
  v153 = v79;
  while (1)
  {
    if (v156)
    {
      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v83 >= *(v155 + 16))
      {
        goto LABEL_96;
      }

      v86 = *(v154 + 8 * v83);
    }

    v173 = v86;
    v87 = __OFADD__(v83, 1);
    v88 = v83 + 1;
    if (v87)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      v79 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_35;
    }

    v89 = [v86 contact];
    v90 = [v89 postalAddresses];
    sub_1000CE6B8(&unk_101918B20);
    v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v157 = v88;
    v92 = v91 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v92)
    {
      break;
    }

LABEL_37:
    swift_bridgeObjectRelease_n();

    v83 = v157;
    if (v157 == v153)
    {
      v140 = *(v80 + 49);
      goto LABEL_84;
    }
  }

  v93 = 0;
  v94 = v91 & 0xC000000000000001;
  v171 = v91 & 0xFFFFFFFFFFFFFF8;
  v163 = v89;
  v164 = v91;
  v160 = v91 & 0xC000000000000001;
  v161 = v92;
  while (1)
  {
    if (v94)
    {
      v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v96 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (v93 >= *(v171 + 16))
      {
        goto LABEL_92;
      }

      v95 = *(v91 + 8 * v93 + 32);
      v96 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    v175 = v96;
    v177 = v95;
    v97 = [objc_opt_self() v84[55]];
    if (!v97)
    {
      __break(1u);
    }

    v98 = v97;
    if ([v97 v85[186]])
    {
      break;
    }

LABEL_47:
    ++v93;
    if (v175 == v92)
    {
      goto LABEL_37;
    }
  }

  v167 = v98;
  v99 = [v173 autocompleteMatchInfo];
  if (v99)
  {
    v100 = v99;
    v101 = *&v162[v158];
    v102 = Array._bridgeToObjectiveC()().super.isa;
    [v101 setMatchInfo:v100 forObject:v102];
  }

  v103 = [v89 identifier];
  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v105;

  v107 = v89;
  v108 = [v173 autocompleteMatchInfo];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178[0] = *&v162[v169];
  v110 = v178[0];
  *&v162[v169] = 0x8000000000000000;
  v112 = sub_100297040(v104, v106);
  v113 = v110[2];
  v114 = (v111 & 1) == 0;
  v115 = v113 + v114;
  if (__OFADD__(v113, v114))
  {
    goto LABEL_93;
  }

  v116 = v111;
  if (v110[3] >= v115)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v111 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      sub_10012D818();
      v110 = v178[0];
      if ((v116 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_62;
  }

  sub_100128938(v115, isUniquelyReferenced_nonNull_native);
  v110 = v178[0];
  v117 = sub_100297040(v104, v106);
  if ((v116 & 1) == (v118 & 1))
  {
    v112 = v117;
    if ((v116 & 1) == 0)
    {
LABEL_67:
      v110[(v112 >> 6) + 8] |= 1 << v112;
      v122 = (v110[6] + 16 * v112);
      *v122 = v104;
      v122[1] = v106;
      v123 = (v110[7] + 16 * v112);
      *v123 = v107;
      v123[1] = v108;
      v124 = v110[2];
      v87 = __OFADD__(v124, 1);
      v125 = v124 + 1;
      if (v87)
      {
        goto LABEL_94;
      }

      v110[2] = v125;
      goto LABEL_69;
    }

LABEL_62:
    v119 = v110[7] + 16 * v112;
    v120 = *v119;
    v121 = *(v119 + 8);
    *v119 = v107;
    *(v119 + 8) = v108;

LABEL_69:
    *&v162[v169] = v110;
    v80 = v174;
    swift_endAccess();
    v126 = [objc_allocWithZone(CNMutableContact) initWithContact:v107];
    sub_1000CE6B8(&qword_101908400);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_1011E47B0;
    *(v127 + 32) = v177;
    v128 = v177;
    v129 = Array._bridgeToObjectiveC()().super.isa;

    [v126 setPostalAddresses:v129];

    [v126 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100014C84(0, &unk_10191FF10);
    v89 = v163;
    if (swift_dynamicCast())
    {
      v130 = *(v174 + 45);
      v131 = [v173 autocompleteMatchInfo];
      swift_beginAccess();
      v132 = *&v162[v159];
      v133 = swift_isUniquelyReferenced_nonNull_native();
      *&v162[v159] = v132;
      if ((v133 & 1) == 0)
      {
        v137 = v132[2];

        v138 = sub_100358344(0, v137 + 1, 1, v132);
        *&v162[v159] = v138;

        v132 = v138;
      }

      v135 = v132[2];
      v134 = v132[3];
      if (v135 >= v134 >> 1)
      {
        v132 = sub_100358344((v134 > 1), v135 + 1, 1, v132);
      }

      v132[2] = v135 + 1;
      v136 = &v132[2 * v135];
      v136[4] = v130;
      v136[5] = v131;
      *&v162[v159] = v132;
      v80 = v174;
      swift_endAccess();

      v84 = &selRef_signDetails;
      v85 = &selRef_isReloadingRefinementsWithSearchSession_;
      v89 = v163;
    }

    else
    {

      v84 = &selRef_signDetails;
      v85 = &selRef_isReloadingRefinementsWithSearchSession_;
    }

    v91 = v164;
    v94 = v160;
    v92 = v161;
    goto LABEL_47;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1003F022C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 520) = v1;
  if (v1)
  {
    v2 = sub_1003F0F5C;
  }

  else
  {
    v2 = sub_1003F0368;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003F0368()
{
  v108 = v0;
  if (*(v0 + 376))
  {
    sub_1003E7728(*(v0 + 376), (*(v0 + 456) + 16), (*(v0 + 448) + 16), (v0 + 368));
    v84 = 0;
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  v3 = *(v0 + 440);
  swift_beginAccess();
  *(v0 + 344) = *(v3 + 16);
  sub_1000CE6B8(&qword_10191FED8);
  sub_1000CE6B8(&qword_10191FEE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D60;
  swift_getKeyPath();

  KeyPathComparator.init<A>(_:order:)();
  swift_getKeyPath();
  KeyPathComparator.init<A>(_:order:)();
  *(v0 + 352) = v4;
  sub_1000CE6B8(&qword_10191FEE8);
  sub_1000CE6B8(&qword_10191FEF0);
  sub_1000414C8(&qword_10191FEF8, &qword_10191FEE8);
  sub_1000414C8(&qword_10191FF00, &qword_10191FEF0);
  sub_1000414C8(&qword_10191FF08, &qword_10191FEE0);
  v96 = v0;
  v5 = Sequence.sorted<A, B>(using:)();

  *(v3 + 16) = v5;

  if (v5 >> 62)
  {
    goto LABEL_65;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v7 = v96;
  v8 = *(v96 + 392);
  v90 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_context;
  v101 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsDict;
  v91 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsArray;

  v95 = v8;
  if (!v6)
  {
    v69 = v8;
LABEL_53:

    Current = CFAbsoluteTimeGetCurrent();
    v71 = v69;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v7 + 480);
      v98 = *(v7 + 488);
      v103 = *(v7 + 472);
      v100 = *(v7 + 464);
      v75 = *(v7 + 432);
      v76 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v76 = 134218498;
      *(v76 + 4) = Current - v75;
      v77 = v7;
      *(v76 + 12) = 2080;
      swift_beginAccess();

      sub_1000CE6B8(&qword_10191AF28);
      v78 = Dictionary.description.getter();
      v80 = v79;

      v81 = sub_10004DEB8(v78, v80, v107);

      *(v76 + 14) = v81;
      *(v76 + 22) = 2080;
      *(v76 + 24) = sub_10004DEB8(v74, v98, v107);
      _os_log_impl(&_mh_execute_header, v72, v73, "[⌛(%f)]SearchFindMyFriendOperation: Finished fetching \n contacts:%s\n searchQuery:%s", v76, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v77 = v7;
      v82 = *(v7 + 472);
    }

    v83 = *(v77 + 8);

    return v83(1);
  }

  v10 = 0;
  v87 = v9 & 0xFFFFFFFFFFFFFF8;
  v88 = v9 & 0xC000000000000001;
  v86 = v9 + 32;
  v11 = &selRef_signDetails;
  v12 = &selRef_isReloadingRefinementsWithSearchSession_;
  v85 = v6;
  while (1)
  {
    if (v88)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v87 + 16))
      {
        goto LABEL_64;
      }

      v13 = *(v86 + 8 * v10);
    }

    v104 = v13;
    v14 = __OFADD__(v10, 1);
    v15 = v10 + 1;
    if (v14)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_5;
    }

    v16 = [v13 contact];
    v17 = [v16 postalAddresses];
    sub_1000CE6B8(&unk_101918B20);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v18;
    v20 = v18 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v89 = v15;

    if (v20)
    {
      break;
    }

LABEL_7:
    swift_bridgeObjectRelease_n();

    v10 = v89;
    if (v89 == v85)
    {
      v69 = *(v7 + 392);
      goto LABEL_53;
    }
  }

  v21 = v20;
  v22 = 0;
  v23 = v19 & 0xC000000000000001;
  v102 = v19 & 0xFFFFFFFFFFFFFF8;
  v93 = v21;
  v94 = v16;
  v97 = v19;
  v92 = v19 & 0xC000000000000001;
  while (1)
  {
    if (v23)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v22 >= *(v102 + 16))
      {
        goto LABEL_60;
      }

      v24 = *(v19 + 8 * v22 + 32);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    v105 = v24;
    v106 = v25;
    v26 = [objc_opt_self() v11[55]];
    if (!v26)
    {
      __break(1u);
    }

    v27 = v26;
    if ([v26 v12[186]])
    {
      break;
    }

LABEL_17:
    ++v22;
    if (v106 == v21)
    {
      goto LABEL_7;
    }
  }

  v99 = v27;
  v28 = [v104 autocompleteMatchInfo];
  if (v28)
  {
    v29 = v28;
    v30 = *&v95[v90];
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v30 setMatchInfo:v29 forObject:isa];
  }

  v32 = [v16 identifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = v16;
  v37 = [v104 autocompleteMatchInfo];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107[0] = *&v95[v101];
  v39 = v107[0];
  *&v95[v101] = 0x8000000000000000;
  v41 = sub_100297040(v33, v35);
  v42 = v39[2];
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    goto LABEL_61;
  }

  v45 = v40;
  if (v39[3] >= v44)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v40 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_10012D818();
      v39 = v107[0];
      if ((v45 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_32;
  }

  sub_100128938(v44, isUniquelyReferenced_nonNull_native);
  v39 = v107[0];
  v46 = sub_100297040(v33, v35);
  if ((v45 & 1) == (v47 & 1))
  {
    v41 = v46;
    if ((v45 & 1) == 0)
    {
LABEL_37:
      v39[(v41 >> 6) + 8] |= 1 << v41;
      v51 = (v39[6] + 16 * v41);
      *v51 = v33;
      v51[1] = v35;
      v52 = (v39[7] + 16 * v41);
      *v52 = v36;
      v52[1] = v37;
      v53 = v39[2];
      v14 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v14)
      {
        goto LABEL_62;
      }

      v39[2] = v54;
      goto LABEL_39;
    }

LABEL_32:
    v48 = v39[7] + 16 * v41;
    v49 = *v48;
    v50 = *(v48 + 8);
    *v48 = v36;
    *(v48 + 8) = v37;

LABEL_39:
    *&v95[v101] = v39;
    v7 = v96;
    swift_endAccess();
    v55 = [objc_allocWithZone(CNMutableContact) initWithContact:v36];
    sub_1000CE6B8(&qword_101908400);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1011E47B0;
    *(v56 + 32) = v105;
    v57 = v105;
    v58 = Array._bridgeToObjectiveC()().super.isa;

    [v55 setPostalAddresses:v58];

    [v55 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100014C84(0, &unk_10191FF10);
    if (swift_dynamicCast())
    {
      v59 = *(v96 + 360);
      v60 = [v104 autocompleteMatchInfo];
      swift_beginAccess();
      v61 = *&v95[v91];
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v95[v91] = v61;
      if ((v62 & 1) == 0)
      {
        v66 = v61[2];

        v67 = sub_100358344(0, v66 + 1, 1, v61);
        *&v95[v91] = v67;

        v61 = v67;
      }

      v64 = v61[2];
      v63 = v61[3];
      if (v64 >= v63 >> 1)
      {
        v61 = sub_100358344((v63 > 1), v64 + 1, 1, v61);
      }

      v61[2] = v64 + 1;
      v65 = &v61[2 * v64];
      v65[4] = v59;
      v65[5] = v60;
      v7 = v96;
      *&v95[v91] = v61;
      swift_endAccess();
    }

    v11 = &selRef_signDetails;
    v12 = &selRef_isReloadingRefinementsWithSearchSession_;
    v21 = v93;
    v16 = v94;
    v19 = v97;
    v23 = v92;
    goto LABEL_17;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1003F0F5C()
{
  v22 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);
  swift_willThrow();

  v4 = *(v0 + 392);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v11 = *(v0 + 464);
    v20 = *(v0 + 472);
    v12 = *(v0 + 432);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 138412802;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10004DEB8(v10, v9, &v21);
    *(v13 + 22) = 2048;
    *(v13 + 24) = Current - v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "[⌛]SearchFindMyFriendOperation: Error encountered while fetching contacts:%@ for query:%s\n Time taken: %f", v13, 0x20u);
    sub_100024F64(v14, &qword_1019144F0);

    sub_10004E3D0(v15);
  }

  else
  {
    v17 = *(v0 + 472);
  }

  v18 = *(v0 + 8);

  return v18(0);
}

void sub_1003F11FC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_1003EE850())
  {
    *a3 = 1;
  }

  v28 = [objc_allocWithZone(SearchAddressBookOperationMatch) initWithContact:a1 context:*(a4 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_context)];
  if ([v28 isGoodMatch])
  {
    swift_beginAccess();
    v13 = v28;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v14 = [v13 contact];
    v15 = [v14 identifier];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    swift_beginAccess();
    v19 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_10012B4D4(v19, v16, v18, isUniquelyReferenced_nonNull_native);

    *(a6 + 16) = v29;
    swift_endAccess();
    v21 = [v19 contact];
    v22 = [v21 iOSLegacyIdentifier];

    if (v22 < 1)
    {
    }

    else
    {
      sub_1000CE6B8(&unk_10190D5C0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1011E1D30;
      *(v23 + 56) = &type metadata for Int32;
      *(v23 + 64) = &protocol witness table for Int32;
      *(v23 + 32) = v22;
      v24 = String.init(format:_:)();
      v26 = v25;
      swift_beginAccess();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_10012B4D4(v19, v24, v26, v27);

      *(a7 + 16) = v30;
      swift_endAccess();
    }
  }

  else
  {
  }
}

void sub_1003F14FC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

uint64_t sub_1003F1590(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_100014C84(0, &unk_10191FF30);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1003F168C(id *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = *a1;
  v8 = [*a1 contact];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 personId];
    if (v10)
    {
      v32 = a4;
      v11 = v10;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if ([v9 personIdType] == 1)
      {
        swift_beginAccess();
        v14 = *a2;
        if (*(*a2 + 16) && (v15 = sub_100297040(v33, v13), (v16 & 1) != 0))
        {
          v17 = *(*(v14 + 56) + 8 * v15);
          v18 = v17;
        }

        else
        {
          v17 = 0;
        }

        swift_endAccess();
      }

      else
      {
        v17 = 0;
      }

      if ([v9 personIdType] == 3)
      {
        swift_beginAccess();
        v19 = *a3;
        if (*(*a3 + 16) && (v20 = sub_100297040(v33, v13), (v21 & 1) != 0))
        {
          v22 = *(*(v19 + 56) + 8 * v20);
          swift_endAccess();
          v23 = v22;
        }

        else
        {
          swift_endAccess();

          swift_beginAccess();
          v24 = *a2;
          if (!*(*a2 + 16) || (v25 = sub_100297040(v33, v13), (v26 & 1) == 0))
          {
            swift_endAccess();

            return;
          }

          v27 = *(*(v24 + 56) + 8 * v25);
          swift_endAccess();
          v23 = v27;
        }

        goto LABEL_19;
      }

      if (v17)
      {
        v23 = v17;
LABEL_19:
        if (*v32 == -1)
        {
          __break(1u);
          return;
        }

        ++*v32;
        [v23 peopleSuggesterRank];
        if (v28 == 0.0)
        {
          [v7 rank];
        }

        else
        {
          [v23 peopleSuggesterRank];
          v31 = v30;
          [v7 rank];
          if (v29 >= v31)
          {
            v29 = v31;
          }
        }

        [v23 setPeopleSuggesterRank:v29];
      }
    }
  }
}

uint64_t sub_1003F1AA4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1003F1B4C;

  return sub_1003EEAB8();
}

uint64_t sub_1003F1B4C(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

void sub_1003F1C94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsDict;
  swift_beginAccess();
  if (*(*&v2[v0] + 16) || (v3 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsArray, swift_beginAccess(), *(*(v0 + v3) + 16)))
  {
    if (qword_101906738 != -1)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v4 = type metadata accessor for Logger();
      sub_100021540(v4, qword_101960048);
      v5 = v1;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v56[0] = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_10004DEB8(*&v5[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery], *&v5[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8], v56);
        _os_log_impl(&_mh_execute_header, v6, v7, "SearchFindMyFriendOperation: Creating person objects for query: %s", v8, 0xCu);
        sub_10004E3D0(v9);
      }

      if (v5[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_singularResults] == 1)
      {
        v10 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsArray;
        swift_beginAccess();
        v1 = *&v5[v10];
        v11 = *(v1 + 16);
        v12 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_autocompleteItems;

        v54 = v11;
        if (!v11)
        {
LABEL_29:

          return;
        }

        v13 = 0;
        v14 = (v1 + 40);
        while (v13 < *(v1 + 16))
        {
          v17 = *(v14 - 1);
          v2 = *v14;
          v18 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
          v19 = v2;
          v20 = v17;
          v16 = sub_10050AF34(0, 0, 0, 0);
          v21 = *&v16[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact];
          *&v16[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact] = v20;
          v15 = v20;

          v22 = *&v16[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo];
          *&v16[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo] = v2;

          v23 = objc_allocWithZone(AutocompleteItem);
          v24 = v19;
          v25 = [v23 initWithLocalCompletion:v16 sourceType:4 sourceSubtype:0 matchInfo:v24];
          if (v25)
          {
            v26 = v25;
            swift_beginAccess();
            v2 = v26;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v5[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            v15 = v16;
            v16 = v2;
          }

          ++v13;

          v14 += 2;
          if (v54 == v13)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v27 = *&v2[v1];
        v28 = v27 + 64;
        v29 = 1 << *(v27 + 32);
        v30 = -1;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        v1 = v30 & *(v27 + 64);
        v53 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_autocompleteItems;
        v31 = (v29 + 63) >> 6;
        v55 = v27;
        swift_bridgeObjectRetain_n();
        v32 = 0;
        while (v1)
        {
LABEL_25:
          v34 = *(v55 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v1))));
          v35 = *v34;
          v36 = *(v34 + 8);
          v37 = objc_allocWithZone(type metadata accessor for MapsAutocompletePerson());
          v38 = v36;

          v39 = v35;
          v40 = sub_10050AF34(0, 0, 0, 0);
          v41 = *&v40[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact];
          *&v40[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact] = v39;
          v42 = v39;

          v43 = *&v40[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo];
          *&v40[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo] = v36;
          v2 = v38;

          v44 = [objc_allocWithZone(AutocompleteItem) initWithLocalCompletion:v40 sourceType:4 sourceSubtype:0 matchInfo:v2];
          if (v44)
          {
            v45 = v44;
            swift_beginAccess();
            v46 = v45;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v5[v53] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v53] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            v40 = v46;
          }

          else
          {
          }

          v1 &= v1 - 1;
        }

        while (1)
        {
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v33 >= v31)
          {

            return;
          }

          v1 = *(v28 + 8 * v33);
          ++v32;
          if (v1)
          {
            v32 = v33;
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_38:
      swift_once();
    }
  }

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100021540(v47, qword_101960048);
  v48 = v0;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_10004DEB8(*&v48[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery], *&v48[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8], v56);
    _os_log_impl(&_mh_execute_header, v49, v50, "SearchFindMyFriendOperation: did not find any handles or matching contacts for query: %s", v51, 0xCu);
    sub_10004E3D0(v52);
  }
}

void sub_1003F23D4(char a1, char a2)
{
  v5 = String._bridgeToObjectiveC()();
  [v2 willChangeValueForKey:v5];

  v6 = String._bridgeToObjectiveC()();
  [v2 willChangeValueForKey:v6];

  *(v2 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isFinishedOperation) = a1;
  *(v2 + OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isExecutingOperation) = a2;
  v7 = String._bridgeToObjectiveC()();
  [v2 didChangeValueForKey:v7];

  v8 = String._bridgeToObjectiveC()();
  [v2 didChangeValueForKey:v8];

  if (qword_101906738 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_101960048);
  v10 = v2;
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v10;
    *v13 = v10;
    *(v12 + 12) = 2080;
    v15 = *&v10[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
    v16 = *&v10[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery + 8];
    v17 = v10;
    *(v12 + 14) = sub_10004DEB8(v15, v16, &v19);
    _os_log_impl(&_mh_execute_header, oslog, v11, "SearchFindMyFriendOperation: marking operation:%@ as complete for query:%s", v12, 0x16u);
    sub_100024F64(v13, &qword_1019144F0);

    sub_10004E3D0(v14);
  }
}

uint64_t sub_1003F26C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_1003F1AA4(v2, v3);
}

uint64_t sub_1003F2794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003F27AC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1003E8B30(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_1003F2874(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1003E8308(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003F296C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003AC40;

  return sub_1003E9024(a1, v5, v4);
}

uint64_t sub_1003F2A18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC4C;

  return sub_1003ED554(a1, v4);
}

uint64_t sub_1003F2AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191FF58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003F2B30(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1003F2B70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1003F2B7C(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, void *a6)
{
  v7 = v6;
  v25 = a4;
  v26 = a5;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_findFriendsTask] = 0;
  v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isExecutingOperation] = 0;
  v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isFinishedOperation] = 0;
  *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_autocompleteItems] = _swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsDict;
  *&v7[v16] = sub_1000D1A64(_swiftEmptyArrayStorage);
  *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_matchedContactsArray] = _swiftEmptyArrayStorage;
  v17 = &v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchQuery];
  *v17 = a1;
  v17[1] = a2;
  *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_context] = a3;
  v18 = v26;
  v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_isOffline] = v25;
  v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_singularResults] = v18;
  *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchFindMySession] = a6;
  v28 = a1;
  v29 = a2;
  v19 = a6;

  v20 = a3;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000E5580();
  v21 = StringProtocol.components(separatedBy:)();
  (*(v13 + 8))(v15, v12);

  *&v7[OBJC_IVAR____TtC4Maps27SearchFindMyFriendOperation_searchTerms] = v21;
  MyFriendOperation = type metadata accessor for SearchFindMyFriendOperation();
  v27.receiver = v7;
  v27.super_class = MyFriendOperation;
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_1003F2D90()
{

  return sub_1003ECCA8();
}

uint64_t sub_1003F2E04()
{
  v1 = v0;
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  swift_getKeyPath();
  v15 = v0;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  (*(v3 + 104))(v5, enum case for EditMode.active(_:), v2);
  LOBYTE(v9) = static EditMode.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) != 0 && (swift_getKeyPath(), v14[2] = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v11 = v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state, swift_beginAccess(), (*(v11 + 65) & 1) == 0))
  {
    swift_getKeyPath();
    v14[1] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v11 + 66) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1003F3094@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  return sub_1000EF8AC(v5 + v3, a1);
}

void sub_1003F315C()
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler];
  v3 = v1;
  sub_100396914(v2);
  swift_getKeyPath();
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v3[OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver];
  if (v4)
  {
    v5 = v4;
    [v5 resolveCollectionIncludingCollectionDetails:1];
  }
}

void sub_1003F32B8(uint64_t a1)
{
  v2 = sub_1003F7C68(a1);
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      swift_getKeyPath();
      sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v3 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession);
      if (v3)
      {
        v4 = v3;
        v5 = [v4 selectedObjectSet];
        sub_100014C84(0, &unk_101918390);
        sub_100059514(&qword_10190D338, &unk_101918390);
        static Set._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      goto LABEL_9;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_9:
}

uint64_t sub_1003F380C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  v4 = type metadata accessor for EditMode();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

void sub_1003F3904(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1003F7C68(a1);
  if (v7 >> 62)
  {
    v16 = v7;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v16;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v8 = v7;
    swift_getKeyPath();
    v18[1] = v2;
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v2 + 16);
    v10 = sub_1003F90BC(v8);

    v11 = sub_100455220(v10);

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v9;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = v11;
    sub_10020AAE4(0, 0, v6, &unk_1011F3B80, v15);

    return;
  }
}

uint64_t sub_1003F3B54(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1003F2E04() & 1) == 0 || (swift_getKeyPath(), v23 = v1, sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), result = , *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession)))
  {
    v9 = &unk_10191F000;
    if (a1)
    {
      v22 = v4;
      swift_getKeyPath();
      v23 = v1;
      sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle);
      v10 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle + 8);
      swift_getKeyPath();
      v23 = v1;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
      swift_beginAccess();
      if (v11 == *(v12 + 40) && v10 == *(v12 + 48))
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          swift_getKeyPath();
          v24 = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          v24 = v2;

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v14 = *(v2 + 24);
          v15 = String._bridgeToObjectiveC()();

          [v14 updateTitle:v15];
        }
      }

      swift_getKeyPath();
      v24 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage;
      if (*(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage))
      {
        swift_getKeyPath();
        v24 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v17 = *(v2 + v16);
        if (v17)
        {
          swift_getKeyPath();
          v24 = v2;
          v18 = v17;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          [*(v2 + 24) updateImage:v18];
          if (*(v2 + v16))
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            *(&v22 - 2) = v2;
            *(&v22 - 1) = 0;
            v24 = v2;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
          }
        }
      }

      v9 = &unk_10191F000;
      v4 = v22;
    }

    (*(v5 + 104))(v7, enum case for EditMode.inactive(_:), v4);
    result = sub_1003F459C(v7);
    if (*(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession))
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      *(&v22 - 2) = v2;
      *(&v22 - 1) = 0;
      v24 = v2;
      sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v2 + v9[497]))
    {
      v21 = swift_getKeyPath();
      __chkstk_darwin(v21);
      *(&v22 - 2) = v2;
      *(&v22 - 1) = 0;
      v24 = v2;
      sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1003F41A4()
{
  v1 = type metadata accessor for EditMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession))
  {
    (*(v2 + 104))(v4, enum case for EditMode.active(_:), v1);
    sub_1003F459C(v4);
    result = sub_1003F2E04();
    if (result)
    {
      swift_getKeyPath();
      v10 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1003F592C([objc_allocWithZone(CollectionEditSession) initWithCollection:*(v0 + 24)]);
      swift_getKeyPath();
      v10 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
      swift_beginAccess();
      v8 = *(v6 + 40);
      v7 = *(v6 + 48);

      return sub_1003F49D0(v8, v7);
    }
  }

  return result;
}

uint64_t sub_1003F43D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  v5 = type metadata accessor for EditMode();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003F44D0(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1003F459C(v5);
}

uint64_t sub_1003F459C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1003F962C(&qword_10190A130, &type metadata accessor for EditMode);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1003F481C()
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle);

  return v1;
}

uint64_t sub_1003F48D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle);
  a2[1] = v4;
}

uint64_t sub_1003F4990(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003F49D0(v1, v2);
}

uint64_t sub_1003F49D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle);
  v6 = *(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle) == a1 && *(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003F4B50()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  if (qword_101906808 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960238);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_getKeyPath();
    v16[1] = v0;
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v0 + 24);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Saving URL collection: %@", v7, 0xCu);
    sub_100024F64(v8, &qword_1019144F0);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  sub_10020AAE4(0, 0, v3, &unk_1012045C0, v14);
}

uint64_t sub_1003F4E38()
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__generationCountForAnimation);
}

void *sub_1003F4EF4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

uint64_t sub_1003F4F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
  swift_beginAccess();
  return sub_1000EF908(v3 + v4, a2);
}

uint64_t sub_1003F5064(uint64_t a1)
{
  sub_1000EF908(a1, v2);
  swift_getKeyPath();
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000EF9B8(v2);
}

uint64_t sub_1003F5144@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1000F0120(v4);
}

uint64_t sub_1003F51FC()
{
  swift_getKeyPath();
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1003F52CC()
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

id sub_1003F537C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1003F5460(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for UserGuideContentController();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1003F55BC()
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);

  return v1;
}

id sub_1003F566C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1003F5724(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_100014C84(0, &qword_101922CC0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003F5890(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  v5 = type metadata accessor for EditMode();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void sub_1003F592C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &qword_101920138);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1003F5AC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession);
  *(a1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession) = a2;
  v3 = a2;
}

uint64_t sub_1003F5B00(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__generationCountForAnimation) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_1003F5C0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage);
  *a2 = v4;

  return v4;
}

void sub_1003F5CCC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003F5CFC(v1);
}

void sub_1003F5CFC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &qword_10190AB90);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1003F5E94(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage);
  *(a1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage) = a2;
  v3 = a2;
}

uint64_t sub_1003F6278@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__updateContentInjection);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__updateContentInjection + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1003F6370(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1003F653C(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_1003F6604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onPerformRowMenuAction);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onPerformRowMenuAction + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1003F9914;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1003F66FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1003F98CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1003F68A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_1003F6900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  return sub_1000EF8AC(v3 + v4, a2);
}

uint64_t sub_1003F69C8(uint64_t a1)
{
  sub_1000EF8AC(a1, v2);
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000EF964(v2);
}

uint64_t sub_1003F6AA8(uint64_t a1, uint64_t a2)
{
  sub_1000EF8AC(a2, v7);
  v3 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1003F9674(v7, a1 + v3);
  swift_endAccess();
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__updateContentInjection);
  if (v4)
  {

    v4(v5);
    sub_1000588AC(v4);
  }

  return sub_1000EF964(v7);
}

void sub_1003F6BC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for UserGuideItemRowViewModel();
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin(v3);
  v85 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v72 - v6;
  swift_getKeyPath();
  *&v100 = a1;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(a1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage);
  v81 = a1;
  if (v7)
  {
    *(&v101 + 1) = sub_100014C84(0, &qword_10190AB90);
    *&v102 = sub_100059514(&qword_10190DE60, &qword_10190AB90);
    *&v100 = v7;
    swift_getKeyPath();
    v94 = a1;
    v8 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = a1[2];
    swift_getKeyPath();
    v94 = v9;
    sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
    v10 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
    swift_beginAccess();
    sub_1000EF908(v10 + v11, &v94);

    v82 = v99;
    v83 = v98;

    sub_1000EF9B8(&v94);
    swift_getKeyPath();
    v92[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = a1[2];
    swift_getKeyPath();
    v92[0] = v12;
    v13 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
    swift_beginAccess();
    sub_1000EF908(v13 + v14, v92);

    v78 = v92[7];
    LODWORD(v77) = v93;
    sub_1000EF9B8(v92);
    swift_getKeyPath();
    v90[0] = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = v81[2];
    swift_getKeyPath();
    v90[0] = v15;
    v16 = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
    swift_beginAccess();
    sub_1000EF908(v16 + v17, v90);

    LODWORD(v76) = v91;
    sub_1000EF9B8(v90);
    swift_getKeyPath();
    v88[0] = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = v81[2];
    swift_getKeyPath();
    v88[0] = v18;
    v19 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
    swift_beginAccess();
    sub_1000EF908(v19 + v20, v88);

    v21 = v89;
    sub_1000EF9B8(v88);
    swift_getKeyPath();
    v86[0] = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = v81[2];
    swift_getKeyPath();
    v86[0] = v22;
    v23 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
    swift_beginAccess();
    sub_1000EF908(v23 + v24, v86);

    LOBYTE(v24) = v87;
    sub_1000EF9B8(v86);
    *(&v102 + 1) = v83;
    *&v103 = v82;
    *(&v103 + 1) = v78;
    LOBYTE(v104) = v77;
    BYTE1(v104) = v76;
    a1 = v81;
    BYTE2(v104) = v21;
    HIBYTE(v104) = v24;
  }

  else
  {
    swift_getKeyPath();
    *&v100 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = a1[2];
    swift_getKeyPath();
    *&v100 = v25;
    sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
    v26 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
    swift_beginAccess();
    sub_1000EF908(v26 + v27, &v100);
  }

  swift_getKeyPath();
  v94 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = a1[2];
  swift_getKeyPath();
  v94 = v28;
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  v29 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *&v29[OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState];
  v74 = *&v29[OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState + 8];
  sub_1000F0120(v30);

  if (!v30)
  {
    v34 = 0;
    v74 = 0;
LABEL_43:
    v68 = v73;
    v69 = v103;
    *(v73 + 32) = v102;
    *(v68 + 48) = v69;
    *(v68 + 64) = v104;
    v70 = v101;
    *v68 = v100;
    *(v68 + 16) = v70;
    v71 = v74;
    *(v68 + 72) = v34;
    *(v68 + 80) = v71;
    return;
  }

  v31 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
LABEL_40:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
LABEL_41:
    v34 = _swiftEmptyArrayStorage;
LABEL_42:

    goto LABEL_43;
  }

LABEL_7:
  v33 = 0;
  v78 = v30 & 0xC000000000000001;
  v34 = _swiftEmptyArrayStorage;
  v75 = v31;
  v76 = v30;
  v77 = v32;
  while (1)
  {
    if (v78)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *(v31 + 16))
      {
        goto LABEL_39;
      }

      v35 = *(v30 + 8 * v33 + 32);
    }

    v36 = v35;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v82 = v33 + 1;
    v83 = v34;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    v39 = v80;
    v40 = v85;
    v41 = v85 + v80[5];
    *(v41 + 32) = 0;
    *v41 = 0u;
    *(v41 + 16) = 0u;
    v42 = (v40 + v39[6]);
    *v42 = 0;
    v42[1] = 0;
    v43 = (v40 + v39[7]);
    *v43 = 0;
    v43[1] = 0;
    v44 = v36;
    UUID.init()();
    *(v40 + v39[9]) = v44;
    v45 = (v40 + v39[8]);
    *v45 = sub_1003F97B0;
    v45[1] = v38;
    if ((v44[OBJC_IVAR____TtC4Maps13UserGuideItem_type + 8] & 1) == 0)
    {
      break;
    }

    sub_100024F64(v41, &qword_101921E90);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0;
    v46 = v77;
LABEL_30:
    sub_1003F97B8(v85, v84);
    v34 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_100358478(0, v34[2] + 1, 1, v34);
    }

    v67 = v34[2];
    v66 = v34[3];
    if (v67 >= v66 >> 1)
    {
      v34 = sub_100358478(v66 > 1, v67 + 1, 1, v34);
    }

    v34[2] = v67 + 1;
    sub_1003F97B8(v84, v34 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v67);
    ++v33;
    v30 = v76;
    if (v82 == v46)
    {
      goto LABEL_42;
    }
  }

  v47 = *&v44[OBJC_IVAR____TtC4Maps13UserGuideItem_type];
  v48 = v44;
  sub_100203FC0(v47, 0);
  v49 = [v47 _addressFormattedAsCity];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  *v42 = v51;
  v42[1] = v53;
  v54 = [objc_allocWithZone(_MKLocalizedHoursBuilder) initWithMapItem:v47 localizedHoursStringOptions:128 conciseStyle:0 openAt:0];
  if (!v54)
  {
    goto LABEL_24;
  }

  v55 = v54;
  v56 = [v54 localizedOpenState];
  if (!v56)
  {

    goto LABEL_24;
  }

  v57 = v56;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

LABEL_24:
    v58 = 0;
    v60 = 0;
  }

  *v43 = v58;
  v43[1] = v60;
  v62 = [v47 _styleAttributes];
  if (!v62)
  {
    v63 = [objc_opt_self() addressMarkerStyleAttributes];
    v46 = v77;
    if (!v63)
    {
      goto LABEL_44;
    }

    goto LABEL_29;
  }

  v63 = [v47 _styleAttributes];
  v46 = v77;
  if (v63)
  {
LABEL_29:
    v64 = v63;
    v96 = &type metadata for StyleAttributesImageProvider;
    v97 = sub_10017F24C();

    sub_1000F0B8C(v47, 0);
    v94 = v64;
    v95 = 0;
    sub_100203FCC(&v94, v41);
    goto LABEL_30;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1003F7724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((*(a4 + OBJC_IVAR____TtC4Maps13UserGuideItem_type + 8) & 1) == 0)
    {
      v9 = *(a4 + OBJC_IVAR____TtC4Maps13UserGuideItem_type);
      swift_getKeyPath();
      sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
      v10 = v9;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v8 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onPerformRowMenuAction);
      if (v11)
      {

        v11(v10, a2, a1);
        sub_1000F0B8C(v9, 0);

        return sub_1000588AC(v11);
      }

      sub_1000F0B8C(v9, 0);
    }
  }

  return result;
}

uint64_t sub_1003F7894()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;

    sub_10020ADD4(0, 0, v2, &unk_101204260, v7);
  }

  return result;
}

uint64_t sub_1003F7A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a1;
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F7AB8, v6, v5);
}

uint64_t sub_1003F7AB8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    withObservationTracking<A>(_:onChange:)();
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = Strong;
    *(v2 + 24) = v0 + 16;
    *(v0 + 128) = Strong;
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000EF964(v0 + 16);
  }

  **(v0 + 136) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

void *sub_1003F7C68(uint64_t a1)
{
  v54 = a1;
  v2 = type metadata accessor for UUID();
  v45 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserGuideItemRowViewModel();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v42 - v8;
  __chkstk_darwin(v10);
  v12 = v42 - v11;
  swift_getKeyPath();
  v56 = v1;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  v14 = *(v13 + 72);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v42[0] = v5;
  v43 = v9;
  v15 = *(v13 + 80);
  v16 = *(v14 + 16);

  v42[1] = v15;

  v48 = v16;
  if (!v16)
  {
    v46 = _swiftEmptyArrayStorage;
LABEL_19:

    v55 = _swiftEmptyArrayStorage;
    v35 = v46[2];
    v36 = v43;
    if (v35)
    {
      v37 = *(v42[0] + 36);
      v38 = v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v39 = *(v49 + 72);
      do
      {
        sub_10023AD94(v38, v36);
        v40 = *(v36 + v37);
        sub_10023ADF8(v36);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v38 += v39;
        --v35;
      }

      while (v35);
      v41 = v55;

      return v41;
    }

    return _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v52 = v45 + 16;
  v53 = v54 + 56;
  v46 = _swiftEmptyArrayStorage;
  v47 = v14;
  v19 = (v45 + 8);
  while (v18 < *(v14 + 16))
  {
    v20 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v50 = *(v49 + 72);
    v51 = v20;
    sub_10023AD94(v14 + v20 + v50 * v18, v12);
    if (*(v54 + 16) && (v21 = v54, sub_1003F962C(&qword_1019156D0, &type metadata accessor for UUID), v22 = dispatch thunk of Hashable._rawHashValue(seed:)(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v53 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v25 = ~v23;
      v26 = *(v45 + 72);
      v27 = *(v45 + 16);
      while (1)
      {
        v27(v4, *(v54 + 48) + v26 * v24, v2);
        sub_1003F962C(&qword_101916EA8, &type metadata accessor for UUID);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v19)(v4, v2);
        if (v28)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v53 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      sub_1003F97B8(v12, v44);
      v29 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v29;
      v55 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1005111E4(0, v29[2] + 1, 1);
        v31 = v55;
      }

      v32 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1005111E4(v33 > 1, v34 + 1, 1);
        v32 = v55;
      }

      v32[2] = v34 + 1;
      v46 = v32;
      result = sub_1003F97B8(v44, v32 + v51 + v34 * v50);
    }

    else
    {
LABEL_4:
      result = sub_10023ADF8(v12);
    }

    ++v18;
    v14 = v47;
    if (v18 == v48)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F81F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_1003F828C, v6, v5);
}

uint64_t sub_1003F828C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    v0[10] = v2;
    sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v2 + 24);
    v0[26] = v3;
    v0[2] = v0;
    v0[3] = sub_1003F8480;
    v4 = swift_continuation_init();
    v0[17] = sub_1000CE6B8(&qword_10191CEA0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003956B0;
    v0[13] = &unk_1016174D0;
    v0[14] = v4;
    [v3 createCollection:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1003F8480()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1003F86E8;
  }

  else
  {
    v5 = sub_1003F85B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003F85B0()
{
  v1 = *(v0 + 208);

  if (qword_101906808 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960238);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Completed creation of URL collection. Reloading collection.", v5, 2u);
  }

  sub_1003F88AC();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003F86E8()
{
  v1 = *(v0 + 208);

  swift_willThrow();

  if (qword_101906808 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960238);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error saving URL collection: %@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_1003F88AC()
{
  v1 = v0;
  swift_getKeyPath();
  v12[0] = v0;
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  v11 = v2;
  v4 = [v3 collectionWithCollectionHandler:v11];
  objc_allocWithZone(type metadata accessor for UserGuideContentController());
  v5 = v4;
  v6 = sub_100395C60(v5);
  sub_1003F5460(v6);
  v7 = v5;
  sub_1003F5724(v7);
  [v7 setSortType:{objc_msgSend(v11, "sortType")}];
  swift_getKeyPath();
  v12[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v1 + 16);
  swift_getKeyPath();
  v12[0] = v8;
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  v9 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
  swift_beginAccess();
  sub_1000EF908(v9 + v10, v12);

  v12[9] = 0;
  v12[10] = 0;
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000EF964(v12);
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000EF964(v12);
}

uint64_t sub_1003F8BE8()
{
  v1 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  v2 = type metadata accessor for EditMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onClose));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSelect));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onShare));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddPlacesToGuide));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddToGuide));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSort));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onChoosePhoto));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onEnterOrExitEditMode));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__updateContentInjection));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onPerformRowMenuAction));
  sub_1000EF964(v0 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state);
  v3 = OBJC_IVAR____TtC4Maps18UserGuideViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1003F8DA4()
{
  sub_1003F8BE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserGuideViewModel()
{
  result = qword_101920020;
  if (!qword_101920020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F8E50()
{
  result = type metadata accessor for EditMode();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003F8F70(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003F8F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F8FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003F9034()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960238);
  sub_100021540(v0, qword_101960238);
  return Logger.init(subsystem:category:)();
}

void *sub_1003F90BC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_21:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v3 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v5 = v3;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = result;
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return result;
      }

      v8 = *(result + OBJC_IVAR____TtC4Maps13UserGuideItem_type);
      v9 = *(result + OBJC_IVAR____TtC4Maps13UserGuideItem_type + 8);
      sub_100203FC0(v8, v9);
      swift_unknownObjectRelease();
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_1000F0B8C(v8, 1);
      result = v7;
LABEL_9:
      v5 = v3;
      if (v3 == v2)
      {
        return result;
      }
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v3 = v5 + 1;
    v6 = *(a1 + 32 + 8 * v5) + OBJC_IVAR____TtC4Maps13UserGuideItem_type;
    if (*(v6 + 8))
    {
      goto LABEL_9;
    }

    v10 = *v6;
LABEL_15:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = _swiftEmptyArrayStorage;
  }

  while (v3 != v2);
  return result;
}

uint64_t sub_1003F9274(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  v5 = enum case for EditMode.inactive(_:);
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 104))(v2 + v4, v5, v6);
  *(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession) = 0;
  *(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__generationCountForAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage) = 0;
  v7 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onClose);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSelect);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onShare);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddPlacesToGuide);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddToGuide);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSort);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onChoosePhoto);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onEnterOrExitEditMode);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__updateContentInjection);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onPerformRowMenuAction);
  *v17 = 0;
  v17[1] = 0;
  ObservationRegistrar.init()();
  v18 = objc_allocWithZone(type metadata accessor for UserGuideContentController());
  v19 = a1;
  v20 = sub_100395C60(v19);
  *(v2 + 16) = v20;
  *(v2 + 24) = v19;
  swift_getKeyPath();
  v26 = v20;
  sub_1003F962C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  v21 = v19;
  v22 = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
  swift_beginAccess();
  v24 = v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  sub_1000EF908(&v22[v23], v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__state);
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  sub_1003F962C(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000EF964(&v26);

  return v2;
}

uint64_t (*sub_1003F95B8())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1003F96F4;
}

uint64_t sub_1003F962C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F96FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1003F7A20(a1, v4, v5, v6);
}

uint64_t sub_1003F97B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideItemRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F9864(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3[3];
  v7 = v3[4];
  v8 = (v3[2] + *a1);
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v7;
  a2(v6);
  return a3(v9, v10);
}

uint64_t sub_1003F98CC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  v7 = a2;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

void sub_1003F9968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1003F99A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage);
  *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage) = v2;
  v4 = v2;
}

void sub_1003F99FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession);
  *(v1 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession) = v2;
  v4 = v2;
}

void sub_1003F9A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_1003F9A74()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideTitle);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1003F9AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1003F81F4(a1, v4, v5, v6);
}

void sub_1003F9BF8(void *a1)
{
  v2 = v1;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960018);
  v5 = static os_log_type_t.info.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2112;
    v10 = [v6 searchInfo];
    *(v8 + 14) = v10;
    v9[1] = v10;
    _os_log_impl(&_mh_execute_header, v7, v5, "[SearchResultContext] searchSessionDidUpdate: %@, %@", v8, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  [*&v2[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController] updateSearchSession:v6];
  v11 = [v6 searchInfo];
  if (v11)
  {
    v12 = v11;
    [v2 setSearchPinsFromSearchInfo:? scrollToResults:? displayPlaceCardForResult:? animated:? completion:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003F9DF0(void *a1)
{
  v2 = v1;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960018);
  v5 = static os_log_type_t.info.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2112;
    v10 = [v6 searchInfo];
    *(v8 + 14) = v10;
    v9[1] = v10;
    _os_log_impl(&_mh_execute_header, v7, v5, "[SearchResultContext] searchSessionDidFail: %@, %@", v8, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  [*&v2[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController] updateSearchSession:v6];
  sub_10019152C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setSearchPins:isa selectedPin:0 animated:1];
}

void sub_1003F9FD4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_101960018);
    v5 = static os_log_type_t.info.getter();
    v6 = a1;
    v7 = Logger.logObject.getter();

    if (os_log_type_enabled(v7, v5))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      v10 = [v6 searchInfo];
      *(v8 + 14) = v10;
      v9[1] = v10;
      _os_log_impl(&_mh_execute_header, v7, v5, "[SearchResultContext] searchSessionDidInvalidate: %@, %@", v8, 0x16u);
      sub_1000CE6B8(&qword_1019144F0);
      swift_arrayDestroy();
    }

    v11 = [v3 searchPinsManager];
    if (v11)
    {
      v12 = v11;
      [v11 clearSearchPins];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003FA1C0(void *a1)
{
  v2 = v1;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960018);
  v5 = static os_log_type_t.info.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2112;
    v10 = [v6 searchInfo];
    *(v8 + 14) = v10;
    v9[1] = v10;
    _os_log_impl(&_mh_execute_header, v7, v5, "[SearchResultContext] searchSessionWillPerformSearch: %@, %@", v8, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  v11 = *(v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController);

  return [v11 updateSearchSession:v6];
}

void sub_1003FA35C()
{
  v1 = v0;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960018);
  v3 = static os_log_type_t.info.getter();

  v4 = Logger.logObject.getter();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_10019152C();
    v7 = Array.debugDescription.getter();
    v9 = sub_10004DEB8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v3, "[SearchResultContext] searchSessionDidReceiveEVChargerUpdate: %s", v5, 0xCu);
    sub_10004E3D0(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController);
  sub_10019152C();
  v11 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 refreshEVChargers:isa];
}

uint64_t sub_1003FA524(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000564AC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1003FA5B4@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100416604(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    sub_1000D2BE0((v9 + 32), a2);
    result = memmove((v9 + 32), (v9 + 64), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003FA660(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

unsigned __int8 *sub_1003FA6F8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

id sub_1003FA714()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___refinementOriginType);
  if (*(v0 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___refinementOriginType + 4) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController) lastRefinementOriginType];
  *v1 = result;
  v1[4] = 0;
  return result;
}

id sub_1003FA770()
{
  v1 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___webLinkPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___webLinkPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___webLinkPresenter);
  }

  else
  {
    v4 = [objc_allocWithZone(MapsWebLinkPresenter) initWithPresentingViewController:*(v0 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1003FA7F4(uint8_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_routingContainees;
  *&v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_routingContainees] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_desiredContaineeViewControllers] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_stateChangeHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_logicControllerSearchHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state;
  v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state] = 0;
  v8 = &v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___refinementOriginType];
  *v8 = 0;
  v8[4] = 1;
  *&v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___containeeProvider] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter____lazy_storage___webLinkPresenter] = 0;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_101960018);
  v10 = static os_log_type_t.info.getter();
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 16777472;
    v12[4] = a1;
    _os_log_impl(&_mh_execute_header, v11, v10, "[SearchResultContext] Initializing router for search context : %hhu", v12, 5u);
  }

  v13 = [objc_allocWithZone(ResultsViewController) init];
  v14 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController;
  *&v2[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController] = v13;
  v2[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_contextType] = a1;
  v2[v7] = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    [v13 setIsPresentingAddStopResultsFromWaypointEditor:1];
    v15 = *&v2[v14];
    swift_beginAccess();
    v16 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
LABEL_10:
    v22.receiver = v2;
    v22.super_class = type metadata accessor for SearchResultsContextRouter();
    v17 = objc_msgSendSuper2(&v22, "init");
    v18 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController;
    v19 = *&v17[OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_resultsViewController];
    v20 = v17;
    [v19 setResultsDelegate:v20];
    [*&v17[v18] setContaineeDelegate:v20];

    return v20;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1003FAAC8(unint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 | a2)
    {
      v28 = Strong;
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_101960018);
      v6 = static os_log_type_t.info.getter();
      v7 = a2;
      v8 = a1;
      v9 = Logger.logObject.getter();

      if (os_log_type_enabled(v9, v6))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v29 = v12;
        *v10 = 138412546;
        *(v10 + 4) = v8;
        *v11 = a1;
        *(v10 + 12) = 2080;
        v13 = v8;
        sub_1000CE6B8(&unk_10190B250);
        v14 = Optional.debugDescription.getter();
        v16 = sub_10004DEB8(v14, v15, &v29);

        *(v10 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v9, v6, "[SearchResultContext] Pushing placecard context for %@ or %s", v10, 0x16u);
        sub_100024F64(v11, &qword_1019144F0);

        sub_10004E3D0(v12);
      }

      v17 = objc_allocWithZone(PlaceCardItem);
      if (a1)
      {
        v18 = v8;
      }

      else
      {
        v18 = v7;
      }

      v19 = &selRef_initWithSearchResult_;
      if (a1)
      {
        v19 = &selRef_initWithMapItem_;
      }

      v20 = [v17 *v19];
      if (v20)
      {
        v21 = v20;
        v22 = type metadata accessor for PlaceCardContextConfiguration();
        v23 = objc_allocWithZone(v22);
        v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
        *&v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v21;
        v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
        *&v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
        v23[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
        v30.receiver = v23;
        v30.super_class = v22;
        v24 = v21;
        v25 = objc_msgSendSuper2(&v30, "init");
        objc_allocWithZone(type metadata accessor for PlaceCardContext());
        v26 = v25;
        v27 = sub_100504630(v26);
        [v28 pushContext:v27 animated:1 completion:0];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_1003FAE38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsContextRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003FAF44(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100021540(v3, qword_101960018);
  v5 = static os_log_type_t.info.getter();
  v6 = a1;
  v7 = v1;
  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v5))
  {
    v4 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v4 = 138412546;
    *(v4 + 4) = v6;
    *v9 = a1;
    *(v4 + 12) = 2080;
    swift_beginAccess();
    v31 = a1;
    v11 = v6;

    sub_1000CE6B8(&unk_10190B260);
    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_10004DEB8(v12, v14, v32);

    *(v4 + 14) = v15;
    a1 = v31;
    _os_log_impl(&_mh_execute_header, v8, v5, "[SearchResultContext] containeeViewControllerGo for %@ routingContainees:%s", v4, 0x16u);
    sub_100024F64(v9, &qword_1019144F0);

    sub_10004E3D0(v10);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v5 = Strong;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    goto LABEL_14;
  }

  v4 = v17;
  v18 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_routingContainees;
  swift_beginAccess();
  v19 = *&v7[v18];
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

LABEL_32:
    __break(1u);
LABEL_33:

    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_22;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

LABEL_9:
  v20 = sub_1003FD07C();
  if (v20)
  {
    goto LABEL_13;
  }

  v21 = *&v7[v18];
  if (v21 >> 62)
  {
    goto LABEL_35;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
LABEL_37:
    __break(1u);
    return;
  }

  while (1)
  {
    v20 = sub_1003FA524(v24);
LABEL_13:

    swift_endAccess();
    [v4 setNeedsUpdateComponent:@"cards" animated:1];
LABEL_14:

LABEL_15:
    v25 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_routingContainees;
    swift_beginAccess();
    v26 = *&v7[v25];
    if (v26 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() != 1)
      {
        return;
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return;
    }

    v27 = *&v7[v25];
    if (v27 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_35:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v23 = __OFSUB__(v30, 1);
    v24 = v30 - 1;
    if (v23)
    {
      goto LABEL_37;
    }
  }

  v28 = *(v27 + 32);
LABEL_22:
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();

  if (v29 && a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [v7 clearSearchResults];
    }
  }
}

uint64_t sub_1003FB414(void *a1)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960018);
  v3 = static os_log_type_t.info.getter();
  v4 = a1;
  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, v3, "[SearchResultContext] chromeDidSelectMarker: %@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  sub_1003FAAC8(v4, 0);
  return 1;
}

BOOL sub_1003FB5B8(void *a1)
{
  v1 = [a1 searchResult];
  if (v1)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101960018);
    v3 = static os_log_type_t.info.getter();
    v4 = v1;
    v5 = Logger.logObject.getter();

    if (os_log_type_enabled(v5, v3))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = [v4 debugDescription];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_10004DEB8(v9, v11, &v15);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v3, "[SearchResultContext] chromeDidSelect customPOIAnnotation: %s", v6, 0xCu);
      sub_10004E3D0(v7);
    }

    v13 = v4;
    sub_1003FAAC8(0, v1);
  }

  return v1 != 0;
}

void sub_1003FB7DC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_101960018);
      v8 = static os_log_type_t.info.getter();
      v9 = Logger.logObject.getter();
      if (os_log_type_enabled(v9, v8))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, v8, "[SearchResultContext] Present filters", v10, 2u);
      }

      v11 = OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_routingContainees;
      swift_beginAccess();
      v12 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v6 setNeedsUpdateComponent:@"cards" animated:1];
    }

    else
    {
    }
  }
}

void sub_1003FBBC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 allSearchResults];

      if (v4)
      {
        sub_10019152C();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1003FBCE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 *a3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1003FBD70(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960018);
    v8 = static os_log_type_t.info.getter();

    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      sub_10019152C();
      v12 = Array.debugDescription.getter();
      v14 = sub_10004DEB8(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v8, "[SearchResultContext] Setting search pins for results : %s", v10, 0xCu);
      sub_10004E3D0(v11);
    }

    v15 = [v6 searchPinsManager];
    if (v15)
    {
      v16 = v15;
      sub_10019152C();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v16 setSearchPins:isa selectedPin:a2 animated:a3 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003FC028(void *a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100021540(v14, qword_101960018);
    v15 = static os_log_type_t.info.getter();
    v16 = a1;
    v17 = Logger.logObject.getter();

    if (os_log_type_enabled(v17, v15))
    {
      v26 = a6;
      v18 = a2;
      v19 = a4;
      v20 = a3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v16;
      *v22 = v16;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v17, v15, "[SearchResultContext] Setting search pins for searchInfo : %@", v21, 0xCu);
      sub_100024F64(v22, &qword_1019144F0);

      a3 = v20;
      a4 = v19;
      a2 = v18;
      a6 = v26;
    }

    v24 = [v13 searchPinsManager];
    if (v24)
    {
      v25 = v24;
      if (a5)
      {
        aBlock[4] = a5;
        aBlock[5] = a6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003FC28C;
        aBlock[3] = &unk_101617600;
        a5 = _Block_copy(aBlock);
      }

      [v25 setSearchPinsFromSearchInfo:v16 scrollToResults:a2 & 1 displayPlaceCardForResult:a3 animated:a4 & 1 completion:a5];
      _Block_release(a5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003FC28C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);
}

void sub_1003FC3FC(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_101960018);
    v7 = static os_log_type_t.info.getter();
    v8 = a1;
    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v8;
      *v11 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, v7, "[SearchResultContext] Selecting search result : %@", v10, 0xCu);
      sub_100024F64(v11, &qword_1019144F0);
    }

    v13 = [v5 mapSelectionManager];
    if (v13)
    {
      v14 = v13;
      [v13 selectSearchResult:v8 animated:a2 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003FC640()
{
  v1 = v0;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960018);
  v3 = static os_log_type_t.info.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, v3, "[SearchResultContext] Router is unloading", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state);
  *(v1 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state) = 2;
  v7 = *(v1 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_stateChangeHandler);
  if (v7)
  {

    v7(v6, 2);

    sub_1000588AC(v7);
  }
}

void sub_1003FC7D0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (v4)
    {
      v5 = [a1 mapItem];
      if (v5)
      {
        v6 = v5;
        v19 = [v5 phoneNumber];

        if (v19)
        {
          if (qword_101906728 != -1)
          {
            swift_once();
          }

          v7 = type metadata accessor for Logger();
          sub_100021540(v7, qword_101960018);
          v8 = static os_log_type_t.debug.getter();
          v9 = a1;
          v10 = Logger.logObject.getter();

          if (os_log_type_enabled(v10, v8))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v20 = v12;
            *v11 = 136315138;
            v13 = [v9 debugDescription];
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            v17 = sub_10004DEB8(v14, v16, &v20);

            *(v11 + 4) = v17;
            _os_log_impl(&_mh_execute_header, v10, v8, "[SearchResultContext] Invoking call for %s", v11, 0xCu);
            sub_10004E3D0(v12);
          }

          v18 = [objc_opt_self() sharedApplication];
          [v18 callPhoneNumber:v19 completion:0];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1003FCAA8(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();

    if (v9)
    {
      v10 = [a1 mapItem];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 url];

        if (v12)
        {
          v28 = v1;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          if (qword_101906728 != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          sub_100021540(v13, qword_101960018);
          v14 = static os_log_type_t.debug.getter();
          v15 = a1;
          v16 = Logger.logObject.getter();

          if (os_log_type_enabled(v16, v14))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v29 = v18;
            *v17 = 136315138;
            v19 = [v15 debugDescription];
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            v23 = sub_10004DEB8(v20, v22, &v29);

            *(v17 + 4) = v23;
            _os_log_impl(&_mh_execute_header, v16, v14, "[SearchResultContext] Opening website for %s", v17, 0xCu);
            sub_10004E3D0(v18);
          }

          v24 = sub_1003FA770();
          URL._bridgeToObjectiveC()(v25);
          v27 = v26;
          [v24 presentWebURL:v26];

          (*(v4 + 8))(v6, v3);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1003FCDF0(uint64_t a1)
{
  v3 = [v1 searchResultsAppCoordinator];
  if (v3)
  {
    v8 = v3;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_101960018);
    v5 = static os_log_type_t.debug.getter();
    v6 = Logger.logObject.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, v5, "[SearchResultContext] Presenting share sheet.", v7, 2u);
    }

    [v8 shareItem:a1 presentationOptions:0 completion:0];
  }
}

unint64_t sub_1003FCFC0()
{
  result = qword_101920220;
  if (!qword_101920220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920220);
  }

  return result;
}

unint64_t sub_1003FD018()
{
  result = qword_101920228;
  if (!qword_101920228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920228);
  }

  return result;
}

uint64_t sub_1003FD07C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1000564AC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003FD0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100021540(v8, qword_101960018);
  v9 = static os_log_type_t.info.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, v9, "[SearchResultContext] Informing logic controller to begin search with refinements", v11, 2u);
  }

  v12 = *(v4 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_logicControllerSearchHandler);
  if (v12)
  {

    v12(a1, a2, a3);

    sub_1000588AC(v12);
  }
}

void sub_1003FD238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101960018);
  v7 = static os_log_type_t.info.getter();
  v8 = Logger.logObject.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, v7, "[SearchResultContext] Informing logic controller to begin search", v9, 2u);
  }

  v10 = *(v3 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_logicControllerSearchHandler);
  if (v10)
  {

    v10(a1, a2, 0);

    sub_1000588AC(v10);
  }
}

void sub_1003FD384()
{
  v1 = type metadata accessor for AttributedString();
  __chkstk_darwin(v1 - 8);
  v23 = type metadata accessor for FilterBarOption.SubOption();
  v2 = *(v23 - 8);
  v3 = __chkstk_darwin(v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 menuOptions];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_100014C84(0, &qword_1019202A8);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_16:

    return;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v8;
  v10 = v19;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v20 = v2 + 32;
    v21 = v9 & 0xC000000000000001;
    v12 = _swiftEmptyArrayStorage;
    v22 = v9;
    do
    {
      if (v21)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v14 title];
      AttributedString.init(_:)();
      [v14 isSelected];
      FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1003584A0(0, v12[2] + 1, 1, v12);
      }

      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        v12 = sub_1003584A0(v17 > 1, v18 + 1, 1, v12);
      }

      ++v11;

      v12[2] = v18 + 1;
      (*(v2 + 32))(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v5, v23);
      v9 = v22;
    }

    while (v10 != v11);
  }
}

void sub_1003FD870(uint64_t a1, unint64_t a2)
{
  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960000);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10004DEB8(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10004E3D0(v8);
  }

  sub_1003FDC20();
}

id sub_1003FD9C4(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBarContainerVC] = 0;
  v5 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBar;
  v6 = type metadata accessor for FilterBar();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_heightConstraint] = 0;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_refinements] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RoutePlanningRefinementBarView();
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003FDC20();

  return v7;
}

void sub_1003FDC20()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v1 - 8);
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&qword_101920298);
  __chkstk_darwin(v4 - 8);
  v6 = &v76 - v5;
  v86 = type metadata accessor for FilterBar();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v11 = type metadata accessor for FilterBarViewModel();
  v82 = *(v11 - 8);
  v83 = v11;
  __chkstk_darwin(v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = &v76 - v15;
  v16 = type metadata accessor for FilterBarOption();
  v17 = *(v16 - 8);
  v92 = v16;
  v93 = v17;
  __chkstk_darwin(v16);
  v95 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v0[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_refinements];
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = v0;
  v78 = v3;
  v77 = v8;
  v79 = v13;
  v80 = v6;
  if (v20)
  {
    if (v20 < 1)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v88 = v93 + 32;
    v89 = v19 & 0xC000000000000001;

    v21 = 0;
    v22 = _swiftEmptyArrayStorage;
    v90 = v20;
    v91 = v19;
    do
    {
      v94 = v22;
      if (v89)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [v24 titleText];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = [v24 accessibilityIdentifier];
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      [v24 shouldShowChevron];
      [v24 shouldShowHighlighted];
      sub_1003FD384();
      FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
      v22 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100356B54(0, v22[2] + 1, 1, v22);
      }

      v29 = v90;
      v19 = v91;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        v22 = sub_100356B54(v30 > 1, v31 + 1, 1, v22);
      }

      ++v21;

      v22[2] = v31 + 1;
      (*(v93 + 32))(v22 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v31, v95, v92);
    }

    while (v29 != v21);

    v0 = v87;
  }

  v32 = v81;
  FilterBarViewModel.init(options:accessibilityIdentifier:)();
  (*(v82 + 16))(v79, v32, v83);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v85;
  FilterBar.init(model:allowGlass:tapHandler:)();
  v34 = v84;
  v35 = *(v84 + 16);
  v36 = v80;
  v37 = v86;
  v35(v80, v33, v86);
  (*(v34 + 56))(v36, 0, 1, v37);
  v38 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBar;
  swift_beginAccess();
  sub_1003FF2F4(v36, &v0[v38]);
  swift_endAccess();
  v39 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBarContainerVC;
  v40 = *&v0[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBarContainerVC];
  if (v40)
  {
    v41 = [v40 view];
    if (!v41)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v42 = v41;
    [v41 removeFromSuperview];

    v43 = *&v87[v39];
    if (v43)
    {
      [v43 removeFromParentViewController];
    }
  }

  v44 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_heightConstraint;
  v45 = v87;
  [*&v87[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_heightConstraint] setActive:0];
  v46 = *&v45[v44];
  *&v45[v44] = 0;

  v35(v77, v85, v86);
  v47 = v45;
  v48 = objc_allocWithZone(sub_1000CE6B8(&qword_1019202A0));
  v49 = UIHostingController.init(rootView:)();
  v50 = *&v45[v39];
  *&v45[v39] = v49;
  v51 = v49;

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v52 = *&v47[v39];
  if (!v52)
  {
    goto LABEL_29;
  }

  v53 = [v52 view];
  if (!v53)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v54 = v53;
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v55 = [objc_opt_self() clearColor];
  [v54 setBackgroundColor:v55];

  [v47 addSubview:v54];
  v56 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1011E5C00;
  v58 = [v54 leadingAnchor];
  v59 = [v87 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v57 + 32) = v60;
  v61 = [v54 trailingAnchor];
  v62 = [v87 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v57 + 40) = v63;
  v64 = [v54 topAnchor];
  v65 = [v87 topAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v57 + 48) = v66;
  v67 = [v54 bottomAnchor];
  v68 = [v87 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v57 + 56) = v69;
  v70 = v87;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints:isa];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    (*(v84 + 8))(v85, v86);
    (*(v82 + 8))(v81, v83);

    return;
  }

  v73 = *&v70[v39];
  if (v73)
  {
    v74 = Strong;
    v75 = v73;

    [v74 addChildViewController:v75];

    (*(v84 + 8))(v85, v86);
    (*(v82 + 8))(v81, v83);
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1003FE668(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = a4;
    v29 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_refinements);
    if (v6 >> 62)
    {
LABEL_33:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v12 = [v9 identifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {
          break;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_24;
        }

        ++v8;
        if (v11 == v7)
        {
          goto LABEL_18;
        }
      }

LABEL_24:

      v24 = swift_unknownObjectWeakLoadStrong();
      v25 = v28;
      if (!v24)
      {

        goto LABEL_29;
      }

      v26 = v24;
      v27 = String._bridgeToObjectiveC()();
      if (v28)
      {
        v25 = String._bridgeToObjectiveC()();
      }

      [v26 selectedRefinementModel:v10 identifier:v27 subIdentifier:v25];
    }

    else
    {
LABEL_18:

      if (qword_101906720 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100021540(v18, qword_101960000);

      v10 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v19))
      {
        v20 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v20 = 136315394;
        *(v20 + 4) = sub_10004DEB8(a1, a2, &v32);
        *(v20 + 12) = 2080;

        sub_1000CE6B8(&unk_10190D010);
        v21 = String.init<A>(describing:)();
        v23 = sub_10004DEB8(v21, v22, &v32);

        *(v20 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v10, v19, "didn't find a refinement for %s %s", v20, 0x16u);
        swift_arrayDestroy();
      }

LABEL_29:
    }
  }
}

void sub_1003FEA0C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RoutePlanningRefinementBarView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_heightConstraint;
  if (!*&v0[OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_heightConstraint])
  {
    v2 = [v0 heightAnchor];
    [v0 frame];
    v3 = [v2 constraintEqualToConstant:CGRectGetHeight(v7)];

    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;

    if (v5)
    {
      [v5 setActive:1];
    }
  }
}

uint64_t sub_1003FEB34()
{
  v1 = v0;
  v2 = type metadata accessor for FilterBar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101920298);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-1] - v7;
  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_101960000);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10004DEB8(0xD000000000000015, 0x80000001012364D0, v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10004E3D0(v13);
  }

  v14 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBar;
  swift_beginAccess();
  sub_1003FF214(v1 + v14, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_1003FF284(v8);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1003FF284(v8);
  FilterBar.resetScrollPosition()();
  return (*(v3 + 8))(v5, v2);
}

void sub_1003FEE34()
{
  if (qword_101906720 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_101960000);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10004DEB8(0xD000000000000015, 0x80000001012364B0, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10004E3D0(v4);
  }

  sub_1003FDC20();
}

id sub_1003FF000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePlanningRefinementBarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RoutePlanningRefinementBarView()
{
  result = qword_101920280;
  if (!qword_101920280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003FF108()
{
  sub_1003FF1BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003FF1BC()
{
  if (!qword_101920290)
  {
    type metadata accessor for FilterBar();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101920290);
    }
  }
}

uint64_t sub_1003FF214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101920298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FF284(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101920298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003FF2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101920298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003FF4A0()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedInstance];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for UGCReviewedPlaceMapsSyncTrampoline()
{
  result = qword_101920358;
  if (!qword_101920358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003FF688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1003FF6A8, 0, 0);
}

uint64_t sub_1003FF6A8()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reviewed place objects changed, invoking delegate.", v3, 2u);
  }

  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1003FF7BC;

  return sub_10016FBFC();
}

uint64_t sub_1003FF7BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003FF9E4()
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

uint64_t sub_1003FFA80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_1003FF688(a1, v4, v5, v6, v7);
}

uint64_t sub_1003FFB48()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960250);
  sub_100021540(v0, qword_101960250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003FFBD0(void *a1, uint64_t a2, void *a3)
{
  [a1 setFavoritesDataProvider:*a3];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_4;
  }

  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {
    LODWORD(v7) = 0;
    v6 = 83;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_4:
    v4 = 0;
  }

  [a1 setDelegate:{v4, v6, v7}];
  return swift_unknownObjectRelease();
}

uint64_t sub_1003FFC94@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906818 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&unk_10191C2A0);
  v3 = sub_100021540(v2, qword_101960268);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003FFD48(uint64_t a1, uint64_t a2)
{
  sub_100014C84(0, &qword_10190B2D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10010ED08(a1 + 8, a2 + 8);
}

unint64_t sub_1003FFDD0()
{
  result = qword_101920370;
  if (!qword_101920370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920370);
  }

  return result;
}

unint64_t sub_1003FFE24(uint64_t a1)
{
  result = sub_1003FFE4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003FFE4C()
{
  result = qword_1019203B0;
  if (!qword_1019203B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019203B0);
  }

  return result;
}

unint64_t sub_1003FFEA4()
{
  result = qword_1019203D0;
  if (!qword_1019203D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019203D0);
  }

  return result;
}

Swift::Int sub_1003FFEF8(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10056D5DC(v5);
  }

  result = sub_10040089C(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1003FFF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v20 = a1;
  v28 = v4;

  sub_1003FFEF8(sub_100402EB8, v19);
  if (*(v28 + 16))
  {
    v5 = *(v28 + 48);
    v22 = *(v28 + 32);
    v23 = v5;
    v6 = *(v28 + 80);
    v24 = *(v28 + 64);
    v25 = v6;
    v26 = *(v28 + 96);
    v7 = *(v28 + 112);
    v27 = v7;
    v17 = v23;
    v18 = v22;
    v15 = v6;
    v16 = v24;
    v14 = v26;
    sub_1001603D8(&v22, v21);

    v10 = v14;
    v9 = v15;
    v12 = v16;
    v11 = v17;
    v13 = v18;
  }

  else
  {

    v7 = 0;
    v13 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v13;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  *(a2 + 80) = v7;
  return result;
}

void sub_100400094(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  [*(v1 + 24) muid];
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v5;
  v6._countAndFlagsBits = 95;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  String.append(_:)(v7);
  *a1 = v8;
  a1[1] = v9;
}

uint64_t sub_100400120(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100401CD4(v7, v9) & 1;
}

void sub_10040017C()
{
  String.hash(into:)();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = *(v3 + 16);
      v15[0] = *v3;
      v15[1] = v4;
      v5 = *(v3 + 32);
      v6 = *(v3 + 48);
      v7 = *(v3 + 64);
      v16 = *(v3 + 80);
      v15[3] = v6;
      v15[4] = v7;
      v15[2] = v5;
      sub_1001603D8(v15, v14);
      sub_1004F45C0();
      sub_100160434(v15);
      v3 += 88;
      --v2;
    }

    while (v2);
  }

  Hasher._combine(_:)([*(v0 + 24) muid]);
  Hasher._combine(_:)(*(v0 + 32) & 1);
  Hasher._combine(_:)(*(v0 + 48) & 1);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 72) & 1);
  v8 = *(v0 + 40);
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 accessibilityText];
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        Hasher._combine(_:)(1u);
        String.hash(into:)();
        swift_unknownObjectRelease();
      }

      else
      {
        Hasher._combine(_:)(0);
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Int sub_100400370()
{
  Hasher.init(_seed:)();
  sub_10040017C();
  return Hasher._finalize()();
}

Swift::Int sub_1004003B4()
{
  Hasher.init(_seed:)();
  sub_10040017C();
  return Hasher._finalize()();
}

BOOL sub_1004003F0(uint64_t a1, void *a2)
{
  v45 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v41 - v7;
  v8 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v8 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v46 = &v41 - v17;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v24 = *(a1 + 72);
  v45 = v45[9];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v26 = [v24 serviceResumesAfterDate:isa];

  if (v26)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v4[7];
    v27(v20, 0, 1, v3);
  }

  else
  {
    v27 = v4[7];
    v27(v20, 1, 1, v3);
  }

  sub_100335D8C(v20, v23);
  v28 = Date._bridgeToObjectiveC()().super.isa;
  v29 = [v45 serviceResumesAfterDate:v28];

  if (v29)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v27(v15, v30, 1, v3);
  v31 = v46;
  sub_100335D8C(v15, v46);
  sub_1002323DC(v23, v12);
  v32 = v4[6];
  if (v32(v12, 1, v3) != 1)
  {
    v45 = v23;
    v33 = v4[4];
    v34 = v44;
    v33(v44, v12, v3);
    v12 = v43;
    sub_1002323DC(v31, v43);
    if (v32(v12, 1, v3) != 1)
    {
      v37 = v42;
      v33(v42, v12, v3);
      v38 = Date.compare(_:)();
      v39 = v4[1];
      v39(v37, v3);
      v39(v34, v3);
      v36 = v38 == -1;
      v23 = v45;
      goto LABEL_14;
    }

    (v4[1])(v34, v3);
    v23 = v45;
  }

  sub_100024F64(v12, &qword_10190EBD0);
  v35 = v32(v23, 1, v3);
  if (v35 != 1 || (v36 = 1, v32(v31, 1, v3) != 1))
  {
    v36 = v35 != 1;
  }

LABEL_14:
  sub_100024F64(v23, &qword_10190EBD0);
  sub_100024F64(v31, &qword_10190EBD0);
  return v36;
}

Swift::Int sub_10040089C(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v5 / 2;
      }

      v10[0] = v8 + 4;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_100400C30(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1004009A4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1004009A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 88 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v64 = v9;
    while (1)
    {
      v12 = *(v9 + 16);
      v60[0] = *v9;
      v60[1] = v12;
      v13 = *(v9 + 32);
      v14 = *(v9 + 48);
      v15 = *(v9 + 64);
      v61 = *(v9 + 80);
      v60[3] = v14;
      v60[4] = v15;
      v60[2] = v13;
      v16 = *(v9 + 48);
      v56 = *(v9 + 32);
      v57 = v16;
      v58 = *(v9 + 64);
      v59 = *(v9 + 80);
      v17 = *(v9 + 16);
      v54 = *v9;
      v55 = v17;
      v18 = *(v9 - 72);
      v62[0] = *(v9 - 88);
      v62[1] = v18;
      v19 = *(v9 - 40);
      v20 = *(v9 - 24);
      v21 = *(v9 - 56);
      v63 = *(v9 - 8);
      v62[3] = v19;
      v62[4] = v20;
      v62[2] = v21;
      v22 = *(v9 - 40);
      v50 = *(v9 - 56);
      v51 = v22;
      v52 = *(v9 - 24);
      v53 = *(v9 - 8);
      v23 = *(v9 - 72);
      v48 = *(v9 - 88);
      v49 = v23;
      sub_1001603D8(v60, &v42);
      sub_1001603D8(v62, &v42);
      v24 = a4(&v54, &v48);
      if (v5)
      {
        v38 = v50;
        v39 = v51;
        v40 = v52;
        v41 = v53;
        v36 = v48;
        v37 = v49;
        sub_100160434(&v36);
        v44 = v56;
        v45 = v57;
        v46 = v58;
        v47 = v59;
        v42 = v54;
        v43 = v55;
        return sub_100160434(&v42);
      }

      v25 = v24;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      v36 = v48;
      v37 = v49;
      sub_100160434(&v36);
      v44 = v56;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v42 = v54;
      v43 = v55;
      result = sub_100160434(&v42);
      if ((v25 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v64 + 88;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v26 = v9 - 88;
      v32 = *(v9 + 32);
      v33 = *(v9 + 48);
      v34 = *(v9 + 64);
      v35 = *(v9 + 80);
      v30 = *v9;
      v31 = *(v9 + 16);
      v27 = *(v9 - 40);
      *(v9 + 32) = *(v9 - 56);
      *(v9 + 48) = v27;
      *(v9 + 64) = *(v9 - 24);
      *(v9 + 80) = *(v9 - 8);
      v28 = *(v9 - 72);
      *v9 = *(v9 - 88);
      *(v9 + 16) = v28;
      *v26 = v30;
      *(v26 + 16) = v31;
      *(v26 + 80) = v35;
      *(v26 + 48) = v33;
      *(v26 + 64) = v34;
      *(v26 + 32) = v32;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
      v9 -= 88;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100400C30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v124 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_93:
    v7 = *v124;
    if (*v124)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_13;
    }

    v12 = *a3;
    v13 = *a3 + 88 * v11;
    v14 = *v13;
    v176 = *(v13 + 16);
    v175 = v14;
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    v17 = *(v13 + 64);
    v180 = *(v13 + 80);
    v179 = v17;
    v178 = v16;
    v177 = v15;
    v18 = *(v13 + 48);
    v171 = *(v13 + 32);
    v172 = v18;
    v173 = *(v13 + 64);
    v174 = *(v13 + 80);
    v19 = *(v13 + 16);
    v169 = *v13;
    v170 = v19;
    v20 = (v12 + 88 * v10);
    v21 = v20[1];
    v181 = *v20;
    v182 = v21;
    v23 = v20[3];
    v22 = v20[4];
    v24 = v20[2];
    v186 = *(v20 + 10);
    v184 = v23;
    v185 = v22;
    v183 = v24;
    v25 = v20[3];
    v165 = v20[2];
    v166 = v25;
    v167 = v20[4];
    v168 = *(v20 + 10);
    v26 = v20[1];
    v163 = *v20;
    v164 = v26;
    sub_1001603D8(&v175, &v157);
    sub_1001603D8(&v181, &v157);
    v27 = a4(&v169, &v163);
    if (v6)
    {
LABEL_104:
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v156 = v168;
      v151 = v163;
      v152 = v164;
      sub_100160434(&v151);
      v159 = v171;
      v160 = v172;
      v161 = v173;
      v162 = v174;
      v157 = v169;
      v158 = v170;
      sub_100160434(&v157);
    }

    v28 = v27;
    v153 = v165;
    v154 = v166;
    v155 = v167;
    v156 = v168;
    v151 = v163;
    v152 = v164;
    sub_100160434(&v151);
    v159 = v171;
    v160 = v172;
    v161 = v173;
    v162 = v174;
    v157 = v169;
    v158 = v170;
    result = sub_100160434(&v157);
    v29 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      v8 = v10 + 2;
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_82;
    }

    v30 = v12 + 88 * v10 + 176;
    while (1)
    {
      v8 = v29;
      v31 = *(v30 + 16);
      v143[0] = *v30;
      v143[1] = v31;
      v32 = *(v30 + 32);
      v33 = *(v30 + 48);
      v34 = *(v30 + 64);
      v144 = *(v30 + 80);
      v143[3] = v33;
      v143[4] = v34;
      v143[2] = v32;
      v35 = *(v30 + 48);
      v139 = *(v30 + 32);
      v140 = v35;
      v141 = *(v30 + 64);
      v142 = *(v30 + 80);
      v36 = *(v30 + 16);
      v137 = *v30;
      v138 = v36;
      v37 = *(v30 - 72);
      v145 = *(v30 - 88);
      v146 = v37;
      v38 = *(v30 - 40);
      v39 = *(v30 - 24);
      v40 = *(v30 - 56);
      v150 = *(v30 - 8);
      v148 = v38;
      v149 = v39;
      v147 = v40;
      v41 = *(v30 - 40);
      v133 = *(v30 - 56);
      v134 = v41;
      v135 = *(v30 - 24);
      v136 = *(v30 - 8);
      v42 = *(v30 - 72);
      v131 = *(v30 - 88);
      v132 = v42;
      sub_1001603D8(v143, v129);
      sub_1001603D8(&v145, v129);
      v43 = a4(&v137, &v131);
      v127[2] = v133;
      v127[3] = v134;
      v127[4] = v135;
      v128 = v136;
      v127[0] = v131;
      v127[1] = v132;
      sub_100160434(v127);
      v129[2] = v139;
      v129[3] = v140;
      v129[4] = v141;
      v130 = v142;
      v129[0] = v137;
      v129[1] = v138;
      result = sub_100160434(v129);
      if ((v28 ^ v43))
      {
        break;
      }

      v29 = v8 + 1;
      v30 += 88;
      if (v7 == v8 + 1)
      {
        v11 = v8;
        v8 = v7;
        if ((v28 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_82:
        if (v8 >= v10)
        {
          if (v10 <= v11)
          {
            v7 = 88 * v8 - 88;
            v111 = 88 * v10;
            v112 = v8;
            v122 = v10;
            do
            {
              if (v10 != --v112)
              {
                v113 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v114 = v113 + v7;
                v147 = *(v113 + v111 + 32);
                v148 = *(v113 + v111 + 48);
                v149 = *(v113 + v111 + 64);
                v150 = *(v113 + v111 + 80);
                v145 = *(v113 + v111);
                v146 = *(v113 + v111 + 16);
                result = memmove((v113 + v111), (v113 + v7), 0x58uLL);
                *(v114 + 32) = v147;
                *(v114 + 48) = v148;
                *(v114 + 64) = v149;
                *(v114 + 80) = v150;
                *v114 = v145;
                *(v114 + 16) = v146;
              }

              ++v10;
              v7 -= 88;
              v111 += 88;
            }

            while (v10 < v112);
            v10 = v122;
          }

          goto LABEL_13;
        }

LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    v11 = v8 - 1;
    if (v28)
    {
      goto LABEL_82;
    }

LABEL_13:
    v44 = a3[1];
    if (v8 >= v44)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_123;
    }

    if (v8 - v10 >= a6)
    {
      goto LABEL_136;
    }

    v45 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v45 >= v44)
    {
      v45 = a3[1];
    }

    if (v45 < v10)
    {
      goto LABEL_126;
    }

    if (v8 == v45)
    {
LABEL_136:
      if (v8 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v92 = *a3;
      v93 = *a3 + 88 * v8;
      v7 = v10 - v8 + 1;
      v119 = v45;
      do
      {
        v120 = v7;
        v121 = v93;
        while (1)
        {
          v94 = *v93;
          v176 = *(v93 + 16);
          v175 = v94;
          v95 = *(v93 + 32);
          v96 = *(v93 + 48);
          v97 = *(v93 + 64);
          v180 = *(v93 + 80);
          v179 = v97;
          v178 = v96;
          v177 = v95;
          v98 = *(v93 + 48);
          v171 = *(v93 + 32);
          v172 = v98;
          v173 = *(v93 + 64);
          v174 = *(v93 + 80);
          v99 = *(v93 + 16);
          v169 = *v93;
          v170 = v99;
          v100 = *(v93 - 72);
          v181 = *(v93 - 88);
          v182 = v100;
          v101 = *(v93 - 40);
          v102 = *(v93 - 24);
          v103 = *(v93 - 56);
          v186 = *(v93 - 8);
          v184 = v101;
          v185 = v102;
          v183 = v103;
          v104 = *(v93 - 40);
          v165 = *(v93 - 56);
          v166 = v104;
          v167 = *(v93 - 24);
          v168 = *(v93 - 8);
          v105 = *(v93 - 72);
          v163 = *(v93 - 88);
          v164 = v105;
          sub_1001603D8(&v175, &v157);
          sub_1001603D8(&v181, &v157);
          v106 = a4(&v169, &v163);
          if (v6)
          {
            goto LABEL_104;
          }

          v107 = v106;
          v153 = v165;
          v154 = v166;
          v155 = v167;
          v156 = v168;
          v151 = v163;
          v152 = v164;
          sub_100160434(&v151);
          v159 = v171;
          v160 = v172;
          v161 = v173;
          v162 = v174;
          v157 = v169;
          v158 = v170;
          result = sub_100160434(&v157);
          if ((v107 & 1) == 0)
          {
            break;
          }

          if (!v92)
          {
            goto LABEL_129;
          }

          v108 = v93 - 88;
          v147 = *(v93 + 32);
          v148 = *(v93 + 48);
          v149 = *(v93 + 64);
          v150 = *(v93 + 80);
          v145 = *v93;
          v146 = *(v93 + 16);
          v109 = *(v93 - 40);
          *(v93 + 32) = *(v93 - 56);
          *(v93 + 48) = v109;
          *(v93 + 64) = *(v93 - 24);
          *(v93 + 80) = *(v93 - 8);
          v110 = *(v93 - 72);
          *v93 = *(v93 - 88);
          *(v93 + 16) = v110;
          *(v108 + 16) = v146;
          *v108 = v145;
          *(v108 + 80) = v150;
          *(v108 + 64) = v149;
          *(v108 + 48) = v148;
          *(v108 + 32) = v147;
          if (!v7)
          {
            break;
          }

          ++v7;
          v93 -= 88;
        }

        ++v8;
        v93 = v121 + 88;
        v7 = v120 - 1;
      }

      while (v8 != v119);
      v8 = v119;
      if (v119 < v10)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v10;
    if ((result & 1) == 0)
    {
      result = sub_100097874(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v47 = *(v9 + 2);
    v46 = *(v9 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_100097874((v46 > 1), v47 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v48;
    v49 = &v9[16 * v47];
    *(v49 + 4) = v7;
    *(v49 + 5) = v8;
    v50 = *v124;
    if (!*v124)
    {
      goto LABEL_132;
    }

    if (v47)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v51 = v48 - 1;
    if (v48 >= 4)
    {
      v56 = &v9[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v9[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v9[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_41;
    }

    if (v48 == 3)
    {
      v52 = *(v9 + 4);
      v53 = *(v9 + 5);
      v62 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      v55 = v62;
LABEL_41:
      if (v55)
      {
        goto LABEL_111;
      }

      v68 = &v9[16 * v48];
      v70 = *v68;
      v69 = *(v68 + 1);
      v71 = __OFSUB__(v69, v70);
      v72 = v69 - v70;
      v73 = v71;
      if (v71)
      {
        goto LABEL_114;
      }

      v74 = &v9[16 * v51 + 32];
      v76 = *v74;
      v75 = *(v74 + 1);
      v62 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v62)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v72, v77))
      {
        goto LABEL_118;
      }

      if (v72 + v77 >= v54)
      {
        if (v54 < v77)
        {
          v51 = v48 - 2;
        }

        goto LABEL_62;
      }

      goto LABEL_55;
    }

    v78 = &v9[16 * v48];
    v80 = *v78;
    v79 = *(v78 + 1);
    v62 = __OFSUB__(v79, v80);
    v72 = v79 - v80;
    v73 = v62;
LABEL_55:
    if (v73)
    {
      goto LABEL_113;
    }

    v81 = &v9[16 * v51];
    v83 = *(v81 + 4);
    v82 = *(v81 + 5);
    v62 = __OFSUB__(v82, v83);
    v84 = v82 - v83;
    if (v62)
    {
      goto LABEL_116;
    }

    if (v84 < v72)
    {
      goto LABEL_3;
    }

LABEL_62:
    v89 = v51 - 1;
    if (v51 - 1 >= v48)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v90 = *&v9[16 * v89 + 32];
    v7 = *&v9[16 * v51 + 40];
    sub_1004016C8((*a3 + 88 * v90), (*a3 + 88 * *&v9[16 * v51 + 32]), (*a3 + 88 * v7), v50, a4);
    if (v6)
    {
    }

    if (v7 < v90)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10056D550(v9);
    }

    if (v89 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v91 = &v9[16 * v89];
    *(v91 + 4) = v90;
    *(v91 + 5) = v7;
    v187 = v9;
    result = sub_10056D4C4(v51);
    v9 = v187;
    v48 = *(v187 + 2);
    if (v48 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  result = sub_10056D550(v9);
  v9 = result;
LABEL_95:
  v187 = v9;
  v115 = *(v9 + 2);
  if (v115 < 2)
  {
  }

  while (*a3)
  {
    v116 = *&v9[16 * v115];
    v117 = *&v9[16 * v115 + 24];
    sub_1004016C8((*a3 + 88 * v116), (*a3 + 88 * *&v9[16 * v115 + 16]), (*a3 + 88 * v117), v7, a4);
    if (v6)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10056D550(v9);
    }

    if (v115 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v118 = &v9[16 * v115];
    *v118 = v116;
    *(v118 + 1) = v117;
    v187 = v9;
    result = sub_10056D4C4(v115 - 1);
    v9 = v187;
    v115 = *(v187 + 2);
    if (v115 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}