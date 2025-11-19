double sub_10004C600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t, Swift::Int)@<X3>, _OWORD *a5@<X8>)
{
  if (*(a2 + 16) && (v6 = sub_10004C144(a1, a3, a4), (v7 & 1) != 0))
  {
    v8 = sub_10003AE78(v6);

    sub_100011BAC(v8, v9);
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

void sub_10004C664()
{
  sub_100003D74();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v9 = sub_100007754();
  v10 = sub_100002CC4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v17 = v16 - v15;
  sub_100002BC0(0, &qword_100270650, OS_dispatch_source_ptr);
  v18 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  v23[4] = sub_10018FA2C;
  v23[5] = v19;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_100005E50;
  v23[3] = &unk_100251600;
  v20 = _Block_copy(v23);
  v21 = v2;
  static DispatchQoS.unspecified.getter();
  sub_10004640C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v20);
  (*(v6 + 8))(v1, v3);
  (*(v12 + 8))(v17, v9);

  v22 = *&v21[OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource];
  *&v21[OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource] = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  sub_100005F14();
}

uint64_t sub_10004C8A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004C904(char *a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v39 = v36 - v4;
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v42[3] = &type metadata for JSEnginePerformerProvider;
  v42[4] = &off_10024C500;
  v37 = OBJC_IVAR____TtC14amsengagementd17EngagementService_serviceQueue;
  v13 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v36[1] = "engagement-enqueue-finished";
  v36[2] = v13;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v37;
  *&a1[v37] = v14;
  v16 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
  v17 = type metadata accessor for URL();
  sub_10000A7C0(v39, 1, 1, v17);
  v18 = type metadata accessor for AppDefaultsProvider();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_100046D08();
  *(v16 + 3) = v18;
  *(v16 + 4) = &off_100247508;
  *v16 = v21;
  v22 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseDelay] = 1;
  v23 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_featureFlagProvider];
  *(v24 + 3) = &type metadata for FeatureFlagProvider;
  *(v24 + 4) = &off_10024B860;
  v25 = OBJC_IVAR____TtC14amsengagementd17EngagementService_flushDebouncer;
  type metadata accessor for AsyncDebouncer();
  swift_allocObject();
  *&a1[v25] = sub_100046F80(0x8AC7230489E80000, 0, &unk_1001EBD40, 0);
  sub_1000262E4(v42, &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_enginePerformerProvider]);
  v26 = *&a1[v15];
  type metadata accessor for PriorityQueue();
  swift_allocObject();
  v27 = v26;
  sub_10004CF54();
  *&a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue] = v28;
  v29 = *&a1[v15];
  type metadata accessor for BagProvider();
  v30 = swift_allocObject();
  v31 = objc_allocWithZone(type metadata accessor for Defaults());
  v32 = v29;
  *&a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_syncCoordinator] = sub_10004D234(v30, [v31 init], v29);
  sub_1000262E4(v16, &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_persistedEventCoordinator]);
  v33 = type metadata accessor for EngagementService();
  v40.receiver = a1;
  v40.super_class = v33;
  v34 = objc_msgSendSuper2(&v40, "init");
  sub_100002C00(v42);
  return v34;
}

uint64_t type metadata accessor for AppDefaultsProvider()
{
  result = qword_10026A600;
  if (!qword_10026A600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004CE20()
{
  if (!qword_10026A610)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026A610);
    }
  }
}

void sub_10004CE78()
{
  sub_10004CE20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10004CF54()
{
  sub_100003D74();
  v1 = v0;
  v16 = v2;
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  sub_1000034A4();
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100002DEC();
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v14 = v13 - v12;
  type metadata accessor for Worker();
  *(v1 + 64) = sub_10000B080();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v15 = sub_100046FFC(_swiftEmptyArrayStorage);
  *(v1 + 24) = 1;
  *(v1 + 32) = v15;
  *(v1 + 40) = sub_10018BE10;
  *(v1 + 48) = 0;
  *(v1 + 16) = sub_10000B080();
  *(v1 + 56) = v16;
  sub_100017A08();
  (*(v9 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  sub_10004D1EC(&qword_10026CCF0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_100006070(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100005F14();
}

uint64_t sub_10004D1EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10004D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BagProvider();
  v24[3] = v6;
  v24[4] = &off_100247E30;
  v24[0] = a1;
  v22 = type metadata accessor for Defaults();
  v23 = &off_100248840;
  v21[0] = a2;
  type metadata accessor for EngagementSyncCoordinator();
  v7 = swift_allocObject();
  v8 = sub_100046CB8(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = sub_100046CB8(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10004D418(*v11, *v17, a3, v7);
  sub_100002C00(v21);
  sub_100002C00(v24);
  return v19;
}

uint64_t sub_10004D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v7 - 8);
  v19 = v7;
  v8 = *(v18 + 64);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v23[3] = type metadata accessor for BagProvider();
  v23[4] = &off_100247E30;
  v23[0] = a1;
  v22[3] = type metadata accessor for Defaults();
  v22[4] = &off_100248840;
  v22[0] = a2;
  *(a4 + 104) = &_swiftEmptySetSingleton;
  sub_1000262E4(v23, a4 + 16);
  sub_1000262E4(v22, a4 + 56);
  v17[1] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100002C00(v22);
  sub_100002C00(v23);
  *(a4 + 96) = v15;
  return a4;
}

uint64_t sub_10004D748(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  type metadata accessor for MediaCatalogSyncActor();
  sub_1000425B4();
  *(v1 + 120) = Dictionary.init(dictionaryLiteral:)();
  return v1;
}

uint64_t sub_10004D7A8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002D98();
  *v3 = v2;

  sub_100002D8C();

  return v4();
}

void sub_10004D894()
{
  v16 = &type metadata for AMSFlags;
  v17 = sub_10000D884();
  LOBYTE(v15[0]) = 1;
  v1 = isFeatureEnabled(_:)();
  sub_100002C00(v15);
  if (v1)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = String._bridgeToObjectiveC()();
    [v2 addObserver:v0 selector:"handleNFCNotification:" name:v3 object:0];

    v4 = *&v0[OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_100180548;
    v18 = v5;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10017F158;
    v16 = &unk_100250CF8;
    v6 = _Block_copy(v15);

    xpc_set_event_stream_handler("com.apple.distnoted.matching", v4, v6);
    _Block_release(v6);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_100008580();
    sub_100002CFC(v7);
    v9 = *(v8 + 72);
    sub_100002D7C();
    v10 = sub_100003F28();
    v16 = sub_100005A44(v10, xmmword_1001E5F70);
    v15[0] = v0;
    v11 = v0;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C184();

    sub_100002C00(v15);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v14 = static os_log_type_t.default.getter();
    sub_1000036B0(v14);
  }
}

uint64_t sub_10004DB78()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_100002CC4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v18 = v17 - v16;
  if (qword_1002687F0 != -1)
  {
    sub_100002E30();
  }

  v25 = sub_10004DED4;
  v26 = v0;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v23 = v19;
  v24 = &unk_100246A28;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
}

unint64_t sub_10004DDC4()
{
  result = qword_10026CD50;
  if (!qword_10026CD50)
  {
    sub_10007BC70(&unk_100270490, &unk_1001E74F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD50);
  }

  return result;
}

unint64_t sub_10004DE28()
{
  result = qword_10026CD40;
  if (!qword_10026CD40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD40);
  }

  return result;
}

id sub_10004DE80()
{
  result = [objc_allocWithZone(type metadata accessor for PushService()) init];
  qword_1002878E0 = result;
  return result;
}

double sub_10004DEDC()
{
  v1 = v0;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v2 = sub_1000078B4();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 doubleForKey:v3];

  v5 = [v4 valuePromise];
  v20[0] = 0;
  v6 = [v5 resultWithError:v20];

  if (v6)
  {
    v7 = v20[0];
    [v6 doubleValue];
    v9 = v8;
  }

  else
  {
    v10 = v20[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002686D0 != -1)
    {
      sub_100006990();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v13 = *(v12 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v21 = type metadata accessor for ActivityObserver();
    v20[0] = v1;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v20);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v21 = v19;
    v16 = sub_100017E64(v20);
    (*(*(v19 - 8) + 16))(v16);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v20);
    v17 = static os_log_type_t.debug.getter();
    sub_1000036B0(v17);

    return 900.0;
  }

  return v9;
}

void sub_10004E21C()
{
  sub_100003D74();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100002CC4(v1);
  v24 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v8 = v7 - v6;
  v23 = type metadata accessor for DispatchQoS();
  v9 = sub_100002CC4(v23);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v16 = v15 - v14;
  v17 = *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  v25[4] = sub_10004B438;
  v25[5] = v18;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100005E50;
  v25[3] = &unk_1002513C0;
  v19 = _Block_copy(v25);
  v20 = v17;
  v21 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000BB4C();
  sub_100006070(v22, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v8, v1);
  (*(v11 + 8))(v16, v23);

  sub_100005F14();
}

uint64_t sub_10004E4B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004E510()
{
  type metadata accessor for MetricsIdentifierCloudDataController();
  swift_allocObject();
  sub_100003EFC();
  sub_10004B440();
  qword_1002878B8 = v0;
}

void sub_10004E54C(char *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = OBJC_IVAR____TtC14amsengagementd11PushService_connection;
  v5 = *&a1[OBJC_IVAR____TtC14amsengagementd11PushService_connection];
  if (v5)
  {
    [v5 shutdown];
    v6 = *&a1[v4];
    *&a1[v4] = 0;
  }

  v7 = [objc_opt_self() pushEnvironment];
  v8 = &APSEnvironmentDevelopment;
  if (v7 != 2)
  {
    v8 = &APSEnvironmentProduction;
  }

  v9 = *v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();

  LOBYTE(v13) = [v13 isValidEnvironment:v14];

  if (v13)
  {
    v15 = *&a1[OBJC_IVAR____TtC14amsengagementd11PushService_publishers];

    v41 = sub_10004EAE0(v16);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = *(type metadata accessor for LogInterpolation() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v44 = type metadata accessor for PushService();
    v42 = a1;
    v40 = a1;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v42);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0xD000000000000027;
    v28._object = 0x8000000100201560;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v44 = &type metadata for String;
    v42 = v10;
    v43 = v12;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v42);
    v29._countAndFlagsBits = 0x736369706F74202CLL;
    v29._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    v44 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v42 = v41;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v42);
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v31 = static os_log_type_t.info.getter();
    sub_1000036B0(v31);

    v32 = *&v40[OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue];
    objc_allocWithZone(APSConnection);
    v33 = v32;
    v34 = sub_10004ECE8(v10, v12, 0xD00000000000001CLL, 0x8000000100201590, v32);
    if (v34)
    {
      v35 = v34;
      [v34 setDelegate:v40];
      sub_100045890(v41, v35);
      v36 = *&a1[v4];
      *&a1[v4] = v35;

      return;
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v22 = *(type metadata accessor for LogInterpolation() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v44 = type metadata accessor for PushService();
    v42 = a1;
    v25 = a1;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v42);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._object = 0x8000000100201540;
    v37._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    v44 = &type metadata for String;
    v42 = v10;
    v43 = v12;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v42);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v39 = static os_log_type_t.error.getter();
    sub_1000036B0(v39);
  }
}

void *sub_10004EAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10004EB78(*(a1 + 16), 0);
  v4 = sub_10004EB8C(&v6, v3 + 4, v2, a1);
  sub_10004EB70();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10004EB8C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10004ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

uint64_t sub_10004ED94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10007B9A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004EDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004918(a1, a2, a3);
  v7 = sub_10007B9A4(v5, v6);
  sub_1000047A4(v7);
  (*(v8 + 16))(a2, v3);
  return a2;
}

uint64_t sub_10004EE98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  v3 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10004EEF0()
{

  return swift_beginAccess();
}

uint64_t sub_10004EF0C()
{

  return swift_allocObject();
}

Swift::Int sub_10004EF38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_100017CCC();

  return Hasher._finalize()();
}

unint64_t sub_10004EF8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002446E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_10004EFD8()
{
  *&v0[OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerDataCacheService();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_10004F018()
{
  result = qword_10026CD00;
  if (!qword_10026CD00)
  {
    sub_10007BC70(&unk_10026F8A0, &unk_1001EBCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD00);
  }

  return result;
}

void sub_10004F07C()
{
  sub_100003D74();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100002CC4(v1);
  v24 = v3;
  v25 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100003D10(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_connection] = 0;
  v23 = OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  if (qword_100268800 != -1)
  {
    swift_once();
  }

  v15 = qword_1002878F8;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10000BB4C();
  sub_100006070(v16, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  *&v0[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10007B9A4(&qword_1002704A8, &qword_1001EF9E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = 0xD000000000000033;
  *(inited + 40) = 0x80000001001FF470;
  v18 = sub_10007B9A4(&qword_100270478, &qword_1001EF9E0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(inited + 48) = PassthroughSubject.init()();
  *(inited + 56) = 0xD000000000000026;
  *(inited + 64) = 0x80000001002015E0;
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  swift_allocObject();
  *(inited + 72) = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_publishers] = Dictionary.init(dictionaryLiteral:)();
  v26.receiver = v0;
  v26.super_class = type metadata accessor for PushService();
  objc_msgSendSuper2(&v26, "init");
  sub_100005F14();
}

uint64_t sub_10004F3F8()
{
  sub_100002BC0(0, &qword_10026AEB8, NSUbiquitousKeyValueStore_ptr);
  sub_10004F46C();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = 0;
  sub_10004B274(0, 0);
  sub_1001BF8AC();
  return v0;
}

unint64_t sub_10004F46C()
{
  result = qword_10026AEC0;
  if (!qword_10026AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AEC0);
  }

  return result;
}

uint64_t sub_10004F4C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(a2, a3);
    sub_100003E78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10004F548(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_10004F5C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_DSID];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringValue];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t sub_10004F670(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

char *sub_10004F7A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

id sub_10004F884()
{
  result = [*(v0 + OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore) ams_activeiTunesAccount];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for JSAccount();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  return result;
}

unint64_t sub_10004F904(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000073;
      v8 = 0x636974796C616E61;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x6C616E7265746E69;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v8 = 0x6E656D6D6F636572;
          v7 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      v9 = 0x636974796C616E61;
      v10 = 0xE900000000000073;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x6C616E7265746E69;
          break;
        case 2:
          v10 = 0xE800000000000000;
          v9 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v9 = 0x6E656D6D6F636572;
          v10 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004FB14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004FB54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v36 = a1;
  v37 = a2;
  v30[2] = a4;
  v4 = type metadata accessor for JSONContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v30[1] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONObject();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v35 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v30 - v12;
  v31 = type metadata accessor for URL();
  v34 = *(v31 - 8);
  v14 = *(v34 + 64);
  v15 = __chkstk_darwin(v31);
  v30[0] = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v33 = v30 - v17;
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  sub_10007B9A4(&qword_1002704C8, &qword_1001EFA50);
  v21 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v22 = static os_log_type_t.debug.getter();
  sub_1000036B0(v22);

  v23 = type metadata accessor for JSStackContext();
  v24 = v32;
  sub_10001EC70(v32 + *(v23 + 32), v13);
  v25 = v31;
  if (sub_100009F34(v13, 1, v31) == 1)
  {
    v27 = v33;
    v26 = v34;
    (*(v34 + 16))(v33, v24 + *(v23 + 40), v25);
    if (sub_100009F34(v13, 1, v25) != 1)
    {
      sub_10000A00C(v13, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    v27 = v33;
    v26 = v34;
    (*(v34 + 32))(v33, v13, v25);
  }

  sub_10003A5E0(v36, v37);
  v28 = v38;
  JSONObject.init(deserializing:)();
  if (!v28)
  {
    JSONContext.init()();
    (*(v26 + 16))(v30[0], v27, v25);
    JSPackageIndex.init(deserializing:using:from:)();
  }

  return (*(v26 + 8))(v27, v25);
}

uint64_t sub_10004FFCC@<X0>(uint64_t *a1@<X8>)
{
  result = JSPackageIndex.properties.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100050008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10007B9A4(a3, a4);
  sub_100002DDC(v5);
  v7 = *(v6 + 40);
  v8 = sub_100005B9C();
  v9(v8);
  return a2;
}

Class sub_100050088(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_10005011C()
{
  if (qword_100268850 != -1)
  {
    swift_once();
  }

  v1 = sub_100050444(*(*(v0 + OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1));
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  sub_100006D54(inited, xmmword_1001E61B0);
  v3 = type metadata accessor for JSUbiquitousDatabase();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore] = v1;
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v9, "init");
  inited[4].n128_u64[1] = v3;
  inited[3].n128_u64[0] = v6;
  v7 = Dictionary.init(dictionaryLiteral:)();

  return v7;
}

void *sub_100050444(char a1)
{
  if (*(v1 + 24) != 1)
  {
    sub_100050550();
    swift_allocError();
    v5 = 1;
    goto LABEL_7;
  }

  if (!sub_100073798())
  {
    sub_100050550();
    swift_allocError();
    v5 = 0;
    goto LABEL_7;
  }

  swift_beginAccess();
  v3 = *(v1 + 2);

  v1 = sub_1000AA84C(a1, v3);

  if (!v1)
  {
    sub_100050550();
    swift_allocError();
    v5 = 2;
LABEL_7:
    *v4 = v5;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_100050550()
{
  result = qword_1002720C8;
  if (!qword_1002720C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720C8);
  }

  return result;
}

uint64_t type metadata accessor for JSError()
{
  return objc_opt_self();
}

{
  return type metadata accessor for JSError();
}

id sub_1000505C8(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    type metadata accessor for JSError();
    sub_10010F0F0(0, 0x206E776F6E6B6E55, 0xED0000726F727245, 0, 0);
  }

  swift_errorRetain();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a1 || (v29[0] = a1, swift_errorRetain(), sub_10007B9A4(&unk_100270B70, &unk_1001E8F60), sub_10007B9A4(&qword_10026DA98, &unk_1001ED050), (swift_dynamicCast() & 1) == 0))
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_14;
  }

  if (!*(&v27 + 1))
  {
LABEL_14:
    sub_10010F3E4(&v26);
    goto LABEL_15;
  }

  sub_10003B104(&v26, v29);
  sub_100003CA8(v29, v30);
  sub_100005350();
  v6 = dispatch thunk of LocalizedError.errorDescription.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v27 + 1) = &type metadata for String;
    *&v26 = v8;
    *(&v26 + 1) = v9;
    sub_100002C4C(&v26, v24);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100006D70();
  }

  sub_100003CA8(v29, v30);
  sub_100005350();
  v10 = dispatch thunk of LocalizedError.failureReason.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v27 + 1) = &type metadata for String;
    *&v26 = v12;
    *(&v26 + 1) = v13;
    sub_100002C4C(&v26, v24);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100006D70();
  }

  sub_100003CA8(v29, v30);
  sub_100005350();
  v14 = dispatch thunk of LocalizedError.recoverySuggestion.getter();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v27 + 1) = &type metadata for String;
    *&v26 = v16;
    *(&v26 + 1) = v17;
    sub_100002C4C(&v26, v24);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100006D70();
  }

  sub_100002C00(v29);
LABEL_15:
  v18 = [v4 domain];
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  v19 = [v4 code];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = type metadata accessor for JSError();
  v25.receiver = v2;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, "initWithDomain:code:userInfo:", v18, v19, isa);

  return v22;
}

uint64_t sub_10005094C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  v8 = *&v3[OBJC_IVAR____TtC14amsengagementd5JSLog_logger];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12 = type metadata accessor for JSLog();
  v13 = *&v5[OBJC_IVAR____TtC14amsengagementd5JSLog_runtime];
  v22 = v12;
  v21[0] = v5;
  v14 = (v13 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  v17 = v5;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v21);
  v22 = &type metadata for String;
  v21[0] = a1;
  v21[1] = a2;

  static LogInterpolation.sensitive(_:)();
  v18 = sub_100002C5C(v21);
  v19 = a3(v18);
  sub_1000036B0(v19);
}

id sub_100050B04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa encoding:a3];

  sub_1000253FC(a1, a2);
  return v8;
}

uint64_t sub_100050BA8(void *a1)
{
  v1 = [a1 toString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100050C0C(uint64_t a1)
{
  v2 = sub_100050EA0();
  v3 = sub_100050F4C();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_100050C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050F4C();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_100050D38()
{
  sub_100002BC0(0, &qword_10026D728, JSContext_ptr);
  v0 = static JSContext.requiredCurrent.getter();
  v1 = JSContext.propagateErrorsToExceptions(_:)();

  return v1;
}

uint64_t sub_100050DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, _OWORD *))
{
  sub_100004918(a1, a2, a3);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = v5;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v12 = v5;
  }

  a5(v8, v10, v14);

  return sub_100009FB0(v14, &qword_10026D350, &qword_1001E6050);
}

uint64_t sub_100050E64(uint64_t a1)
{
  v2 = sub_100050EA0();

  return Error<>._domain.getter(a1, v2);
}

unint64_t sub_100050EA0()
{
  result = qword_1002720D8;
  if (!qword_1002720D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720D8);
  }

  return result;
}

unint64_t sub_100050EF8()
{
  result = qword_10026CE00;
  if (!qword_10026CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CE00);
  }

  return result;
}

unint64_t sub_100050F4C()
{
  result = qword_1002720E0;
  if (!qword_1002720E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720E0);
  }

  return result;
}

uint64_t sub_100050FA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050FCC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100051018()
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61C0;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v2 = [v0 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [v0 code];
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6567617373656DLL;
  *(inited + 136) = 0xE700000000000000;
  v6 = sub_1000511EC();
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

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x656C746974;
  *(inited + 184) = 0xE500000000000000;
  v10 = sub_100051270();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v13;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F666E4972657375;
  *(inited + 232) = 0xE800000000000000;
  v14 = [v0 userInfo];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 264) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(inited + 240) = v15;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000511F8(SEL *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSError();
  v3 = objc_msgSendSuper2(&v7, *a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_1000512BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100051328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000513A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  sub_100004918(a1, a2, a3);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = v4;
  a4(v19, v6, v8);

  v10 = v20;
  if (v20)
  {
    v11 = sub_100003CA8(v19, v20);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    sub_100002DEC();
    v16 = v15 - v14;
    (*(v12 + 16))(v15 - v14);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v16, v10);
    sub_100002C00(v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void *sub_100051540()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for AppKeyValueTable();
    v1 = sub_100004B50();
    v1[2] = v2;
    v1[3] = 7566955;
    v1[4] = 0xE300000000000000;
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_1000515B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E61B0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_100051670(v7);

  if (!v3)
  {
    sub_100052D94(v8, a3);
  }

  return result;
}

uint64_t sub_100051670(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return Dictionary.init(dictionaryLiteral:)();
  }

  v37[1] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = Dictionary.init(dictionaryLiteral:)();
  v37[0] = v10 + 16;
  v39 = 0x80000001001F4E00;
  v40 = a1;
  v11 = (a1 + 40);
  v38 = xmmword_1001E61B0;
  while (1)
  {
    v47 = v2;
    if (!v9)
    {
      break;
    }

    v42 = v9;
    v13 = *(v11 - 1);
    v12 = *v11;
    v44 = 0;
    v45 = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    v44 = 0xD000000000000022;
    v45 = v39;
    v14 = v41;
    String.append(_:)(*(v41 + 24));
    v15._countAndFlagsBits = sub_100002F28();
    v15._object = 0xE700000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = sub_100005058();
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x3F203D3D20;
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);
    v18 = v45;
    v43 = v44;
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    inited = swift_initStackObject();
    sub_100006308(inited, v38);
    v20 = *(v14 + 16);
    v21 = swift_allocObject();
    v21[2] = v14;
    v21[3] = v10;
    v21[4] = v40;
    v22 = __chkstk_darwin(v21);
    v23 = v43;
    v37[-6] = v20;
    v37[-5] = v23;
    v37[-4] = v18;
    v37[-3] = inited;
    v37[-2] = sub_100051FB4;
    v37[-1] = v22;

    v24 = v47;
    sub_100014A20(sub_10001D7C8, &v37[-8]);
    if (v24)
    {

      swift_setDeallocating();
      sub_10001CE50();

      return v11;
    }

    swift_setDeallocating();
    sub_10001CE50();

    v11 += 2;
    v9 = v42 - 1;
    v2 = 0;
  }

  if (qword_1002686B8 != -1)
  {
    sub_100006AD8();
  }

  v43 = qword_100287818;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v25 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v25);
  v27 = *(v26 + 72);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v46 = type metadata accessor for AppKeyValueTable();
  v44 = v41;

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v44);
  v32 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100007428(v32);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v46 = sub_10007B9A4(&qword_10026A9C8, &qword_1001E8380);
  v44 = v11;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v44, &qword_10026D350, &qword_1001E6050);
  v33._countAndFlagsBits = 0x79654B6D6F726620;
  v33._object = 0xEB00000000203A73;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
  v46 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  v44 = v40;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v44, &qword_10026D350, &qword_1001E6050);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
  LogInterpolation.init(stringInterpolation:)();
  v35 = static os_log_type_t.debug.getter();
  sub_1000036B0(v35);

  return v11;
}

uint64_t sub_100051BC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051BFC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100051FD8(&v21);
  if (!v4)
  {
    if (*(&v21 + 1))
    {
      v23 = v21;
      v24 = v22[0];
      v25 = v22[1];
      sub_10004ED94(&v23, &v21, qword_10026A9D8, &unk_1001E8390);
      sub_10004ED94(&v23, v18, qword_10026A9D8, &unk_1001E8390);

      sub_100002C4C(&v19, &v20);
      swift_beginAccess();
      sub_100052CE8();
      swift_endAccess();
      sub_10000A064(&v23, qword_10026A9D8, &unk_1001E8390);
      sub_100002C00(v22);
    }

    else
    {
      sub_10000A064(&v21, &qword_10026A9D0, &qword_1001E8388);
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      v26 = qword_100287818;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v9 = *(type metadata accessor for LogInterpolation() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      *(&v24 + 1) = type metadata accessor for AppKeyValueTable();
      *&v23 = a2;

      v12 = AMSLogKey();
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v23);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v14._object = 0x80000001001F4E50;
      v14._countAndFlagsBits = 0xD000000000000015;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
      *(&v24 + 1) = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      *&v23 = a4;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v23, &qword_10026D350, &qword_1001E6050);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
      LogInterpolation.init(stringInterpolation:)();
      v16 = static os_log_type_t.error.getter();
      sub_1000036B0(v16);
    }
  }

  return 1;
}

_OWORD *sub_100051FD8@<X0>(uint64_t a1@<X8>)
{
  sub_100005058();
  result = sub_10001ADD4();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    sub_100005798();
    sub_10003A420(v26);
    v7 = *(&v26[0] + 1);
    sub_100005798();
    v8 = sub_10003A400();
    if (v9)
    {
      v8 = -1;
    }

    v10 = sub_1000521C8(v8);
    if (v6)
    {
      v11 = v10;
      if (v7 >> 60 != 15 && v10 != 7)
      {
        v13 = sub_10000B1A8();
        sub_10003A5E0(v13, v14);
        sub_10000B1A8();
        sub_10003A638(v11, v15);
        v16 = sub_10000B1A8();
        sub_10003AE18(v16, v17);
        if (v25)
        {
          v18 = sub_10000B1A8();
          sub_10003AE18(v18, v19);
          sub_100002C4C(&v24, v26);
          *a1 = v5;
          *(a1 + 8) = v6;
          return sub_100002C4C(v26, (a1 + 16));
        }

        sub_10000A064(&v24, &qword_10026D350, &qword_1001E6050);
      }

      memset(v26, 0, sizeof(v26));
      sub_1000526FC(v26, v5, v6);
      sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
      v22 = sub_10000B1A8();
      sub_10003AE18(v22, v23);
    }

    else
    {
      v20 = sub_10000B1A8();
      result = sub_10003AE18(v20, v21);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

unint64_t sub_1000521C8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

id sub_1000521D8(uint64_t a1)
{
  v1 = sub_1000522EC(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v1];
  v4 = [v3 ams_activeiTunesAccount];
  if (v4)
  {
    v5 = type metadata accessor for JSAccount();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    v4 = objc_msgSendSuper2(&v8, "init");
  }

  return v4;
}

id sub_1000522EC(uint64_t a1)
{
  switch(a1)
  {
    case 100:
      v1 = &AMSAccountMediaTypeAppStore;
      goto LABEL_14;
    case 400:
      v1 = &AMSAccountMediaTypeProduction;
      goto LABEL_14;
    case 102:
      v1 = &AMSAccountMediaTypeAppStoreSandbox;
      goto LABEL_14;
    case 200:
      v1 = &AMSAccountMediaTypeBooks;
      goto LABEL_14;
    case 300:
      v1 = &AMSAccountMediaTypeiTunes;
      goto LABEL_14;
    case 101:
      v1 = &AMSAccountMediaTypeAppStoreBeta;
LABEL_14:
      v2 = *v1;
      v3 = *v1;
      return v2;
  }

  return 0;
}

uint64_t sub_100052390(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_100007594();
  a4(v7);
}

uint64_t sub_100052410(uint64_t result)
{
  v1 = *(result + 16);
  for (i = result + 40; v1; --v1)
  {
    sub_10000A9D8();
    sub_1000524A0();

    result = sub_100009FB0(&v3, &qword_10026D350, &qword_1001E6050);
    i += 16;
  }

  return result;
}

void sub_1000524A0()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005338();
  v9 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSDatabase_database);
  sub_100051540();
  v10 = sub_100007594();
  sub_1000526FC(v10, v4, v2);

  sub_100005F14();
}

uint64_t sub_1000526FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004ED94(a1, v9, &qword_10026D350, &qword_1001E6050);
  if (v10)
  {
    sub_10005302C();
    if (swift_dynamicCast())
    {

      v11 = 0u;
      v12 = 0u;
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000A064(v9, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, &v11, &qword_10026D350, &qword_1001E6050);
  if (*(&v12 + 1))
  {
    sub_100002C4C(&v11, v13);
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E61B0;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    sub_100011BAC(v13, inited + 48);

    v7 = Dictionary.init(dictionaryLiteral:)();
    sub_100053070(v7);
    sub_100002C00(v13);
  }

LABEL_7:
  sub_10000A064(&v11, &qword_10026D350, &qword_1001E6050);
  return sub_10005289C();
}

uint64_t sub_10005289C()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(28);

  strcpy(&v7, "DELETE FROM ");
  BYTE5(v7._object) = 0;
  HIWORD(v7._object) = -5120;
  String.append(_:)(*(v0 + 24));
  v2._countAndFlagsBits = sub_100002F28();
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_100005058();
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x3B3F203D20;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  sub_100006308(inited, xmmword_1001E61B0);

  SQLDatabase.execute(sql:parameters:)(v7, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDatabase.execute(sql:parameters:)(Swift::String sql, Swift::OpaquePointer parameters)
{
  v5 = sql;
  rawValue = parameters._rawValue;

  sub_10001A648(v3, v2, sub_100052FF8, &v4);
}

void sub_100052A24()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSDatabase_database);
  sub_100051540();
  sub_1000515B8(v4, v2, v6);

  sub_100005F14();
}

void sub_100052CE8()
{
  sub_100003D8C();
  if (*(v1 + 24))
  {
    sub_100002C4C(v1, &v27);
    v2 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    sub_100009DBC();
    sub_10000DFC4();

    sub_10000A6E0(v3, v4, v5, v6, v7, v8, v9, v10, v25, v26);
  }

  else
  {
    sub_1000048BC();
    sub_10000A00C(v11, v12, v13);
    v14 = sub_10000821C();
    sub_1000AB4DC(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);

    sub_1000048BC();
    sub_10000A00C(v22, v23, v24);
  }
}

double sub_100052D94@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100012A94(), (v4 & 1) != 0))
  {
    v5 = sub_10003AE78(v3);

    sub_100011BAC(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100052E10(uint64_t a1, uint64_t a2, uint64_t a3, Swift::OpaquePointer a4)
{
  v5 = v4;
  sub_100017A08();
  v10 = qword_100268818;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v16 = *(a1 + 72);
    __chkstk_darwin(v11);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    SQLDatabase.prepare(sql:)(a2, a3);
    if (!v5)
    {
      SQLStatement.bind(parameters:)(a4);
      if (!v14)
      {
        SQLStatement.step()(v13);
      }
    }

    objc_autoreleasePoolPop(v12);
  }
}

unint64_t sub_10005302C()
{
  result = qword_10026A530[0];
  if (!qword_10026A530[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_10026A530);
  }

  return result;
}

uint64_t sub_100053070(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v32 = *v1;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  if (qword_1002686B8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v8);
    v10 = *(v9 + 72);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v38[0] + 1) = type metadata accessor for AppKeyValueTable();
    *&v37 = v4;
    v39 = v4;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v37);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0x203A676E69766153;
    v15._object = 0xE800000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    *(&v38[0] + 1) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v37 = a1;

    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    LogInterpolation.init(stringInterpolation:)();
    v17 = static os_log_type_t.info.getter();
    sub_1000036B0(v17);

    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 64);
    v4 = (v18 + 63) >> 6;

    v21 = 0;
    if (v20)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v4)
      {
        v20 = 0;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        goto LABEL_13;
      }

      v20 = *(a1 + 64 + 8 * v22);
      ++v21;
      if (v20)
      {
        v21 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    sub_100006AD8();
  }

  while (1)
  {
    v22 = v21;
LABEL_12:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v24 = v23 | (v22 << 6);
    v25 = (*(a1 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_100011BAC(*(a1 + 56) + 32 * v24, v33);
    *&v34 = v27;
    *(&v34 + 1) = v26;
    sub_100002C4C(v33, &v35);

LABEL_13:
    v37 = v34;
    v38[0] = v35;
    v38[1] = v36;
    v28 = *(&v34 + 1);
    if (!*(&v34 + 1))
    {
    }

    v29 = v37;
    sub_100002C4C(v38, &v34);
    v30 = objc_autoreleasePoolPush();
    sub_10005345C(&v34, v39, v29, v28, v32, v33);
    if (v3)
    {
      break;
    }

    v3 = 0;

    objc_autoreleasePoolPop(v30);
    sub_100002C00(&v34);
    if (!v20)
    {
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v30);

  return sub_100002C00(&v34);
}

void sub_10005345C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v79 = a4;
  v78 = a3;
  v10 = type metadata accessor for Date();
  v77 = *(v10 - 8);
  v11 = *(v77 + 64);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = objc_autoreleasePoolPush();
  sub_100053D6C(a1, a2, &v84, &v80);
  if (v6)
  {
    v17 = v84;
    objc_autoreleasePoolPop(v16);
    *a6 = v17;
  }

  else
  {
    v76 = v13;
    v18 = v79;
    objc_autoreleasePoolPop(v16);
    v19 = v82;
    if (v82 == 7)
    {
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v20 = *(type metadata accessor for LogInterpolation() - 8);
      v21 = *(v20 + 72);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v83 = type metadata accessor for AppKeyValueTable();
      v80 = a2;

      v23 = AMSLogKey();
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v80);
      LogInterpolation.init(stringLiteral:)();
      v39 = static os_log_type_t.error.getter();
      sub_1000036B0(v39);
    }

    else
    {
      v75 = a2;
      v25 = v80;
      v26 = v81;
      sub_10003A5E0(v80, v81);
      v27 = sub_100024F14();
      v72 = a6;
      v74 = v10;
      v28 = v18;
      if (v27)
      {
        sub_10003A5E0(v25, v26);
        v29 = Data.count.getter();
        sub_100054AA0(v25, v26, v19);
        if (v29 / 1000.0 / 1000.0 > 0.1)
        {
          v73 = v25;
          v68 = v26;
          v30 = [objc_allocWithZone(NSByteCountFormatter) init];
          [v30 setAllowedUnits:4];
          v67 = v30;
          v31 = [v30 stringFromByteCount:v29];
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v32;

          if (qword_1002686B8 != -1)
          {
            swift_once();
          }

          v71 = qword_100287818;
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v33 = *(type metadata accessor for LogInterpolation() - 8);
          v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v66[1] = *(v33 + 72);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1001E5F70;
          v66[0] = v35;
          v83 = type metadata accessor for AppKeyValueTable();
          v80 = v75;

          v36 = AMSLogKey();
          v37 = v78;
          if (v36)
          {
            v38 = v36;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          static LogInterpolation.prefix(_:_:)();

          sub_100002C00(&v80);
          LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v40._object = 0x80000001001F4EB0;
          v40._countAndFlagsBits = 0xD000000000000011;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
          v83 = &type metadata for String;
          v80 = v37;
          v81 = v28;

          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_10000A064(&v80, &qword_10026D350, &qword_1001E6050);
          v41._countAndFlagsBits = 0x7469772079656B20;
          v41._object = 0xEA00000000002068;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
          v83 = &type metadata for String;
          v80 = v70;
          v81 = v69;
          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_10000A064(&v80, &qword_10026D350, &qword_1001E6050);
          v42._countAndFlagsBits = 0x65756C617620;
          v42._object = 0xE600000000000000;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
          LogInterpolation.init(stringInterpolation:)();
          v43 = static os_log_type_t.default.getter();
          sub_1000036B0(v43);

          v26 = v68;
          v25 = v73;
        }
      }

      v44 = v75;
      v73 = *(v75 + 16);
      v80 = 0;
      v81 = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v45._countAndFlagsBits = 0xD000000000000017;
      v45._object = 0x80000001001F48E0;
      String.append(_:)(v45);
      String.append(_:)(*(v44 + 24));
      v46._countAndFlagsBits = 10272;
      v46._object = 0xE200000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = 7955819;
      v47._object = 0xE300000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 8236;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49._countAndFlagsBits = 0x6E69616D6F64;
      v49._object = 0xE600000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 8236;
      v50._object = 0xE200000000000000;
      String.append(_:)(v50);
      v51._countAndFlagsBits = 0x65756C6176;
      v51._object = 0xE500000000000000;
      String.append(_:)(v51);
      v52._countAndFlagsBits = 8236;
      v52._object = 0xE200000000000000;
      String.append(_:)(v52);
      v53._countAndFlagsBits = 0x70795465756C6176;
      v53._object = 0xE900000000000065;
      String.append(_:)(v53);
      v54._countAndFlagsBits = 8236;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 0x69646F4D7473616CLL;
      v55._object = 0xEC00000064656966;
      String.append(_:)(v55);
      v56._countAndFlagsBits = 0xD000000000000015;
      v56._object = 0x80000001001F4E90;
      String.append(_:)(v56);
      v57 = v80;
      v58 = v81;
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v59 = v26;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E61C0;
      *(inited + 32) = v78;
      *(inited + 40) = v28;
      *(inited + 48) = 3;
      *(inited + 56) = xmmword_1001E8340;
      *(inited + 72) = 3;
      *(inited + 80) = v25;
      *(inited + 88) = v59;
      *(inited + 96) = 0;
      *(inited + 104) = v19;
      *(inited + 112) = 0;
      *(inited + 120) = 1;
      sub_100054AB4(v25, v59, v19);

      v61 = v76;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v63 = v62;
      (*(v77 + 8))(v61, v74);
      *(inited + 128) = v63;
      *(inited + 136) = 0;
      *(inited + 144) = 2;
      v64._countAndFlagsBits = v57;
      v64._object = v58;
      SQLDatabase.execute(sql:parameters:)(v64, inited);
      swift_setDeallocating();
      sub_10001CE50();

      sub_100054AA0(v25, v59, v19);
      sub_100054AA0(v25, v59, v19);
      if (v65)
      {
        *v72 = v65;
      }
    }
  }
}

uint64_t sub_100053D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100011BAC(a1, v26);
  sub_100054088(v26, &v27);
  sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  if (v28)
  {
    sub_100002C4C(&v27, v29);
    v11 = sub_1000546B0();
    if (v4)
    {
      result = sub_100002C00(v29);
      *a3 = v4;
    }

    else
    {
      v19 = v11;
      v20 = v12;
      v21 = v13;
      result = sub_100002C00(v29);
      *a4 = v19;
      *(a4 + 8) = v20;
      *(a4 + 16) = v21;
    }
  }

  else
  {
    sub_10000A064(&v27, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    v31 = qword_100287818;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = *(type metadata accessor for LogInterpolation() - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v25 = *(v15 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v30 = type metadata accessor for AppKeyValueTable();
    v29[0] = a2;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v29);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._object = 0x80000001001F4ED0;
    v22._countAndFlagsBits = 0xD00000000000001ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    sub_100011BAC(a1, v29);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v29, &qword_10026D350, &qword_1001E6050);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    LogInterpolation.init(stringInterpolation:)();
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24);

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 7;
  }

  return result;
}

void sub_100054088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004ED94(a1, __dst, &qword_10026D350, &qword_1001E6050);
  if (*(&__dst[1] + 1))
  {
    v4 = sub_10007B9A4(&qword_10026A520, &qword_1001E83B0);
    if (swift_dynamicCast())
    {
      v5 = *(*__src + 16);
      if (v5)
      {
        v6 = *__src + 32;
        v7 = &_swiftEmptyArrayStorage;
        do
        {
          sub_100011BAC(v6, __dst);
          sub_100054088(__src, __dst);
          sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
          if (*&__src[24])
          {
            sub_100002C4C(__src, __dst);
            sub_100011BAC(__dst, __src);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = v7[2];
              sub_100056024();
              v7 = v10;
            }

            v8 = v7[2];
            if (v8 >= v7[3] >> 1)
            {
              sub_100056024();
              v7 = v11;
            }

            sub_100002C00(__dst);
            v7[2] = v8 + 1;
            sub_100002C4C(__src, &v7[4 * v8 + 4]);
          }

          else
          {
            sub_10000A064(__src, &qword_10026D350, &qword_1001E6050);
          }

          v6 += 32;
          --v5;
        }

        while (v5);
      }

      else
      {

        v7 = &_swiftEmptyArrayStorage;
      }

      *(a2 + 24) = v4;
      *a2 = v7;
      return;
    }
  }

  else
  {
    sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, __dst, &qword_10026D350, &qword_1001E6050);
  if (*(&__dst[1] + 1))
  {
    v12 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (swift_dynamicCast())
    {
      v39 = v12;
      v40 = a2;
      v13 = Dictionary.init(dictionaryLiteral:)();
      v14 = 0;
      v15 = *__src + 64;
      v41 = *__src;
      v16 = 1 << *(*__src + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(*__src + 64);
      v19 = (v16 + 63) >> 6;
      v20 = &qword_10026D350;
LABEL_20:
      if (!v18)
      {
        goto LABEL_22;
      }

      do
      {
        v21 = v14;
LABEL_26:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v22 | (v21 << 6);
        sub_10000DF68(*(v41 + 48) + 40 * v23, &v45);
        sub_100011BAC(*(v41 + 56) + 32 * v23, v44);
        *__src = v45;
        *&__src[16] = v46;
        *&__src[32] = v47;
        sub_100002C4C(v44, &__src[40]);
LABEL_27:
        memcpy(__dst, __src, 0x48uLL);
        if (!*(&__dst[1] + 1))
        {

          v40[3] = v39;
          *v40 = v13;
          return;
        }

        *__src = __dst[0];
        *&__src[16] = __dst[1];
        *&__src[32] = *&__dst[2];
        sub_100002C4C((&__dst[2] + 8), v43);
        sub_100054088(&v45, v43);
        sub_10000A064(v43, v20, &qword_1001E6050);
        if (*(&v46 + 1))
        {
          v24 = v20;
          sub_100002C4C(&v45, v44);
          sub_10000DF68(__src, &v45);
          sub_100011BAC(v44, v43);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v13;
          v26 = sub_10000C818(&v45);
          v28 = *(v13 + 16);
          v29 = (v27 & 1) == 0;
          v30 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_51;
          }

          v31 = v26;
          v32 = v27;
          sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
          {
            v33 = sub_10000C818(&v45);
            if ((v32 & 1) != (v34 & 1))
            {
              goto LABEL_53;
            }

            v31 = v33;
          }

          v13 = v42;
          if (v32)
          {
            v35 = (v42[7] + 32 * v31);
            sub_100002C00(v35);
            sub_100002C4C(v43, v35);
            sub_10000E1E8(&v45);
            sub_100002C00(v44);
            sub_10000E1E8(__src);
          }

          else
          {
            v42[(v31 >> 6) + 8] |= 1 << v31;
            sub_10000DF68(&v45, v42[6] + 40 * v31);
            sub_100002C4C(v43, (v42[7] + 32 * v31));
            sub_10000E1E8(&v45);
            sub_100002C00(v44);
            sub_10000E1E8(__src);
            v36 = v42[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (v37)
            {
              goto LABEL_52;
            }

            v42[2] = v38;
          }

          v20 = v24;
          goto LABEL_20;
        }

        sub_10000E1E8(__src);
        sub_10000A064(&v45, v20, &qword_1001E6050);
      }

      while (v18);
LABEL_22:
      while (1)
      {
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v18 = 0;
          memset(__src, 0, sizeof(__src));
          goto LABEL_27;
        }

        v18 = *(v15 + 8 * v21);
        ++v14;
        if (v18)
        {
          v14 = v21;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

  else
  {
    sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, __dst, &qword_10026D350, &qword_1001E6050);
  if (*(&__dst[1] + 1))
  {
    sub_10005302C();
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  else
  {
    sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, a2, &qword_10026D350, &qword_1001E6050);
}

uint64_t sub_1000546B0()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = sub_100002CC4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002DEC();
  v8 = v7 - v6;
  sub_10000AB40();
  if ((sub_100004FDC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v9 = v24;
  static String.Encoding.utf8.getter();
  sub_100007924();
  sub_1000062D0();

  v10 = sub_100005770();
  v11(v10);
  sub_100012BB0();
  if (v12)
  {
LABEL_26:
    sub_10000AB40();
    if ((sub_100004FDC() & 1) == 0)
    {
      goto LABEL_27;
    }

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    static String.Encoding.utf8.getter();
    sub_100007924();
    sub_1000062D0();

    v13 = sub_100005770();
    v14(v13);
    sub_100012BB0();
    if (v12)
    {
LABEL_27:
      sub_10000AB40();
      if ((sub_100004FDC() & 1) == 0)
      {
        goto LABEL_28;
      }

      v9 = Double.description.getter();
      static String.Encoding.utf8.getter();
      sub_100007924();
      sub_1000062D0();

      v15 = sub_100005770();
      v16(v15);
      sub_100012BB0();
      if (v12)
      {
LABEL_28:
        sub_10000AB40();
        if ((sub_100004FDC() & 1) == 0 || (!v24 ? (v9 = 0x65736C6166) : (v9 = 1702195828), static String.Encoding.utf8.getter(), sub_100007924(), sub_1000062D0(), , (*(v3 + 8))(v8, v0), sub_100012BB0(), v12))
        {
          sub_10000AB40();
          sub_10007B9A4(&qword_10026A520, &qword_1001E83B0);
          if (sub_100004FDC())
          {
            v9 = v24;
            objc_opt_self();
            isa = Array._bridgeToObjectiveC()().super.isa;

            v19 = sub_100007EFC(v18, "dataWithPropertyList:format:options:error:");

            v20 = 0;
            if (v19)
            {
LABEL_18:
              static Data._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1000062D0();

              return v9;
            }
          }

          else
          {
            sub_10000AB40();
            sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
            if (!sub_100004FDC())
            {
              return 0;
            }

            v9 = v24;
            objc_opt_self();
            v21 = Dictionary._bridgeToObjectiveC()().super.isa;

            v19 = sub_100007EFC(v22, "dataWithPropertyList:format:options:error:");

            v20 = 0;
            if (v19)
            {
              goto LABEL_18;
            }
          }

          v9 = v20;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }
  }

  return v9;
}

uint64_t sub_100054AA0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_1000253FC(a1, a2);
  }

  return a1;
}

uint64_t sub_100054AB4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_10003A5E0(a1, a2);
  }

  return a1;
}

uint64_t sub_100054AC8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

id sub_100054B28()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore);
  v2 = [v1 ams_activeiCloudAccount];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 ams_iTunesAccountForAccount:v2];
  v5 = type metadata accessor for JSAccount();
  v6 = objc_allocWithZone(v5);
  if (v4)
  {
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v4;
    v9.receiver = v6;
    v9.super_class = v5;
    v7 = objc_msgSendSuper2(&v9, "init");
  }

  else
  {
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v3;
    v10.receiver = v6;
    v10.super_class = v5;
    return objc_msgSendSuper2(&v10, "init");
  }

  return v7;
}

id sub_100054C50()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore) ams_fetchLocaliTunesAccount];
  v12 = 0;
  v2 = [v1 resultWithError:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = v2;
    v5 = type metadata accessor for JSAccount();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v4;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = v3;
    v8 = objc_msgSendSuper2(&v11, "init");
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v8;
}

id sub_100054DB0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100054E38(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100054F3C()
{
  v1 = v0;
  if (qword_1002687D0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1002878C8);
  v2 = qword_1002878D0;

  os_unfair_lock_unlock(&dword_1002878C8);
  if (v2)
  {
    v3 = sub_10017C7E8();

    return v3 & 1;
  }

  else
  {
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v5 = *(type metadata accessor for LogInterpolation() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v12[3] = type metadata accessor for JSNetwork();
    v12[0] = v1;
    v8 = v1;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v12);
    LogInterpolation.init(stringLiteral:)();
    v11 = static os_log_type_t.error.getter();
    sub_1000036B0(v11);

    return 0;
  }
}

id sub_1000551C4(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007B9A4(&qword_10026D768, &qword_1001ECC98);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (!v17)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = String._bridgeToObjectiveC()();

  Bag.subscript.getter();

  (*(v7 + 8))(v10, v6);
  Bag.Value.currentOrNil()();
  v19 = v24;
  if (v24)
  {
    v20 = v23;
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v25 = &type metadata for String;
    v23 = v20;
    v24 = v19;
    v21 = a1;

    result = sub_100055480(&v23, a1);
    if (result)
    {
      v22 = result;
      (*(v12 + 8))(v15, v11);

      return v22;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  if (result)
  {
    v22 = result;
    (*(v12 + 8))(v15, v11);
    return v22;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100055480(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = sub_100003CA8(a1, a1[3]);
    v6 = *(v3 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v3);
    sub_100002C00(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() valueWithObject:v10 inContext:a2];
  swift_unknownObjectRelease();

  return v11;
}

Class sub_1000555D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_100004918(a1, a2, a3);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = v4;
  v9 = sub_100007594();
  a4(v9, v7);

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

void sub_10005568C()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005338();
  v9 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSDatabase_database);
  sub_100051540();
  sub_100055920(v4, v2);

  sub_100005F14();
}

uint64_t sub_100055920(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  _StringGuts.grow(_:)(41);

  v37 = 0xD000000000000022;
  v38 = 0x80000001001F4E00;
  String.append(_:)(*(v2 + 24));
  v8._countAndFlagsBits = sub_100002F28();
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100005058();
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3F20454B494C20;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  v12 = swift_allocObject();

  *(v12 + 16) = Dictionary.init(dictionaryLiteral:)();
  v13 = *(v2 + 16);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v12;
  v29 = a1;
  v14[4] = a1;
  v14[5] = a2;
  v15 = v3;
  v31 = v13;
  v32 = 0xD000000000000022;
  v33 = 0x80000001001F4E00;
  v34 = inited;
  v35 = sub_1000A731C;
  v36 = v14;

  v16 = v40;
  sub_100014A20(sub_100014F50, v30);
  if (v16)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    v40 = 0;
    swift_setDeallocating();
    sub_10001CE50();

    if (qword_1002686B8 != -1)
    {
      sub_100006AD8();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v17);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v28 = *(v18 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v39 = type metadata accessor for AppKeyValueTable();
    v37 = v15;

    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v37);
    v23 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100007428(v23);
    swift_beginAccess();
    inited = *(v12 + 16);
    v39 = sub_10007B9A4(&qword_10026A9C8, &qword_1001E8380);
    v37 = inited;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
    v24._countAndFlagsBits = 0x6E69686374616D20;
    v24._object = 0xEB00000000203A67;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    v39 = &type metadata for String;
    v37 = v29;
    v38 = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.debug.getter();
    sub_1000036B0(v26);
  }

  return inited;
}

uint64_t sub_100055E30()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100055E78(uint64_t a1)
{
  v1 = sub_1000522EC(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v1];
  v4 = [v3 ams_fetchLocaliTunesAccount];
  v15 = 0;
  v5 = [v4 resultWithError:&v15];
  v6 = v15;
  if (!v5)
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v7 = v5;
  v8 = type metadata accessor for JSAccount();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v7;
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v14, "init");

  return v11;
}

void sub_100056024()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v9 = sub_10001CD54();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100056124(void **a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v11 = *a1;
  if (*a1)
  {
    v12 = qword_1002686F0;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v39 + 1) = type metadata accessor for EngagementService();
    *&v38 = a3;
    v17 = a3;
    sub_10000C7B8(a4);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD000000000000019;
    v18._object = 0x80000001001F6EC0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v19 = sub_1000617E0(v13, &selRef_data);
    if (v19)
    {
    }

    *(&v39 + 1) = &type metadata for Bool;
    LOBYTE(v38) = v19 != 0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v38, &qword_10026D350);
    v20._countAndFlagsBits = 0x7473657571655220;
    v20._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v21 = [v13 request];
    v22 = v21;
    if (v21)
    {
    }

    *(&v39 + 1) = &type metadata for Bool;
    LOBYTE(v38) = v22 != 0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v38, &qword_10026D350);
    v23._countAndFlagsBits = 0x736E6F6974634120;
    v23._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    v24 = sub_100061D78(v13);
    if (v24)
    {
      v25 = *(v24 + 16);
    }

    else
    {
      v25 = 0;
    }

    *(&v39 + 1) = &type metadata for Int;
    *&v38 = v25;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v38, &qword_10026D350);
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    LogInterpolation.init(stringInterpolation:)();
    v33 = static os_log_type_t.default.getter();
    sub_1000036B0(v33);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = *(type metadata accessor for LogInterpolation() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v39 + 1) = type metadata accessor for EngagementService();
    *&v38 = a3;
    v29 = a3;
    sub_10000C7B8(a4);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._object = 0x80000001001F6EA0;
    v30._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    if (a2)
    {
      swift_getErrorValue();
      *(&v39 + 1) = v37;
      v31 = sub_100017E64(&v38);
      (*(*(v37 - 8) + 16))(v31);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v38, &qword_10026D350);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    LogInterpolation.init(stringInterpolation:)();
    v35 = static os_log_type_t.error.getter();
    sub_1000036B0(v35);
  }
}

void sub_100056698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v4 = *(a3 + 16);
  v5 = sub_100005B9C();
  v8 = v6;
  v7(v5);
}

uint64_t sub_100056704(uint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[12];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_10:
    v32 = static os_log_type_t.debug.getter();
    sub_1000036B0(v32);
  }

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v9 = sub_10002411C();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v9 dictionaryForKey:v16];
  v35 = 0;
  v18 = [v17 valueWithError:&v35];

  if (!v18)
  {
    v21 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v22 = *(type metadata accessor for LogInterpolation() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v37 = v8;
    v35 = v4;

    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v35);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v35 = 0xD000000000000015;
    v36 = 0x80000001001F75A0;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x7070696B73202D20;
    v31._object = 0xEB00000000676E69;
    String.append(_:)(v31);
    v37 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_10000A064(&v35, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v19 = v35;

  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = sub_1000F24F8();
  }

  sub_100056BC4(v20, v18, a2, a3);
}

uint64_t sub_100056BC4(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  v81 = a2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + 96);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v77 = *(v4 + 104);

  v78 = v4;
  v76 = sub_100057298();
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v19 = &_swiftEmptyDictionarySingleton;
  while (2)
  {
    v20 = v18;
    if (!v16)
    {
LABEL_7:
      v21 = v78;
      while (1)
      {
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v18 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v18);
        ++v20;
        if (v16)
        {
          goto LABEL_11;
        }
      }

      v51 = v77;

      v52 = v76;

      v53 = sub_10005736C(v19, v51, v21, v52);

      sub_10005823C();
      v54 = *(v21 + 104);
      *(v21 + 104) = v55;

      v56 = 1 << *(v53 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v53 + 64);
      v59 = (v56 + 63) >> 6;

      v60 = 0;
      while (v58)
      {
        v61 = v60;
LABEL_40:
        v62 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v63 = (v61 << 10) | (16 * v62);
        v64 = (*(v53 + 48) + v63);
        v65 = *v64;
        v66 = v64[1];
        v67 = (*(v53 + 56) + v63);
        v68 = *v67;
        v69 = v67[1];
        *&v86 = v65;
        *(&v86 + 1) = v66;
        *&v87 = v68;
        *(&v87 + 1) = v69;

        sub_1000F2690(&v86, v21, v79);
      }

      while (1)
      {
        v61 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v61 >= v59)
        {
        }

        v58 = *(v53 + 64 + 8 * v61);
        ++v60;
        if (v58)
        {
          v60 = v61;
          goto LABEL_40;
        }
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    while (1)
    {
      v18 = v20;
LABEL_11:
      v22 = a1;
      v23 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
      v24 = *v23;
      v25 = v23[1];
      *&v84 = *v23;
      *(&v84 + 1) = v25;
      swift_bridgeObjectRetain_n();
      v26 = [v81 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v26)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v84 = 0u;
        v85 = 0u;
      }

      v16 &= v16 - 1;
      v86 = v84;
      v87 = v85;
      if (*(&v85 + 1))
      {
        break;
      }

      sub_10000A064(&v86, &qword_10026D350, &qword_1001E6050);
LABEL_18:
      v27 = sub_100012A94();
      if (v28)
      {
        v29 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v19;
        v31 = v19[3];
        sub_10007B9A4(&qword_10026AF80, &qword_1001E8710);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31);
        v19 = v86;
        v32 = *(*(v86 + 48) + 16 * v29 + 8);

        v33 = *(v19[7] + 16 * v29 + 8);
        _NativeDictionary._delete(at:)();

        goto LABEL_28;
      }

      v20 = v18;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v75 = v82;
    v74 = v83;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v19;
    v34 = sub_100012A94();
    v36 = v19[2];
    v37 = (v35 & 1) == 0;
    v72 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_46;
    }

    v38 = v34;
    v39 = v35;
    sub_10007B9A4(&qword_10026AF80, &qword_1001E8710);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v73, v72))
    {
      v40 = sub_100012A94();
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_48;
      }

      v38 = v40;
    }

    v42 = v74;
    v43 = v75;
    v19 = v86;
    if (v39)
    {
      v44 = (*(v86 + 56) + 16 * v38);
      v45 = v44[1];
      *v44 = v75;
      v44[1] = v42;

LABEL_28:

LABEL_29:
      a1 = v22;
      continue;
    }

    break;
  }

  *(v86 + 8 * (v38 >> 6) + 64) |= 1 << v38;
  v46 = (v19[6] + 16 * v38);
  *v46 = v24;
  v46[1] = v25;
  v47 = (v19[7] + 16 * v38);
  *v47 = v43;
  v47[1] = v42;
  v48 = v19[2];
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    v19[2] = v50;
    goto LABEL_29;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

CFPropertyListRef sub_1000571D4(char a1)
{
  sub_1000050F4();
  sub_100006B84();
  v2 = sub_100003040();

  CFPreferencesAppSynchronize(v2);

  sub_1000272C4(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003040();

  v5 = sub_100003B80();
  v7 = CFPreferencesCopyAppValue(v5, v6);

  return v7;
}

uint64_t sub_100057298()
{
  v1 = *sub_100003CA8((v0 + 56), *(v0 + 80));
  if (sub_100057280(3))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10005736C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = a1[32];
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v12 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v8 = sub_1000F3080(v16, v11, v8, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12);
  v13 = &v17 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1000575CC(0, v11, v13);

  v14 = sub_100057630(v13, v11, v8, a2, a3, a4);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v8 = v14;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v8;
}

uint64_t sub_1000575CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1001EE260;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100057630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = result;
  v42 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v54 = a4 + 56;
LABEL_5:
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v50 = (v11 - 1) & v11;
LABEL_12:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = (*(a3 + 56) + 16 * v16);
    v48 = *v20;
    v49 = v20[1];
    if (*(a4 + 16))
    {
      v21 = *(a4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v24 = v22 & v23;
        if (((*(v54 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          break;
        }

        v25 = (*(a4 + 48) + 16 * v24);
        if (*v25 != v19 || v25[1] != v18)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v22 = v24 + 1;
          if ((v27 & 1) == 0)
          {
            continue;
          }
        }

        if (qword_1002686F0 != -1)
        {
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v28 = *(type metadata accessor for LogInterpolation() - 8);
        v43 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v44 = *(v28 + 72);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v53 = type metadata accessor for EngagementSyncCoordinator();
        v51 = a5;

        v29 = AMSLogKey();
        if (v29)
        {
          v30 = v29;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v51);
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v51 = v19;
        v52 = v18;
        v36._object = 0x80000001001F75E0;
        v36._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v36);
        v53 = &type metadata for String;
        static LogInterpolation.safe(_:)();
        sub_10000A064(&v51, &qword_10026D350, &qword_1001E6050);
        v37 = static os_log_type_t.debug.getter();
        sub_1000036B0(v37);

        v11 = v50;
        goto LABEL_5;
      }
    }

    else
    {
    }

    if (*(a6 + 16) && (v31 = sub_100012A94(), (v32 & 1) != 0))
    {
      v33 = (*(a6 + 56) + 16 * v31);
      if (*v33 == v48 && v33[1] == v49)
      {

        v11 = v50;
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v50;
        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {

      v11 = v50;
LABEL_36:
      *(v41 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v42++, 1))
      {
        goto LABEL_41;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      v39 = sub_100057FF4(v41, a2, v42, a3);

      return v39;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v50 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_100057AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *sub_100003CA8((a1 + 16), *(a1 + 40));

  sub_1000179B4(v9, v8);
  sub_1000170D4();
  v10 = a2 == 0xD000000000000018 && 0x80000001001F3050 == a3;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10014E140();
  }

  else
  {
    v15 = a2 == 0xD000000000000010 && 0x80000001001F3030 == a3;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_10014E2F8();
    }

    else
    {
      v16 = a2 == 0xD000000000000013 && 0x80000001001F3070 == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = sub_10014E4B0(0);
      }

      else
      {
        sub_10005AB4C();
      }
    }
  }

  LOBYTE(v17) = v11 & 1;
  v18 = v12;
  Promise.resolve(_:)();

  v13 = *sub_100003CA8((a1 + 16), *(a1 + 40));

  return sub_10001C50C();
}

uint64_t sub_100057FF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10007B9A4(&qword_10026E5A8, &unk_1001EE2C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_10005823C()
{
  sub_100015AD8();
  v3 = *(v0 + 64);
  v2 = v0 + 64;
  v4 = *(v2 - 32);
  sub_100004E5C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v1;
LABEL_7:
      sub_1000034FC(v10);
      sub_10004EF2C();
      sub_1000190C0();
    }

    while (v7);
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v2 + 8 * v10);
    ++v1;
    if (v7)
    {
      v1 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1000582F4()
{

  return sub_1000AB8EC();
}

uint64_t sub_100058314()
{
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  return swift_task_alloc();
}

uint64_t sub_100058340()
{
}

uint64_t sub_100058368()
{
}

uint64_t sub_100058384(uint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  v41 = a2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3[12];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v14)
  {
    if (a1)
    {
      v40 = a3;
      v16 = a1 + 56;
      v17 = 1 << *(a1 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(a1 + 56);
      v20 = (v17 + 63) >> 6;
      v42 = a1;

      v21 = 0;
      v22 = _swiftEmptyArrayStorage;
      while (v19)
      {
        result = v42;
LABEL_13:
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v25 = (*(result + 48) + ((v21 << 10) | (16 * v24)));
        v26 = *v25;
        v27 = v25[1];

        v28._countAndFlagsBits = v26;
        v28._object = v27;
        v29 = _findStringSwitchCase(cases:string:)(&off_100244E20, v28);

        if (v29 <= 3)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = v22[2];
            sub_1000589D0();
            v22 = v33;
          }

          v30 = v22[2];
          v31 = v30 + 1;
          if (v30 >= v22[3] >> 1)
          {
            v39 = v30 + 1;
            sub_1000589D0();
            v31 = v39;
            v22 = v34;
          }

          v22[2] = v31;
          *(v22 + v30 + 32) = v29;
        }
      }

      result = v42;
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {

          a3 = v40;
          goto LABEL_21;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
        if (v19)
        {
          v21 = v23;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v22 = &off_100244588;
LABEL_21:
      v35 = 0;
      v36 = v22[2];
      v37 = v41;
      while (1)
      {
        if (v36 == v35)
        {
        }

        if (v35 >= v22[2])
        {
          break;
        }

        v38 = v35 + 1;
        v43 = *(v22 + v35 + 32);
        result = sub_100058AA0(&v43, v3, v37, a3, v6);
        v35 = v38;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100058694(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v22 = a4;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = *(type metadata accessor for LogInterpolation() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v23[3] = a5;
    v23[0] = v10;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v23);
    LogInterpolation.init(stringLiteral:)();
    v21 = static os_log_type_t.debug.getter();
    sub_1000036B0(v21);

    sub_100056704(a2, a3, v22);
    sub_100058384(a2, a3, v22);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = *(type metadata accessor for LogInterpolation() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }
}

void sub_1000589D0()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&qword_10026A038, &unk_1001E75B0);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

uint64_t sub_100058AA0(_BYTE *a1, void *a2, void (*a3)(uint64_t, unint64_t), uint64_t a4, void *a5)
{
  v50 = a5;
  v48 = a4;
  v49 = a3;
  v7 = 0x636974796C616E61;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v52 = type metadata accessor for Date();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v52);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = v45 - v15;
  v16 = *a1;
  v17 = 0xE900000000000073;
  switch(*a1)
  {
    case 1:
      v17 = 0xE800000000000000;
      v7 = 0x6C616E7265746E69;
      break;
    case 2:
      v17 = 0xE800000000000000;
      v7 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v7 = 0x6E656D6D6F636572;
      v17 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  swift_beginAccess();
  v18 = a2[13];

  v19 = sub_10005938C(v7, v17, v18);

  if (v19)
  {
  }

  sub_10000F284(v16, 2, v57);
  sub_100059478(a2 + 7, v51);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v10 + 8);
  v47 = v10 + 8;
  v46 = v23;
  v23(v14, v52);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v24 = *(type metadata accessor for LogInterpolation() - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v45[2] = *(v24 + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001E5F70;
  if (v22 >= 100800.0)
  {
    v45[1] = v26;
    v55 = v50;
    v53 = *&a2;

    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v53);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0x6E65656220736148;
    v35._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    v55 = &type metadata for Double;
    v53 = v22;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v53, &qword_10026D350, &qword_1001E6050);
    v36._countAndFlagsBits = 0x73646E6F63657320;
    v36._object = 0xEF2065636E697320;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
    v55 = &type metadata for String;
    v53 = *&v7;
    v54 = v17;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v53, &qword_10026D350, &qword_1001E6050);
    v37._object = 0x80000001001F7520;
    v37._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v38 = static os_log_type_t.debug.getter();
    sub_1000036B0(v38);

    swift_beginAccess();

    sub_1000190C0();
    swift_endAccess();

    v39 = 0xE900000000000073;
    v40 = 0x636974796C616E61;
    switch(v16)
    {
      case 1:
        v39 = 0xE800000000000000;
        v40 = 0x6C616E7265746E69;
        break;
      case 2:
        v39 = 0xE800000000000000;
        v40 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v40 = 0x6E656D6D6F636572;
        v39 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    v49(v40, v39);

    v41 = swift_allocObject();
    v41[2] = a2;
    v41[3] = v7;
    v41[4] = v17;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = v7;
    v42[4] = v17;
    v43 = a2[12];
    v55 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v56 = &protocol witness table for OS_dispatch_queue;
    v53 = *&v43;
    swift_retain_n();

    v44 = v43;
    Promise.then(perform:orCatchError:on:)();

    sub_10000FF10(v57);
    v46(v51, v52);
    return sub_100002C00(&v53);
  }

  else
  {
    v55 = v50;
    v53 = *&a2;

    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v53);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0x6E65656220736148;
    v31._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    v55 = &type metadata for Double;
    v53 = v22;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v53, &qword_10026D350, &qword_1001E6050);
    v32._countAndFlagsBits = 0x73646E6F63657320;
    v32._object = 0xEF2065636E697320;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    v55 = &type metadata for String;
    v53 = *&v7;
    v54 = v17;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v53, &qword_10026D350, &qword_1001E6050);
    v33._object = 0x80000001001F7500;
    v33._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v34 = static os_log_type_t.debug.getter();
    sub_1000036B0(v34);
    sub_10000FF10(v57);

    return (v46)(v51, v52);
  }
}

BOOL sub_10005938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_100059478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  v10 = *sub_100003CA8(a1, a1[3]);
  v11 = sub_100057280(8);
  if (v11 && (v15[1] = v11, sub_10007B9A4(&qword_10026A0A0, &qword_1001E77F8), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v15[0];
  }

  else
  {
    type metadata accessor for Date();
    v12 = Dictionary.init(dictionaryLiteral:)();
  }

  switch(*(v3 + 1))
  {
    case 1:
      sub_1000062AC();
      break;
    case 2:
      sub_10000571C();
      break;
    case 3:
      sub_100002ECC();
      break;
    default:
      break;
  }

  sub_10005968C(v12, v9);

  v13 = type metadata accessor for Date();
  if (sub_100009F34(v9, 1, v13) != 1)
  {
    return (*(*(v13 - 8) + 32))(a2, v9, v13);
  }

  static Date.distantPast.getter();
  result = sub_100009F34(v9, 1, v13);
  if (result != 1)
  {
    return sub_10009D8AC(v9);
  }

  return result;
}

uint64_t sub_10005968C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for Date();
    sub_100002DDC(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = a2;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    type metadata accessor for Date();
    v10 = sub_10000E6B0();
  }

  return sub_10000A7C0(v10, v11, v12, v13);
}

uint64_t sub_10005973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003F74();
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100002CC4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v16 = v15 - v14;
  v31 = type metadata accessor for DispatchQoS();
  v17 = sub_100002CC4(v31);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v24 = v23 - v22;
  v30 = *(v3 + 96);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a1;
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = v7;
  aBlock[4] = sub_100062B58;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024B3A0;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v11 + 8))(v16, v8);
  (*(v19 + 8))(v24, v31);
}

uint64_t sub_100059A00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059A38()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100059A80(uint64_t a1)
{
  if (a1)
  {

    v3 = sub_100062640(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC14amsengagementd17EngagementService_syncCoordinator);
  sub_100004AA0();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10005973C(v3, sub_1000F0FF0, v5);
}

uint64_t sub_100059B34()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100059B64(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = (a1 + OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken);
  v9 = *(a1 + OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken + 8);
  *v8 = a2;
  v8[1] = a3;

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  v23 = &type metadata for String;
  v20 = 0xD000000000000018;
  v21 = 0x80000001001F7170;
  static LogInterpolation.safe(_:)();
  sub_10000A0C4(&v20, &qword_10026D350);
  LogInterpolation.init(stringLiteral:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001F71B0;
  v13._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v8[1];
  if (v14)
  {
    v15 = *v8;
    v16 = &type metadata for String;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v22 = 0;
  }

  v20 = v15;
  v21 = v14;
  v23 = v16;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A0C4(&v20, &qword_10026D350);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.debug.getter();
  sub_1000036B0(v18);
}

uint64_t sub_100059E3C()
{
  ObjectType = swift_getObjectType();
  v74 = type metadata accessor for DispatchTimeInterval();
  v1 = sub_100002CC4(v74);
  v72 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002DEC();
  v69 = (v6 - v5);
  v73 = type metadata accessor for DispatchTime();
  v7 = sub_100002CC4(v73);
  v79 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_1000056E8();
  v70 = v11 - v12;
  __chkstk_darwin(v13);
  v71 = v65 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = sub_100002CC4(v15);
  v78 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_100002DEC();
  sub_10005E2AC();
  v20 = type metadata accessor for DispatchQoS();
  v76 = sub_100002CC4(v20);
  v77 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v76);
  sub_100002DEC();
  v26 = v25 - v24;
  v27 = type metadata accessor for UUID();
  v28 = sub_100002CC4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_100002DEC();
  sub_10000C79C();
  UUID.init()();
  v33 = UUID.uuidString.getter();
  v68 = v33;
  v35 = v34;
  v36 = *(v30 + 8);
  v37 = sub_100008FE8();
  v38(v37);
  v65[5] = *&v0[OBJC_IVAR____TtC14amsengagementd17EngagementService_serviceQueue];
  sub_1000083D8();
  v39 = swift_allocObject();
  v39[2] = v0;
  v39[3] = v33;
  v66 = v35;
  v40 = ObjectType;
  v39[4] = v35;
  v39[5] = v40;
  v85 = sub_100059E30;
  v86 = v39;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v67 = &v83;
  v83 = sub_100005E50;
  v84 = &unk_10024B2D8;
  v41 = _Block_copy(&aBlock);
  v65[1] = v0;

  static DispatchQoS.unspecified.getter();
  v80 = _swiftEmptyArrayStorage;
  sub_10000B890();
  v65[4] = sub_100005DC0(v42, v43);
  v65[3] = sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  v65[2] = sub_1000140D0(v44, v45);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);
  v46 = *(v78 + 8);
  v78 += 8;
  v65[0] = v46;
  v47 = sub_100006378();
  v48(v47);
  v49 = *(v77 + 8);
  v77 += 8;
  v49(v26, v76);

  v50 = v70;
  static DispatchTime.now()();
  v51 = v69;
  *v69 = 1;
  (*(v72 + 104))(v51, enum case for DispatchTimeInterval.seconds(_:), v74);
  v52 = v71;
  sub_100007F3C();
  + infix(_:_:)();
  v53 = sub_10000A19C();
  v54(v53);
  v55 = *(v79 + 8);
  v79 += 8;
  v56 = v50;
  v57 = v73;
  v55(v56, v73);
  sub_100004AA0();
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000083D8();
  v59 = swift_allocObject();
  v60 = v68;
  v59[2] = v58;
  v59[3] = v60;
  v61 = ObjectType;
  v59[4] = v66;
  v59[5] = v61;
  v85 = sub_1000F0FE4;
  v86 = v59;
  sub_1000181CC();
  v82 = 1107296256;
  v83 = sub_100005E50;
  v84 = &unk_10024B328;
  v62 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v80 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v62);
  v63 = sub_100006378();
  (v65[0])(v63);
  v49(v26, v76);
  v55(v52, v57);
}

uint64_t sub_10005A48C()
{
  v1 = *(v0 + 32);

  sub_1000083D8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005A4F8(void *a1)
{
  type metadata accessor for ActivityObserver();
  swift_initStaticObject();
  if (sub_10004ADCC())
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v2 = *(type metadata accessor for LogInterpolation() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for EngagementService();
    v17[0] = a1;
    v5 = a1;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.init(stringLiteral:)();
    v14 = static os_log_type_t.default.getter();
    sub_1000036B0(v14);

    return sub_10004A6E8(0);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = *(type metadata accessor for LogInterpolation() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for EngagementService();
    v17[0] = a1;
    v11 = a1;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.init(stringLiteral:)();
    v16 = static os_log_type_t.info.getter();
    sub_1000036B0(v16);
  }
}

void sub_10005A824()
{
  sub_100003D74();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v10 = v9 - v8;
  v24 = type metadata accessor for DispatchQoS();
  v11 = sub_100002CC4(v24);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  sub_100004AA0();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v25[4] = sub_100062734;
  v25[5] = v16;
  sub_100002E50();
  v25[1] = 1107296256;
  sub_100007A28();
  v25[2] = v17;
  v25[3] = &unk_10024B288;
  v18 = _Block_copy(v25);
  v19 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v20, v21);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v22, v23);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v5 + 8))(v10, v2);
  (*(v13 + 8))(v1, v24);

  sub_100005F14();
}

uint64_t sub_10005AA98()
{
  v1 = sub_100005254();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10005AAF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10015398C();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
  }

  return 0;
}

void sub_10005AB4C()
{
  sub_100048F8C();
  _StringGuts.grow(_:)(23);

  sub_100004B44();
  v18 = v1;
  v2._countAndFlagsBits = sub_100004894();
  String.append(_:)(v2);
  v3._countAndFlagsBits = 96;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = *sub_100022280();
  v5 = sub_100004894();
  v7 = sub_10005AE84(v5, v6);
  if (v0)
  {
  }

  else if (v7)
  {
    sub_100004AA0();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v9 = sub_100004BC8();
    *(v9 + 16) = 0;
    v10 = sub_100022280();
    sub_100002FB8();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    v12 = *v10;
    sub_10005AFD4(0xD00000000000001DLL, v18, _swiftEmptyArrayStorage, sub_10005B514, v11);

    sub_10000602C();
    if (*(v8 + 16))
    {
      sub_10000602C();
      v15 = *(v9 + 16);

      goto LABEL_7;
    }

    sub_10015398C();
    v16 = sub_100007544();
    sub_100006E04(v16, v17);
  }

  else
  {

    sub_10015398C();
    v13 = sub_100007544();
    sub_10000A480(v13, v14);
  }

  swift_willThrow();
LABEL_7:
  sub_10000A8C0();
  sub_100154284();
}

uint64_t sub_10005AD68()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10005ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

void sub_10005ADD0()
{
  v1 = *(v0 - 296);
  v2 = *(v0 - 320);
  v3 = *(v0 - 288);
}

uint64_t sub_10005ADF4()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10005AE20()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10005AE50(os_log_type_t a1)
{

  sub_1000036B0(a1);
}

uint64_t sub_10005AE68()
{

  return String.hash(into:)();
}

uint64_t sub_10005AE84(uint64_t a1, void *a2)
{
  LOBYTE(v3) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  _StringGuts.grow(_:)(23);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 10592;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  sub_10005AFD4(0xD000000000000013, 0x80000001001FE780, _swiftEmptyArrayStorage, sub_10005B1CC, v6);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    v3 = *(v6 + 16);
  }

  return v3 & 1;
}

uint64_t sub_10005AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14 = v5;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = sub_10005B154;
  v19 = v11;

  sub_100014A20(sub_100014768, &v13);
}

uint64_t sub_10005B098()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B0D0(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v6[3] = type metadata accessor for SQLRow();
  v6[4] = &off_100248500;
  v6[0] = a1;

  v4 = a2(v6);
  sub_100002C00(v6);
  return v4 & 1;
}

uint64_t sub_10005B174(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  return 0;
}

uint64_t sub_10005B1EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *sub_100003CA8(a1, a1[3]);
  sub_100041D2C();
  if (v3)
  {
  }

  else if ((v13 & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSinceNow.getter();
    v15 = v14;
    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    *(a2 + 16) = v15 < 0.0;
  }

  v16 = *sub_100003CA8(a1, a1[3]);
  sub_10003A420(v29);
  v17 = *(&v29[0] + 1);
  if (*(&v29[0] + 1) >> 60 == 15)
  {
    goto LABEL_11;
  }

  v18 = *&v29[0];
  v19 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v29[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v29];

  if (!v21)
  {
    v27 = *&v29[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10003AE18(v18, v17);

    goto LABEL_11;
  }

  v22 = *&v29[0];
  _bridgeAnyObjectToAny(_:)();
  sub_10003AE18(v18, v17);
  swift_unknownObjectRelease();
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_10015398C();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
    return 0;
  }

  v23 = v28[1];
  swift_beginAccess();
  v24 = *(a3 + 16);
  *(a3 + 16) = v23;

  return 0;
}

void sub_10005B634(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9;
  v60 = v10;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100011BAC(*(a1 + 56) + 32 * v13, v71);
    v70[0] = v16;
    v70[1] = v15;
    sub_100011BAC(v71, &v69);

    sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
    if (swift_dynamicCast())
    {
      v65 = v8;
      v17 = *(v68 + 16);
      if (v17)
      {
        v63 = a1;
        v69 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v18 = 32;
        do
        {
          v19 = *(v68 + v18);

          sub_10012B718(v16, v15, v19, a2);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v20 = v69[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v18 += 8;
          --v17;
        }

        while (v17);

        v21 = v69;
        v10 = v60;
        a1 = v63;
      }

      else
      {

        v21 = _swiftEmptyArrayStorage;
      }

      sub_100009F5C(v70, qword_10026A9D8, &unk_1001E8390);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005BE18(0, v10[2] + 1, 1, v10);
        v10 = v24;
      }

      v23 = v10[2];
      v22 = v10[3];
      if (v23 >= v22 >> 1)
      {
        sub_10005BE18(v22 > 1, v23 + 1, 1, v10);
        v10 = v25;
      }

      v10[2] = v23 + 1;
      v10[v23 + 4] = v21;
      v8 = v65;
      goto LABEL_4;
    }

    sub_100009F5C(v70, qword_10026A9D8, &unk_1001E8390);
    v11 = v9;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v26 = 0;
      v27 = _swiftEmptyArrayStorage;
      v28 = v10[2];
      v64 = v10 + 4;
      v59 = v28;
      while (1)
      {
        if (v26 == v28)
        {

          sub_10005BED8();
          v51 = (*(v58 + OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
          v52 = v51[1];
          if (v52)
          {
            v53 = *v51;
            v54 = v51[1];
          }

          else
          {
            v53 = 0;
          }

          sub_100004AA0();
          v55 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v56 = swift_allocObject();
          v56[2] = v55;
          v56[3] = v53;
          v56[4] = v52;
          v56[5] = v27;
          v56[6] = ObjectType;

          sub_10011F39C("enqueueBatch(_:_:)", 0x12uLL, 2);

          return;
        }

        if (v26 >= v10[2])
        {
          goto LABEL_64;
        }

        v29 = v64[v26];
        if (v29 >> 62)
        {
          if (v29 < 0)
          {
            v50 = v64[v26];
          }

          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = v27 >> 62;
        if (v27 >> 62)
        {
          v32 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33 = v32 + v30;
        if (__OFADD__(v32, v30))
        {
          goto LABEL_65;
        }

        v67 = v30;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v31)
        {
          goto LABEL_37;
        }

        v34 = v27 & 0xFFFFFFFFFFFFFF8;
        if (v33 > *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_36;
        }

LABEL_39:
        ++v26;
        v36 = *(v34 + 16);
        v37 = (*(v34 + 24) >> 1) - v36;
        v38 = v34 + 8 * v36;
        v66 = v34;
        if (v29 >> 62)
        {
          v40 = _CocoaArrayWrapper.endIndex.getter();
          if (!v40)
          {
            goto LABEL_53;
          }

          v41 = v40;
          v42 = _CocoaArrayWrapper.endIndex.getter();
          if (v37 < v42)
          {
            goto LABEL_69;
          }

          if (v41 < 1)
          {
            goto LABEL_70;
          }

          v61 = v42;
          v62 = v26;
          sub_10012BF08();
          for (i = 0; i != v41; ++i)
          {
            sub_10007B9A4(&qword_10026BF58, &qword_1001EA270);
            v44 = sub_10018BD7C(v70, i, v29);
            v46 = *v45;
            (v44)(v70, 0);
            *(v38 + 32 + 8 * i) = v46;
          }

          v28 = v59;
          v10 = v60;
          v26 = v62;
          v39 = v61;
LABEL_49:

          if (v39 < v67)
          {
            goto LABEL_66;
          }

          if (v39 > 0)
          {
            v47 = *(v66 + 16);
            v48 = __OFADD__(v47, v39);
            v49 = v47 + v39;
            if (v48)
            {
              goto LABEL_67;
            }

            *(v66 + 16) = v49;
          }
        }

        else
        {
          v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v39)
          {
            if (v37 < v39)
            {
              goto LABEL_68;
            }

            sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);
            swift_arrayInitWithCopy();
            goto LABEL_49;
          }

LABEL_53:

          if (v67 > 0)
          {
            goto LABEL_66;
          }
        }
      }

      if (v31)
      {
LABEL_37:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = v27 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
        v35 = *(v34 + 16);
      }

      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v34 = v27 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_39;
    }

    v7 = *(v4 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_10005BC88()
{
  swift_unknownObjectWeakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10005BCBC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10005BD04(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_100002EBC();
    if (v13 != v14)
    {
      sub_10000AE9C();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_10007B9A4(a5, a6);
    v17 = sub_10001CD54();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 8);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007B9A4(a7, a8);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10005BE3C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100004AFC();
  [v0 doubleForKey:v1];
  v3 = v2;

  v4.n128_u64[0] = v3;

  return Date.init(timeIntervalSince1970:)(v4);
}

void sub_10005BED8()
{
  sub_100003D74();
  v39 = v1;
  sub_100002DFC();
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (v0 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v38 = v0 & 0xC000000000000001;
    v35 = v0 + 32;
    v36 = i;
    v37 = v0;
    while (1)
    {
      sub_1000F1168(v7, v38 == 0, v0);
      v8 = v38 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v35 + 8 * v7);
      v9 = v8;
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
        break;
      }

      v40 = v11;
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      v12 = &unk_100245050;
      v13 = 3;
      do
      {
        v14 = *(v12 - 1);
        v15 = *v12;
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;

        v16._countAndFlagsBits = v14;
        v16._object = v15;
        String.append(_:)(v16);
        v17._countAndFlagsBits = 61;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
        v18 = String._bridgeToObjectiveC()();

        v19 = [v9 propertyForBodyKey:v18];

        if (v19)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100002C4C(&v41, &v42);
        }

        else
        {
          v43 = &type metadata for String;
          *&v42 = 0;
          *(&v42 + 1) = 0xE000000000000000;
        }

        _print_unlocked<A, B>(_:_:)();
        sub_100002C00(&v42);
        v20._countAndFlagsBits = 8251;
        v20._object = 0xE200000000000000;
        String.append(_:)(v20);
        String.append(_:)(v44);

        v12 += 2;
        --v13;
      }

      while (v13);
      if (qword_1002686E8 != -1)
      {
        sub_100006D40();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v21 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v21);
      v23 = *(v22 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v43 = type metadata accessor for JSMetrics();
      *&v42 = v39;
      v24 = v39;
      v25 = AMSLogKey();
      if (v25)
      {
        v26 = v25;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v42);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v27._object = 0x80000001001FC0F0;
      v27._countAndFlagsBits = 0xD000000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
      v28 = [v9 topic];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v43 = &type metadata for String;
      *&v42 = v29;
      *(&v42 + 1) = v31;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(&v42, &qword_10026D350, &qword_1001E6050);
      v32._countAndFlagsBits = 8251;
      v32._object = 0xE200000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
      v43 = &type metadata for String;
      v42 = v45;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(&v42, &qword_10026D350, &qword_1001E6050);
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
      LogInterpolation.init(stringInterpolation:)();
      v34 = static os_log_type_t.default.getter();
      sub_1000036B0(v34);

      v0 = v37;
      v7 = v40;
      if (v40 == v36)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  sub_100005F14();
}

uint64_t sub_10005C354(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for JSPromise();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;

    JSPromise.init(in:executor:)();
    if (v3)
    {
    }

    else
    {
      a3 = JSPromise.value.getter();

      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    sub_10010C05C();
    v13 = static JSContext.requiredCurrent.getter();
    __chkstk_darwin(v13);
    v15[-2] = a2;
    v15[-1] = a3;
    a3 = JSContext.propagateErrorsToExceptions(_:)();
  }

  return a3;
}

void sub_10005C4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
}

void sub_10005C7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10005C780();
}

void sub_10005C7D0()
{
  if (*(v0 + 16))
  {
    type metadata accessor for JSStack();
    sub_10000A610();
    type metadata accessor for BaseObjectGraph();

    sub_100003B80();
    inject<A, B>(_:from:)();
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v1 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v1);
    v3 = *(v2 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v8[3] = type metadata accessor for JSAppEngine();
    v8[0] = v0;
    v4 = (*(v0 + 24) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    if (v4[1])
    {
      v5 = *v4;
      v6 = v4[1];
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v8);
    LogInterpolation.init(stringLiteral:)();
    v7 = static os_log_type_t.debug.getter();
    sub_1000036B0(v7);

    JSStack.requestGarbageCollection()();
  }
}

uint64_t sub_10005C9BC@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for JSONObject();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007B9A4(&qword_10026D678, &qword_1001EC9E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  JSResponse.body.getter();
  CoarselyTimed.contained.getter();
  (*(v8 + 8))(v11, v7);
  v12 = sub_10002F144();
  (*(v3 + 8))(v6, v2);
  if (v12 && (v13 = sub_10005CC34(v12), result = , v13))
  {
    *a1 = v13;
  }

  else
  {
    sub_1001026F8();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005CBA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v4);
  Promise.resolve(_:)();
}

unint64_t sub_10005CC34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
    v2 = sub_10000B8A8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  sub_100004E5C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return v2;
        }

        v7 = *(a1 + 64 + 8 * v12);
        ++v11;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    sub_10000DF68(*(a1 + 48) + 40 * v13, __src);
    sub_100011BAC(*(a1 + 56) + 32 * v13, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000DF68(__dst, v26);
    if (!swift_dynamicCast())
    {
      break;
    }

    v7 &= v7 - 1;
    sub_100011BAC(&__dst[40], v27);
    sub_10005CEA0(__dst);
    v28 = v25;
    sub_100002C4C(v27, v29);
    v14 = v28;
    sub_100002C4C(v29, v30);
    sub_100002C4C(v30, &v28);
    result = sub_100012A94();
    v15 = result;
    if (v16)
    {
      v17 = v2[6] + 16 * result;
      v18 = *(v17 + 8);
      *v17 = v14;

      v19 = (v2[7] + 32 * v15);
      sub_100002C00(v19);
      result = sub_100002C4C(&v28, v19);
      v11 = v12;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_20;
      }

      sub_100007BD8();
      *(v2 + v20 + 64) |= v21;
      *(v2[6] + 16 * v15) = v14;
      result = sub_100002C4C(&v28, (v2[7] + 32 * v15));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_21;
      }

      v2[2] = v24;
      v11 = v12;
    }
  }

  sub_10005CEA0(__dst);

  return 0;
}

uint64_t sub_10005CEA0(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026E5B0, &unk_1001EDC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005CF08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100007A3C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10005CF44()
{
  sub_10000A610();
  v1 = type metadata accessor for Date();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_100004CA8();
  v8 = *(v0 + 32);
  v10 = *(v0 + v9);
  v11 = sub_100003B80();

  return sub_10005CFDC(v11, v12, v13, v14, v15);
}

uint64_t sub_10005CFDC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a5)
    {
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001E61B0;
    Date.timeIntervalSinceNow.getter();
    *(v20 + 56) = &type metadata for Double;
    *(v20 + 64) = &protocol witness table for Double;
    *(v20 + 32) = fabs(v21);
    v22 = String.init(format:_:)();
    if (a2)
    {
      v44 = v23;
      v24 = v22;
      swift_errorRetain();
      if (qword_1002686C0 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v25 = *(type metadata accessor for LogInterpolation() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v50 = type metadata accessor for JSAppEngine();
      v47 = v13;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v47);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v28._countAndFlagsBits = 0xD000000000000012;
      v28._object = 0x80000001001F9BE0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
      v50 = &type metadata for String;
      v47 = v24;
      v48 = v44;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v47, &qword_10026D350, &qword_1001E6050);
      v29._countAndFlagsBits = 0x3A726F7272652029;
      v29._object = 0xE900000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
      swift_getErrorValue();
      v50 = v46;
      v30 = sub_100017E64(&v47);
      (*(*(v46 - 1) + 16))(v30);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v47, &qword_10026D350, &qword_1001E6050);
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
      LogInterpolation.init(stringInterpolation:)();
      v32 = static os_log_type_t.error.getter();
      sub_1000036B0(v32);
    }

    else
    {
      if (v11)
      {
        v45 = v23;
        v33 = v22;
        if (qword_1002686C0 != -1)
        {
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v34 = *(type metadata accessor for LogInterpolation() - 8);
        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v43 = *(v34 + 72);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v50 = type metadata accessor for JSAppEngine();
        v47 = v13;

        static LogInterpolation.prefix(_:_:)();
        sub_100002C00(&v47);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v36._countAndFlagsBits = 0xD000000000000013;
        v36._object = 0x80000001001F9BC0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
        v50 = &type metadata for String;
        v47 = v33;
        v48 = v45;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(&v47, &qword_10026D350, &qword_1001E6050);
        v37._countAndFlagsBits = 0x203A617461642029;
        v37._object = 0xE800000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
        v38 = sub_10005D6E8(v11);
        if (v39)
        {
          v40 = &type metadata for String;
        }

        else
        {
          v38 = 0;
          v40 = 0;
          v49 = 0;
        }

        v47 = v38;
        v48 = v39;
        v50 = v40;
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_10000A064(&v47, &qword_10026D350, &qword_1001E6050);
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
        LogInterpolation.init(stringInterpolation:)();
        v42 = static os_log_type_t.default.getter();
        sub_1000036B0(v42);
      }
    }
  }

  else
  {
    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = *(type metadata accessor for LogInterpolation() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v18 = static os_log_type_t.error.getter();
    sub_1000036B0(v18);
  }
}

uint64_t sub_10005D6E8(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v23[0] = 0;
  v8 = [v6 dataWithJSONObject:isa options:2 error:v23];

  v9 = v23[0];
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    static String.Encoding.utf8.getter();
    v13 = String.init(data:encoding:)();
    sub_1000253FC(v10, v12);
  }

  else
  {
    v14 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = *(type metadata accessor for LogInterpolation() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v18 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for JSAppEngine();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._object = 0x80000001001F9C00;
    v19._countAndFlagsBits = 0xD000000000000015;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v23[3] = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v23[0] = a1;

    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(v23, &qword_10026D350, &qword_1001E6050);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v21 = static os_log_type_t.error.getter();
    sub_1000036B0(v21);

    return 0;
  }

  return v13;
}

uint64_t sub_10005DABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for OSSignpostID();
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10005DB74(a1, *(v2 + 16), v2 + v10, *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), a2);
}

uint64_t sub_10005DB74@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v9 = v8;
  v52 = a7;
  v62 = a6;
  v55 = a5;
  v49 = a3;
  v54 = a8;
  v51 = type metadata accessor for OSSignposter();
  v50 = *(v51 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v51);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DFA4(*a1);
  v17 = sub_10005E2CC(v16, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [objc_allocWithZone(AMSEngagementEnqueueResult) init];
  v53 = v23;
  [v24 setRequest:v23];
  if (v21)
  {

    v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v24 setData:v25.super.isa];

  if (v17 && *(v17 + 16))
  {
    v29 = qword_1002686F0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();

    v31 = OSSignposter.logHandle.getter();
    v48 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v32 = swift_slowAlloc();
      v47[1] = v9;
      v33 = v32;
      *v32 = 134217984;
      *(v32 + 4) = *(v17 + 16);

      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v48, v34, "ActionRunner", "Actions running: %ld", v33, 0xCu);
    }

    else
    {
    }

    (*(v50 + 8))(v15, v51);
    type metadata accessor for ActionRunner();
    v35 = *(a4 + 72);
    v61[0] = *(a4 + 56);
    v61[1] = v35;
    v36 = *(a4 + 104);
    v61[2] = *(a4 + 88);
    v61[3] = v36;
    v37 = sub_100083DD8(v17, v61, v55, v62, v52 & 1);

    sub_1000F4BC0(v37, v24);
  }

  v38 = *(a4 + 72);
  v60[0] = *(a4 + 56);
  v60[1] = v38;
  v39 = *(a4 + 104);
  v60[2] = *(a4 + 88);
  v60[3] = v39;
  sub_10005E5BC(v26, v19, v27, v28, v60);
  *(&v57 + 1) = &type metadata for AMSFlags;
  *&v58 = sub_10000D884();
  LOBYTE(v56) = 0;
  v40 = isFeatureEnabled(_:)();
  v41 = sub_100002C00(&v56);
  if ((v40 & 1) == 0)
  {
    v44 = *(a4 + 72);
    v56 = *(a4 + 56);
    v57 = v44;
    v45 = *(a4 + 104);
    v58 = *(a4 + 88);
    v59 = v45;
    sub_10005ED28(v41, v19, v42, v43, &v56);
  }

  *v54 = v24;
  return result;
}

void sub_10005DFA4(uint64_t a1)
{
  sub_1000F11EC(a1);
  if (v2)
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v3 = sub_10000B8A8();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1[8];
  sub_10000B204();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = (v3 + 8);

  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = (v1[6] + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100011BAC(v1[7] + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v36[2] = v38;
    v37[0] = v39[0];
    v37[1] = v39[1];
    v36[0] = v38;

    swift_dynamicCast();
    sub_100002C4C(v37, v31);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_100002C4C(v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_100002C4C(v35, v36);
    v17 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v17) & ~*&v10[8 * (v17 >> 6)]) == 0)
    {
      sub_100022250();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*&v10[8 * v18] != -1)
        {
          sub_100003F60();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1000074F4();
LABEL_21:
    v8 &= v8 - 1;
    sub_100005890();
    *&v10[v22] |= v23;
    sub_10000DE3C(v24);
    *v25 = v28;
    v25[1] = v29;
    sub_1000F11AC(v26);
    sub_100002C4C(v36, v27);
    sub_10005EEBC();
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = v1[v12 + 8];
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_10005E208()
{
  v2 = *(v0 - 160);

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_10005E22C()
{

  return swift_dynamicCast();
}

void sub_10005E244(os_log_type_t a1)
{
  v3 = *(v1 - 144);

  sub_1000036B0(a1);
}

uint64_t sub_10005E268()
{
  *(v1 - 120) = v0;
}

uint64_t sub_10005E28C()
{

  return swift_dynamicCast();
}

uint64_t sub_10005E2CC(uint64_t a1, void *a2)
{
  *&v55 = 0x736E6F69746361;
  *(&v55 + 1) = 0xE700000000000000;
  v3 = AnyHashable.init<A>(_:)();
  sub_100005288(v3, v4, v5, v6, v7, v8, v9, v10, v45, v49[0], v49[1], v50[0], v51, v52, v53, v54, v55);
  sub_10000E1E8(v50);
  if (v56)
  {
    sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    if (sub_100006CB4())
    {
      v11 = v49[0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_100002C5C(&v55);
    v11 = 0;
  }

  strcpy(v49, "allowedEvents");
  HIWORD(v49[1]) = -4864;
  v12 = AnyHashable.init<A>(_:)();
  sub_100005288(v12, v13, v14, v15, v16, v17, v18, v19, v46, v49[0], v49[1], v50[0], v51, v52, v53, v54, v55);
  sub_10000E1E8(v50);
  if (!v56)
  {
    sub_100002C5C(&v55);
LABEL_10:
    v20 = AnyHashable.init<A>(_:)();
    sub_100005288(v20, v21, v22, v23, v24, v25, v26, v27, v47, 0xD000000000000011, 0x80000001001F7680, v50[0], v51, v52, v53, v54, v55);
    sub_10000E1E8(v50);
    if (v56)
    {
      sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      sub_100006CB4();
    }

    else
    {
      sub_100002C5C(&v55);
    }

    goto LABEL_13;
  }

  sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  if ((sub_100006CB4() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  *&v55 = 1635017060;
  *(&v55 + 1) = 0xE400000000000000;
  v28 = AnyHashable.init<A>(_:)();
  sub_100005288(v28, v29, v30, v31, v32, v33, v34, v35, v47, v49[0], v49[1], v50[0], v51, v52, v53, v54, v55);
  sub_10000E1E8(v50);
  if (v56)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    sub_100006CB4();
  }

  else
  {
    sub_100002C5C(&v55);
  }

  v36 = AnyHashable.init<A>(_:)();
  sub_100005288(v36, v37, v38, v39, v40, v41, v42, v43, v48, 0xD000000000000011, 0x80000001001F76A0, v50[0], v51, v52, v53, v54, v55);

  sub_10000E1E8(v50);
  if (v56)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_100006CB4())
    {
      sub_1000F450C(v49[0], a2);
    }

    else
    {
    }
  }

  else
  {

    sub_100002C5C(&v55);
  }

  return v11;
}

uint64_t sub_10005E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_100002DEC();
  swift_beginAccess();
  sub_10003B7C4(v5 + 16, &v69);
  if (!v71)
  {
    return sub_10000A064(&v69, &qword_10026C878, &qword_1001EBCD8);
  }

  sub_10003B104(&v69, v60);
  if (a2)
  {
    v54 = v5;
    v10 = *(a5 + 1);
    v11 = *(a2 + 16);
    if (v11)
    {
      v53 = *(a5 + 1);
      v62 = _swiftEmptyArrayStorage;
      sub_10009B948(0, v11, 0);
      v57 = v62;
      v55 = objc_opt_self();
      v12 = (a2 + 32);
      while (1)
      {
        v13 = *v12;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v69 = 0;
        v15 = [v55 dataWithJSONObject:isa options:0 error:&v69];

        v16 = v69;
        if (!v15)
        {
          break;
        }

        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = type metadata accessor for JSONDecoder();
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_1000A43C8();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        sub_1000253FC(v17, v19);

        v23 = v69;
        v24 = v70;
        v25 = BYTE8(v70);
        v26 = v71;
        v27 = v57;
        v62 = v57;
        v29 = v57[2];
        v28 = v57[3];
        if (v29 >= v28 >> 1)
        {
          sub_10009B948(v28 > 1, v29 + 1, 1);
          v27 = v62;
        }

        v27[2] = v29 + 1;
        v57 = v27;
        v30 = &v27[4 * v29];
        *(v30 + 32) = v23;
        v30[5] = v24;
        *(v30 + 48) = v25;
        v30[7] = v26;
        ++v12;
        if (!--v11)
        {
          v10 = v53;
          goto LABEL_15;
        }
      }

      v32 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v33 = sub_100003DE8();
      sub_100002CFC(v33);
      v35 = *(v34 + 72);
      sub_10000BF7C();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v71 = type metadata accessor for EnqueueRunner();
      v69 = v54;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v69);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._countAndFlagsBits = 0x6C696166202E2E2ELL;
      v36._object = 0xEC000000203A6465;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
      swift_getErrorValue();
      v71 = v58;
      v37 = sub_100017E64(&v69);
      (*(*(v58 - 1) + 16))(v37);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v69, &qword_10026D350, &qword_1001E6050);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v39 = static os_log_type_t.error.getter();
      sub_1000036B0(v39);
    }

    else
    {
      v57 = _swiftEmptyArrayStorage;
LABEL_15:
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v40 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v40);
      v42 = *(v41 + 72);
      sub_10000BF7C();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v71 = type metadata accessor for EnqueueRunner();
      v69 = v54;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v69);
      v43 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_1000083FC("Updating app defaults: ", v43);
      v71 = &unk_1002471C0;
      LOBYTE(v69) = v10;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v69, &qword_10026D350, &qword_1001E6050);
      v44._countAndFlagsBits = 3026478;
      v44._object = 0xE300000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v45 = static os_log_type_t.default.getter();
      sub_1000036B0(v45);

      v46 = *sub_100003CA8(v60, v61);
      sub_10003B834(&v62);
      if (v62)
      {
        v47 = v64;
        v56 = v63;
        v49 = *(&v65 + 1);
        v48 = v66;
        v50 = v65;
        v59 = v62;

        sub_10000A064(&v59, &qword_10026A6F8, &unk_1001E7CA0);
        v67 = v65;
        sub_10000A064(&v67, &unk_10026CD20, &unk_1001E7CC0);
        v68 = v48;
        sub_10000A064(&v68, &qword_10026A758, &qword_1001EBE80);

        v51 = v56;
      }

      else
      {
        v48 = 0;
        v50 = 0;
        v49 = 0;
        v47 = 0;
        v51 = xmmword_1001EBF80;
      }

      v69 = v57;
      v70 = v51;
      LOBYTE(v71) = v47;
      v72 = v50;
      v73 = v49;
      v74 = v48;
      v52 = *sub_100003CA8(v60, v61);
      sub_1000A335C(&v69, v10);
    }
  }

  return sub_100002C00(v60);
}

void sub_10005ED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_opt_self() loadFromDisk];
  if (a2)
  {
    v11 = v7;
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = *(a5 + 1);
    v10 = String._bridgeToObjectiveC()();

    [v11 setAllowedEvents:isa appIdentifier:v10];

    [v11 saveToDisk];
    v7 = v11;
  }
}

uint64_t sub_10005F8EC()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005F99C()
{
  sub_10000A064(v0 + 16, &qword_10026C878, &qword_1001EBCD8);
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);

  sub_100026D5C(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_10005FA2C(v0 + 144);
  return v0;
}

uint64_t sub_10005F9F8()
{
  sub_10005F99C();

  return swift_deallocClassInstance();
}

uint64_t sub_10005FA80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a2;
  v54 = a8;
  v52 = type metadata accessor for OSSignpostError();
  v55 = *(v52 - 8);
  v11 = *(v55 + 64);
  v12 = __chkstk_darwin(v52);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = type metadata accessor for OSSignpostID();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = type metadata accessor for OSSignposter();
  v56 = *(v23 - 8);
  v57 = v23;
  v24 = *(v56 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v51 - v28;
  [a3 lock];
  swift_beginAccess();
  sub_10000E42C(0xD00000000000001BLL, 0x80000001001F6FA0, a5, a6);
  swift_endAccess();
  [a3 unlock];
  if (v53)
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v30 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v31 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v32 = static os_signpost_type_t.end.getter();
    v33 = OS_os_log.signpostsEnabled.getter();
    v34 = v55;
    if (v33)
    {

      v35 = v51;
      checkForErrorAndConsumeState(state:)();
      v36 = v35;

      v37 = v35;
      v38 = v52;
      if ((*(v34 + 88))(v37, v52) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v34 + 8))(v36, v38);
        v39 = "Failed";
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v47, "Enqueue", v39, v46, 2u);
LABEL_17:
    }
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v40 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v31 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v41 = static os_signpost_type_t.end.getter();
    v42 = OS_os_log.signpostsEnabled.getter();
    v43 = v55;
    if (v42)
    {

      checkForErrorAndConsumeState(state:)();

      v44 = v52;
      if ((*(v43 + 88))(v15, v52) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v15, v44);
        v45 = "Succeeded";
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v41, v49, "Enqueue", v45, v48, 2u);
      v20 = v22;
      v27 = v29;
      goto LABEL_17;
    }

    v20 = v22;
    v27 = v29;
  }

  (*(v58 + 8))(v20, v59);
  return (*(v56 + 8))(v27, v57);
}

uint64_t sub_10005FFF0()
{
  sub_1000F1284();
  v2 = v1;
  if (qword_100268710 != -1)
  {
    sub_1000063EC();
  }

  v3 = qword_100287870;

  sub_1000600AC(v3, v2);
  v4 = Promise.resolve(_:)();
  return v0(v4);
}

uint64_t sub_100060084(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100060090(a1);
}

uint64_t sub_1000600D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000A610();
  v6 = type metadata accessor for Date();
  sub_100002CFC(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = (v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return a3(v4, a2, v3 + v11, v13, v15, v16);
}

void sub_1000601AC()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000056E8();
  __chkstk_darwin(v10);
  sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001E61B0;
  Date.timeIntervalSinceNow.getter();
  *(v11 + 56) = &type metadata for Double;
  *(v11 + 64) = &protocol witness table for Double;
  *(v11 + 32) = fabs(v12);
  v13 = String.init(format:_:)();
  v15 = v14;
  if (v5)
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v18 = *(v17 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v34 + 1) = type metadata accessor for EngagementService();
    *&v33 = v1;
    v19 = v1;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD000000000000020;
    v20._object = 0x80000001001F6D10;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    *(&v34 + 1) = &type metadata for String;
    *&v33 = v13;
    *(&v33 + 1) = v15;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v33, &qword_10026D350);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.default.getter();
    sub_1000036B0(v22);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v23 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v23);
    v25 = *(v24 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v34 + 1) = type metadata accessor for EngagementService();
    *&v33 = v1;
    v26 = v1;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    *(&v34 + 1) = &type metadata for String;
    *&v33 = v13;
    *(&v33 + 1) = v15;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v33, &qword_10026D350);
    v28._countAndFlagsBits = 8233;
    v28._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    if (v3)
    {
      swift_getErrorValue();
      *(&v34 + 1) = v32;
      v29 = sub_100017E64(&v33);
      (*(*(v32 - 8) + 16))(v29);
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v30 = sub_10000A0C4(&v33, &qword_10026D350);
    sub_100003B48(v30);
    LogInterpolation.init(stringInterpolation:)();
    v31 = static os_log_type_t.error.getter();
    sub_1000036B0(v31);
  }

  sub_100005F14();
}

uint64_t sub_100060638()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100060660(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 96);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_5;
  }

  v29 = v19;
  v30 = v12;
  *(a1 + 96) = v24;
  if (qword_100268710 != -1)
  {
LABEL_5:
    swift_once();
  }

  v25 = qword_100287870;

  sub_1000609DC(v25, a1);
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = a3;
  v26[5] = a4;
  v26[6] = v31;
  v26[7] = a6;
  aBlock[4] = sub_100060A00;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002512A8;
  v27 = _Block_copy(aBlock);

  a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10004D1EC(&qword_10026CD40, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v30 + 8))(v15, v11);
  (*(v17 + 8))(v21, v29);
}

uint64_t sub_100060A54(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 72);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v13 = *(a3 + 56);
  v14 = *(a3 + 64);
  v15 = sub_10002C4B4();
  v17 = v16;
  swift_beginAccess();
  sub_100060D6C(v15, v17, v18, v19, v20, v21, v22, v23, v32, v33);
  swift_endAccess();

  swift_beginAccess();
  if (a1)
  {
    sub_100060D6C(v13, v14, v24, v25, v26, v27, v28, v29, v32, v33);
    swift_endAccess();
  }

  else
  {
    v30 = *(a2 + 48);
    sub_1000294AC((a2 + 32), *(a2 + 40));
    swift_endAccess();
  }

  if (qword_100268710 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:

  sub_100060D94();
  return sub_10002A3E4();
}

void sub_100060C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100016794();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10000B330();
  v17 = sub_100012A94();
  if (v18)
  {
    v19 = v17;
    v20 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v23 = *(v22 + 24);
    sub_10007B9A4(v16, v14);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);
    v24 = *(*(a10 + 48) + 16 * v19 + 8);

    v25 = *(*(a10 + 56) + 8 * v19);
    v12(0);
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100012F1C();
}

void sub_100060DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  sub_100006564(v26);
  v27 = static os_log_type_t.default.getter();
  if (sub_100018270(v27))
  {
    static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100003DE8();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    v31 = sub_10000BA34();
    sub_10000766C(v31, xmmword_1001E6580);
    type metadata accessor for PriorityQueue();
    sub_100005D24();
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002402C();
    }

    else
    {
      sub_10001CDAC();
    }

    sub_10000A460();

    sub_100002C00(&a9);
    sub_100007BB4();
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.init(stringLiteral:)();
    sub_100005FCC();
    PriorityQueue.debugDescription.getter(v33);
    sub_100023E88();
    sub_100002C5C(&a9);
    sub_10000C440();

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

uint64_t sub_100060F1C()
{
  sub_100060F50();

  return swift_deallocClassInstance();
}

void *sub_100060F50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];
  v3 = v0[10];

  return v0;
}

void sub_100060F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100003D74();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v36 = sub_100002CC4(v35);
  v56 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_100002DEC();
  sub_100012F7C();
  v40 = type metadata accessor for DispatchQoS();
  v41 = sub_100002CC4(v40);
  v54 = v42;
  v55 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_100002DEC();
  sub_10005E2AC();
  v45 = swift_allocObject();
  v45[2] = v34;
  v45[3] = v30;
  v45[4] = v32;
  v45[5] = v28;
  v45[6] = v26;
  v57[4] = v24;
  v57[5] = v45;
  sub_100002E50();
  v57[1] = 1107296256;
  sub_100007A28();
  v57[2] = v46;
  v57[3] = a21;
  v47 = _Block_copy(v57);
  v48 = v34;

  swift_errorRetain();

  v49 = v26;
  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v50, v51);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v52, v53);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v56 + 8))(v21, v35);
  (*(v54 + 8))(v22, v55);

  sub_100005F14();
}

uint64_t sub_100061280(void *a1)
{
  v1 = a1;
  sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000612F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v10 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100004004(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  if (a3)
  {
    swift_beginAccess();
    swift_errorRetain();
    sub_1000EF5E8(sub_1000D5D58);
    v11 = *(*(a4 + 16) + 16);
    sub_1000EF6D4(v11, sub_1000D5D58);
    v12 = *(a4 + 16);
    *(v12 + 16) = v11 + 1;
    *(v12 + 8 * v11 + 32) = a3;
    *(a4 + 16) = v12;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

uint64_t sub_10006145C()
{
  v1 = type metadata accessor for Date();
  sub_100002DDC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100061504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000E6D0();
  v5 = *(a1 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    swift_errorRetain();
    Promise.reject(_:)();
  }

  else
  {
    sub_10000602C();
    v8 = *(a3 + 16);

    Promise.resolve(_:)();
  }
}

uint64_t sub_1000615C0()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = sub_100011A30();

    return v13(v12);
  }
}

uint64_t sub_1000616D4()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v5 = *(v4 + 280);
  *v3 = *v1;
  *(v2 + 288) = v6;

  if (v0)
  {
  }

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000617E0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100061874()
{
  v4 = v0[36];
  if (sub_100061D20())
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    v5 = v0[36];
    v7 = v0[30];
    v6 = v0[31];
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];
    v45 = v0[33];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = sub_10000C3AC();
    sub_100002CFC(v11);
    v13 = *(v12 + 72);
    sub_1000056F8();
    v14 = swift_allocObject();
    v0[9] = sub_1000F12D0(v14, xmmword_1001E5F70);
    v0[6] = v10;
    v15 = v10;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v0 + 6);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v16._object = 0x80000001001F6F60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v0[13] = sub_100002BC0(0, &qword_10026FEB0, AMSEngagementEnqueueResult_ptr);
    v0[10] = v5;
    v17 = v5;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v18 = sub_10000A0C4((v0 + 10), &qword_10026D350);
    sub_100003B48(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19);

    sub_10000602C();
    v20 = *(v7 + 16);
    v0[24] = v17;

    Promise.resolve(_:)();

LABEL_5:
    v21 = v0[31];

    sub_100002D8C();
    sub_10000A820();

    __asm { BRAA            X1, X16 }
  }

  v24 = v0[36];
  v25 = v0[33];

  v26 = v0[34];
  if (v26 == v0[32])
  {
    sub_10001D730();
    v27 = v24[2];

    v28 = Promise.isResolved.getter();

    if (v28)
    {
      goto LABEL_5;
    }

    if (qword_1002686F0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  v38 = v0[25];
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = v0[34];
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    v0[33] = v40;
    v0[34] = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      sub_1000058A4(&unk_1001EBD18);
      v41 = swift_task_alloc();
      v0[35] = v41;
      *v41 = v0;
      sub_100007FAC();
      sub_10000A820();

      __asm { BR              X0 }
    }

    __break(1u);
LABEL_24:
    sub_100006C90();
    swift_once();
LABEL_11:
    sub_10000F3F0();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v29 = sub_10000C3AC();
    sub_100002CFC(v29);
    v31 = *(v30 + 72);
    sub_1000056F8();
    v32 = sub_100015C9C();
    v0[5] = sub_1000F12D0(v32, xmmword_1001E5F70);
    v0[2] = v3;
    v33 = v3;
    sub_100015A84();
    sub_100002C00(v0 + 2);
    sub_10000DD34();
    v34 = static os_log_type_t.default.getter();
    sub_1000036B0(v34);

    sub_10000602C();
    v35 = *(v1 + 16);
    v36 = v0[26];
    if (v2)
    {
      v37 = *(v1 + 16);
    }

    else
    {
      sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
      v44 = objc_allocWithZone(AMSEngagementEnqueueResult);

      v0[23] = [v44 init];
      Promise.__allocating_init(value:)();
    }

    sub_100019C18();
    sub_100061EDC();

    goto LABEL_5;
  }

  if (v26 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v38 + 8 * v26 + 32);

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_100061D20()
{
  v1 = sub_10006184C(v0);
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2)
    {
      return 1;
    }
  }

  result = sub_100061D78(v0);
  if (result)
  {
    v4 = *(result + 16);

    return v4 != 0;
  }

  return result;
}

uint64_t sub_100061D78(void *a1)
{
  v1 = [a1 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100061E10()
{

  return sub_100009FB0(v2 - 136, v0, v1);
}

uint64_t sub_100061E2C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100061E4C(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_100061E9C()
{
  *(v0 + 208) = v1;

  return swift_errorRetain();
}

uint64_t sub_100061EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a11 + 8 * v12);
  v15 = *(v11 + 40);

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100061EDC()
{
  sub_100003D74();
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  sub_10001C064();
  v7 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v0, enum case for DispatchQoS.QoSClass.default(_:), v1);
  swift_retain_n();
  v8 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v0, v1);
  v9[3] = v7;
  v9[4] = &protocol witness table for OS_dispatch_queue;
  v9[0] = v8;
  sub_100015AEC();
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v9);
  sub_100005F14();
}

void sub_100062030()
{
  sub_100003D74();
  v2 = v1;
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100012F6C();
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_10000C79C();
  sub_10000602C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (v2)
    {
      v13 = _convertErrorToNSError(_:)();
      if (qword_1002686F0 != -1)
      {
        sub_100006C90();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v14 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v14);
      v16 = *(v15 + 72);
      sub_1000056F8();
      *(sub_1000F12B0() + 16) = xmmword_1001E5F70;
      v31 = type metadata accessor for EngagementService();
      v30[0] = v12;
      v17 = v12;
      sub_10000DDCC();
      sub_100002C00(v30);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0xD000000000000029;
      v18._object = 0x80000001001F6C90;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
      v31 = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
      v30[0] = v13;
      v19 = v13;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v20 = sub_10000A0C4(v30, &qword_10026D350);
      sub_100003B48(v20);
      LogInterpolation.init(stringInterpolation:)();
      v21 = static os_log_type_t.error.getter();
      sub_1000036B0(v21);
    }

    else
    {
      if (qword_1002686F0 != -1)
      {
        sub_100006C90();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v22 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v22);
      v24 = *(v23 + 72);
      sub_1000056F8();
      *(sub_1000F12B0() + 16) = xmmword_1001E5F70;
      v31 = type metadata accessor for EngagementService();
      v30[0] = v12;
      v25 = v12;
      sub_10000DDCC();
      sub_100002C00(v30);
      LogInterpolation.init(stringLiteral:)();
      v26 = static os_log_type_t.default.getter();
      sub_1000036B0(v26);
    }

    sub_100059E3C();
    v27 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v0, 1, 1, v27);
    sub_100007A3C();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v12;
    v29 = v12;
    sub_100003EFC();
    sub_1000E349C();
  }

  sub_100005F14();
}

void sub_100062414(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1000623D8(a1);
}

void sub_100062420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(a4 + 16);
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v20 = Strong;
      sub_100027C2C(0, v7, 0);
      v9 = (a4 + 33);
      v8 = _swiftEmptyArrayStorage;
      v10 = 0x7379656E72756F6ALL;
      do
      {
        v11 = *v9;
        v9 += 64;
        v12 = 0xE900000000000073;
        v13 = 0x636974796C616E61;
        switch(v11)
        {
          case 1:
            v12 = 0xE800000000000000;
            v13 = 0x6C616E7265746E69;
            break;
          case 2:
            v12 = 0xE800000000000000;
            v13 = v10;
            break;
          case 3:
            v13 = 0x6E656D6D6F636572;
            v12 = 0xEF736E6F69746164;
            break;
          default:
            break;
        }

        v21 = v8;
        v15 = v8[2];
        v14 = v8[3];
        if (v15 >= v14 >> 1)
        {
          v17 = v10;
          sub_100027C2C((v14 > 1), v15 + 1, 1);
          v10 = v17;
          v8 = v21;
        }

        v8[2] = v15 + 1;
        v16 = &v8[2 * v15];
        v16[4] = v13;
        v16[5] = v12;
        --v7;
      }

      while (v7);
      v6 = v20;
    }

    sub_100059A80(v8);
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_10005A824();
  }
}

uint64_t sub_100062640(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v9 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v9;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_1000190C0();
  }

  __break(1u);
  return result;
}

void sub_100062714()
{
}

uint64_t sub_10006273C()
{
  sub_1000F1290();
  v2(*(v0 + 16));
  v1(*(v0 + 32));
  v3 = sub_100008FE8();

  return _swift_deallocObject(v3, v4, 7);
}

uint64_t sub_100062798()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1000627E8()
{
  sub_100003D74();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100002CC4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_100012F6C();
  v26 = type metadata accessor for DispatchQoS();
  v8 = sub_100002CC4(v26);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_10005E2AC();
  sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
  v13 = Promise.__allocating_init()();
  v25 = *&v0[OBJC_IVAR____TtC14amsengagementd17EngagementService_serviceQueue];
  sub_100007A3C();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v13;
  v14[4] = v0;
  v27[4] = sub_1000ED220;
  v27[5] = v14;
  sub_100002E50();
  v27[1] = 1107296256;
  sub_100007A28();
  v27[2] = v15;
  v27[3] = &unk_100249C30;
  v16 = _Block_copy(v27);
  v17 = v3;

  v18 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v19, v20);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v21, v22);
  sub_1000F1180();
  sub_10005E208();
  _Block_release(v16);
  v23 = sub_10000A19C();
  v24(v23);
  (*(v10 + 8))(v1, v26);

  sub_10000C544();

  sub_100005F14();
}

uint64_t sub_100062A88()
{
  v1 = *(v0 + 24);

  sub_100007A3C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100062B28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100062B68()
{
  sub_1000061B4();
  sub_1000F11CC();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100005C78(v1);

  return sub_100062C2C(v3, v4, v5, v6);
}

uint64_t sub_100062BF4()
{

  return static LogInterpolation.safe(_:)();
}

void sub_100062C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  sub_1001A0A64(v26, v25, v24, v23, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100062C4C()
{
  sub_100004768();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14amsengagementd17EngagementService_flushDebouncer);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000E808C;

  return sub_100062CE4();
}

uint64_t sub_100062CE4()
{
  sub_100004768();
  *(v1 + 16) = v0;
  v2 = *(*(sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100062D7C, v0, 0);
}

uint64_t sub_100062D7C()
{
  v1 = v0[2];
  if (*(v1 + 152))
  {
    v2 = v0[3];

    sub_100002D8C();

    return v3();
  }

  else
  {
    v5 = v0[2];
    if (*(v1 + 144))
    {
      v6 = *(v1 + 144);

      Task.cancel()();

      v5 = v0[2];
    }

    v7 = v0[3];
    v8 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v7, 1, 1, v8);
    v10 = sub_100062FCC(&qword_10026B718, v9, type metadata accessor for AsyncDebouncer);
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v10;
    v11[4] = v5;
    swift_retain_n();
    sub_1000E349C();
    v13 = v12;
    v0[4] = v12;
    v14 = *(v1 + 144);
    *(v1 + 144) = v12;

    v15 = async function pointer to Task.result.getter[1];
    v16 = swift_task_alloc();
    v0[5] = v16;
    *v16 = v0;
    v16[1] = sub_1000BFD7C;

    return Task.result.getter(v0 + 6, v13, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }
}

uint64_t sub_100062F8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062FCC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10006303C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C08D0;

  return sub_1000630F0(a1, v4, v5, v6);
}

uint64_t sub_1000630F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000631B4, a4, 0);
}

uint64_t sub_1000631B4()
{
  v1 = v0[5];
  v2 = v0[2];
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1000BFEF4;
  v6 = v0[5];

  return sub_100063284();
}

uint64_t sub_100063284()
{
  sub_10000A1AC();
  sub_100003D28();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100002CFC(v12);
  *(v1 + 72) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1000060D0();
  sub_10000A734();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10006336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[7];
  type metadata accessor for ContinuousClock();
  sub_1000634E4(&qword_10026DC00, &type metadata accessor for ContinuousClock);
  sub_100004CBC();
  dispatch thunk of Clock.now.getter();
  sub_1000634E4(&qword_10026DC08, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v16 = *(v14 + 8);
  v10[12] = v16;
  v10[13] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v13);
  v17 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v18 = swift_task_alloc();
  v10[14] = v18;
  *v18 = v10;
  v18[1] = sub_10011855C;
  v19 = v10[11];
  v20 = v10[7];
  sub_10000A598();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1000634E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006352C()
{
  v0 = type metadata accessor for Date();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000635B0(0);
  static Date.now.getter();
  return sub_10006756C(v3);
}

void sub_1000635B0(int a1)
{
  LODWORD(v1) = a1;
  v146 = type metadata accessor for TimeZone();
  v2 = sub_100002CC4(v146);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v145 = v8 - v7;
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000A854(&v135 - v13);
  v14 = type metadata accessor for Date();
  v15 = sub_100002CC4(v14);
  v155 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_1000056E8();
  v144 = v19 - v20;
  sub_100003F08();
  __chkstk_darwin(v21);
  sub_10000714C();
  v163 = v22;
  sub_100003F08();
  __chkstk_darwin(v23);
  sub_10000714C();
  v157 = v24;
  sub_100003F08();
  __chkstk_darwin(v25);
  v162 = &v135 - v26;
  v27 = sub_10007B9A4(&qword_100269F88, &unk_1001E74D0);
  v28 = sub_100003D10(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v135 - v31;
  v33 = type metadata accessor for ScheduleInfo.Metadata(0);
  v34 = sub_100002CC4(v33);
  v160 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_1000056E8();
  v139 = v38 - v39;
  sub_100003F08();
  v41 = __chkstk_darwin(v40);
  v43 = &v135 - v42;
  __chkstk_darwin(v41);
  sub_10000A854(&v135 - v44);
  v45 = type metadata accessor for LogInterpolation.StringInterpolation();
  v46 = sub_100003D10(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_100002DEC();
  sub_10000A854(v50 - v49);
  v51 = type metadata accessor for DispatchPredicate();
  v52 = sub_100002CC4(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v52);
  sub_100002DEC();
  v59 = v58 - v57;
  v170 = &type metadata for ScheduleDatabase;
  v171 = &off_100251628;
  if (qword_1002687F0 != -1)
  {
LABEL_62:
    swift_once();
  }

  v60 = qword_1002878E8;
  *v59 = qword_1002878E8;
  (*(v54 + 104))(v59, enum case for DispatchPredicate.onQueue(_:), v51);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  (*(v54 + 8))(v59, v51);
  if (v60)
  {
    v141 = v4;
    v138 = v32;
    v136 = v43;
    v137 = v1;

    if (qword_100268718 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100019B54();
LABEL_4:
  v51 = qword_100287878;
  v62 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v63 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v63);
  v65 = *(v64 + 72);
  v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v151 = *(v66 + 80);
  v152 = v62;
  v148 = v67 + 2 * v65;
  v68 = swift_allocObject();
  v150 = xmmword_1001E5F70;
  *(v68 + 16) = xmmword_1001E5F70;
  v149 = v67;
  LODWORD(v1) = v68 + v67;
  v69 = AMSSetLogKeyIfNeeded();
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v70;

  static LogInterpolation.prefix<A>(_:_:)();

  v153 = v65;
  LogInterpolation.init(stringLiteral:)();
  v71 = static os_log_type_t.default.getter();
  v154 = v51;
  sub_1000036B0(v71);

  v32 = 0;
  v59 = 0;
  v4 = _swiftEmptyArrayStorage;
  v156 = "Checking in all apps";
  v159 = v33;
LABEL_5:
  v158 = v4;
  while (v32 != 4)
  {
    if (v32 > 3)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v72 = *(&off_100244588 + v32 + 32);
    v43 = swift_allocObject();
    *(v43 + 2) = _swiftEmptyArrayStorage;
    v73 = (v43 + 16);
    type metadata accessor for AppDatabase();
    sub_10001D804(v72);
    if (v59)
    {

      v164 = 0;
      sub_10000B708();
      v74 = swift_allocObject();
      sub_100023C6C(v74);
      v54 = v75 + v149;
      v76 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v77._object = (v156 | 0x8000000000000000);
      v77._countAndFlagsBits = 0xD00000000000001BLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v77);
      swift_getErrorValue();
      v78 = v165;
      v1 = v166;
      v168 = v166;
      v79 = sub_100017E64(&v167);
      (*(*(v1 - 8) + 16))(v79, v78, v1);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v80 = sub_10000A00C(&v167, &qword_10026D350, &qword_1001E6050);
      sub_100003B48(v80);
      sub_10001CCD0();
      LogInterpolation.init(stringInterpolation:)();
      v81 = static os_log_type_t.error.getter();
      sub_10001CB54(v81);

      v33 = v159;
    }

    else
    {
      sub_100041404();

      sub_1000646D8(sub_10009CFF0, v43);
      v164 = 0;
    }

    swift_beginAccess();
    v51 = *v73;
    if (*(*v73 + 16))
    {
      v82 = *v73;

      v4 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D5494(0, v4[2] + 1, 1, v4);
        v4 = v85;
      }

      v84 = v4[2];
      v83 = v4[3];
      if (v84 >= v83 >> 1)
      {
        sub_1000D5494(v83 > 1, v84 + 1, 1, v4);
        v4 = v86;
      }

      ++v32;
      v4[2] = (v84 + 1);
      v4[v84 + 4] = v51;
      v59 = v164;
      goto LABEL_5;
    }

    ++v32;
    v59 = v164;
    v4 = v158;
  }

  v164 = v59;
  v87 = 0;
  v54 = v4[2];
  v43 = _swiftEmptyArrayStorage;
  while (v54 != v87)
  {
    if (v87 >= v4[2])
    {
      goto LABEL_55;
    }

    v88 = &v4[v87];
    v59 = v88[4];
    v51 = *(v59 + 16);
    v1 = *(v43 + 2);
    v32 = (v1 + v51);
    if (__OFADD__(v1, v51))
    {
      goto LABEL_56;
    }

    v89 = v88[4];

    if (!swift_isUniquelyReferenced_nonNull_native() || v32 > *(v43 + 3) >> 1)
    {
      sub_1000D53B8();
      v43 = v90;
    }

    if (*(v59 + 16))
    {
      if ((*(v43 + 3) >> 1) - *(v43 + 2) < v51)
      {
        goto LABEL_59;
      }

      v91 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v92 = *(v160 + 72);
      swift_arrayInitWithCopy();

      if (v51)
      {
        v93 = *(v43 + 2);
        v94 = __OFADD__(v93, v51);
        v95 = v93 + v51;
        if (v94)
        {
          goto LABEL_61;
        }

        *(v43 + 2) = v95;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_57;
      }
    }

    ++v87;
  }

  sub_100003CA8(&v169, v170);
  sub_100064720(v43);
  v96 = 0;
  v158 = *(v43 + 2);
  v143 = (v155 + 32);
  v142 = (v155 + 16);
  v4 = (v155 + 8);
  ++v141;
  v140 = _swiftEmptyArrayStorage;
  v54 = v147;
  while (v158 != v96)
  {
    if (v96 >= *(v43 + 2))
    {
      goto LABEL_58;
    }

    v97 = *(v160 + 80);
    sub_100004864();
    v156 = v98;
    v155 = *(v99 + 72);
    sub_100004F70();
    v32 = v161;
    sub_100065290(v100, v161, v101);
    static Date.now.getter();
    sub_1000652F0(&v32[*(v33 + 32)], v54);
    if (sub_100009F34(v54, 1, v14) == 1)
    {
      (*v142)(v163, &v32[*(v33 + 24)], v14);
      if (sub_100009F34(v54, 1, v14) != 1)
      {
        sub_10000A00C(v54, &unk_100271EA0, &qword_1001E77F0);
      }
    }

    else
    {
      (*v143)(v163, v54, v14);
    }

    v102 = *(v33 + 36);
    sub_10000B2FC(*(v33 + 40));
    if (v103)
    {
      v104 = v145;
      static TimeZone.current.getter();
      v1 = v14;
      v105 = v144;
      Date.init()();
      v59 = TimeZone.secondsFromGMT(for:)();
      v54 = v33;
      v33 = *v4;
      (*v4)(v105, v1);
      (*v141)(v104, v146);
      v106 = *(v54 + 48);
      Date.init()();
      v51 = TimeZone.secondsFromGMT(for:)();
      v107 = v105;
      v14 = v1;
      (v33)(v107, v1);
      if (__OFSUB__(v59, v51))
      {
        goto LABEL_60;
      }

      v33 = v159;
      v54 = v147;
    }

    v32 = v33;
    v1 = v157;
    v108 = v163;
    Date.addingTimeInterval(_:)();
    v59 = *v4;
    (*v4)(v108, v14);
    sub_100065204(&qword_100269AD0, &type metadata accessor for Date);
    v109 = v162;
    v51 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v59)(v1, v14);
    (v59)(v109, v14);
    if (v51)
    {
      sub_100006A1C();
      sub_100065360(v161, v139, v111);
      v51 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000653C0(0, *(v51 + 16) + 1, 1);
        v51 = v167;
      }

      v33 = v32;
      v59 = *(v51 + 16);
      v113 = *(v51 + 24);
      v1 = v59 + 1;
      if (v59 >= v113 >> 1)
      {
        sub_1000653C0(v113 > 1, v59 + 1, 1);
        v51 = v167;
      }

      v96 = (v96 + 1);
      *(v51 + 16) = v1;
      v140 = v51;
      sub_100006A1C();
      sub_100065360(v139, v114, v115);
    }

    else
    {
      sub_100005704();
      sub_100067514(v161, v110);
      v96 = (v96 + 1);
      v33 = v32;
    }
  }

  v116 = v138;
  sub_100065418(v140, v138);

  if (sub_100009F34(v116, 1, v33) == 1)
  {

    sub_10000A00C(v116, &qword_100269F88, &unk_1001E74D0);
    sub_10000B708();
    v117 = swift_allocObject();
    sub_100023C6C(v117);
    v118 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    sub_10001CCD0();
    LogInterpolation.init(stringLiteral:)();
    v119 = static os_log_type_t.default.getter();
    sub_10001CB54(v119);
  }

  else
  {
    sub_100006A1C();
    v163 = v120;
    v121 = v116;
    v122 = v136;
    sub_100065360(v121, v136, v123);
    sub_10000B708();
    v124 = swift_allocObject();
    sub_100023C6C(v124);
    v125 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    sub_10001CCD0();
    LogInterpolation.init(stringLiteral:)();
    v126 = static os_log_type_t.default.getter();
    sub_10001CB54(v126);

    __chkstk_darwin(v127);
    *(&v135 - 2) = v122;
    sub_100064C90(sub_100065D90, (&v135 - 4), v43);

    sub_10000B708();
    v128 = swift_allocObject();
    sub_100023C6C(v128);
    v129 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v130._countAndFlagsBits = 0xD00000000000001ELL;
    v130._object = 0x80000001001F4490;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v130);
    v168 = v33;
    sub_100017E64(&v167);
    sub_100004F70();
    sub_100065290(v122, v131, v132);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v133 = sub_10000A00C(&v167, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v133);
    sub_10001CCD0();
    LogInterpolation.init(stringInterpolation:)();
    v134 = static os_log_type_t.default.getter();
    sub_10001CB54(v134);

    sub_100066F08(v122, v137 & 1);
    sub_100067514(v122, v163);
  }

  sub_100002C00(&v169);
  sub_10000B16C();
}

uint64_t sub_1000646A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064720(uint64_t a1)
{
  v13 = a1;
  v15[3] = &type metadata for ScheduleDatabase;
  v15[4] = &off_100251628;
  v14[3] = &type metadata for EngagementScheduleRunner;
  v14[4] = &off_100249BF8;
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  v12 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = *(type metadata accessor for LogInterpolation() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = xmmword_1001E5F70;
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v4 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v5 = static os_log_type_t.default.getter();
  sub_1000036B0(v5);

  __chkstk_darwin(v6);
  v10[2] = v15;
  v10[3] = v14;
  sub_100064C90(sub_100064C74, v10, v13);
  *(swift_allocObject() + 16) = v11;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  sub_100002C00(v15);
  return sub_100002C00(v14);
}