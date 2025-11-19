id sub_100004C40()
{
  v1 = (v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem____lazy_storage___manager);
  result = *(v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem____lazy_storage___manager);
  if (result)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem____lazy_storage___manager);
LABEL_6:
    swift_unknownObjectRetain();
    return v3;
  }

  v4 = *(v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_featureFlags);
    if (v5)
    {
      v6 = objc_allocWithZone(type metadata accessor for NewFeaturesFlowManager());
      v7 = v4;
      swift_unknownObjectRetain();
      v8 = sub_10005E694(v7, v5);

      *v1 = v8;
      v1[1] = &off_10032AB18;
      v3 = v8;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100004D10()
{
  *&v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_cachedViewController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle] = 0;
  *&v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_delegate] = 0;
  *&v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_featureFlags] = 0;
  *&v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_viewModel] = 0;
  v1 = &v0[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem____lazy_storage___manager];
  v2 = type metadata accessor for NewFeaturesFlowItem();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100004DD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_100004E9C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100004F5C, 0, 0);
}

uint64_t sub_100004F5C()
{
  v1 = *(sub_100004C40() + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_newFeaturesFlowHandler);
  v0[6] = v1;
  swift_retain_n();
  swift_unknownObjectRelease();
  type metadata accessor for NewFeaturesViewModel();
  swift_allocObject();
  v0[7] = sub_1000270B0(v1);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000504C;

  return sub_1000235A8();
}

uint64_t sub_10000504C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000051EC;
  }

  else
  {
    v2 = sub_100005160;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005160()
{
  v1 = v0[7];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_viewModel) = v1;

  v3 = v0[1];
  v4 = v0[9] == 0;

  return v3(v4);
}

uint64_t sub_1000051EC()
{
  static Logger.purpleBuddyGeneral.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error preparing New Features view model: %@", v3, 0xCu);
    sub_1000063A8(v4);
  }

  else
  {
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];
  v10 = v0[9] == 0;

  return v9(v10);
}

uint64_t sub_100005510(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000055B8;

  return sub_100004E9C();
}

uint64_t sub_1000055B8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id sub_100005764()
{
  v1 = OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_cachedViewController;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_cachedViewController);
  v3 = v2;
  if (!v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_viewModel);
    if (v3)
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(type metadata accessor for NewFeaturesViewController());

      v6 = v4;
      v7 = v0;
      v3 = sub_10002E60C(v5, sub_1000063A0, v6);
      v8 = *(v0 + v1);
      *(v7 + v1) = v3;
      v9 = v3;
    }
  }

  v10 = v2;
  return v3;
}

void sub_100005830()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [sub_100004C40() updatePresentedKey:1];
    swift_unknownObjectRelease();
    v2 = *&v1[OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_delegate];
    if (v2)
    {
      [v2 flowItemDone:v1];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100005964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewFeaturesFlowItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100005B1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100005BD8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100005C50(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005CD0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100005D28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_100005D6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100005D98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::Int sub_100005E34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100005E7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100005ECC@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100005F14@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005F40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100006330(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100005F80(uint64_t a1)
{
  v2 = sub_100006084(&qword_1003A0170, type metadata accessor for UIContentSizeCategory);
  v3 = sub_100006084(&qword_1003A0178, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000061A4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000061E0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100006234()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1000062A8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100006330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100006368()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000063A8(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A0320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006410(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006458()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006498()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100006544;

  return sub_100005510(v2, v3);
}

uint64_t sub_100006544()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000663C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100006A24;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_1000066FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_100006754(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006760(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006780(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100006944(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006950(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006970(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000069C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100006C88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = v7;
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "ExpressSettingsSetupCache: Set handler for: %lu", v16, 0xCu);
    v7 = v21;
  }

  (*(v11 + 8))(v13, v10);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  aBlock[4] = sub_10000A4E4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000525E0;
  aBlock[3] = &unk_100327F10;
  v18 = _Block_copy(aBlock);
  v19 = v2;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v6, v24);
  (*(v7 + 8))(v9, v22);
}

uint64_t sub_100006FD8(uint64_t a1, Swift::UInt a2)
{
  swift_beginAccess();
  sub_100009874(&v4, a2);
  return swift_endAccess();
}

uint64_t sub_100007094(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17[0] = v2;
    *v14 = 134217984;
    *(v14 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v12, v13, "ExpressSettingsSetupCache: Remove handler for: %lu", v14, 0xCu);
    v2 = v17[0];
  }

  (*(v9 + 8))(v11, v8);
  v15 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v15);
  v17[-2] = v2;
  v17[-1] = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100007304(uint64_t a1, Swift::UInt a2)
{
  swift_beginAccess();
  sub_10000A078(a2);
  return swift_endAccess();
}

uint64_t sub_1000073C4(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007830(a1);
  if (v7)
  {
    v8 = v7;
    v37 = v4;
    v38 = v3;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v1;
    for (i = v6; v10; i = v6)
    {
      v11 = 0;
      v12 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_17;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = v13;
        v6 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v13 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10004C728(0, *(v12 + 2) + 1, 1, v12);
        }

        v1 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v1 >= v16 >> 1)
        {
          v12 = sub_10004C728((v16 > 1), v1 + 1, 1, v12);
        }

        *(v12 + 2) = v1 + 1;
        *&v12[8 * v1 + 32] = v15;
        ++v11;
        if (v6 == v10)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v10 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v1;
    }

    v12 = &_swiftEmptyArrayStorage;
LABEL_20:

    v17 = sub_10000A32C(v12);

    v18 = v35;
    *&v35[OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_registeredSettings] = v17;

    v19 = i;
    static Logger.purpleBuddyGeneral.getter();
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39[0] = v24;
      *v23 = 136315138;
      type metadata accessor for BYExpressSetupFeature(0);
      sub_10000A3D8(&qword_1003A0328, type metadata accessor for BYExpressSetupFeature);

      v25 = Set.description.getter();
      v27 = v26;

      v28 = sub_100063F14(v25, v27, v39);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "ExpressSettingsSetupCache: Registered Settings: %s", v23, 0xCu);
      sub_10000A420(v24);
    }

    return (*(v37 + 8))(v19, v38);
  }

  else
  {
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v30._countAndFlagsBits = 0xD000000000000032;
    v30._object = 0x8000000100299CC0;
    String.append(_:)(v30);
    v31._object = 0x8000000100299D00;
    v31._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0x657220747562202CLL;
    v32._object = 0xEF20646576696563;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0x6E413C7961727241;
    v33._object = 0xEA00000000003E79;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0x64616574736E6920;
    v34._object = 0xE800000000000000;
    String.append(_:)(v34);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100007830(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000A46C(i, v5);
    sub_10000A52C(0, &qword_1003A0330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

BOOL sub_1000079A4(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100007A9C(uint64_t a1, uint64_t a2)
{
  object = v2;
  v75 = a2;
  v74 = a1;
  v87 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v5 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Logger();
  v7 = *(v90 - 8);
  v8 = __chkstk_darwin(v90);
  v94 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v93 = &v73 - v11;
  __chkstk_darwin(v10);
  v95 = &v73 - v12;
  v13 = *&v2[OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_queue];
  v97 = object;
  sub_100006410(&qword_1003A02F8);
  v83 = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = aBlock;
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  v18 = v16;
  v19 = 0;
  *(v16 + 16) = 0;
  v21 = v14 + 7;
  v20 = v14[7];
  v88 = v14;
  v22 = 1 << *(v14 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v73 = OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_dataSource;
  v25 = (v22 + 63) >> 6;
  v96 = &v7[1];
  v76 = &v102;
  v81 = (v92 + 1);
  v82 = (v5 + 8);
  *&v17 = 134217984;
  v89 = v17;
  v79 = object;
  v77 = v15;
  v80 = v25;
  v78 = v16;
  if ((v23 & v20) != 0)
  {
    do
    {
LABEL_8:
      v7 = *(v88[6] + ((v19 << 9) | (8 * __clz(__rbit64(v24)))));
      static Logger.purpleBuddyGeneral.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = v89;
        *(v29 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v27, v28, "ExpressSettingsSetupCache: Executing handler for: %lu", v29, 0xCu);
      }

      v30 = *v96;
      v31 = v90;
      (*v96)(v95, v90);
      dispatch_group_enter(v15);
      v32 = swift_allocObject();
      v32[2] = v15;
      v32[3] = v18;
      v32[4] = v7;
      v32[5] = object;
      v92 = v32;
      type metadata accessor for BYExpressSetupFeature(0);
      if (&v7[-1].isa + 7 < 0xC || v7 == 14)
      {
        v34 = v15;
        swift_retain_n();
        v35 = object;
        v91 = v34;
        v15 = v35;
        static Logger.purpleBuddyGeneral.getter();
        v36 = static os_log_type_t.fault.getter();
        v37 = Logger.logObject.getter();
        if (os_log_type_enabled(v37, v36))
        {
          v38 = swift_slowAlloc();
          *v38 = v89;
          *(v38 + 4) = v7;
          _os_log_impl(&_mh_execute_header, v37, v36, "Invalid express setting handler for: %lu", v38, 0xCu);
          v31 = v90;
        }

        v30(v93, v31);
        if (os_variant_has_internal_ui())
        {
          goto LABEL_33;
        }

        static Logger.purpleBuddyGeneral.getter();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = v89;
          *(v41 + 4) = v7;
          _os_log_impl(&_mh_execute_header, v39, v40, "ExpressSettingsSetupCache: Finished applying handler for: %lu", v41, 0xCu);
        }

        v30(v94, v31);
        v42 = swift_allocObject();
        *(v42 + 16) = v15;
        *(v42 + 24) = v7;
        v104 = sub_100009774;
        v105 = v42;
        aBlock = _NSConcreteStackBlock;
        v101 = 1107296256;
        v102 = sub_1000525E0;
        v103 = &unk_100327E20;
        v43 = _Block_copy(&aBlock);
        v7 = v15;
        v44 = v84;
        static DispatchQoS.unspecified.getter();
        v99 = &_swiftEmptyArrayStorage;
        sub_10000A3D8(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
        sub_100006410(&unk_1003A0440);
        sub_10000977C();
        v45 = v86;
        v46 = v87;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v43);
        (*v81)(v45, v46);
        (*v82)(v44, v85);

        dispatch_group_leave(v91);

        v18 = v78;
        object = v79;
        v15 = v77;
      }

      else
      {
        if (v7 != 13)
        {
          goto LABEL_34;
        }

        v47 = *&object[v73];
        if (v47)
        {
          v48 = v15;
          swift_retain_n();
          v49 = object;
          v50 = v48;
          v51 = v49;
          v52 = [v47 stolenDeviceProtectionStrictModeEnabled];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 BOOLValue];
          }

          else
          {
            v54 = 0;
          }

          object = v79;
        }

        else
        {
          v55 = v15;
          swift_retain_n();
          v56 = object;
          v57 = v55;
          v58 = v56;
          v54 = 0;
        }

        v59 = type metadata accessor for StolenDeviceProtectionExpressSettingDeferredHandler();
        v60 = objc_allocWithZone(v59);
        v60[OBJC_IVAR____TtC5Setup51StolenDeviceProtectionExpressSettingDeferredHandler_includesStrictMode] = v54;
        v98.receiver = v60;
        v98.super_class = v59;
        v61 = objc_msgSendSuper2(&v98, "init");
        sub_100046C74(sub_100009730, v92);
      }

      v24 &= v24 - 1;

      v25 = v80;
    }

    while (v24);
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      v62 = swift_allocObject();
      v63 = v75;
      v62[2] = v74;
      v62[3] = v63;
      v62[4] = v18;
      v104 = sub_100009868;
      v105 = v62;
      aBlock = _NSConcreteStackBlock;
      v101 = 1107296256;
      v102 = sub_10002E3B4;
      v103 = &unk_100327E70;
      v64 = _Block_copy(&aBlock);

      v65 = v15;
      v66 = v84;
      static DispatchQoS.unspecified.getter();
      v99 = &_swiftEmptyArrayStorage;
      sub_10000A3D8(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006410(&unk_1003A0440);
      sub_10000977C();
      v67 = v86;
      v68 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v64);

      (*v81)(v67, v68);
      (*v82)(v66, v85);
    }

    v24 = v21[v26];
    ++v19;
    if (v24)
    {
      v19 = v26;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  aBlock = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  aBlock = 0xD000000000000025;
  v101 = 0x8000000100299C90;
  v99 = v7;
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v70._object;
  String.append(_:)(v70);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_34:
  v71 = v15;

  v72 = object;

  aBlock = &v7->isa;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_10000868C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v45 = a4;
  v47 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Logger();
  v14 = *(v46 - 8);
  v15 = __chkstk_darwin(v46);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  if (a1)
  {
    swift_beginAccess();
    v20 = *(a3 + 16);
    if (!v20)
    {
      v21 = a1;
      v20 = a1;
    }

    swift_beginAccess();
    *(a3 + 16) = v20;
    v22 = a1;
    static Logger.purpleBuddyGeneral.getter();
    v23 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 134218242;
      *(v26 + 4) = v45;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = a1;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "ExpressSettingsSetupCache: Error applying handler for: %lu, %@", v26, 0x16u);
      sub_1000063A8(v27);
    }

    else
    {
      v28 = v24;
      v24 = v23;
    }

    (*(v14 + 8))(v19, v46);
  }

  else
  {
    v39 = v13;
    v40 = v9;
    v41 = v11;
    v42 = v10;
    static Logger.purpleBuddyGeneral.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v29, v30, "ExpressSettingsSetupCache: Finished applying handler for: %lu", v31, 0xCu);
    }

    (*(v14 + 8))(v17, v46);
    v32 = v43;
    v33 = swift_allocObject();
    v34 = v45;
    *(v33 + 16) = v32;
    *(v33 + 24) = v34;
    aBlock[4] = sub_10000A598;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000525E0;
    aBlock[3] = &unk_100327EC0;
    v35 = _Block_copy(aBlock);
    v36 = v32;
    v37 = v39;
    static DispatchQoS.unspecified.getter();
    v48 = &_swiftEmptyArrayStorage;
    sub_10000A3D8(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006410(&unk_1003A0440);
    sub_10000977C();
    v38 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v44 + 8))(v38, v7);
    (*(v41 + 8))(v37, v42);
  }

  dispatch_group_leave(v47);
}

uint64_t sub_100008BE0(uint64_t a1, Swift::UInt a2)
{
  swift_beginAccess();
  sub_10000A078(a2);
  return swift_endAccess();
}

void sub_100008C44(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

void sub_100008D38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100008D9C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v1;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "ExpressSettingsSetupCache: Reset handlers", v15, 2u);
    v1 = v21;
  }

  (*(v10 + 8))(v12, v9);
  static DispatchWorkItemFlags.barrier.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  aBlock[4] = sub_10000962C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000525E0;
  aBlock[3] = &unk_100327D80;
  v17 = _Block_copy(aBlock);
  v18 = v1;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v3 + 8))(v5, v2);
  (*(v22 + 8))(v8, v23);
}

uint64_t sub_100009124()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v5;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "ExpressSettingsSetupCache: Reset cache", v15, 2u);
    v5 = v21;
  }

  (*(v10 + 8))(v12, v9);
  sub_100008D9C();
  static DispatchWorkItemFlags.barrier.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  aBlock[4] = sub_1000095B8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000525E0;
  aBlock[3] = &unk_100327D30;
  v17 = _Block_copy(aBlock);
  v18 = v1;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v3 + 8))(v5, v2);
  (*(v22 + 8))(v8, v23);
}

id sub_1000094BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressSettingsSetupCacheManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009580()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000095B8()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_registeredSettings) = &_swiftEmptySetSingleton;

  *(v1 + OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_dataSource) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_100009614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000962C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_expressFeaturesToApply;
  swift_beginAccess();
  *(v1 + v2) = &_swiftEmptySetSingleton;
}

uint64_t sub_100009684@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC5Setup32ExpressSettingsSetupCacheManager_expressFeaturesToApply;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_1000096E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000973C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000977C()
{
  result = qword_1003A0310;
  if (!qword_1003A0310)
  {
    sub_1000097E0(&unk_1003A0440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0310);
  }

  return result;
}

uint64_t sub_1000097E0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009828()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009874(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100009BBC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10000996C()
{
  v1 = v0;
  v2 = *v0;
  sub_100006410(&qword_1003A0318);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_100009BBC(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000996C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100009D18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100009E58();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for BYExpressSetupFeature(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100009D18()
{
  v1 = v0;
  sub_100006410(&qword_1003A0318);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100009E58()
{
  v1 = v0;
  v2 = *v0;
  sub_100006410(&qword_1003A0318);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000A078(Swift::UInt a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100009D18();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10000A184(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_10000A184(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000A32C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for BYExpressSetupFeature(0);
  sub_10000A3D8(&qword_1003A0328, type metadata accessor for BYExpressSetupFeature);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100009874(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10000A3D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A420(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000A46C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A4EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A52C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10000A5B0()
{
  v1 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected];

    if (v6 == 1)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }

  v4 = 0;
LABEL_14:

  return v4;
}

uint64_t sub_10000A6B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = UIAccessibilityTraitButton;
    v27 = UIAccessibilityTraitSelected;
    v25 = UIAccessibilityTraitSelected | UIAccessibilityTraitButton;
    v26 = UIAccessibilityTraitSelected & UIAccessibilityTraitButton;
    v28 = UIAccessibilityTraitButton;
    while (1)
    {
      if (v7)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_27;
        }

        v16 = *(v4 + 8 * v6 + 32);
      }

      v15 = v16;
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v18 = a1 == v6;
      v19 = v16[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected];
      v16[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected] = v18;
      if ((v18 ^ v19))
      {
        break;
      }

LABEL_9:

      ++v6;
      if (v17 == v5)
      {
      }
    }

    if (a1 != v6)
    {
      [v16 setAccessibilityTraits:v9];
      v20 = String._bridgeToObjectiveC()();
      v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:0];

      if (v21)
      {
        v22 = [v21 imageWithRenderingMode:2];
      }

      else
      {
        v22 = 0;
      }

      v23 = *&v15[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView];
      [v23 setImage:{v22, v25}];
      v14 = [objc_opt_self() placeholderTextColor];
      [v23 setTintColor:v14];

      v15 = v22;
      goto LABEL_8;
    }

    if (v9)
    {
      v10 = v9;
      if (v26 == v27)
      {
        goto LABEL_7;
      }
    }

    else if (!v27)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v10 = v25;
LABEL_7:
    [v16 setAccessibilityTraits:{v10, v25}];
    v11 = *&v15[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView];
    v12 = *&v15[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_selectedSymbolConfiguration];
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    [v11 setImage:v14];
    v7 = v4 & 0xC000000000000001;
LABEL_8:

    v15 = v14;
    v9 = v28;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_9;
  }
}

id sub_10000AA18()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_viewModel;
  swift_beginAccess();
  v48 = v2;
  v3 = *(*sub_10000B444(v2, *(v2 + 24)) + 16);
  v4 = *(v3 + 16);
  v5 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews;
  v50 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_stackView;

  if (v4)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v49 = v3 + 32;
      v8 = *(v3 + 32 + v6);
      v9 = 0x4D554944454DLL;
      if (v8 != 2)
      {
        v9 = 0x454752414CLL;
      }

      v10 = 0xE500000000000000;
      v11 = 0xE600000000000000;
      if (v8 != 2)
      {
        v11 = 0xE500000000000000;
      }

      v12 = 0x4C4C414D53;
      if (*(v49 + v6))
      {
        v12 = 0x544C5541464544;
        v10 = 0xE700000000000000;
      }

      if (*(v49 + v6) <= 1u)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9;
      }

      if (*(v49 + v6) <= 1u)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      v15 = [objc_opt_self() mainBundle];
      v52._object = 0xE000000000000000;
      v16._countAndFlagsBits = v13;
      v16._object = v14;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0;
      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v52);

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v6;
      v21 = objc_allocWithZone(type metadata accessor for BuddyAppearanceCheckBoxView());
      sub_10001905C(v18._countAndFlagsBits, v18._object, sub_10000B4F8, v20);
      v23 = v22;
      swift_beginAccess();
      v24 = v23;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v2 = v1 + v5;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [*&v50[v1] addArrangedSubview:v24];

      ++v6;
      if (v4 == v7)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_19:

  v25 = sub_10000B444(v48, v48[3]);
  v26 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews;
  if ((*(*v25 + 32) & 1) == 0)
  {
    result = swift_beginAccess();
    v36 = *(v1 + v26);
    if (v36 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v37 = result;
      if (!result)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_43;
      }
    }

    if (v37 < 1)
    {
      goto LABEL_52;
    }

    v51 = *(v1 + OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_stackView);

    v38 = 0;
    v39 = v26;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      v42 = [v41 widthAnchor];
      v43 = [v51 widthAnchor];
      v44 = *(v1 + v26);
      if (v44 >> 62)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v38;
      v46 = [v42 constraintLessThanOrEqualToAnchor:v43 multiplier:1.0 / v45 constant:8.0];

      [v46 setActive:1];
      v26 = v39;
    }

    while (v37 != v38);

LABEL_43:
    v47 = *(v1 + OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_stackView);
    [v47 setDistribution:4];
LABEL_48:
    [v1 addSubview:v47];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v47 setSpacing:8.0];
    return [v47 pinToEdges:v1];
  }

  result = swift_beginAccess();
  v2 = *(v1 + v26);
  if (!(v2 >> 62))
  {
    v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
LABEL_46:
      v32 = 0;
LABEL_47:
      v47 = *(v1 + OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_stackView);
      [v47 setDistribution:0];

      goto LABEL_48;
    }

    goto LABEL_22;
  }

LABEL_45:
  result = _CocoaArrayWrapper.endIndex.getter();
  v28 = result;
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_22:
  if (v28 >= 1)
  {

    v29 = 0;
    for (i = 0; i != v28; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v2 + 8 * i + 32);
      }

      v32 = v31;
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (v29)
      {
        v33 = [v32 widthAnchor];
        v34 = [v29 widthAnchor];
        v35 = [v33 constraintEqualToAnchor:v34];

        [v35 setActive:1];
      }

      v29 = v32;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_10000B034(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v6 = Strong + OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_viewModel;
      v7 = Strong;
      swift_beginAccess();
      v8 = *(v6 + 24);
      v9 = *(v6 + 32);
      sub_10000B500(v6, v8);
      (*(v9 + 32))(a3, 0, v8, v9);
      swift_endAccess();
      Strong = v7;
    }
  }
}

void sub_10000B148()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for BuddyAppearanceCheckboxContainerView();
  objc_msgSendSuper2(&v20, "intrinsicContentSize");
  v1 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {

        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v4 = *(v2 + 32);

        v5 = v4;
      }

      v6 = v5;
      if (v3 == 1)
      {
        break;
      }

      v16 = 1;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v16 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v17 = *(v2 + 8 * v16 + 32);
        }

        v7 = v17;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v6 frame];
        Height = CGRectGetHeight(v22);
        [v7 frame];
        if (CGRectGetHeight(v23) < Height)
        {

          v6 = v7;
          ++v16;
          if (v18 == v3)
          {
            goto LABEL_8;
          }
        }

        else
        {

          ++v16;
          if (v18 == v3)
          {
            goto LABEL_7;
          }
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        return;
      }
    }

LABEL_7:
    v7 = v6;
LABEL_8:

    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    CGRectGetHeight(v21);
  }
}

id sub_10000B388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyAppearanceCheckboxContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10000B444(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B488()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B4C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B500(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_10000B550()
{
  v1 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_stackView;
  v2 = objc_allocWithZone(UIStackView);
  v3 = v0;
  *&v0[v1] = [v2 init];
  *&v3[OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews] = &_swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(40);
  swift_getObjectType();
  _typeName(_:qualified:)();

  v4._object = 0x8000000100299EB0;
  v4._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000B644(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_10000B690(uint64_t a1)
{
  v2 = [objc_opt_self() defaultController];
  v3 = [v2 currentDisplayZoomMode];

  v4 = [v3 displayZoomOption];
  if (!a1)
  {
    if (v4 == 1)
    {
      v5 = &UIContentSizeCategoryLarge;
      goto LABEL_9;
    }

    return 0;
  }

  if (a1 == 2)
  {
    v5 = &UIContentSizeCategorySmall;
    goto LABEL_9;
  }

  if (a1 != 1 || v4 == 1)
  {
    return 0;
  }

  v5 = &UIContentSizeCategoryExtraExtraLarge;
LABEL_9:
  v6 = *v5;
  v7 = *v5;
  return v6;
}

UIContentSizeCategory sub_10000B768()
{
  qword_1003A7558 = 0;
  byte_1003A7560 = 0;
  qword_1003A7568 = UIContentSizeCategoryLarge;
  byte_1003A7570 = 0;
  return UIContentSizeCategoryLarge;
}

uint64_t sub_10000B790(uint64_t a1, char a2, uint64_t a3, char a4)
{
  _StringGuts.grow(_:)(142);
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x8000000100299F50;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x8000000100299F80;
  String.append(_:)(v8);
  if (a2)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (a2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._object = 0x8000000100299FB0;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v12);
  type metadata accessor for UIContentSizeCategory(0);
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v13._object = 0x8000000100299FD0;
  String.append(_:)(v13);
  if (a4)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (a4)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 0x29202020200ALL;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  return 0;
}

void sub_10000B950(uint64_t a1, char a2, void *a3)
{
  v41 = a1;
  v42 = type metadata accessor for URL();
  v5 = *(v42 - 8);
  v6 = __chkstk_darwin(v42);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  if (a2)
  {
    v11 = 5002322;
  }

  else
  {
    v11 = 5395532;
  }

  if (a3 && [a3 userInterfaceStyle] == 2)
  {
    v12 = 0xE400000000000000;
    v13 = 1802658116;
  }

  else
  {
    v12 = 0xE500000000000000;
    v13 = 0x746867694CLL;
  }

  v14 = String.lowercased()();

  v43 = v11;
  v44 = 0xE300000000000000;

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);

  v16._countAndFlagsBits = v13;
  v16._object = v12;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  String.append(_:)(v14);

  v18 = [objc_opt_self() mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 URLForResource:v19 withExtension:v20];

  if (v21)
  {

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = v42;
    (*(v5 + 32))(v10, v8, v42);
    sub_100006410(&qword_1003A1400);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002977D0;
    v24 = objc_allocWithZone(OBAnimationState);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 initWithStateName:v25 transitionDuration:1.0 transitionSpeed:1.0];

    *(v23 + 32) = v26;
    v27 = objc_allocWithZone(OBAnimationState);
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 initWithStateName:v28 transitionDuration:1.0 transitionSpeed:1.0];

    *(v23 + 40) = v29;
    v30 = objc_allocWithZone(OBAnimationState);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithStateName:v31 transitionDuration:1.0 transitionSpeed:1.0];

    *(v23 + 48) = v32;
    v33 = objc_allocWithZone(OBAnimationState);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 initWithStateName:v34 transitionDuration:1.0 transitionSpeed:1.0];

    *(v23 + 56) = v35;
    v36 = objc_allocWithZone(OBAnimationController);
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    sub_10000D1A4(0, &unk_1003A03C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 initWithUrlToPackage:v39 animationView:v41 animatedStates:isa startAtFirstState:0];

    (*(v5 + 8))(v10, v22);
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_10000BE84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000BEF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10000BF3C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000CE60(*a1);
  *a2 = result;
  return result;
}

id *sub_10000C004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005ADAC(0, v1, 0);
  v21 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v20 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v21 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = [*(*(a1 + 56) + 8 * v4) displayZoomOption];
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      v19 = result;
      sub_10005ADAC((v10 > 1), v11 + 1, 1);
      result = v19;
    }

    _swiftEmptyArrayStorage[2] = (v11 + 1);
    _swiftEmptyArrayStorage[v11 + 4] = result;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v12 = *(v21 + 8 * v8);
    if ((v12 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v13 = v12 & (-2 << (v4 & 0x3F));
    if (v13)
    {
      v6 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v20;
    }

    else
    {
      v14 = v8 << 6;
      v15 = v8 + 1;
      v7 = v20;
      v16 = (a1 + 72 + 8 * v8);
      while (v15 < (v6 + 63) >> 6)
      {
        v18 = *v16++;
        v17 = v18;
        v14 += 64;
        ++v15;
        if (v18)
        {
          result = sub_10000D198(v4, v9, 0);
          v6 = __clz(__rbit64(v17)) + v14;
          goto LABEL_4;
        }
      }

      result = sub_10000D198(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_10000C230(unsigned __int8 a1)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultController];
  v5 = [v4 currentDisplayZoomMode];

  v6 = [v5 displayZoomOption];
  v7 = *(v1 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService);
  v8 = [v7 isLargeIconLayoutEnabled];
  v9 = sub_100046B84();
  v10 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v11 = sub_10000CC24(v6, v8, v9, v10);

  if (v11 == 4 || v11 != a1)
  {
    v12 = sub_10000CB10(a1);
    v14 = v13;
    v16 = v15;
    v17 = [v3 defaultController];
    v18 = [v17 currentDisplayZoomMode];

    v19 = [v18 displayZoomOption];
    if (v19 == v12 || (v20 = sub_10000B690(v12)) == 0)
    {
      v20 = v16;
    }

    v21 = v20;
    [v7 setLargeIconLayoutEnabled:v14 & 1];
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v24 = qword_10039F9E0;
    v25 = v22;
    v28 = v25;
    if (v24 != -1)
    {
      swift_once();
      v25 = v28;
    }

    CFPreferencesSetAppValue(v23, v25, qword_1003A1B40);

    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    v27 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(v26, v27, 0, 0, 1u);

    _AXSSetEnhanceTextLegibilityEnabled();
  }
}

uint64_t sub_10000C4E0(uint64_t a1, int a2, void *a3, char a4)
{
  v8 = objc_opt_self();
  v9 = [v8 defaultController];
  v10 = [v9 currentDisplayZoomMode];

  v11 = [v10 displayZoomOption];
  v12 = [*(v4 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) isLargeIconLayoutEnabled];
  v13 = sub_100046B84();
  v26 = _AXSEnhanceTextLegibilityEnabled();
  v14 = [v8 defaultController];
  v15 = [v14 currentDisplayZoomMode];

  v16 = [v15 displayZoomOption];
  if (v16 == a1)
  {
    v17 = a3;
    if (v11 != a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = sub_10000B690(a1);
    if (!v18)
    {
      v18 = a3;
    }

    v17 = v18;
    if (v11 != v16)
    {
      goto LABEL_8;
    }
  }

  if (((v12 ^ a2) & 1) == 0)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v19 = 0;
      if ((v25 & 1) == 0)
      {
        return v19 & 1;
      }
    }

    v19 = (v26 == 0) ^ a4;
    return v19 & 1;
  }

LABEL_8:

  v19 = 0;
  return v19 & 1;
}

id sub_10000C71C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppearanceModeProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for AppearanceMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppearanceMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C934()
{
  result = qword_1003A03B0;
  if (!qword_1003A03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A03B0);
  }

  return result;
}

void sub_10000C988()
{
  v0 = [objc_opt_self() defaultController];
  v1 = [v0 displayZoomModes];

  sub_10000D1A4(0, &qword_1003A03B8);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = *(*(v2 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
      if ([v9 displayZoomOption] == 2)
      {
        break;
      }

      v5 &= v5 - 1;

      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10000CB10(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0;
    }

    else
    {
      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 sf_deviceSupportsDisplayZoom];

      result = 0;
      if (v3)
      {
        sub_10000C988();
        if ((v4 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  else if (a1)
  {
    if (qword_10039F9C0 != -1)
    {
      swift_once();
    }

    return qword_1003A7558;
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t sub_10000CC24(uint64_t a1, int a2, uint64_t a3, int a4)
{
  for (i = 0; i != 4; ++i)
  {
    v7 = *(&off_1003277C0 + i + 32);
    if (*(&off_1003277C0 + i + 32) > 1u)
    {
      if (v7 == 2)
      {
        v11 = 0;
        v8 = 1;
        v10 = UIContentSizeCategoryExtraLarge;
      }

      else
      {
        v12 = [objc_opt_self() currentDevice];
        v13 = [v12 sf_deviceSupportsDisplayZoom];

        if ((v13 & 1) != 0 && (sub_10000C988(), (v14 & 1) == 0))
        {
          v11 = 1;
          v10 = UIContentSizeCategoryExtraLarge;
          v8 = 1;
        }

        else
        {
          v11 = 0;
          v8 = 1;
          v10 = UIContentSizeCategoryExtraExtraLarge;
        }
      }

      v9 = 1;
    }

    else if (*(&off_1003277C0 + i + 32))
    {
      if (qword_10039F9C0 != -1)
      {
        swift_once();
      }

      v11 = qword_1003A7558;
      v8 = byte_1003A7560;
      v10 = qword_1003A7568;
      v9 = byte_1003A7570;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = UIContentSizeCategoryLarge;
      v11 = 2;
    }

    v15 = v10;
    v16 = v15;
    if (v11 != a1 || ((v8 ^ a2) & 1) != 0)
    {

      continue;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        continue;
      }
    }

    if (((v9 ^ a4) & 1) == 0)
    {
      return v7;
    }
  }

  return 4;
}

unint64_t sub_10000CE60(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

id *sub_10000CE70(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      type metadata accessor for BYDeviceType(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 sf_deviceSupportsDisplayZoom];

    if (v3)
    {
      v1 = &off_1003277E8;
    }

    else
    {
      v1 = &off_100327810;
    }
  }

  else
  {
    v1 = &off_100327838;
  }

  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 sf_deviceSupportsDisplayZoom];

  if (v6)
  {
    v7 = [objc_opt_self() defaultController];
    v8 = [v7 displayZoomModes];

    sub_10000D1A4(0, &qword_1003A03B8);
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_10000C004(v9);

    v11 = v1[2];
    if (v11)
    {
      v12 = 0;
      v13 = v1 + 4;
      do
      {
        v16 = v12[v13];
        if (v16 > 1)
        {
          v17 = 0;
          if (v16 != 2)
          {
            v18 = [v4 currentDevice];
            v19 = [v18 sf_deviceSupportsDisplayZoom];

            if (v19)
            {
              sub_10000C988();
              if ((v20 & 1) == 0)
              {
                v17 = 1;
              }
            }
          }
        }

        else if (v12[v13])
        {
          if (qword_10039F9C0 != -1)
          {
            swift_once();
          }

          v17 = qword_1003A7558;
        }

        else
        {
          v17 = 2;
        }

        v21 = v10[2];
        v22 = 4;
        while (v21)
        {
          v23 = v10[v22++];
          --v21;
          if (v23 == v17)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10005AD8C(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v15 = _swiftEmptyArrayStorage[2];
            v14 = _swiftEmptyArrayStorage[3];
            if (v15 >= v14 >> 1)
            {
              sub_10005AD8C((v14 > 1), (v15 + 1), 1);
            }

            _swiftEmptyArrayStorage[2] = v15 + 1;
            *(&_swiftEmptyArrayStorage[4] + v15) = v16;
            break;
          }
        }

        ++v12;
      }

      while (v12 != v11);
    }

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_10000D198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000D1A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_10000D1F8()
{
  v1 = &v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_name];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_childAge] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_delegate] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_capabilities] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager] = 0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0xE000000000000000;
  v4._object = 0x800000010029A4E0;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  v6 = [v2 mainBundle];
  v16._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x800000010029A500;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BuddyMultitaskingController();
  v12 = objc_msgSendSuper2(&v14, "initWithTitle:detailText:symbolName:contentLayout:", v9, v10, v11, 2);

  return v12;
}

void sub_10000D414()
{
  v49.receiver = v0;
  v49.super_class = type metadata accessor for BuddyMultitaskingController();
  objc_msgSendSuper2(&v49, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_name + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_name];

    v3 = [v0 headerView];
    v4 = [objc_opt_self() mainBundle];
    v50._object = 0xE000000000000000;
    v5._countAndFlagsBits = 0xD00000000000001CLL;
    v5._object = 0x800000010029A4C0;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v50);

    sub_100006410(&qword_1003A0450);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002978B0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000EEE4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
    String.init(format:_:)();

    v8 = String._bridgeToObjectiveC()();

    [v3 setTitle:v8];
  }

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v51._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x800000010029A3E0;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v51);

  v13 = String._bridgeToObjectiveC()();

  v14 = [v9 mainBundle];
  v52._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x800000010029A3C0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v52);

  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  [v0 addMultitaskingBulletedListItemWithTitle:v13 description:v17 symbolName:v18];

  v19 = [v9 mainBundle];
  v53._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000015;
  v20._object = 0x800000010029A400;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v53);

  v22 = String._bridgeToObjectiveC()();

  v23 = [v9 mainBundle];
  v54._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000016;
  v24._object = 0x800000010029A420;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v54);

  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();
  [v0 addMultitaskingBulletedListItemWithTitle:v22 description:v26 symbolName:v27];

  v28 = [v9 mainBundle];
  v55._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x800000010029A460;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v55);

  v31 = String._bridgeToObjectiveC()();

  v32 = [v9 mainBundle];
  v56._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x800000010029A480;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v56);

  v35 = String._bridgeToObjectiveC()();

  v36 = String._bridgeToObjectiveC()();
  [v0 addMultitaskingBulletedListItemWithTitle:v31 description:v35 symbolName:v36];

  v37 = [objc_opt_self() boldButton];
  v38 = [v9 mainBundle];
  v57._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0x45554E49544E4F43;
  v39._object = 0xE800000000000000;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v57);

  v41 = String._bridgeToObjectiveC()();

  [v37 setTitle:v41 forState:0];

  [v37 addTarget:v0 action:"continueTapped" forControlEvents:64];
  v42 = [v0 buttonTray];
  [v42 addButton:v37];

  v43 = [objc_opt_self() linkButton];
  v44 = [v9 mainBundle];
  v58._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0xD00000000000001ELL;
  v45._object = 0x800000010029A4A0;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v58);

  v47 = String._bridgeToObjectiveC()();

  [v43 setTitle:v47 forState:0];

  [v43 addTarget:v0 action:"useDefaultSettingsTapped" forControlEvents:64];
  v48 = [v0 buttonTray];
  [v48 addButton:v43];
}

id sub_10000DB9C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BuddyMultitaskingController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  result = *&v1[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager];
  if (result)
  {
    [result clearActionForFeature:16];
    result = *&v1[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager];
    if (result)
    {
      return [result setChildMultitaskingSetupEventBlock:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000DC7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_delegate);
  if (!v1)
  {
    return;
  }

  v2 = objc_allocWithZone(NSNumber);
  swift_unknownObjectRetain();
  v3 = [v2 initWithInteger:1];
  v4 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager);
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v4 recordActionWithValue:v3 forFeature:16];
  v5 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_childAge);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v21[4] = sub_10000EE9C;
  v21[5] = v7;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10000E020;
  v21[3] = &unk_100328128;
  v8 = _Block_copy(v21);
  v9 = v6;
  v10 = v5;

  [v10 setChildMultitaskingSetupEventBlock:v8];
  _Block_release(v8);

  if (qword_10039F9F8 != -1)
  {
    swift_once();
  }

  v11 = qword_1003A7578;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v11 setValue:isa forKey:v13];

  v14 = Bool._bridgeToObjectiveC()().super.super.isa;
  v15 = String._bridgeToObjectiveC()();
  [v11 setValue:v14 forKey:v15];

  v16 = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = String._bridgeToObjectiveC()();
  [v11 setValue:v16 forKey:v17];

  v18 = Bool._bridgeToObjectiveC()().super.super.isa;
  v19 = String._bridgeToObjectiveC()();
  [v11 setValue:v18 forKey:v19];

  v20 = [objc_allocWithZone(BYMultitaskingGestures) init];
  [v20 setMultitaskingWasTurnedOff:1];

  [v1 flowItemDone:v0];
  swift_unknownObjectRelease();
}

id sub_10000DFB4(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v3 = [objc_allocWithZone(BMSystemSettingsChildMultitaskingSetup) initWithEnabled:v2 age:a1];

  return v3;
}

id sub_10000E020(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_10000E0B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_delegate);
  if (!v1)
  {
    return;
  }

  v2 = objc_allocWithZone(NSNumber);
  swift_unknownObjectRetain();
  v3 = [v2 initWithInteger:0];
  v4 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager);
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v4 recordActionWithValue:v3 forFeature:16];
  v5 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_childAge);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v18[4] = sub_10000EE18;
  v18[5] = v7;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000E020;
  v18[3] = &unk_1003280D8;
  v8 = _Block_copy(v18);
  v9 = v6;
  v10 = v5;
  v11 = v3;

  [v10 setChildMultitaskingSetupEventBlock:v8];
  _Block_release(v8);

  if (qword_10039F9F8 != -1)
  {
    swift_once();
  }

  v12 = qword_1003A7578;
  v13 = String._bridgeToObjectiveC()();
  [v12 removeObjectForKey:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 removeObjectForKey:v14];

  v15 = String._bridgeToObjectiveC()();
  [v12 removeObjectForKey:v15];

  v16 = String._bridgeToObjectiveC()();
  [v12 removeObjectForKey:v16];

  v17 = [objc_allocWithZone(BYMultitaskingGestures) init];
  [v17 setMultitaskingWasTurnedOff:0];

  [v1 flowItemDone:v0];
  swift_unknownObjectRelease();
}

uint64_t sub_10000E468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E56C()
{
  if (!*(v0 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_runState))
  {
    return 0;
  }

  if ([swift_unknownObjectRetain() hasCompletedInitialRun])
  {
    v1 = 0;
LABEL_6:
    swift_unknownObjectRelease();
    return v1;
  }

  v2 = [objc_opt_self() currentDevice];
  v1 = [v2 type];

  if (v1 <= 1)
  {
    goto LABEL_6;
  }

  type metadata accessor for BYDeviceType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10000E678(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ECD0();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v22;
  v14[2] = v21;
  v14[3] = v15;
  v16 = v23;
  v14[4] = v23;
  aBlock[4] = sub_10000ED5C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000525E0;
  aBlock[3] = &unk_100328088;
  v17 = _Block_copy(aBlock);

  v18 = v16;
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v24);
}

void sub_10000E9CC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(ACAccountStore) init];
  v6 = [v5 aa_primaryAppleAccount];
  if (v6)
  {
    v16 = v6;
    v7 = [v6 aa_firstName];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = (a3 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_name);
    *v13 = v9;
    v13[1] = v11;

    v14 = sub_10002BF04();
    v15 = *(a3 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_childAge);
    *(a3 + OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_childAge) = v14;

    a1(1);
    v12 = v16;
  }

  else
  {
    a1(1);
    v12 = v5;
  }
}

id sub_10000EBD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyMultitaskingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000ECD0()
{
  result = qword_1003A0430;
  if (!qword_1003A0430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A0430);
  }

  return result;
}

uint64_t sub_10000ED1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ED68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000ED80()
{
  result = qword_1003A0300;
  if (!qword_1003A0300)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0300);
  }

  return result;
}

uint64_t sub_10000EDD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000EE18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(BMSystemSettingsChildMultitaskingSetup);

  return [v3 initWithEnabled:v1 age:v2];
}

uint64_t sub_10000EE64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EEA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000EEE4()
{
  result = qword_1003A0930;
  if (!qword_1003A0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0930);
  }

  return result;
}

uint64_t static GenerativeModelsAvailability.setupAssistantInstance.getter()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  return (*(v1 + 8))(v3, v0);
}

void *GenerativeModelsAvailability.unavailabilityReasons.getter()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.availability.getter();
  if ((*(v1 + 88))(v3, v0) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return &_swiftEmptySetSingleton;
  }
}

void *sub_10000F21C()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.availability.getter();
  if ((*(v1 + 88))(v3, v0) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return &_swiftEmptySetSingleton;
  }
}

id IntelligenceStateProvider.__allocating_init(generativeModelProvider:preferences:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = sub_10000B500(a1, v6);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_100011110(v10, a2, v5, v6, v7);
  sub_100011C4C(a1);
  return v12;
}

id IntelligenceStateProvider.init(generativeModelProvider:preferences:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = sub_10000B500(a1, v5);
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_100011110(v9, a2, v2, v5, v6);
  sub_100011C4C(a1);
  return v11;
}

uint64_t sub_10000F618()
{
  sub_10000FF68();
  if (v1)
  {
    type metadata accessor for GMOptIn();
    v2 = static GMOptIn.shared.getter();
    dispatch thunk of GMOptIn.state.getter();
  }

  v3 = GMOptIn.State.rawValue.getter();
  v4 = v3 == GMOptIn.State.rawValue.getter();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10000F830(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10000F8A8, 0, 0);
}

uint64_t sub_10000F8A8()
{
  sub_10000FF68();
  if (v1)
  {
    type metadata accessor for GMOptIn();
    v2 = static GMOptIn.shared.getter();
    dispatch thunk of GMOptIn.state.getter();
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = GMOptIn.State.rawValue.getter();
  v6 = GMOptIn.State.rawValue.getter();

  (v3)[2](v3, v5 == v6, 0);
  _Block_release(v3);
  v7 = v0[1];

  return v7();
}

Swift::Void __swiftcall IntelligenceStateProvider.applyStashedIsIntelligenceEnabled(_:)(Swift::Bool a1)
{
  type metadata accessor for GMOptIn();
  v1 = static GMOptIn.shared.getter();
  dispatch thunk of GMOptIn.isOptedIn.setter();
}

Swift::Bool __swiftcall IntelligenceStateProvider.wasOfferedIntelligence()()
{
  sub_10000FF68();
  if (v0)
  {
    type metadata accessor for GMOptIn();
    v1 = static GMOptIn.shared.getter();
    dispatch thunk of GMOptIn.state.getter();
  }

  v2 = GMOptIn.State.rawValue.getter();
  return v2 != GMOptIn.State.rawValue.getter();
}

Swift::Bool __swiftcall IntelligenceStateProvider.canEnableIntelligence()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider + 32);
  sub_10000B444((v0 + OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider), v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_100006410(&qword_1003A0460);
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002978B0;
  (*(v5 + 104))(v7 + v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:), v4);
  v8 = sub_100010398(v7, v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9 = v8[2];

  return v9 == 0;
}

uint64_t sub_10000FF68()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_preferences);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {
    sub_100011BEC(v21, &qword_1003A04B8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = v18;
  if (v18 > 2)
  {
    return 0;
  }

  static Logger.purpleBuddyGeneral.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v21[0] = v12;
    *v11 = 136315138;
    if (v8)
    {
      if (v8 == 1)
      {
        v13 = 0x6E6920646574704FLL;
      }

      else
      {
        v13 = 0x756F20646574704FLL;
      }

      if (v8 == 1)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0xE900000000000074;
      }
    }

    else
    {
      v14 = 0xED000065636E6572;
      v13 = 0x6566657270206F4ELL;
    }

    v16 = sub_100063F14(v13, v14, v21);

    *(v11 + 4) = v16;
    sub_100011C4C(v12);
  }

  (*(v2 + 8))(v4, v1);
  if (!v8)
  {
    return 0;
  }

  if (v8 == 1)
  {
    return v8;
  }

  return 2;
}

id IntelligenceStateProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntelligenceStateProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceStateProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100010398(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v48 - v9;
  __chkstk_darwin(v8);
  i = v48 - v11;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = a2 + 7;
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_100011B5C(&qword_1003A0498);
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, v58[6] + v20 * v59, v4);
    sub_100011B5C(&qword_1003A04A0);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    __chkstk_darwin(v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_100010DFC(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, v58[6] + v20 * v59, v4);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, v58[6] + v20 * v59, v4);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_100010A30(v47, v48[0], v58, v20, v62);

LABEL_30:

  return a2;
}

void *sub_100010A30(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v42 = &v35 - v15;
  result = __chkstk_darwin(v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_100010DFC(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_100011B5C(&qword_1003A0498);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_100011B5C(&qword_1003A04A0);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100010DFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100006410(&qword_1003A04A8);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100011B5C(&qword_1003A0498);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_100011110(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  v9 = sub_100011C98(v13);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  sub_100011CFC(v13, &a3[OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider]);
  *&a3[OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_preferences] = a2;
  v12.receiver = a3;
  v12.super_class = type metadata accessor for IntelligenceStateProvider();
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100011C4C(v13);
  return v10;
}

uint64_t _s5Setup25IntelligenceStateProviderC39stashableNotificationOnboardingDefaults10Foundation4DataVSgyF_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];
  v5 = objc_opt_self();
  v17 = 0;
  v6 = [v5 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to archive notification onboarding defaults with error %@", v12, 0xCu);
      sub_100011BEC(v13, &qword_1003A0320);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v8;
}

void _s5Setup25IntelligenceStateProviderC42applyStashedNotificationOnboardingDefaultsyy10Foundation4DataVF_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = &v16 - v3;
  sub_100011BA0();
  type metadata accessor for UNNotificationOnboardingDefaults();
  v5 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v5)
  {
    v16 = v5;
    v6 = [v5 save];
    if (v6)
    {
      v7 = v6;
      static Logger.purpleBuddyGeneral.getter();
      v8 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v8 = v8;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to save notification onboarding defaults with error %@", v11, 0xCu);
        sub_100011BEC(v12, &qword_1003A0320);

        v14 = v16;
        v16 = v8;
      }

      else
      {
        v14 = v9;
        v9 = v8;
      }

      (*(v1 + 8))(v4, v0);
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100011804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100011858(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011804(a1, a2);
  }

  return a1;
}

uint64_t sub_10001186C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000118AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011958;

  return sub_10000F830(v2, v3);
}

uint64_t sub_100011958()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011A50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011A90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011D64;

  return sub_10006384C(a1, v4, v5, v6);
}

uint64_t sub_100011B5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011BA0()
{
  result = qword_1003A04B0;
  if (!qword_1003A04B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A04B0);
  }

  return result;
}

uint64_t sub_100011BEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100011C4C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_100011C98(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100011CFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_100011D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011DF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100011E34()
{
  CurrentValueSubject.value.getter();
  if (v5 == 4)
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = v1 + 32;
  while (*(v4 + result) != v5)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100011EB4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = sub_100011E34();
    if ((v3 & 1) != 0 || result != v2)
    {
      return PassthroughSubject.send(_:)();
    }
  }

  return result;
}

void sub_100011F34(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v1 == 4)
    {
    }

    else
    {
      v3 = *(Strong + 64);
      sub_10000C230(v1);
    }
  }
}

uint64_t sub_100011FC0(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 == 4)
  {
    if (a1 == 4 || (v13 = *(a4 + 16)) == 0)
    {
LABEL_7:
      static Logger.purpleBuddyGeneral.getter();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v18 = 136315138;
        v19 = *(a3 + 64);
        v20 = [objc_opt_self() defaultController];
        v21 = [v20 currentDisplayZoomMode];

        v22 = [v21 displayZoomOption];
        LOBYTE(v21) = [*(v19 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) isLargeIconLayoutEnabled];
        v23 = sub_100046B84();
        v24 = _AXSEnhanceTextLegibilityEnabled() != 0;
        v25 = sub_10000B790(v22, v21, v23, v24);
        v27 = v26;

        v28 = sub_100063F14(v25, v27, &v33);

        *(v18 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "Custom appearance mode selected: %s", v18, 0xCu);
        sub_10000A420(v30);
      }

      (*(v10 + 8))(v12, v9);
      v34 = 4;
    }

    else
    {
      v14 = (a4 + 32);
      while (1)
      {
        v15 = *v14++;
        if (v15 == a1)
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v32 = a1;
    }
  }

  else
  {
    v31 = a2;
  }

  return CurrentValueSubject.value.setter();
}

void sub_1000122E8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CurrentValueSubject.value.getter();
  v8 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 4 && (v9 = *(a1 + 64), v10 = [objc_opt_self() defaultController], v11 = objc_msgSend(v10, "currentDisplayZoomMode"), v10, v12 = objc_msgSend(v11, "displayZoomOption"), v11, LODWORD(v11) = objc_msgSend(*(v9 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService), "isLargeIconLayoutEnabled"), v13 = sub_100046B84(), v14 = _AXSEnhanceTextLegibilityEnabled() != 0, v8 = sub_10000CC24(v12, v11, v13, v14), v13, v8 == 4))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = *(Strong + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_delegate);
      if (v17)
      {
        [v17 flowItemDone:v16];
      }
    }
  }

  else
  {
    v50 = v3;
    v51 = v2;
    v18 = sub_10000CB10(v8);
    v20 = v19;
    v22 = v21;
    v55 = v23;
    swift_weakInit();
    swift_weakInit();
    v24 = objc_opt_self();
    v25 = v22;
    v26 = [v24 currentDevice];
    v27 = [v26 sf_deviceSupportsDisplayZoom];

    if (v27 && (v28 = [objc_opt_self() defaultController], v29 = objc_msgSend(v28, "currentDisplayZoomMode"), v28, v30 = objc_msgSend(v29, "displayZoomOption"), v29, v18 != v30))
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        LOBYTE(aBlock[0]) = 1;
        PassthroughSubject.send(_:)();
      }

      v40 = *(a1 + 64);
      [*(v40 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor) setPendingOption:v18 chosenByUser:1];
      [*(v40 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) setLargeIconLayoutEnabled:v20 & 1];
      v41 = String._bridgeToObjectiveC()();
      v42 = qword_10039F9E0;
      v43 = v25;
      if (v42 != -1)
      {
        swift_once();
      }

      CFPreferencesSetAppValue(v41, v43, qword_1003A1B40);

      _AXSSetEnhanceTextLegibilityEnabled();
      sub_10000ECD0();
      v44 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = a1;
      *(v45 + 24) = 0x3FD999999999999ALL;
      aBlock[4] = sub_1000148CC;
      aBlock[5] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E3B4;
      aBlock[3] = &unk_100328360;
      v46 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100014910(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006410(&unk_1003A0440);
      sub_100014958(&qword_1003A0310, &unk_1003A0440);
      v48 = v51;
      v47 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);

      (*(v50 + 8))(v47, v48);
      (*(v53 + 8))(v7, v54);
    }

    else
    {
      v31 = *(a1 + 64);
      [*(v31 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor) setPendingOption:v18 chosenByUser:1];
      [*(v31 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) setLargeIconLayoutEnabled:v20 & 1];
      v32 = String._bridgeToObjectiveC()();
      v33 = qword_10039F9E0;
      v34 = v25;
      if (v33 != -1)
      {
        swift_once();
      }

      CFPreferencesSetAppValue(v32, v34, qword_1003A1B40);

      v35 = CFNotificationCenterGetDarwinNotifyCenter();
      v36 = String._bridgeToObjectiveC()();
      CFNotificationCenterPostNotification(v35, v36, 0, 0, 1u);

      _AXSSetEnhanceTextLegibilityEnabled();
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v57 = v8;
        PassthroughSubject.send(_:)();
      }

      swift_beginAccess();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v38 = v37;
        v39 = *(v37 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_delegate);
        if (v39)
        {
          [v39 flowItemDone:v38];
        }
      }

      else
      {
      }
    }

    swift_weakDestroy();
    swift_weakDestroy();
  }
}

uint64_t sub_100012AC8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039F9C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1003A7558;
  v9 = byte_1003A7560;
  v10 = qword_1003A7568;
  swift_weakInit();
  swift_weakInit();
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 sf_deviceSupportsDisplayZoom];

  if (v12 && (v13 = [objc_opt_self() defaultController], v14 = objc_msgSend(v13, "currentDisplayZoomMode"), v13, v15 = objc_msgSend(v14, "displayZoomOption"), v14, v8 != v15))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      LOBYTE(aBlock[0]) = 2;
      PassthroughSubject.send(_:)();
    }

    v22 = *(v1 + 64);
    [*(v22 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor) setPendingOption:v8 chosenByUser:1];
    [*(v22 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) setLargeIconLayoutEnabled:v9];
    v23 = String._bridgeToObjectiveC()();
    v24 = qword_10039F9E0;
    v25 = v10;
    if (v24 != -1)
    {
      swift_once();
    }

    CFPreferencesSetAppValue(v23, v25, qword_1003A1B40);

    _AXSSetEnhanceTextLegibilityEnabled();
    sub_10000ECD0();
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = 0x3FD999999999999ALL;
    aBlock[4] = sub_1000149C4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E3B4;
    aBlock[3] = &unk_1003283D8;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100014910(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006410(&unk_1003A0440);
    sub_100014958(&qword_1003A0310, &unk_1003A0440);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v32 + 8))(v4, v2);
    (*(v30 + 8))(v7, v31);
  }

  else
  {
    v16 = *(v1 + 64);
    [*(v16 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor) setPendingOption:v8 chosenByUser:1];
    [*(v16 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) setLargeIconLayoutEnabled:v9];
    v17 = String._bridgeToObjectiveC()();
    v18 = qword_10039F9E0;
    v19 = v10;
    if (v18 != -1)
    {
      swift_once();
    }

    CFPreferencesSetAppValue(v17, v19, qword_1003A1B40);

    v20 = CFNotificationCenterGetDarwinNotifyCenter();
    v21 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(v20, v21, 0, 0, 1u);

    _AXSSetEnhanceTextLegibilityEnabled();
    sub_1000130EC();
  }

  swift_weakDestroy();
  return swift_weakDestroy();
}

uint64_t sub_1000130EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 64);

      v3 = [objc_opt_self() defaultController];
      v4 = [v3 currentDisplayZoomMode];

      v5 = [v4 displayZoomOption];
      LODWORD(v4) = [*&v2[OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService] isLargeIconLayoutEnabled];
      v6 = sub_100046B84();
      v7 = _AXSEnhanceTextLegibilityEnabled() != 0;
      sub_10000CC24(v5, v4, v6, v7);
    }

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_100013250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService;
  v5 = v2;
  v6 = &off_100386000;
  v35 = v3;
  if (v3)
  {
    v7 = 0;
    v34 = v1 + 32;
    while (v7 < *(v1 + 16))
    {
      v36 = *(v34 + v7);
      v19 = [objc_opt_self() defaultController];
      v20 = [v19 currentDisplayZoomMode];

      v21 = [v20 displayZoomOption];
      LODWORD(v20) = [*&v2[v4] v6[14]];
      v22 = sub_100046B84();
      v23 = _AXSEnhanceTextLegibilityEnabled() != 0;
      v24 = sub_10000CC24(v21, v20, v22, v23);

      if (v24 == 4 || v36 != v24)
      {
        v8 = sub_10000CB10(v36);
        v10 = v9;
        v12 = v11;
        v14 = v6;
        v15 = v4;
        v16 = v2;
        v17 = v1;
        v18 = v13;
        LOBYTE(v8) = sub_10000C4E0(v8, v10 & 1, v18, v12 & 1);

        v1 = v17;
        v2 = v16;
        v4 = v15;
        v6 = v14;
        if (v8)
        {

          goto LABEL_16;
        }
      }

      if (v35 == ++v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v25 = [objc_opt_self() defaultController];
    v26 = [v25 currentDisplayZoomMode];

    v27 = [v26 displayZoomOption];
    LODWORD(v26) = [*&v2[v4] v6[14]];
    v28 = sub_100046B84();
    v29 = _AXSEnhanceTextLegibilityEnabled() != 0;
    v30 = sub_10000CC24(v27, v26, v28, v29);

    if (v30 != 4)
    {
      v31 = *(v1 + 16);
      if (v31)
      {
        v32 = (v1 + 32);
        do
        {
          v33 = *v32++;
          if (v33 == v30)
          {
            break;
          }

          --v31;
        }

        while (v31);
      }
    }

LABEL_16:
    CurrentValueSubject.value.setter();
  }
}

uint64_t sub_100013518()
{
  v1 = *(v0 + 64);
  v2 = [objc_opt_self() defaultController];
  v3 = [v2 currentDisplayZoomMode];

  v4 = [v3 displayZoomOption];
  LODWORD(v3) = [*(v1 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) isLargeIconLayoutEnabled];
  v5 = sub_100046B84();
  v6 = _AXSEnhanceTextLegibilityEnabled() != 0;
  sub_10000CC24(v4, v3, v5, v6);

  return CurrentValueSubject.value.setter();
}

void sub_1000135FC()
{
  v1 = v0;
  CurrentValueSubject.value.getter();
  if (v14 != 4)
  {
    v2 = sub_10000CB10(v14);
    v4 = v3;
    v5 = *(v1 + 64);
    v6 = *(v5 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_displayZoomExecutor);
    v8 = v7;
    [v6 setPendingOption:v2 chosenByUser:1];
    [*(v5 + OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService) setLargeIconLayoutEnabled:v4 & 1];
    v9 = String._bridgeToObjectiveC()();
    v10 = qword_10039F9E0;
    v11 = v8;
    if (v10 != -1)
    {
      swift_once();
    }

    CFPreferencesSetAppValue(v9, v11, qword_1003A1B40);

    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(v12, v13, 0, 0, 1u);

    _AXSSetEnhanceTextLegibilityEnabled();
  }
}

uint64_t sub_100013784()
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v21[0] = v4;
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ECD0();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v8, v4);
  aBlock[4] = sub_1000149A0;
  aBlock[5] = v21[1];
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000525E0;
  aBlock[3] = &unk_100328388;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100014910(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006410(&unk_1003A0440);
  sub_100014958(&qword_1003A0310, &unk_1003A0440);
  v18 = v22;
  v19 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v18, v19);
  (*(v24 + 8))(v3, v25);
  v16(v10, v21[0]);
}

uint64_t sub_100013C04()
{

  return v0;
}

uint64_t sub_100013C5C()
{
  sub_100013C04();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BuddyAppearanceControllerViewModel.ViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BuddyAppearanceControllerViewModel.ViewMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013E1C()
{
  result = qword_1003A0608;
  if (!qword_1003A0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0608);
  }

  return result;
}

unint64_t sub_100013E98(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100006410(&qword_1003A0638);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100014910(&qword_1003A0640, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100014910(&qword_1003A0648, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001412C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100006410(&qword_1003A0610);
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_100013E98(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *(v4 + 80) = v11;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v12 = a1;
  v13 = a2;
  v14 = sub_10000CE70(a3);
  *(v4 + 32) = a3 == 1;
  *(v4 + 16) = v14;
  v15 = objc_opt_self();

  v16 = [v15 defaultController];
  v17 = [v16 currentDisplayZoomMode];

  v18 = [v17 displayZoomOption];
  LODWORD(v17) = [*&v12[OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService] isLargeIconLayoutEnabled];
  v19 = sub_100046B84();
  v20 = _AXSEnhanceTextLegibilityEnabled() != 0;
  LOBYTE(v18) = sub_10000CC24(v18, v17, v19, v20);

  LOBYTE(v29) = v18;
  sub_100006410(&unk_1003A1F90);
  swift_allocObject();
  *(v4 + 48) = CurrentValueSubject.init(_:)();
  sub_100006410(&qword_1003A0618);
  swift_allocObject();
  *(v4 + 56) = PassthroughSubject.init()();
  LOBYTE(v29) = 4;
  swift_allocObject();
  *(v4 + 40) = CurrentValueSubject.init(_:)();
  sub_100006410(&qword_1003A1F70);
  swift_allocObject();
  *(v4 + 24) = PassthroughSubject.init()();
  v29 = *(v4 + 48);
  sub_100014958(&qword_1003A0620, &unk_1003A1F90);

  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v29 = *(v4 + 40);
  swift_allocObject();
  swift_weakInit();

  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = *(v4 + 48);
  v28 = *(v4 + 56);
  v29 = v21;
  sub_100014958(&qword_1003A0628, &qword_1003A0618);
  Publisher.combineLatest<A>(_:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v14;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10001481C;
  *(v23 + 24) = v22;
  sub_100014958(&qword_1003A0630, &qword_1003A0610);

  v24 = v27;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v26 + 8))(v10, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v29 = *(v4 + 40);

  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_10001479C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000147DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014894()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000148F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014958(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000097E0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100014B58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyAppStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100014BB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100006410(&qword_1003A0680);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100015910(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100014E6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100006410(&unk_1003A0690);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100015B18((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100015ABC(v23, &v36);
        sub_10000A46C(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100015B18(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_100015124()
{
  v1 = v0;
  sub_100006410(&qword_1003A0680);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100015910(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000152A8()
{
  v1 = v0;
  sub_100006410(&unk_1003A0690);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100015ABC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A46C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100015B18(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10001544C()
{
  v0 = [objc_opt_self() enumeratorWithOptions:192];
  v1 = [v0 nextObject];
  if (v1)
  {
    v2 = v1;
    v3 = &off_100386000;
    while (1)
    {
      v4 = [v2 v3[30]];
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v8)
      {
        goto LABEL_4;
      }

      if (v6 == v9 && v8 == v10)
      {

LABEL_16:
        v13 = [v2 uniqueInstallIdentifier];
        if (v13)
        {
          v14 = v13;
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0xC000000000000000;
        }

        v18 = [v2 identities];
        sub_1000158C4();
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v19 >> 62))
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        v20 = _CocoaArrayWrapper.endIndex.getter();
        if (!v20)
        {
LABEL_21:

          sub_100011804(v15, v17);
          goto LABEL_6;
        }

LABEL_23:
        v21 = 0;
        v53 = v19;
        v54 = v19 & 0xC000000000000001;
        v50 = v0;
        v51 = v19 & 0xFFFFFFFFFFFFFF8;
        v52 = v20;
LABEL_26:
        if (v54)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v26 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v21 >= *(v51 + 16))
          {
            goto LABEL_48;
          }

          v25 = *(v19 + 8 * v21 + 32);
          v26 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        v55 = v26;
        v56 = v25;
        v27 = v17;
        v28 = [v25 identityString];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v15;
        v32 = v31;

        v33 = v30;
        v34 = v27;
        sub_100015910(v30, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = sub_100067E04(v29, v32);
        v38 = *(&_swiftEmptyDictionarySingleton + 2);
        v39 = (v36 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_46;
        }

        v41 = v36;
        if (*(&_swiftEmptyDictionarySingleton + 3) >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v36 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_100015124();
            if ((v41 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          sub_100014BB0(v40, isUniquelyReferenced_nonNull_native);
          v42 = sub_100067E04(v29, v32);
          if ((v41 & 1) != (v43 & 1))
          {
            goto LABEL_49;
          }

          v37 = v42;
          if ((v41 & 1) == 0)
          {
LABEL_39:
            *(&_swiftEmptyDictionarySingleton + (v37 >> 6) + 8) |= 1 << v37;
            v44 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v37);
            *v44 = v29;
            v44[1] = v32;
            v45 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v37);
            v15 = v33;
            *v45 = v33;
            v45[1] = v34;
            v17 = v34;

            v46 = *(&_swiftEmptyDictionarySingleton + 2);
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_47;
            }

            *(&_swiftEmptyDictionarySingleton + 2) = v48;
LABEL_25:
            ++v21;
            v19 = v53;
            if (v55 == v52)
            {

              sub_100011804(v15, v17);
              v0 = v50;
              v2 = [v50 nextObject];
              v3 = &off_100386000;
              if (v2)
              {
                continue;
              }

              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

        v22 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v37);
        v23 = *v22;
        v24 = v22[1];
        v15 = v33;
        *v22 = v33;
        v22[1] = v34;
        v17 = v34;
        sub_100011804(v23, v24);

        goto LABEL_25;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      v2 = [v0 nextObject];
      if (!v2)
      {
        goto LABEL_44;
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_4:

    goto LABEL_5;
  }

LABEL_44:

  return &_swiftEmptyDictionarySingleton;
}

unint64_t sub_1000158C4()
{
  result = qword_1003A0678;
  if (!qword_1003A0678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A0678);
  }

  return result;
}

uint64_t sub_100015910(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100015964(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100006410(&qword_1003A0688);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100015A54(v8);
    return 0;
  }
}

uint64_t sub_100015A54(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A04B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100015B18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100015C28()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + OBJC_IVAR____TtC5Setup25SolariumOnBoardingManager_featureFlags) isSolariumEnabled];
  if (result)
  {
    static Logger.purpleBuddyGeneral.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "User onboarding was completed", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return [*(v1 + OBJC_IVAR____TtC5Setup25SolariumOnBoardingManager_chronicle) recordFeatureShown:6];
  }

  return result;
}

id sub_100015E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SolariumOnBoardingManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100015EBC()
{
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_presentationProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_buddyPreferences] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_deviceProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_intelligenceProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_setupMethod] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_delegate] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_cachedViewController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController____lazy_storage___cachedWrapper] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyCameraButtonController();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000160FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_10001619C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_deviceProvider);
  if (!v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v5 hasCameraButton];
  if (!result)
  {
    return result;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_runState);
  if (!v5)
  {
    goto LABEL_18;
  }

  if ([v5 hasCompletedInitialRun])
  {
    return 1;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_setupMethod);
  if (!v5)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v11 = v5;
    type metadata accessor for BuddyDataTransferMethod(0);
    v12[1] = v11;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v5 = [v5 dataTransferMethod];
  if ((v5 - 1) >= 2)
  {
    if (v5)
    {
      v10 = v5 == 3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_20;
    }

    return 1;
  }

  static Logger.purpleBuddyGeneral.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Defer camera button setup post data transfer", v9, 2u);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t sub_1000163C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return _swift_task_switch(sub_1000163E4, 0, 0);
}

uint64_t sub_1000163E4(void *a1)
{
  v2 = *(v1[18] + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_intelligenceProvider);
  v1[21] = v2;
  if (v2)
  {
    v1[2] = v1;
    v1[7] = v1 + 22;
    v1[3] = sub_100016518;
    v3 = swift_continuation_init();
    v1[17] = sub_100006410(&unk_1003A1940);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_10001685C;
    v1[13] = &unk_100328450;
    v1[14] = v3;
    [swift_unknownObjectRetain() isIntelligenceEnabledWithCompletionHandler:v1 + 10];
    a1 = v1 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(a1);
}

uint64_t sub_100016518()
{

  return _swift_task_switch(sub_1000165F8, 0, 0);
}

uint64_t sub_1000165F8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 176);
  swift_unknownObjectRelease();
  v3 = objc_allocWithZone(type metadata accessor for BuddyCameraControlPresentationProvider());
  v4 = [objc_opt_self() buddyPreferences];
  v5 = [v3 initWithIsIntelligenceEnabled:v2 preferenceController:v4];

  *(v1 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_presentationProvider) = v5;
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = BuddyCameraControlPresentationProvider.shouldPresentCameraControlPane()();
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  if (!v7)
  {
    v9(0);
    goto LABEL_5;
  }

  v10 = *(v0 + 144);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v12 = *(v10 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_cachedViewController);

  if (v12)
  {
    v9(1);

LABEL_5:

    goto LABEL_6;
  }

  v15 = sub_100016A00();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_10001712C;
  v17[4] = v11;
  *(v0 + 112) = sub_1000171D0;
  *(v0 + 120) = v17;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100016B44;
  *(v0 + 104) = &unk_1003284F0;
  v18 = _Block_copy((v0 + 80));

  [v15 createViewController:v18];

  _Block_release(v18);
  swift_unknownObjectRelease();
LABEL_6:
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001685C(uint64_t a1, char a2)
{
  **(*(*sub_1000171F4((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

id sub_100016A00()
{
  v1 = OBJC_IVAR____TtC5Setup27BuddyCameraButtonController____lazy_storage___cachedWrapper;
  if (*(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController____lazy_storage___cachedWrapper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController____lazy_storage___cachedWrapper);
  }

  else
  {
    v3 = [objc_allocWithZone(BuddyCameraButtonViewControllerWrapper) init];
    [v3 setDelegate:v0];
    *(v0 + v1) = v3;
    v2 = v3;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

void sub_100016A8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(type metadata accessor for EnclosingViewController()) initWithEnclosedViewController:a1 spinnerDelegate:Strong overrideBackButton:0];
    v8 = *&v6[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_cachedViewController];
    *&v6[OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_cachedViewController] = v7;
    v9 = v7;

    a3();
  }
}

void sub_100016B44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100016BCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_presentationProvider);
  if (v1)
  {
    [v1 updatePaneVisibilityPreferencesWithNewState:0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_buddyPreferences);
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 removeObjectForKey:v4];
  }

  else
  {
    __break(1u);
  }
}

id sub_100016D20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyCameraButtonController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100016E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_presentationProvider);
  if (v1)
  {
    [v1 updatePaneVisibilityPreferencesWithNewState:1];
  }

  result = *(v0 + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_delegate);
  if (result)
  {

    return [result flowItemDone:v0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016E98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016ED8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016F20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100016FE8;

  return sub_1000163C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100016FE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000170F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017158()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017190()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000171DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000171F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t IntelligenceServerControlProvider.isFeatureEnabled(fromCache:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000172E0;

  return sub_10001791C(a1);
}

uint64_t sub_1000172E0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000173DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000171F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006410(&unk_1003A1DA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      ObjectType = swift_getObjectType();
      *&v12 = a2;
      sub_100015B18(&v12, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = *(*(v5 + 64) + 40);
    v10 = v15;
    *v9 = v14;
    v9[1] = v10;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100017664(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100017718;

  return sub_10001791C(a1);
}

uint64_t sub_100017718(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

id IntelligenceServerControlProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntelligenceServerControlProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id IntelligenceServerControlProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001791C(char a1)
{
  *(v1 + 401) = a1;
  v2 = type metadata accessor for Logger();
  *(v1 + 328) = v2;
  *(v1 + 336) = *(v2 - 8);
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  *(v1 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_100017A00, 0, 0);
}

uint64_t sub_100017A00()
{
  v1 = *(v0 + 401);
  v2 = [objc_allocWithZone(AKURLBag) init];
  *(v0 + 376) = v2;
  v3 = String._bridgeToObjectiveC()();
  *(v0 + 384) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_100017B70;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100006410(&qword_1003A07D8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000173DC;
  *(v0 + 104) = &unk_100328590;
  *(v0 + 112) = v4;
  [v2 configurationValueForKey:v3 fromCache:v1 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100017B70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_100017F74;
  }

  else
  {
    v2 = sub_100017C80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100017C80()
{
  v1 = *(v0 + 192);
  *(v0 + 208) = *(v0 + 176);
  *(v0 + 224) = v1;
  if (!*(v0 + 232))
  {
    sub_10001852C(v0 + 208, &qword_1003A04B8);
    goto LABEL_13;
  }

  sub_100015B18((v0 + 208), (v0 + 144));
  sub_10000A46C(v0 + 144, v0 + 240);
  sub_10001858C(0, &qword_1003A0330);
  if (!swift_dynamicCast())
  {
    sub_10000A46C(v0 + 144, v0 + 272);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 400);
      if (v3 != 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(v0 + 400) = 2;
    }

    sub_10000A420(v0 + 144);
LABEL_13:
    static Logger.purpleBuddyGeneral.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = Logger.logObject.getter();
    v13 = os_log_type_enabled(v12, v11);
    v15 = *(v0 + 376);
    v14 = *(v0 + 384);
    v16 = *(v0 + 360);
    v17 = *(v0 + 328);
    v18 = *(v0 + 336);
    if (v13)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v12, v11, "Invalid bag configuration", v19, 2u);
    }

    else
    {
    }

    (*(v18 + 8))(v16, v17);
    LOBYTE(v3) = 0;
    goto LABEL_17;
  }

  v2 = *(v0 + 320);
  LOBYTE(v3) = [v2 BOOLValue];

LABEL_4:
  static Logger.purpleBuddyGeneral.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "intelligence value in bag: %{BOOL}d", v6, 8u);
  }

  v7 = *(v0 + 376);
  v8 = *(v0 + 368);
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);

  (*(v10 + 8))(v8, v9);
  sub_10000A420(v0 + 144);
LABEL_17:

  v20 = *(v0 + 8);

  return v20(v3 & 1);
}

uint64_t sub_100017F74()
{
  v1 = v0[49];
  swift_willThrow();
  v0[38] = v1;
  sub_100006410(&unk_1003A1DA0);
  sub_10001858C(0, &qword_1003A07E0);
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v3 = v0[39];
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([v3 code] == -7097)
  {
    static Logger.purpleBuddyGeneral.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = Logger.logObject.getter();
    if (!os_log_type_enabled(v12, v11))
    {
      v21 = (v0 + 48);
      v19 = v0[47];
      v20 = v0[44];
      goto LABEL_18;
    }

    v13 = v0 + 44;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v11, "intelligence bag key not found", v14, 2u);
    goto LABEL_15;
  }

LABEL_13:
  static Logger.purpleBuddyGeneral.getter();
  v15 = static os_log_type_t.error.getter();
  v12 = Logger.logObject.getter();
  if (!os_log_type_enabled(v12, v15))
  {
    v21 = (v0 + 48);
    v19 = v0[47];
    v20 = v0[43];
    goto LABEL_18;
  }

  v13 = v0 + 43;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  *(v16 + 4) = v3;
  *v17 = v3;
  v18 = v3;
  _os_log_impl(&_mh_execute_header, v12, v15, "intelligence bag check failed with error: %@", v16, 0xCu);
  sub_10001852C(v17, &qword_1003A0320);

LABEL_15:
  v19 = v12;
  v20 = *v13;

  v12 = v0[48];
  v21 = (v0 + 47);
LABEL_18:
  v22 = v0[41];
  v23 = v0[42];

  (*(v23 + 8))(v20, v22);

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_1000182E8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018328()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000183DC;

  return sub_100017664(v2, v3);
}

uint64_t sub_1000183DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000184D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001852C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001858C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100018710(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_deviceProvider] = a1;
  *&v7[OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_preferences] = a2;
  *&v7[OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider] = a3;
  swift_unknownObjectRetain();
  v8 = a2;
  *&v7[OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_initialValue] = [swift_unknownObjectRetain() currentMultitaskingOption];
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, "init");
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

id sub_1000188B8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&v0[OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_deviceProvider] type] != 1)
  {
    return 0;
  }

  v5 = [objc_allocWithZone(SBSBuddyMultitaskingFlow) init];
  v6 = [v5 needsToShow];

  static Logger.purpleBuddyGeneral.getter();
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    swift_getObjectType();
    v12 = _typeName(_:qualified:)();
    v14 = sub_100063F14(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s isFeatureApplicable: %{BOOL}d", v10, 0x12u);
    sub_10000A420(v11);
  }

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_100018B0C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_preferences];
  v6 = String._bridgeToObjectiveC()();
  LOBYTE(v5) = [v5 BOOLForKey:v6];

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1000188B8();
    static Logger.purpleBuddyGeneral.getter();
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      swift_getObjectType();
      v13 = _typeName(_:qualified:)();
      v15 = sub_100063F14(v13, v14, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v7 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s shouldShowFlow: %{BOOL}d", v11, 0x12u);
      sub_10000A420(v12);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v7 & 1;
}

id sub_100018FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyMultitaskingSelectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_stackView;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_tapGesture] = 0;
  v4[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected] = 0;
  v12 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_selectedSymbolConfiguration;
  sub_100006410(&qword_1003A1400);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100297C60;
  v14 = objc_opt_self();
  *(v13 + 32) = [v14 whiteColor];
  *(v13 + 40) = [v14 systemBlueColor];
  sub_100019E30(0, &unk_1003A08A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [objc_opt_self() configurationWithPaletteColors:isa];

  *&v4[v12] = v16;
  v17 = &v4[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_title];
  *v17 = a1;
  v17[1] = a2;
  v18 = &v4[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_onTapGestureHandler];
  *v18 = a3;
  v18[1] = a4;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for BuddyAppearanceCheckBoxView();

  v19 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10001930C();
  v20 = objc_allocWithZone(UITapGestureRecognizer);
  v21 = [v20 initWithTarget:v19 action:{"tapped:", v24.receiver, v24.super_class}];
  v22 = *&v19[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_tapGesture];
  *&v19[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_tapGesture] = v21;
  v23 = v21;

  if (v23)
  {
    [*&v19[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_stackView] addGestureRecognizer:v23];
  }

  else
  {
    __break(1u);
  }
}

void sub_10001930C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_titleLabel];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  [v1 setTextAlignment:1];
  [v1 setNumberOfLines:0];
  LODWORD(v3) = 1148846080;
  [v1 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = *&v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView];
  [v5 setContentMode:1];
  v6 = [objc_opt_self() configurationWithPointSize:24.0];
  [v5 setPreferredSymbolConfiguration:v6];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_self();
  sub_100006410(&qword_1003A1400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100297C60;
  v9 = [v5 widthAnchor];
  v10 = [v9 constraintEqualToConstant:24.0];

  *(v8 + 32) = v10;
  v11 = [v5 heightAnchor];
  v12 = [v11 constraintEqualToConstant:24.0];

  *(v8 + 40) = v12;
  sub_100019E30(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  v14 = *&v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_stackView];
  [v14 addArrangedSubview:v5];
  [v14 addArrangedSubview:v1];
  [v14 setAxis:1];
  [v14 setAlignment:3];
  [v14 setDistribution:2];
  [v14 setSpacing:4.0];
  sub_10001983C();
  [v0 addSubview:v14];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002977D0;
  v16 = [v14 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v14 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v14 topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v15 + 48) = v24;
  v25 = [v14 bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26];

  *(v15 + 56) = v27;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:v28];

  [v0 setIsAccessibilityElement:1];
  v29 = [v1 accessibilityLabel];
  [v0 setAccessibilityLabel:v29];
}

void sub_10001983C()
{
  v1 = UIAccessibilityTraitButton;
  if (v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected] != 1)
  {
    [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:0];

    if (v3)
    {
      v4 = [v3 imageWithRenderingMode:2];
    }

    else
    {
      v4 = 0;
    }

    v5 = *&v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView];
    [v5 setImage:v4];
    v9 = [objc_opt_self() placeholderTextColor];
    [v5 setTintColor:?];

    goto LABEL_13;
  }

  if (UIAccessibilityTraitButton)
  {
    if ((UIAccessibilityTraitSelected & ~UIAccessibilityTraitButton) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!UIAccessibilityTraitSelected)
  {
    v1 = 0;
    goto LABEL_12;
  }

  v1 = UIAccessibilityTraitSelected | UIAccessibilityTraitButton;
LABEL_12:
  [v0 setAccessibilityTraits:v1];
  v6 = *&v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView];
  v7 = *&v0[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_selectedSymbolConfiguration];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  [v6 setImage:v9];
LABEL_13:
}

id sub_100019B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyAppearanceCheckBoxView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100019C18()
{
  v1 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_stackView;
  v2 = objc_allocWithZone(UIStackView);
  v3 = v0;
  *&v0[v1] = [v2 init];
  v4 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_titleLabel;
  *&v3[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_imageView;
  *&v3[v5] = [objc_allocWithZone(UIImageView) init];
  *&v3[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_tapGesture] = 0;
  v3[OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_isSelected] = 0;
  v6 = OBJC_IVAR____TtC5Setup27BuddyAppearanceCheckBoxView_selectedSymbolConfiguration;
  sub_100006410(&qword_1003A1400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100297C60;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 whiteColor];
  *(v7 + 40) = [v8 systemBlueColor];
  sub_100019E30(0, &unk_1003A08A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() configurationWithPaletteColors:isa];

  *&v3[v6] = v10;
  _StringGuts.grow(_:)(40);
  swift_getObjectType();
  _typeName(_:qualified:)();

  v11._object = 0x8000000100299EB0;
  v11._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100019E30(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100019E78()
{
  v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_skipNextSetUpForChildNetworkReachabilityCheck] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_flowItemDispositionProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_proximitySetupController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_managedConfiguration] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_childSetupPresenter] = 0;
  *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_networkProvider] = 0;
  v1 = &v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock];
  *v1 = 0;
  v1[1] = 0;
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 modelSpecificLocalizedStringKeyForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [objc_opt_self() mainBundle];
    v13._object = 0xE000000000000000;
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v13);

    v11 = String._bridgeToObjectiveC()();

    v12.receiver = v0;
    v12.super_class = type metadata accessor for BuddyIntentController();
    objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v11, 0, 0, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10001A06C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BuddyIntentController();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v15._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x800000010029B130;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v15);

  v5 = String._bridgeToObjectiveC()();

  [v0 addBoldButton:v5 action:"setUpForMyselfTapped"];

  v6 = [v1 mainBundle];
  v16._object = 0xE000000000000000;
  v7._object = 0x800000010029B150;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v9 = String._bridgeToObjectiveC()();

  [v0 addLinkButton:v9 action:"setUpForChildTapped"];

  v10 = sub_10001A2BC();
  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];
  [v11 setContentMode:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v0 contentView];
  [v12 addSubview:v11];

  v13 = [v0 contentView];
  [v13 pinToEdges:v11];
}

id sub_10001A2BC()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 hasHomeButton];

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1];

  return v2;
}

void sub_10001A3C4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod];
  if (v6)
  {
    v15 = v6;
    v7 = [v1 delegate];
    if (v7)
    {
      v8 = v7;
      v1[OBJC_IVAR____TtC5Setup21BuddyIntentController_skipNextSetUpForChildNetworkReachabilityCheck] = 0;
      [v15 setIntent:1];
      v9 = *&v1[OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance];
      if (v9)
      {
        [v9 didChooseToSetUpForChild:0];
        static Logger.purpleBuddyGeneral.getter();
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Device will be set up for myself", v12, 2u);
        }

        (*(v3 + 8))(v5, v2);
        [v8 flowItemDone:v1];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v13 = v15;
    }
  }
}

void sub_10001A620()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_flowItemDispositionProvider];
  if (v8)
  {
    v9 = *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod];
    if (v9)
    {
      v25 = v9;
      v10 = v8;
      v11 = [v0 delegate];
      if (v11)
      {
        v12 = v11;
        v13 = OBJC_IVAR____TtC5Setup21BuddyIntentController_skipNextSetUpForChildNetworkReachabilityCheck;
        if (v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_skipNextSetUpForChildNetworkReachabilityCheck])
        {
          v24 = v0;
          static Logger.purpleBuddyGeneral.getter();
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "Intent controller skipped reachability check", v16, 2u);
          }

          (*(v2 + 8))(v7, v1);
          v0 = v24;
          v24[v13] = 0;
          goto LABEL_13;
        }

        v18 = *&v0[OBJC_IVAR____TtC5Setup21BuddyIntentController_networkProvider];
        if (!v18)
        {
          goto LABEL_22;
        }

        if ([v18 networkReachable])
        {
LABEL_13:
          v19 = v0;
          static Logger.purpleBuddyGeneral.getter();
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v20, v21, "Device will be set up for a child", v22, 2u);
          }

          (*(v2 + 8))(v5, v1);
          [v25 setIntent:2];
          [v10 setPreferredDispositions:8];
          v23 = *&v19[OBJC_IVAR____TtC5Setup21BuddyIntentController_analyticsEventAppearance];
          if (v23)
          {
            [v23 didChooseToSetUpForChild:1];
            [v12 flowItemDone:v19];

            swift_unknownObjectRelease();
            return;
          }

          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        sub_10001A9F0();

        swift_unknownObjectRelease();
      }

      else
      {

        v17 = v25;
      }
    }
  }
}

void sub_10001A9F0()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v37._object = 0xE000000000000000;
  v3._object = 0x800000010029AFF0;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v37);

  v5 = String._bridgeToObjectiveC()();
  v6 = SFLocalizableWAPIStringKeyForKey();

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() modelSpecificLocalizedStringKeyForKey:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v1 mainBundle];
    v38._object = 0xE000000000000000;
    v12._countAndFlagsBits = v8;
    v12._object = v10;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v38);

    v14 = String._bridgeToObjectiveC()();

    v15 = String._bridgeToObjectiveC()();

    v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    v17 = String._bridgeToObjectiveC()();
    v18 = SFLocalizableWAPIStringKeyForKey();

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v1 mainBundle];
    v39._object = 0xE000000000000000;
    v23._countAndFlagsBits = v19;
    v23._object = v21;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v39);

    v25 = swift_allocObject();
    *(v25 + 16) = v0;
    v26 = v0;
    v27 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10001BFCC;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001AEF0;
    aBlock[3] = &unk_1003285E0;
    v28 = _Block_copy(aBlock);

    v29 = objc_opt_self();
    v30 = [v29 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    [v16 addAction:v30];
    v31 = [v1 mainBundle];
    v40._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0x4C45434E4143;
    v32._object = 0xE600000000000000;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v40);

    v34 = String._bridgeToObjectiveC()();

    v35 = [v29 actionWithTitle:v34 style:1 handler:0];

    [v16 addAction:v35];
    [v26 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001AE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5Setup21BuddyIntentController_showModalWiFiSettingsBlock);
  if (v2)
  {

    v2(0, 0, 0);
    result = sub_10001C91C(v2);
    *(a2 + OBJC_IVAR____TtC5Setup21BuddyIntentController_skipNextSetUpForChildNetworkReachabilityCheck) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001AEF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10001B1E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_10001B2F4(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_10001C92C;
  }

  else
  {
    v6 = 0;
  }

  v4(a2, v5, v6);
  sub_10001C91C(v5);
}

void sub_10001B458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10002E3B4;
    v7[3] = &unk_1003286F8;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  (*(a4 + 16))(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_10001B588()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup21BuddyIntentController_runState);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Setup21BuddyIntentController_proximitySetupController);
  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v3 = v2;
  if ([v1 hasCompletedInitialRun])
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v5 = [v3 hasConnection];
  swift_unknownObjectRelease();

  return v5 ^ 1;
}

uint64_t sub_10001B6E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  __chkstk_darwin(v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ECD0();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v17 = v22;
  v16[4] = a1;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_10001C904;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3B4;
  aBlock[3] = &unk_1003286A8;
  v18 = _Block_copy(aBlock);
  swift_errorRetain();
  v19 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_10001B99C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = objc_opt_self();
  if (a1)
  {
    swift_errorRetain();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 modelSpecificLocalizedStringKeyForKey:v9];

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [objc_opt_self() mainBundle];
      v36._object = 0xE000000000000000;
      v15._countAndFlagsBits = v11;
      v15._object = v13;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v36._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36);

      v17 = [a2 headerView];
      v18 = String._bridgeToObjectiveC()();

      [v17 setDetailText:v18];

LABEL_7:
      a4(1);
      return;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v8 modelSpecificLocalizedStringKeyForKey:v19];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [objc_opt_self() mainBundle];
    v37._object = 0xE000000000000000;
    v25._countAndFlagsBits = v21;
    v25._object = v23;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v37);

    v27 = objc_opt_self();
    if (!__OFSUB__(a3, 1))
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v29 = [v27 localizedStringFromNumber:isa numberStyle:0];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = [a2 headerView];
      sub_100006410(&qword_1003A0450);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1002978B0;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_10000EEE4();
      *(v34 + 32) = v30;
      *(v34 + 40) = v32;
      String.init(format:_:)();

      v35 = String._bridgeToObjectiveC()();

      [v33 setDetailText:v35];

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_10001BD14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_10001BE7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyIntentController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001BF94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BFD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001BFEC(char *a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for Logger();
  v7 = *(v64 - 8);
  v8 = __chkstk_darwin(v64);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v63 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v63 - v15;
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v66 = swift_allocObject();
  *(v66 + 16) = a2;
  v19 = objc_opt_self();
  v65 = a2;
  _Block_copy(a2);
  v20 = [v19 sharedBuddyAccountTools];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = v20;
  v22 = [v20 primaryAccount];

  if (v22)
  {

    static Logger.purpleBuddyGeneral.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skipping intent, there is already an account signed in.", v25, 2u);
    }

    (*(v7 + 8))(v18, v64);
    v26 = *&a1[OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod];
    if (v26)
    {
      v27 = v26;
      if (![v27 intent])
      {
        [v27 setIntent:1];
      }
    }

    v28 = v65[2];
    goto LABEL_10;
  }

  v29 = a1;
  v30 = *&a1[OBJC_IVAR____TtC5Setup21BuddyIntentController_setupMethod];
  if (v30)
  {
    v31 = *&a1[OBJC_IVAR____TtC5Setup21BuddyIntentController_managedConfiguration];
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      if ([v33 activationRecordIndicatesCloudConfigurationIsAvailable])
      {
        v34 = v32;
        [v32 setIntent:1];
        static Logger.purpleBuddyGeneral.getter();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "CloudConfigurationDevice device, will be set up for myself", v37, 2u);
        }

        (*(v7 + 8))(v16, v64);
LABEL_22:
        (v65[2])(v65, 0);

        return;
      }

      if ([v33 isSupervised])
      {
        v34 = v32;
        [v32 setIntent:1];
        static Logger.purpleBuddyGeneral.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Supervised device, will be set up for myself", v40, 2u);
        }

        (*(v7 + 8))(v13, v64);
        goto LABEL_22;
      }

      v29 = a1;
    }
  }

  v41 = *&v29[OBJC_IVAR____TtC5Setup21BuddyIntentController_networkProvider];
  if (!v41)
  {
    goto LABEL_35;
  }

  if ([v41 networkReachable])
  {
    v42 = *&v29[OBJC_IVAR____TtC5Setup21BuddyIntentController_childSetupPresenter];
    if (v42)
    {
      v43 = swift_allocObject();
      v43[2] = v29;
      v43[3] = sub_10001C868;
      v43[4] = v66;
      aBlock[4] = sub_10001C8B0;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001BD14;
      aBlock[3] = &unk_100328658;
      v44 = _Block_copy(aBlock);
      v45 = v42;
      v46 = v29;

      [v45 fetchCutOffAgeForChildAccountWithCompletionHandler:v44];
      _Block_release(v44);

      return;
    }

    goto LABEL_36;
  }

  sub_10000ECD0();
  *v6 = static OS_dispatch_queue.main.getter();
  v47 = v63;
  (*(v63 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v4);
  v48 = _dispatchPreconditionTest(_:)();
  (*(v47 + 8))(v6, v4);
  if ((v48 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    _Block_release(v65);
    __break(1u);
LABEL_35:
    _Block_release(v65);
    __break(1u);
LABEL_36:
    _Block_release(v65);
    __break(1u);
LABEL_37:
    _Block_release(v65);
    __break(1u);
    return;
  }

  static Logger.purpleBuddyGeneral.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Network not reachable, not fetching cut off age for child account", v51, 2u);
  }

  (*(v7 + 8))(v10, v64);
  v52 = objc_opt_self();
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 modelSpecificLocalizedStringKeyForKey:v53];

  if (!v54)
  {
    goto LABEL_37;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = [objc_opt_self() mainBundle];
  v68._object = 0xE000000000000000;
  v59._countAndFlagsBits = v55;
  v59._object = v57;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v68);

  v61 = [v29 headerView];
  v62 = String._bridgeToObjectiveC()();

  [v61 setDetailText:v62];

  v28 = v65[2];
LABEL_10:
  v28();
}

uint64_t sub_10001C830()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C870()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C8BC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C91C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001CD64()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchTime();
  v31 = *(v26 - 8);
  v4 = __chkstk_darwin(v26);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v25 - v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_1000220AC;
  v38 = v12;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10002E3B4;
  v36 = &unk_100328DB0;
  _Block_copy(&aBlock);
  v32 = &_swiftEmptyArrayStorage;
  v25[2] = sub_10000ED80();

  v25[1] = sub_100006410(&unk_1003A0440);
  v25[0] = sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v13 = DispatchWorkItem.init(flags:block:)();

  *(v1 + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem) = v13;

  sub_1000216C8(0, &qword_1003A0430);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v31 + 8);
  v31 += 8;
  v16 = v26;
  v15(v6, v26);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_1000220B4;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10002E3B4;
  v36 = &unk_100328DD8;
  v18 = _Block_copy(&aBlock);

  v19 = v28;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v11, v9);
  (*(v29 + 8))(v19, v30);
  v15(v8, v16);
  v20 = *(v1 + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_animator + 8);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 24);
  v23 = swift_unknownObjectRetain();
  v22(v23, &off_100328800, ObjectType, v20);
  return (*(v20 + 40))(ObjectType, v20);
}

uint64_t sub_10001D264()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_animator + 8);
    v2 = result;
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 48);
    swift_unknownObjectRetain();
    v4(ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10001D30C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
    if (*&Strong[OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem])
    {

      if (dispatch thunk of DispatchWorkItem.isCancelled.getter())
      {
      }

      else
      {
        static Logger.purpleBuddyGeneral.getter();
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Fallback timer triggered.", v9, 2u);
        }

        (*(v1 + 8))(v3, v0);
        dispatch thunk of DispatchWorkItem.perform()();

        *&v5[v6] = 0;
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10001D5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216C8(0, &qword_1003A0430);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3B4;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_10001D8BC(uint64_t a1, SEL *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_animator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  [v5 *a2];
}

void sub_10001DA3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_animationData);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v6 loadViewIfNeeded];
      [v5 _setBuiltinTransitionStyle:0];
      v7 = [objc_allocWithZone(type metadata accessor for BuddyiPhoneFinishedControllerAnimator.TransitionAnimator()) init];
      v8 = *(v0 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_transitionAnimator);
      *(v0 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_transitionAnimator) = v7;

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_100022044;
        v52 = v11;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_10001E1A8;
        v50 = &unk_100328C20;
        v12 = _Block_copy(&aBlock);
        v13 = v5;

        [v10 setCustomAnimatorProviderBlock:v12];
        _Block_release(v12);
      }

      v14 = sub_10001E590();
      v15 = *(v0 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_bookendViewProvider);
      *(v0 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_bookendViewProvider) = v14;
      v16 = v14;

      v17 = [v16 view];
      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [v6 view];

      if (v18)
      {
        v46 = v16;
        [v18 addSubview:v17];

        sub_100006410(&qword_1003A1400);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1002977D0;
        v20 = [v17 topAnchor];
        v21 = [v6 view];

        if (v21)
        {
          v22 = [v21 topAnchor];

          v23 = [v20 constraintEqualToAnchor:v22];
          *(v19 + 32) = v23;
          v24 = [v17 bottomAnchor];
          v25 = [v6 view];

          if (v25)
          {
            v26 = [v25 bottomAnchor];

            v27 = [v24 constraintEqualToAnchor:v26];
            *(v19 + 40) = v27;
            v28 = [v17 leadingAnchor];
            v29 = [v6 view];

            if (v29)
            {
              v30 = [v29 leadingAnchor];

              v31 = [v28 constraintEqualToAnchor:v30];
              *(v19 + 48) = v31;
              v32 = [v17 trailingAnchor];
              v33 = [v6 view];

              if (v33)
              {
                v34 = objc_opt_self();
                v35 = [v33 trailingAnchor];

                v36 = [v32 constraintEqualToAnchor:v35];
                *(v19 + 56) = v36;
                sub_1000216C8(0, &qword_1003A0BF0);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v34 activateConstraints:isa];

                v38 = [v6 view];
                if (v38)
                {
                  [v38 layoutIfNeeded];

                  v39 = [v6 view];
                  if (v39)
                  {
                    [v39 sendSubviewToBack:v17];

                    v40 = [objc_opt_self() mainBundle];
                    v53._object = 0xE000000000000000;
                    v41._countAndFlagsBits = 0x524154535F544547;
                    v41._object = 0xEB00000000444554;
                    v42._countAndFlagsBits = 0;
                    v42._object = 0xE000000000000000;
                    v53._countAndFlagsBits = 0;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v53);

                    v43 = String._bridgeToObjectiveC()();

                    v44 = *(v1 + OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_getStartedHandler + 8);
                    v51 = *(v1 + OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_getStartedHandler);
                    v52 = v44;
                    aBlock = _NSConcreteStackBlock;
                    v48 = 1107296256;
                    v49 = sub_10002E3B4;
                    v50 = &unk_100328BD0;
                    v45 = _Block_copy(&aBlock);

                    [v6 setButtonTitle:v43 action:v45];
                    _Block_release(v45);

                    [v46 startAnimation];
                    return;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                return;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  sub_10001CBB0();
}

id sub_10001E118()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = *(Strong + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_transitionAnimator), v2 = Strong, v3 = v1, v2, v1))
  {
    return v3;
  }

  else
  {
    return [objc_allocWithZone(type metadata accessor for BuddyiPhoneFinishedControllerAnimator.TransitionAnimator()) init];
  }
}

id sub_10001E1A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10001E1F8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = objc_allocWithZone(SASBookendCallbackConfiguration);
  v26 = sub_100021748;
  v27 = v4;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100022260;
  v25 = &unk_100328A18;
  v7 = _Block_copy(&aBlock);

  v26 = sub_100021750;
  v27 = v5;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10002225C;
  v25 = &unk_100328A40;
  v8 = _Block_copy(&aBlock);

  v9 = [v6 initOnAnimationWillBegin:v7 onAnimationDidFinish:v8];
  _Block_release(v8);
  _Block_release(v7);
  v10 = swift_allocObject();
  swift_weakInit();
  v26 = sub_100021758;
  v27 = v10;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100021374;
  v25 = &unk_100328A68;
  v11 = _Block_copy(&aBlock);

  [v9 setOnAnimationError:v11];
  _Block_release(v11);
  sub_100006410(&unk_1003A20B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002978B0;
  v13 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = Locale.identifier.getter();
  v16 = v15;
  (*(v1 + 8))(v3, v0);
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = objc_allocWithZone(SASBookendViewProvider);
  v18 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithBookendType:1 onlyShowLanguages:isa callbacks:v18];

  return v20;
}