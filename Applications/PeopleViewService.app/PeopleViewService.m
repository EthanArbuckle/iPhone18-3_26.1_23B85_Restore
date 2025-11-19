void sub_100002604(id a1)
{
  qword_1000264B0 = os_log_create("com.apple.people", "IMCoreInterface");

  _objc_release_x1();
}

void sub_100002768(id a1, NSArray *a2)
{
  if (a2 || [0 count])
  {
    IMSPIMarkSPIMessagesAsRead();
  }

  _objc_release_x1();
}

void sub_100002964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.people.checkWithWait", v4);

  v13 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = *(a1 + 40);
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();
}

void sub_100002AF4(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IMCoreInterface logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = a1[4];
    v7 = a1[5];
    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checkWithWait returned %d items for %@ on %@", v9, 0x1Cu);
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  (*(a1[6] + 16))(a1[6], v8, 0);
}

id sub_100003060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPIiMessageService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003164;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100003170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPISMSService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003274;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100003280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"RCS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003380;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_10000338C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"SatelliteSMS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000348C;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100003498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"iMessageLite"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003598;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000035A4(id a1, NSArray *a2)
{
  v2 = a2;
  if ([(NSArray *)v2 count])
  {
    v3 = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:1];
    v4 = [NSMutableArray arrayWithArray:v2];
    v10 = v3;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    [v4 sortUsingDescriptors:v5];

    +[NSMutableArray array];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003718;
    v6 = v8[3] = &unk_100020E70;
    v9 = v6;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

void sub_100003718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [MinMessageItem alloc];
  v7 = [v3 date];
  v5 = [v3 body];

  v6 = [(MinMessageItem *)v4 initWith:v7 andText:v5];
  [v2 addObject:v6];
}

uint64_t sub_1000037C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &__NSArray0__struct;
  }

  return (*(v2 + 16))(v2, a2);
}

uint64_t sub_1000039DC()
{
  sub_100004208((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100003A64()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003AA4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003AFC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003B7C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003BF8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003C7C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003CC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100003D4C(uint64_t a1)
{
  v2 = sub_100004310(&qword_100025A40, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_100004310(&qword_100025A48, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003E54@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100003E80(uint64_t a1)
{
  v2 = sub_100004310(&qword_100025A50, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100004310(&qword_100025A58, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003F3C()
{
  v0 = type metadata accessor for QuickActionType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  QuickAction.type.getter();
  (*(v1 + 104))(v5, enum case for QuickActionType.location(_:), v0);
  sub_100004310(&qword_1000259F0, &type metadata accessor for QuickActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    v8 = *(v1 + 8);
    v8(v5, v0);
    v8(v7, v0);
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  QuickAction.handle.getter();
  if (v11)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_10000417C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1000041C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004208(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_10000427C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004310(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000044E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  URL._bridgeToObjectiveC()(&v16);
  v10 = v9;
  sub_1000149B0(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100004A1C(&qword_100025A40, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v18 = sub_100004964;
  v19 = v13;
  v16._baseURL = _NSConcreteStackBlock;
  v16._clients = 1107296256;
  v16._reserved = sub_10000484C;
  v17 = &unk_100021098;
  v15 = _Block_copy(&v16._baseURL);

  [(NSString *)v16._urlString openURL:v10 options:isa completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100004750(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    type metadata accessor for FailedToOpenURLError(0);
    sub_100004A1C(&qword_100025A60, type metadata accessor for FailedToOpenURLError);
    v4 = swift_allocError();
    v7 = v6;
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 16))(v7, a2, v8);
  }

  a3(v4);
}

uint64_t sub_10000484C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000048C4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100004964(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100004750(a1, v1 + v4, v6);
}

uint64_t sub_100004A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004A68(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a3;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.url.getter();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100004D14(v16);
    (*(v9 + 16))(v12, a1, v8);
    type metadata accessor for InvalidURLComponentsError(0);
    sub_100004D9C();
    v22 = swift_allocError();
    (*(v9 + 32))(v23, v12, v8);
    a2(v22);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    (*(a5 + 8))(v21, a2, v27, v26, a5);
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_100004D14(uint64_t a1)
{
  v2 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004D9C()
{
  result = qword_100025A68;
  if (!qword_100025A68)
  {
    type metadata accessor for InvalidURLComponentsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A68);
  }

  return result;
}

uint64_t sub_100004E6C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100004F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_100005010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000050A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() applicationProxyForIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_1000059B8;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100005200;
  v13[3] = &unk_100021120;
  v12 = _Block_copy(v13);

  [v5 openUserActivity:a1 withApplicationProxy:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_100005200(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10000529C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a4;
  v48 = a5;
  v10 = type metadata accessor for Logger();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() applicationProxyForIdentifier:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(INInteraction) initWithIntent:a1 response:0];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  v19 = [objc_allocWithZone(NSUserActivity) initWithActivityType:v18];

  v44 = v16;
  [v19 _setInteraction:v16 donate:0];
  static PeopleLogger.common.getter();
  v20 = v15;
  v21 = a1;
  v22 = v13;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v49 = v20;

  if (os_log_type_enabled(v23, v24))
  {
    v41 = v22;
    v42 = v6;
    v43 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v27;
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *v26 = v21;
    *(v25 + 12) = 2080;
    v28 = v21;
    if (v15)
    {
      v29 = a3;
      v30 = [v49 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      a3 = v29;
    }

    else
    {
      v33 = 0xE100000000000000;
      v31 = 45;
    }

    v34 = sub_1000141EC(v31, v33, &v50);

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Launching intent: %@ with application proxy: %s", v25, 0x16u);
    sub_100005950(v26);

    sub_100004208(v27);

    (*(v45 + 8))(v41, v46);
    v6 = v42;
    a2 = v43;
  }

  else
  {

    (*(v45 + 8))(v22, v46);
  }

  v35 = v47;
  v36 = v6[5];
  v37 = v6[6];
  sub_1000041C4(v6 + 2, v36);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v48;
  v39 = *(v37 + 8);

  v39(v19, a2, a3, sub_100005948, v38, v36, v37);
}

uint64_t sub_1000056B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static PeopleLogger.viewService.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22 = v5;
      v12 = v11;
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1000141EC(v14, v15, &v23);
      v21 = v4;
      v17 = a2;
      v18 = v16;

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to launch activity: %s", v12, 0xCu);
      sub_100004208(v13);

      (*(v22 + 8))(v8, v21);
      return v17(a1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_100005910()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005950(uint64_t a1)
{
  v2 = sub_10000417C(&unk_1000261C0, &qword_1000171D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000059B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_1000059E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactFormatter.Style();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  sub_1000041C4(v1 + 3, v1[6]);
  QuickAction.contactIdentifier.getter();
  v9 = dispatch thunk of ContactFetcherProtocol.contact(for:includeImages:)();

  if (v9)
  {
    (*(v4 + 104))(v7, enum case for ContactFormatter.Style.shortName(_:), v3);
    v10 = v9;
    String.localized.getter();
    v16[3] = type metadata accessor for ContactFormatter();
    v16[4] = &protocol witness table for ContactFormatter;
    sub_1000070F4(v16);
    ContactFormatter.init(style:fallback:)();
    Person.init(from:statuses:contactFormatter:)();

    v11 = type metadata accessor for Person();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for Person();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_100005C4C(uint64_t a1)
{
  v2 = type metadata accessor for QuickAction();
  v112 = *(v2 - 8);
  v113 = v2;
  v3 = *(v112 + 64);
  v4 = __chkstk_darwin(v2);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v103 = &v98 - v7;
  v8 = __chkstk_darwin(v6);
  v102 = &v98 - v9;
  v104 = v10;
  __chkstk_darwin(v8);
  v12 = &v98 - v11;
  v13 = type metadata accessor for Logger();
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = *(v110 + 64);
  v15 = __chkstk_darwin(v13);
  v101 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v105 = &v98 - v18;
  __chkstk_darwin(v17);
  v20 = &v98 - v19;
  v21 = sub_10000417C(&qword_100025D00, &qword_100017220);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v106 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v27 = &v98 - v26;
  __chkstk_darwin(v25);
  v29 = &v98 - v28;
  v30 = type metadata accessor for QuickActionType();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.shared.getter();
  QuickAction.type.getter();
  dispatch thunk of PeopleAnalytics.sendWidgetPerformQuickAction(_:)();

  v35 = v30;
  v36 = v20;
  v37 = v112;
  (*(v31 + 8))(v34, v35);
  v38 = v27;
  v39 = v12;
  v40 = v113;
  sub_100005A00(v29);
  static PeopleLogger.viewService.getter();
  v41 = *(v37 + 16);
  v109 = a1;
  v114 = v41;
  v115 = v37 + 16;
  v41(v39, a1, v40);
  v108 = v29;
  sub_100006DFC(v29, v38);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v99 = v36;
    v44 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v44 = 136315394;
    sub_100006F40();
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v107 = *(v37 + 8);
    v107(v39, v40);
    v48 = sub_1000141EC(v45, v47, v120);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = v38;
    v50 = v106;
    sub_100006DFC(v38, v106);
    v51 = type metadata accessor for Person();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      sub_100006EE0(v50, &qword_100025D00, &qword_100017220);
      v53 = 0xE100000000000000;
      v54 = 45;
    }

    else
    {
      v54 = Person.description.getter();
      v53 = v59;
      (*(v52 + 8))(v50, v51);
    }

    v57 = v109;
    sub_100006EE0(v49, &qword_100025D00, &qword_100017220);
    v60 = sub_1000141EC(v54, v53, v120);

    *(v44 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v42, v43, "Attempting to handle action: %s, for person: %s", v44, 0x16u);
    swift_arrayDestroy();

    v55 = v111;
    v106 = *(v110 + 8);
    v56 = (v106)(v99, v111);
    v37 = v112;
    v40 = v113;
    v58 = v108;
  }

  else
  {

    sub_100006EE0(v38, &qword_100025D00, &qword_100017220);
    v107 = *(v37 + 8);
    v107(v39, v40);
    v55 = v111;
    v106 = *(v110 + 8);
    v56 = (v106)(v36, v111);
    v58 = v108;
    v57 = v109;
  }

  v61 = *(v116 + 16);
  __chkstk_darwin(v56);
  *(&v98 - 2) = v57;
  *(&v98 - 1) = v58;
  sub_1000067D4(sub_100006E6C, v62, &v118);
  if (v119)
  {
    sub_100006DE4(&v118, v120);
    v63 = v105;
    static PeopleLogger.viewService.getter();
    sub_100006F98(v120, &v118);
    v64 = v102;
    v114(v102, v57, v40);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v67 = 136315394;
      v68 = v64;
      sub_1000041C4(&v118, v119);
      swift_getDynamicType();
      v69 = _typeName(_:qualified:)();
      v71 = v70;
      sub_100004208(&v118);
      v72 = sub_1000141EC(v69, v71, v117);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      sub_100006F40();
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v107(v68, v40);
      v76 = sub_1000141EC(v73, v75, v117);

      *(v67 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "Got handler: %s for action: %s", v67, 0x16u);
      swift_arrayDestroy();
      v57 = v109;

      v77 = v111;
      v78 = v105;
    }

    else
    {

      v107(v64, v40);
      sub_100004208(&v118);
      v78 = v63;
      v77 = v55;
    }

    (v106)(v78, v77);
    v92 = v121;
    v93 = v122;
    sub_1000041C4(v120, v121);
    v94 = v103;
    v114(v103, v57, v40);
    v95 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v96 = swift_allocObject();
    (*(v37 + 32))(v96 + v95, v94, v40);
    (*(v93 + 16))(v57, v58, sub_100007084, v96, v92, v93);

    sub_100004208(v120);
  }

  else
  {
    sub_100006EE0(&v118, &qword_100025D08, &qword_100017228);
    v79 = v101;
    static PeopleLogger.viewService.getter();
    v80 = v100;
    v114(v100, v57, v40);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = v80;
      v85 = swift_slowAlloc();
      v120[0] = v85;
      *v83 = 136315138;
      sub_100006F40();
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      v107(v84, v40);
      v89 = sub_1000141EC(v86, v88, v120);

      *(v83 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v81, v82, "No available handler for action: %s", v83, 0xCu);
      sub_100004208(v85);

      v90 = v111;
      v91 = v101;
    }

    else
    {

      v107(v80, v40);
      v91 = v79;
      v90 = v55;
    }

    (v106)(v91, v90);
  }

  return sub_100006EE0(v58, &qword_100025D00, &qword_100017220);
}

uint64_t sub_1000067D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_100006F98(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100004208(v9);
      }

      if (v8)
      {
        return sub_100006DE4(v9, a3);
      }

      result = sub_100004208(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10000688C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static PeopleLogger.viewService.getter();
    (*(v5 + 16))(v8, a2, v4);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v9;
      v18 = v17;
      v26 = swift_slowAlloc();
      v29 = v26;
      *v18 = 136315394;
      sub_100006F40();
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v10;
      v21 = v20;
      (*(v5 + 8))(v8, v4);
      v22 = sub_1000141EC(v19, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1000141EC(v23, v24, &v29);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to handle action: %s with error: %s", v18, 0x16u);
      swift_arrayDestroy();

      return (*(v27 + 8))(v14, v28);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v10 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_100006BC0()
{
  v1 = *(v0 + 16);

  sub_100004208((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_100006C24()
{
  sub_10000417C(&qword_100025CF0, "~<");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000171E0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v12 = sub_100006D98();
    v13 = &off_1000210C0;
    *&v11 = v2;
    type metadata accessor for IntentLauncher();
    v3 = swift_allocObject();
    sub_100006DE4(&v11, v3 + 16);
    v4 = [objc_allocWithZone(CNLaunchServices) init];
    v5 = type metadata accessor for MessageActionHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    *(v0 + 56) = v5;
    *(v0 + 64) = &off_100021318;
    *(v0 + 32) = v6;
    v7 = sub_10000A190();
    *(v0 + 96) = type metadata accessor for CallActionHandler();
    *(v0 + 104) = &off_100021180;
    *(v0 + 72) = v7;
    v8 = type metadata accessor for ContactFetcher();
    v9 = static ContactFetcher.shared.getter();
    v12 = v8;
    v13 = &protocol witness table for ContactFetcher;
    *&v11 = v9;
    type metadata accessor for ActionLauncher();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    sub_100006DE4(&v11, v10 + 24);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100006D98()
{
  result = qword_100025CF8;
  if (!qword_100025CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025CF8);
  }

  return result;
}

uint64_t sub_100006DE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000417C(&qword_100025D00, &qword_100017220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E6C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  sub_1000041C4(a1, v4);
  return (*(v5 + 8))(v3, v2, v4, v5) & 1;
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000417C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100006F40()
{
  result = qword_100025D10;
  if (!qword_100025D10)
  {
    type metadata accessor for QuickAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D10);
  }

  return result;
}

uint64_t sub_100006F98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006FFC()
{
  v1 = type metadata accessor for QuickAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007084(uint64_t a1)
{
  v3 = *(type metadata accessor for QuickAction() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000688C(a1, v4);
}

uint64_t *sub_1000070F4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for QuickAction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000417C(&qword_100025D00, &qword_100017220);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for QuickAction();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000417C(&qword_100025D00, &qword_100017220);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for NoAvailableContactHandle()
{
  result = qword_100025D70;
  if (!qword_100025D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000073D0()
{
  type metadata accessor for QuickAction();
  if (v0 <= 0x3F)
  {
    sub_100007454();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100007454()
{
  if (!qword_100025D80)
  {
    type metadata accessor for Person();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100025D80);
    }
  }
}

id sub_10000762C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100007710()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000141EC(0xD00000000000002DLL, 0x8000000100019C20, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100004208(v8);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

unint64_t sub_1000078AC()
{
  result = qword_100025A50;
  if (!qword_100025A50)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A50);
  }

  return result;
}

void sub_100007904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(TUCallProviderManager) init];
  v8 = [v7 telephonyProvider];

  v9 = [objc_allocWithZone(TUDialRequest) initWithProvider:v8];
  v10 = objc_allocWithZone(CNPhoneNumber);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithStringValue:v11];

  v13 = [v12 stringValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  object = String.trimToNil()().value._object;

  if (object)
  {

    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  v16 = objc_allocWithZone(TUHandle);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithType:v15 value:v17];

  [v9 setHandle:v18];
  [v9 setVideo:0];
  v20[4] = a3;
  v20[5] = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100007B4C;
  v20[3] = &unk_1000211E8;
  v19 = _Block_copy(v20);

  [v4 launchAppForDialRequest:v9 completion:v19];
  _Block_release(v19);
}

void sub_100007B4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100007BDC()
{
  v1 = v0[12];
  sub_1000041C4(v0 + 8, v0[11]);
  v2 = dispatch thunk of IntentHandlingApplicationRegistry.applications(forIntentClass:)();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_10000A064(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v5 = v2 + 32;
    do
    {
      sub_100006F98(v5, v14);
      sub_1000041C4(v14, v14[3]);
      v6 = dispatch thunk of ApplicationRecord.bundleIdentifier.getter();
      v8 = v7;
      sub_100004208(v14);
      v15 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_10000A064((v9 > 1), v10 + 1, 1);
        v4 = v15;
      }

      v4[2] = v10 + 1;
      v11 = &v4[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v12 = sub_10000A314(v4);

  return v12;
}

id sub_100007D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000417C(&qword_1000262E0, &qword_100017460);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000172A0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(INStartCallIntent);
  sub_10000AA78(0, &qword_100025FA0, INPerson_ptr);
  v20 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:isa callCapability:a2];

  if (a4)
  {
    sub_10000AA78(0, &qword_100025FA8, INStartCallIntent_ptr);
    v12 = sub_100007BDC();
    v13 = sub_100007F18(a3, a4, v12);

    if ((v13 & 1) == 0)
    {
      if (a2 == 2)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1000172A0;
        *(v14 + 32) = v20;
        v15 = objc_allocWithZone(INStartVideoCallIntent);
        v16 = v20;
        v17 = Array._bridgeToObjectiveC()().super.isa;

        v18 = [v15 initWithContacts:v17];

        return v18;
      }

      else
      {

        return 0;
      }
    }
  }

  return v11;
}

uint64_t sub_100007F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100009368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_10000938C, 0, 0);
}

uint64_t sub_10000938C()
{
  v2 = v0[30];
  v1 = v0[31];
  sub_10000417C(&qword_100025F88, &unk_100017370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000172B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v5 = sub_100014AD8(inited);
  swift_setDeallocating();
  sub_100006EE0(inited + 32, &qword_100025F90, &unk_100017570);
  v6 = *(v2 + 104);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v0[34] = v8;
  sub_1000129C4(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000095A0;
  v11 = swift_continuation_init();
  v0[27] = sub_10000417C(&qword_100025F98, &unk_100017380);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100012C8C;
  v0[23] = &unk_1000211C0;
  v0[24] = v11;
  [v6 openSensitiveURLInBackground:v9 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000095A0()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100009680, 0, 0);
}

uint64_t sub_100009680()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];

  v4(0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100009704()
{
  sub_100004208((v0 + 16));
  v1 = *(v0 + 56);

  sub_100004208((v0 + 64));

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_1000097A0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100009B50(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000098F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000417C(&qword_100025FB0, &qword_100017390);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100009B50(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000098F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100009CD0();
      goto LABEL_16;
    }

    sub_100009E2C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100009CD0()
{
  v1 = v0;
  sub_10000417C(&qword_100025FB0, &qword_100017390);
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
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100009E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000417C(&qword_100025FB0, &qword_100017390);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_10000A064(char *a1, int64_t a2, char a3)
{
  result = sub_10000A084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A084(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000417C(&qword_100025FB8, &qword_100017398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10000A190()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = objc_opt_self();
  result = [v1 defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = sub_10000AA78(0, &qword_100025CF8, LSApplicationWorkspace_ptr);
    v13 = v4;
    v14 = &off_1000210C0;
    *&v12 = v3;
    type metadata accessor for IntentLauncher();
    v5 = swift_allocObject();
    sub_100006DE4(&v12, v5 + 16);
    result = [v1 defaultWorkspace];
    if (result)
    {
      v6 = result;
      v7 = [objc_allocWithZone(CNLaunchServices) init];
      v13 = sub_10000AA78(0, &qword_100025F78, TUCallCenter_ptr);
      v14 = &off_100021170;
      *&v12 = v0;
      v10 = v4;
      v11 = &protocol witness table for LSApplicationWorkspace;
      *&v9 = v6;
      type metadata accessor for CallActionHandler();
      v8 = swift_allocObject();
      sub_100006DE4(&v12, v8 + 16);
      *(v8 + 56) = v5;
      sub_100006DE4(&v9, v8 + 64);
      *(v8 + 104) = v7;
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A314(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000097A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000A3AC(uint64_t a1)
{
  v2 = type metadata accessor for QuickActionType();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v22 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v21 = v20 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v20 - v10;
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  v20[1] = a1;
  QuickAction.type.getter();
  v20[0] = v3[13];
  (v20[0])(v11, enum case for QuickActionType.videoCall(_:), v2);
  sub_10000A684();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v25 == v23 && v26 == v24)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15 = v3[1];
  v15(v11, v2);
  v15(v13, v2);

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v17 = v21;
    QuickAction.type.getter();
    v18 = v22;
    (v20[0])(v22, enum case for QuickActionType.voiceCall(_:), v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v25 == v23 && v26 == v24)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v15(v18, v2);
    v15(v17, v2);
  }

  return v16 & 1;
}

unint64_t sub_10000A684()
{
  result = qword_1000259F0;
  if (!qword_1000259F0)
  {
    type metadata accessor for QuickActionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000259F0);
  }

  return result;
}

uint64_t sub_10000A6DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000A7C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000A8FC;

  return sub_100009368(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10000A8FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AA00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AA78(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000AAC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000AADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v40 = a3;
  v7 = type metadata accessor for URLComponents();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandleType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000417C(&qword_100025D00, &qword_100017220);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v33 - v18;
  QuickAction.handle.getter();
  if (v20)
  {
    goto LABEL_2;
  }

  v34 = a1;
  v35 = a2;
  v36 = a4;
  sub_100006DFC(a2, v19);
  v24 = type metadata accessor for Person();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    sub_10000B0E4(v19);
  }

  else
  {
    (*(v12 + 104))(v15, enum case for HandleType.email(_:), v11);
    Person.preferredHandle(ofType:)();
    v27 = v26;
    (*(v12 + 8))(v15, v11);
    (*(v25 + 8))(v19, v24);
    if (v27)
    {
      a4 = v36;
LABEL_2:
      URLComponents.init()();
      URLComponents.scheme.setter();
      URLComponents.path.setter();
      v21 = v37[5];
      v22 = v37[6];
      sub_1000041C4(v37 + 2, v21);
      (*(v22 + 16))(v10, v40, a4, v21, v22);
      return (*(v38 + 8))(v10, v39);
    }
  }

  v28 = type metadata accessor for NoAvailableContactHandle();
  sub_10000B14C(&unk_100026070, type metadata accessor for NoAvailableContactHandle);
  v29 = swift_allocError();
  v31 = v30;
  v32 = type metadata accessor for QuickAction();
  (*(*(v32 - 8) + 16))(v31, v34, v32);
  sub_100006DFC(v35, v31 + *(v28 + 20));
  v40(v29);
}

uint64_t sub_10000AF08()
{
  v0 = type metadata accessor for QuickActionType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  QuickAction.type.getter();
  (*(v1 + 104))(v5, enum case for QuickActionType.mail(_:), v0);
  sub_10000B14C(&qword_1000259F0, &type metadata accessor for QuickActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);

  return v8 & 1;
}

uint64_t sub_10000B0E4(uint64_t a1)
{
  v2 = sub_10000417C(&qword_100025D00, &qword_100017220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B14C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000B3DC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController);
  if (sub_10000E710(a1))
  {
    static PeopleLogger.viewService.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019E60, &v25);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s spotlight controller already in place", v14, 0xCu);
      sub_100004208(v15);
    }

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    static PeopleLogger.viewService.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019E60, &v25);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s setting new controller into root view", v18, 0xCu);
      sub_100004208(v19);
    }

    (*(v4 + 8))(v8, v3);
    v20 = [objc_opt_self() currentDevice];
    v21 = [v20 userInterfaceIdiom];

    if (v21 == 1)
    {
      v22 = [a1 view];
      if (!v22)
      {
        __break(1u);
        return;
      }

      v23 = v22;
      [v22 _setOverrideVibrancyTrait:1];
    }

    sub_10000E594();
    sub_10000DFEC(a1);
  }
}

void sub_10000B734(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PeopleAnalytics.WidgetLocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.shared.getter();
  (*(v10 + 104))(v13, enum case for PeopleAnalytics.WidgetLocation.homeScreen(_:), v9);
  dispatch thunk of PeopleAnalytics.sendEntityCardLaunched(validContactIdentifier:displayPriorities:location:)();

  (*(v10 + 8))(v13, v9);
  static PeopleLogger.viewService.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_1000141EC(0xD000000000000020, 0x8000000100019E30, &v55);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000141EC(a1, a2, &v55);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s showing '%s' in view", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v8, v4);
  v17 = *(v54 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v17)
  {
    v18 = &v17[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier];
    v19 = *&v17[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8];
    *v18 = 0;
    *(v18 + 1) = 0;
    v20 = v17;

    v21 = *&v20[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities];
    *&v20[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities] = &_swiftEmptyArrayStorage;
  }

  v53 = static HorizontalAlignment.center.getter();
  v72 = 1;
  v52 = static VerticalAlignment.center.getter();
  v71 = 1;
  v55 = a1;
  v56 = a2;
  sub_10000C05C();

  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Font.headline.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  sub_10000C0B0(v22, v24, v26 & 1);

  v50 = objc_opt_self();
  v32 = [v50 labelColor];
  Color.init(uiColor:)();
  v51 = Text.foregroundColor(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10000C0B0(v27, v29, v31 & 1);

  v39 = static Color.clear.getter();
  v40 = static Edge.Set.all.getter();
  v36 &= 1u;
  LOBYTE(v55) = v36;
  LOBYTE(v22) = v71;
  v41 = static Color.clear.getter();
  LOBYTE(v29) = static Edge.Set.all.getter();
  v42 = v72;
  v43 = static Color.clear.getter();
  v44 = static Edge.Set.all.getter();
  v55 = v53;
  v56 = 0;
  v57 = v42;
  v58 = v52;
  v59 = 0;
  v60 = v22;
  v61 = v51;
  v62 = v34;
  v63 = v36;
  v64 = v38;
  v65 = v39;
  v66 = v40;
  v67 = v41;
  v68 = v29;
  v69 = v43;
  v70 = v44;
  v45 = objc_allocWithZone(sub_10000417C(&qword_100026190, &qword_100017418));
  v46 = UIHostingController.init(rootView:)();
  v47 = [v46 view];
  if (v47)
  {
    v48 = v47;
    v49 = [v50 clearColor];
    [v48 setBackgroundColor:v49];

    sub_10000B3DC(v46);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000BC9C(unsigned __int8 a1)
{
  v3 = type metadata accessor for MetricTemplateView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if ((static MetricTemplate.metricsEnabled.getter() & 1) != 0 && a1 == 3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController);
    MetricTemplateView.init(dragRefresh:)();
    v6 = objc_allocWithZone(sub_10000417C(&qword_100026180, &qword_100017410));
    v7 = UIHostingController.init(rootView:)();
    sub_10000DFEC(v7);

    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v8 && *&v8[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8])
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        return;
      }
    }

    else if (!a1)
    {
      v9 = *&v8[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController];
      v13 = v8;
      v10 = v9;
      sub_10000B3DC(v10);

      sub_100010B18();
LABEL_12:

      return;
    }

    v13 = v8;
    v11 = String.localized.getter();
    sub_10000B734(v11, v12);

    goto LABEL_12;
  }
}

id sub_10000BFA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000C05C()
{
  result = qword_100026188;
  if (!qword_100026188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026188);
  }

  return result;
}

uint64_t sub_10000C0B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C0C0()
{
  result = qword_100026198;
  if (!qword_100026198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026198);
  }

  return result;
}

void sub_10000C10C(uint64_t a1)
{
  v137 = a1;
  v2 = sub_10000417C(&qword_1000261A8, &qword_100017420);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v100 - v4;
  v109 = type metadata accessor for QuickAction();
  v134 = *(v109 - 8);
  v6 = *(v134 + 64);
  __chkstk_darwin(v109);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for PeopleURL.Scheme();
  v133 = *(v120 - 8);
  v9 = *(v133 + 64);
  __chkstk_darwin(v120);
  v119 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000417C(&qword_1000261B0, &qword_100017428);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v127 = &v100 - v13;
  v14 = type metadata accessor for URLComponents();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v121 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Logger();
  v18 = *(v124 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v124);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v100 - v24;
  __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v130 = type metadata accessor for URL();
  v28 = *(v130 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v130);
  v108 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v136 = &v100 - v33;
  __chkstk_darwin(v32);
  v138 = &v100 - v34;
  v110 = v1;
  v35 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (!v35)
  {
    static PeopleLogger.viewService.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v141[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019E80, v141);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s impossible error, no peopleView", v43, 0xCu);
      sub_100004208(v44);
    }

    (*(v18 + 8))(v22, v124);
    return;
  }

  v103 = OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView;
  v104 = v8;
  v106 = v5;
  v131 = v27;
  v111 = v35;
  if ((v137 & 0xC000000000000001) != 0)
  {
    v36 = v35;

    __CocoaSet.makeIterator()();
    sub_10000C0C0();
    sub_10000CFCC(&qword_1000261A0, sub_10000C0C0);
    v27 = v131;
    Set.Iterator.init(_cocoa:)();
    v137 = v141[0];
    v128 = v141[1];
    v38 = v141[2];
    v39 = v141[3];
    v40 = v141[4];
  }

  else
  {
    v45 = -1 << *(v137 + 32);
    v46 = *(v137 + 56);
    v128 = v137 + 56;
    v47 = ~v45;
    v48 = -v45;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & v46;
    v51 = v35;

    v38 = v47;
    v40 = v50;
    v39 = 0;
  }

  v107 = v38;
  v122 = (v38 + 64) >> 6;
  v126 = (v28 + 16);
  v135 = (v28 + 8);
  v132 = (v18 + 8);
  v118 = "displayViewController(_:)";
  v125 = (v15 + 48);
  v117 = (v15 + 32);
  v116 = enum case for PeopleURL.Scheme.people(_:);
  v115 = (v133 + 104);
  v114 = (v133 + 8);
  v113 = (v15 + 8);
  v105 = (v134 + 48);
  v102 = (v134 + 32);
  v101 = (v134 + 8);
  v100 = "T@UIWindow,N,&,Vwindow";
  *&v37 = 136315650;
  v112 = v37;
  v52 = v124;
  v123 = v25;
  v53 = v130;
  v54 = v128;
  v129 = v14;
  while (v137 < 0)
  {
    v59 = __CocoaSet.Iterator.next()();
    if (!v59 || (v139 = v59, sub_10000C0C0(), swift_dynamicCast(), v58 = v140, v57 = v40, !v140))
    {
LABEL_41:
      sub_10000CFC4();

      return;
    }

LABEL_21:
    v134 = v57;
    v60 = [v58 URL];
    v61 = v138;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static PeopleLogger.viewService.getter();
    v62 = v136;
    (*v126)(v136, v61, v53);
    v63 = v58;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v66 = v112;
      *(v66 + 4) = sub_1000141EC(0xD000000000000019, v118 | 0x8000000000000000, &v140);
      *(v66 + 12) = 2112;
      *(v66 + 14) = v63;
      *v67 = v58;
      *(v66 + 22) = 2080;
      sub_10000CFCC(&qword_1000261B8, &type metadata accessor for URL);
      v68 = v63;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v133 = *v135;
      (v133)(v136, v53);
      v72 = sub_1000141EC(v69, v71, &v140);

      *(v66 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s url centext: %@ url: %s", v66, 0x20u);
      sub_100006EE0(v67, &unk_1000261C0, &qword_1000171D0);
      v73 = v124;

      swift_arrayDestroy();
      v27 = v131;

      v74 = *v132;
      v52 = v73;
      (*v132)(v27, v73);
    }

    else
    {

      v133 = *v135;
      (v133)(v62, v53);
      v74 = *v132;
      (*v132)(v27, v52);
    }

    v75 = v127;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v76 = v129;
    if ((*v125)(v75, 1, v129) == 1)
    {
      sub_100006EE0(v75, &qword_1000261B0, &qword_100017428);
      v77 = v123;
      goto LABEL_30;
    }

    v78 = v121;
    (*v117)(v121, v75, v76);
    URLComponents.scheme.getter();
    v79 = v76;
    v80 = v119;
    v81 = v120;
    (*v115)(v119, v116, v120);
    v82 = static PeopleURL.Scheme.== infix(_:_:)();

    (*v114)(v80, v81);
    if ((v82 & 1) == 0)
    {
      (*v113)(v78, v79);
      v77 = v123;
      v27 = v131;
LABEL_30:
      static PeopleLogger.viewService.getter();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v84, v85, "Url does not represent people/can't be parsed", v86, 2u);
        v27 = v131;
      }

      v74(v77, v52);
LABEL_33:
      v53 = v130;
      goto LABEL_34;
    }

    if (sub_100012594())
    {
      v83 = sub_10000F140(v78);
      sub_10000BC9C(v83);

      (*v113)(v78, v129);
      v27 = v131;
      goto LABEL_33;
    }

    v87 = [v63 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v88 = v106;
    QuickAction.init(from:)();
    v89 = v109;
    v90 = (*v105)(v88, 1, v109);
    v91 = v129;
    v53 = v130;
    if (v90 == 1)
    {
      sub_100006EE0(v88, &qword_1000261A8, &qword_100017420);
      v92 = v121;
      v93 = sub_10000F140(v121);
      v94 = v110;
      sub_10000BC9C(v93);
      static MetricTemplate.metricsEnabled.getter();
      v95 = *(v94 + v103);
      if (v95 && *&v95[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8])
      {
        v96 = v95;
        v97 = String.localized.getter();
        sub_10000B734(v97, v98);

        v63 = v96;
      }

      v27 = v131;

      (*v113)(v92, v91);
    }

    else
    {
      v99 = v104;
      (*v102)(v104, v88, v89);
      sub_100006C24();
      sub_100005C4C(v99);

      (*v101)(v99, v89);
      (*v113)(v121, v91);
      v27 = v131;
    }

LABEL_34:
    v40 = v134;
    (v133)(v138, v53);
    v54 = v128;
  }

  v55 = v39;
  v56 = v40;
  if (v40)
  {
LABEL_17:
    v57 = (v56 - 1) & v56;
    v58 = *(*(v137 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v56)))));
    if (!v58)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v39 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v39 >= v122)
    {
      goto LABEL_41;
    }

    v56 = *(v54 + 8 * v39);
    ++v55;
    if (v56)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_10000CFCC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000D014(void *a1, void *a2)
{
  v3 = v2;
  v52 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v50 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v49 - v10;
  static PeopleLogger.viewService.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v53 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000141EC(0xD00000000000001FLL, 0x8000000100019F20, &v53);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_100004208(v15);
  }

  v16 = *(v6 + 8);
  v16(v11, v5);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v49[1] = v6;
    v19 = objc_opt_self();
    v51 = a1;
    v20 = [v19 sharedApplication];
    [v20 _setBackgroundStyle:1];

    v21 = [objc_opt_self() mainScreen];
    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [objc_allocWithZone(UIWindow) initWithFrame:{v23, v25, v27, v29}];
    v31 = *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window) = v30;
    v32 = v30;

    v33 = v32;
    [v33 setOpaque:0];
    v34 = [objc_opt_self() clearColor];
    [v33 setBackgroundColor:v34];

    [v33 setWindowScene:v18];
    [v33 setRootViewController:*(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController)];
    [v33 makeKeyAndVisible];
    v35 = objc_allocWithZone(type metadata accessor for PeopleViewHandler());
    v36 = v33;
    v37 = sub_10000EA2C(v36);
    v38 = *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
    *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView) = v37;

    v39 = [v52 URLContexts];
    sub_10000C0C0();
    sub_10000CFCC(&qword_1000261A0, sub_10000C0C0);
    v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = __CocoaSet.count.getter();
    }

    else
    {
      v41 = *(v40 + 16);
    }

    if (v41)
    {
      v42 = [v52 URLContexts];
      v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000C10C(v43);
    }

    else
    {
      v44 = v50;
      static PeopleLogger.viewService.getter();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v53 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_1000141EC(0xD00000000000001FLL, 0x8000000100019F20, &v53);
        _os_log_impl(&_mh_execute_header, v45, v46, "%s missing URL data", v47, 0xCu);
        sub_100004208(v48);
      }

      v16(v44, v5);
      sub_10000BC9C(1u);
    }
  }
}

id sub_10000D76C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000141EC(0xD00000000000001BLL, 0x8000000100019EE0, &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_100004208(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v11)
  {
    v12 = v11;
    sub_10000EB28(0, 0xE000000000000000, &_swiftEmptyArrayStorage);
  }

  [*(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController) dismissViewControllerAnimated:0 completion:0];
  return sub_10000E594();
}

void sub_10000DAF8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v2;
    v13 = v12;
    v20 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000141EC(0xD000000000000012, 0x8000000100019EA0, &v20);
    *(v13 + 12) = 2080;
    v14 = [v9 activityType];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_1000141EC(v15, v17, &v20);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s activity: %s ", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v8, v4);
  sub_10000BC9C(1u);
}

id sub_10000DD24()
{
  v1 = OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle:8];
    v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10000DE94()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(UIView) init];
  }

  else
  {
    v3 = sub_10000DD24();
  }

  v4 = v3;
  [v0 setView:v3];

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 layer];

    [v7 setAllowsGroupOpacity:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000DFEC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    [v1 addChildViewController:a1];
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 contentView];
        [v14 insertSubview:v9 atIndex:0];

        v15 = [v13 contentView];
LABEL_11:
        v46 = v15;
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        v28 = objc_opt_self();
        sub_10000417C(&qword_1000262E0, &qword_100017460);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_100017430;
        v30 = [v9 topAnchor];
        v31 = [v46 topAnchor];
        v32 = [v30 constraintEqualToAnchor:v31];

        *(v29 + 32) = v32;
        v33 = [v9 bottomAnchor];
        v34 = [v46 bottomAnchor];
        v35 = [v33 constraintEqualToAnchor:v34];

        *(v29 + 40) = v35;
        v36 = [v9 leadingAnchor];
        v37 = [v46 safeAreaLayoutGuide];
        v38 = [v37 leadingAnchor];

        v39 = [v36 constraintEqualToAnchor:v38];
        *(v29 + 48) = v39;
        v40 = [v9 trailingAnchor];
        v41 = [v46 safeAreaLayoutGuide];

        v42 = [v41 trailingAnchor];
        v43 = [v40 constraintEqualToAnchor:v42];

        *(v29 + 56) = v43;
        sub_10000AA78(0, &qword_100026208, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v28 activateConstraints:isa];

        [a1 didMoveToParentViewController:v1];
        v45 = v46;

        return;
      }
    }

    v26 = [v1 view];
    if (v26)
    {
      v27 = v26;
      [v26 insertSubview:v9 atIndex:0];

      v15 = [v1 view];
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  static PeopleLogger.viewService.getter();
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v19 = 136315138;
    v20 = v16;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_1000141EC(v22, v24, &v47);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Tried to embed nil view for: %s", v19, 0xCu);
    sub_100004208(v46);
  }

  (*(v4 + 8))(v7, v3);
}

id sub_10000E594()
{
  v1 = [v0 childViewControllers];
  sub_10000AA78(0, &qword_100026200, UIViewController_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E710(void *a1)
{
  v3 = [v1 childViewControllers];
  sub_10000AA78(0, &qword_100026200, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return 0;
  }

  v6 = [v1 childViewControllers];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_9:
    v10 = v9;

    v11 = a1;
    v12 = static NSObject.== infix(_:_:)();

    return v12 & 1;
  }

  __break(1u);
  return result;
}

id sub_10000E9C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10000EA2C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities] = &_swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactFetcher;
  type metadata accessor for ContactFetcher();
  *&v1[v5] = static ContactFetcher.shared.getter();
  v6 = OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController;
  *&v2[v6] = [objc_allocWithZone(SPUIContactViewController) init];
  *&v2[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_hostWindow] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for PeopleViewHandler();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v12, "init");
  v9 = *&v8[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController];
  v10 = v8;
  [v9 setDelegate:{v10, v12.receiver, v12.super_class}];

  return v10;
}

void sub_10000EB28(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController);
  v16 = [v15 contactIdentifier];
  if (!v16)
  {
LABEL_7:
    static PeopleLogger.viewService.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = a3;
      v38 = v28;
      v29 = v7;
      v30 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000141EC(0xD000000000000029, 0x800000010001A1C0, &v38);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s -- updating spotlight contact", v27, 0xCu);
      sub_100004208(v30);

      (*(v8 + 8))(v14, v29);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    v35 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v15 updateWithContactIdentifier:v35 preferredBundleIdentifiers:isa];

    return;
  }

  v37 = v15;
  v17 = a3;
  v18 = v7;
  v19 = v16;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == a1 && v22 == a2)
  {

    v7 = v18;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v18;
    a3 = v17;
    v15 = v37;
    if ((v24 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  static PeopleLogger.viewService.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_1000141EC(0xD000000000000029, 0x800000010001A1C0, &v38);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s -- not updating spotlight", v33, 0xCu);
    sub_100004208(v34);
  }

  (*(v8 + 8))(v12, v7);
}

uint64_t sub_10000EED8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8))
  {
    return 1;
  }

  v6 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier);
  v7 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactFetcher);

  v9 = dispatch thunk of ContactFetcher.contact(for:includeImages:)();

  if (v9)
  {
    v10 = [v9 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = *(v7 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities);

    sub_10000EB28(v11, v13, v14);

    return 0;
  }

  else
  {
    static PeopleLogger.viewService.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000141EC(0xD000000000000019, 0x800000010001A1A0, &v21);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s contact not set/confirmed", v18, 0xCu);
      sub_100004208(v19);
    }

    (*(v2 + 8))(v5, v1);
    return 2;
  }
}

uint64_t sub_10000F140(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v132 = *(v2 - 8);
  v133 = v2;
  v3 = *(v132 + 64);
  v4 = __chkstk_darwin(v2);
  v131 = &v106[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v118 = &v106[-v6];
  v117 = type metadata accessor for PeopleURL.ArrayParameter();
  v116 = *(v117 - 8);
  v7 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v106[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = type metadata accessor for PeopleURL.Parameter();
  v120 = *(v123 - 8);
  v9 = *(v120 + 64);
  v10 = __chkstk_darwin(v123);
  v114 = &v106[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v119 = &v106[-v12];
  v134 = type metadata accessor for PeopleURL.PathAction();
  v136 = *(v134 - 8);
  v13 = *(v136 + 64);
  __chkstk_darwin(v134);
  v122 = &v106[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10000417C(&qword_100026318, &qword_1000174E8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v127 = &v106[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v135 = &v106[-v19];
  v20 = sub_10000417C(&qword_100026320, &unk_1000174F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v121 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v130 = &v106[-v25];
  v26 = __chkstk_darwin(v24);
  v126 = &v106[-v27];
  v28 = __chkstk_darwin(v26);
  v124 = &v106[-v29];
  v30 = __chkstk_darwin(v28);
  v129 = &v106[-v31];
  __chkstk_darwin(v30);
  v128 = &v106[-v32];
  v33 = type metadata accessor for PeopleURL.Scheme();
  v34 = *(v33 - 8);
  v35 = v34[8];
  __chkstk_darwin(v33);
  v37 = &v106[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.scheme.getter();
  v38 = enum case for PeopleURL.Scheme.people(_:);
  v39 = v34[13];
  v39(v37, enum case for PeopleURL.Scheme.people(_:), v33);
  v40 = static PeopleURL.Scheme.== infix(_:_:)();
  v41 = v33;
  v42 = v15;

  v43 = v34[1];
  v43(v37, v41);
  v125 = v42;
  if (v40)
  {
    v108 = v37;
    v109 = v43;
    v110 = v41;
    v111 = v39;
    v112 = v38;
    v44 = v128;
    v113 = a1;
    URLComponents.peopleAction.getter();
    v45 = v136;
    v46 = v129;
    v47 = v134;
    (*(v136 + 104))(v129, enum case for PeopleURL.PathAction.showGatheredMetrics(_:), v134);
    (*(v45 + 56))(v46, 0, 1, v47);
    v48 = *(v42 + 48);
    v49 = v135;
    sub_1000124DC(v44, v135);
    sub_1000124DC(v46, &v49[v48]);
    v50 = *(v45 + 48);
    if (v50(v49, 1, v47) == 1)
    {
      sub_100006EE0(v46, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v44, &qword_100026320, &unk_1000174F0);
      v51 = v135;
      v52 = v50(&v135[v48], 1, v47) == 1;
      v53 = v51;
      if (v52)
      {
        sub_100006EE0(v51, &qword_100026320, &unk_1000174F0);
        return 3;
      }

      goto LABEL_8;
    }

    v55 = v135;
    v56 = v124;
    sub_1000124DC(v135, v124);
    if (v50(&v55[v48], 1, v47) == 1)
    {
      sub_100006EE0(v46, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v44, &qword_100026320, &unk_1000174F0);
      (*(v136 + 8))(v56, v47);
      v53 = v135;
LABEL_8:
      sub_100006EE0(v53, &qword_100026318, &qword_1000174E8);
      v38 = v112;
      v39 = v111;
      v41 = v110;
      v43 = v109;
      v37 = v108;
      goto LABEL_9;
    }

    v66 = v135;
    v67 = v136;
    v68 = v122;
    (*(v136 + 32))(v122, &v135[v48], v47);
    sub_10001254C(&qword_100026328, &type metadata accessor for PeopleURL.PathAction);
    v107 = dispatch thunk of static Equatable.== infix(_:_:)();
    v69 = *(v67 + 8);
    v69(v68, v47);
    sub_100006EE0(v46, &qword_100026320, &unk_1000174F0);
    sub_100006EE0(v44, &qword_100026320, &unk_1000174F0);
    v69(v56, v47);
    sub_100006EE0(v66, &qword_100026320, &unk_1000174F0);
    v38 = v112;
    v39 = v111;
    v41 = v110;
    v43 = v109;
    v37 = v108;
    if (v107)
    {
      return 3;
    }
  }

LABEL_9:
  URLComponents.scheme.getter();
  v39(v37, v38, v41);
  v57 = static PeopleURL.Scheme.== infix(_:_:)();

  v43(v37, v41);
  if ((v57 & 1) == 0)
  {
    goto LABEL_29;
  }

  v58 = v126;
  URLComponents.peopleAction.getter();
  v59 = v136;
  v60 = v130;
  v61 = v134;
  (*(v136 + 104))(v130, enum case for PeopleURL.PathAction.showSearchResult(_:), v134);
  (*(v59 + 56))(v60, 0, 1, v61);
  v62 = *(v125 + 48);
  v63 = v127;
  sub_1000124DC(v58, v127);
  sub_1000124DC(v60, &v63[v62]);
  v64 = *(v59 + 48);
  if (v64(v63, 1, v61) != 1)
  {
    v65 = v121;
    sub_1000124DC(v63, v121);
    if (v64(&v63[v62], 1, v61) != 1)
    {
      v70 = v136;
      v71 = &v63[v62];
      v72 = v122;
      (*(v136 + 32))(v122, v71, v61);
      sub_10001254C(&qword_100026328, &type metadata accessor for PeopleURL.PathAction);
      v73 = dispatch thunk of static Equatable.== infix(_:_:)();
      v74 = *(v70 + 8);
      v74(v72, v61);
      sub_100006EE0(v130, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v58, &qword_100026320, &unk_1000174F0);
      v74(v65, v61);
      sub_100006EE0(v63, &qword_100026320, &unk_1000174F0);
      if ((v73 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    sub_100006EE0(v130, &qword_100026320, &unk_1000174F0);
    sub_100006EE0(v58, &qword_100026320, &unk_1000174F0);
    (*(v136 + 8))(v65, v61);
LABEL_15:
    sub_100006EE0(v63, &qword_100026318, &qword_1000174E8);
    goto LABEL_29;
  }

  sub_100006EE0(v60, &qword_100026320, &unk_1000174F0);
  sub_100006EE0(v58, &qword_100026320, &unk_1000174F0);
  if (v64(&v63[v62], 1, v61) != 1)
  {
    goto LABEL_15;
  }

  sub_100006EE0(v63, &qword_100026320, &unk_1000174F0);
LABEL_19:
  v75 = v119;
  v76 = v120;
  v77 = *(v120 + 104);
  v78 = v123;
  v77(v119, enum case for PeopleURL.Parameter.contactIdentifier(_:), v123);
  v79 = URLComponents.subscript.getter();
  v81 = v80;
  v82 = *(v76 + 8);
  v82(v75, v78);
  if (v81)
  {
    v136 = v79;
    v83 = v116;
    v84 = v115;
    v85 = v117;
    (*(v116 + 104))(v115, enum case for PeopleURL.ArrayParameter.priorities(_:), v117);
    v135 = URLComponents.subscript.getter();
    (*(v83 + 8))(v84, v85);
    v86 = v114;
    v87 = v123;
    v77(v114, enum case for PeopleURL.Parameter.lockScreen(_:), v123);
    v88 = URLComponents.subscript.getter();
    v90 = v89;
    v82(v86, v87);
    if (v90)
    {
      v91 = v88;
    }

    else
    {
      v91 = 0x65736C6166;
    }

    if (v90)
    {
      v92 = v90;
    }

    else
    {
      v92 = 0xE500000000000000;
    }

    if (v91 == 1702195828 && v92 == 0xE400000000000000)
    {

      v93 = 1;
    }

    else
    {
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v99 = v118;
    static PeopleLogger.viewService.getter();

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();

    v102 = os_log_type_enabled(v100, v101);
    v103 = v136;
    if (v102)
    {
      v104 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v104 = 136315650;
      *(v104 + 4) = sub_1000141EC(0xD000000000000010, 0x800000010001A180, &v137);
      *(v104 + 12) = 2080;
      *(v104 + 14) = sub_1000141EC(v103, v81, &v137);
      *(v104 + 22) = 1024;
      *(v104 + 24) = v93 & 1;
      _os_log_impl(&_mh_execute_header, v100, v101, "%s, contactIdentifier: %s, lockScreen: %{BOOL}d", v104, 0x1Cu);
      swift_arrayDestroy();
    }

    (*(v132 + 8))(v99, v133);
    v105 = sub_10001006C(v103, v81, v135, v93 & 1);

    return v105;
  }

LABEL_29:
  v94 = v131;
  static PeopleLogger.viewService.getter();
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v137 = v98;
    *v97 = 136315138;
    *(v97 + 4) = sub_1000141EC(0xD000000000000010, 0x800000010001A180, &v137);
    _os_log_impl(&_mh_execute_header, v95, v96, "%s contact not set", v97, 0xCu);
    sub_100004208(v98);
  }

  (*(v132 + 8))(v94, v133);
  return 1;
}

uint64_t sub_10001006C(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for PeopleAnalytics.WidgetLocation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v45 = v17;
  v46 = a4;
  v20 = *(v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactFetcher);
  v21 = dispatch thunk of ContactFetcher.contact(for:includeImages:)();
  if (!v21)
  {
    return 2;
  }

  v43 = v11;
  v44 = v10;
  v22 = (v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier);
  v23 = *(v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8);
  *v22 = a1;
  v22[1] = a2;
  v24 = v21;

  v25 = *(v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities);
  *(v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities) = a3;

  v42 = v24;
  v26 = [v24 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_10000EB28(v27, v29, a3);

  static PeopleLogger.viewService.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v32 = 136315650;
    *(v32 + 4) = sub_1000141EC(0xD000000000000035, 0x800000010001A140, &v47);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1000141EC(a1, a2, &v47);
    *(v32 + 22) = 2080;
    v33 = Array.description.getter();
    v35 = sub_1000141EC(v33, v34, &v47);

    *(v32 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s, contactIdentifier: %s, displayPriorities: %s", v32, 0x20u);
    swift_arrayDestroy();
  }

  (*(v45 + 8))(v19, v15);
  v37 = v43;
  v36 = v44;
  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.shared.getter();
  v38 = &enum case for PeopleAnalytics.WidgetLocation.lockScreen(_:);
  if ((v46 & 1) == 0)
  {
    v38 = &enum case for PeopleAnalytics.WidgetLocation.homeScreen(_:);
  }

  (*(v37 + 104))(v14, *v38, v36);
  dispatch thunk of PeopleAnalytics.sendEntityCardLaunched(validContactIdentifier:displayPriorities:location:)();

  (*(v37 + 8))(v14, v36);
  return 0;
}

uint64_t sub_100010480(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v10;
    v18 = v17;
    v19 = v5;
    v20 = v2;
    v21 = a1;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v18 = 136315394;
    *(v18 + 4) = sub_1000141EC(0xD000000000000018, 0x800000010001A0D0, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v21;
    v2 = v20;
    v5 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s, reason: %lu", v18, 0x16u);
    sub_100004208(v22);

    (*(v11 + 8))(v14, v29);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_10000AA78(0, &qword_1000262F8, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v30;
  aBlock[4] = sub_100012410;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010A80;
  aBlock[3] = &unk_1000212C8;
  v26 = _Block_copy(aBlock);
  v27 = v25;
  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10001254C(&qword_100026300, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000417C(&qword_100026308, &qword_1000174E0);
  sub_100012430();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v33 + 8))(v5, v2);
  (*(v31 + 8))(v9, v32);
}

uint64_t sub_1000108DC(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_hostWindow) _scene];
  if (result)
  {
    v2 = result;
    v4[4] = sub_1000109E0;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_100010A2C;
    v4[3] = &unk_1000212F0;
    v3 = _Block_copy(v4);

    [v2 updateClientSettingsWithTransitionBlock:v3];

    _Block_release(v3);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000109E0()
{
  v0 = [objc_allocWithZone(PPLPeopleEntitySceneTransitionContext) init];
  [v0 setShouldDismiss:1];
  return v0;
}

id sub_100010A2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_100010A80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100010B18()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v51 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8);
  if (!v11)
  {
    return;
  }

  v55 = v6;
  v12 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);
  v56 = v13;
  v15 = v14;
  (v14)(v10, 1, 1);
  v16 = type metadata accessor for MainActor();
  swift_bridgeObjectRetain_n();
  v57 = v16;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v12;
  v18[5] = v11;
  sub_100012D00(0, 0, v10, &unk_1000174A8, v18);

  v19 = *(v1 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactFetcher);
  v54 = v12;
  v20 = dispatch thunk of ContactFetcher.contact(for:includeImages:)();
  if (!v20)
  {

    return;
  }

  v21 = v20;
  v52 = v3;
  v22 = [v20 emailAddresses];
  sub_10000417C(&qword_1000262C8, &qword_1000174B0);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v2;
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {

    v25 = v56;
LABEL_13:
    sub_10000AA78(0, &qword_1000262D0, NSString_ptr);
    v28 = NSString.init(stringLiteral:)();
    goto LABEL_14;
  }

  v25 = v56;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v26 = *(v23 + 32);
  }

  v27 = v26;

  v28 = [v27 value];

  if (!v28)
  {
    goto LABEL_13;
  }

LABEL_14:
  v29 = [v21 phoneNumbers];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_22:

    v35 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:
    __break(1u);
    return;
  }

  v31 = *(v30 + 32);
LABEL_19:
  v32 = v31;

  v33 = [v32 value];

  v34 = [v33 stringValue];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

LABEL_23:
  v15(v10, 1, 1, v25);
  v38 = v28;
  v39 = static MainActor.shared.getter();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = &protocol witness table for MainActor;
  v40[4] = v38;
  v40[5] = v35;
  v40[6] = v37;
  sub_100012D00(0, 0, v10, &unk_1000174C0, v40);

  v41 = CNContact.callHistoryHandles.getter();
  v42 = v41;
  if (v41 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    v15(v10, 1, 1, v25);
    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v42;
    sub_100012D00(0, 0, v10, &unk_1000174D0, v44);

    return;
  }

  v45 = v55;
  static PeopleLogger.viewService.getter();

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v48 = 136315138;
    v50 = sub_1000141EC(v54, v11, &v58);

    *(v48 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "No call handles for %s", v48, 0xCu);
    sub_100004208(v49);
  }

  else
  {
  }

  (*(v52 + 8))(v45, v53);
}

uint64_t sub_1000111B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v13;
  v5[13] = v12;

  return _swift_task_switch(sub_100011314, v13, v12);
}

uint64_t sub_100011314()
{
  type metadata accessor for LaunchRecorderWriter();
  v0[14] = static LaunchRecorderWriter.sharedInstance.getter();
  sub_10001254C(&qword_1000262F0, &type metadata accessor for LaunchRecorderWriter);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v2;
  v0[16] = v1;

  return _swift_task_switch(sub_1000113D8, v2, v1);
}

uint64_t sub_1000113D8()
{
  v1 = v0[14];
  dispatch thunk of LaunchRecorderWriter.reload()();
  v2 = v0[12];
  v3 = v0[13];

  return _swift_task_switch(sub_10001143C, v2, v3);
}

uint64_t sub_10001143C()
{
  v1 = v0[10];
  Date.init()();
  v2 = v0[15];
  v3 = v0[16];

  return _swift_task_switch(sub_1000114A0, v2, v3);
}

uint64_t sub_1000114A0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 144) = dispatch thunk of LaunchRecorderWriter.add(contactId:time:)() & 1;
  (*(v3 + 8))(v2, v4);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  return _swift_task_switch(sub_10001153C, v7, v8);
}

uint64_t sub_10001153C()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);

    return _swift_task_switch(sub_100011720, v1, v2);
  }

  else
  {
    v3 = *(v0 + 88);

    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v4 = *(v0 + 112);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 16);
    static PeopleLogger.viewService.getter();
    swift_errorRetain();
    _StringGuts.grow(_:)(33);

    v10._countAndFlagsBits = v9;
    v10._object = v8;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 4203808;
    v11._object = 0xE300000000000000;
    String.append(_:)(v11);
    Logger.ifError(_:message:)();

    (*(v6 + 8))(v5, v7);
    v12 = *(v0 + 80);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100011720()
{
  v1 = v0[14];
  dispatch thunk of LaunchRecorderWriter.save()();
  v0[17] = 0;
  v2 = v0[12];
  v3 = v0[13];

  return _swift_task_switch(sub_1000117A8, v2, v3);
}

uint64_t sub_1000117A8()
{
  v24 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[3];

  static PeopleLogger.viewService.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v22 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000141EC(v10, v9, &v23);
    _os_log_impl(&_mh_execute_header, v4, v5, "Recorded launch %s", v11, 0xCu);
    sub_100004208(v12);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v13 = v0[14];
    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[5];

    (*(v16 + 8))(v14, v15);
  }

  v17 = v0[10];
  v18 = v0[6];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10001197C()
{
  v1 = v0[11];

  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  static PeopleLogger.viewService.getter();
  swift_errorRetain();
  _StringGuts.grow(_:)(33);

  v9._countAndFlagsBits = v8;
  v9._object = v7;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 4203808;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);
  Logger.ifError(_:message:)();

  (*(v5 + 8))(v4, v6);
  v11 = v0[10];
  v12 = v0[6];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100011AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100011B80, v8, v7);
}

uint64_t sub_100011B80()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  [v5 clearUnreadFor:v4 andPhone:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100011C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100011D1C, v9, v8);
}

uint64_t sub_100011D1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  v4 = [objc_allocWithZone(CHManager) init];
  v5 = objc_opt_self();
  v6 = [v5 predicateForCallsWithStatus:kCHCallStatusMissed];
  sub_10000AA78(0, &qword_1000262D8, CHHandle_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v5 predicateForCallsWithAnyRemoteParticipantHandles:isa];

  sub_10000417C(&qword_1000262E0, &qword_100017460);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100017470;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  sub_10000AA78(0, &qword_1000262E8, NSPredicate_ptr);
  v10 = v6;
  v11 = v8;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() andPredicateWithSubpredicates:v12];

  v14 = [v4 setRead:1 forCallsWithPredicate:v13];
  static PeopleLogger.viewService.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "chmanager setRead result %ld", v17, 0xCu);

    v18 = v10;
    v19 = v11;
  }

  else
  {
    v18 = v15;
    v19 = v13;
    v13 = v4;
    v15 = v11;
    v4 = v10;
  }

  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];

  (*(v21 + 8))(v20, v22);

  v23 = v0[1];

  return v23();
}

id sub_100011FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeopleViewHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000120D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000129BC;

  return sub_1000111B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000121D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001221C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A8FC;

  return sub_100011AE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000122E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000129BC;

  return sub_100011C28(a1, v4, v5, v6);
}

uint64_t sub_1000123D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012430()
{
  result = qword_100026310;
  if (!qword_100026310)
  {
    sub_100012494(&qword_100026308, &qword_1000174E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026310);
  }

  return result;
}

uint64_t sub_100012494(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000124DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000417C(&qword_100026320, &unk_1000174F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001254C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012594()
{
  v0 = type metadata accessor for PeopleURL.PathAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000417C(&qword_100026318, &qword_1000174E8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_10000417C(&qword_100026320, &unk_1000174F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - v15;
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  URLComponents.peopleAction.getter();
  (*(v1 + 104))(v16, enum case for PeopleURL.PathAction.showSearchResult(_:), v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_1000124DC(v18, v8);
  sub_1000124DC(v16, &v8[v19]);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) != 1)
  {
    sub_1000124DC(v8, v13);
    if (v20(&v8[v19], 1, v0) != 1)
    {
      v22 = v26;
      (*(v1 + 32))(v26, &v8[v19], v0);
      sub_10001254C(&qword_100026328, &type metadata accessor for PeopleURL.PathAction);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v1 + 8);
      v23(v22, v0);
      sub_100006EE0(v16, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v18, &qword_100026320, &unk_1000174F0);
      v23(v13, v0);
      sub_100006EE0(v8, &qword_100026320, &unk_1000174F0);
      return v21 & 1;
    }

    sub_100006EE0(v16, &qword_100026320, &unk_1000174F0);
    sub_100006EE0(v18, &qword_100026320, &unk_1000174F0);
    (*(v1 + 8))(v13, v0);
    goto LABEL_6;
  }

  sub_100006EE0(v16, &qword_100026320, &unk_1000174F0);
  sub_100006EE0(v18, &qword_100026320, &unk_1000174F0);
  if (v20(&v8[v19], 1, v0) != 1)
  {
LABEL_6:
    sub_100006EE0(v8, &qword_100026318, &qword_1000174E8);
    v21 = 0;
    return v21 & 1;
  }

  sub_100006EE0(v8, &qword_100026320, &unk_1000174F0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1000129C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000417C(&qword_1000263F0, &qword_100017580);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000AA00(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10001526C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001526C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001526C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10001526C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100012C8C(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1000041C4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return _swift_continuation_resume(v6);
}

uint64_t sub_100012D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001527C(a3, v27 - v11, &qword_1000262C0, &qword_100017358);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006EE0(v12, &qword_1000262C0, &qword_100017358);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100006EE0(a3, &qword_1000262C0, &qword_100017358);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006EE0(a3, &qword_1000262C0, &qword_100017358);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_100013000(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v121 = a3;
  v122 = a4;
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v114 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CocoaError();
  v115 = *(v9 - 8);
  v10 = *(v115 + 64);
  __chkstk_darwin(v9);
  v113 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000417C(&qword_100025F80, &unk_100017348);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v119 = (&v103 - v17);
  v18 = type metadata accessor for HandleType();
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = *(v109 + 64);
  __chkstk_darwin(v18);
  v108 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000417C(&qword_100025D00, &qword_100017220);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v107 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v103 - v26;
  __chkstk_darwin(v25);
  v117 = &v103 - v28;
  v29 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v116 = &v103 - v31;
  v32 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v103 - v34;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v40 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v103 - v41;
  if (QuickAction.useStandardProtocol.getter())
  {
    v106 = v27;
    QuickAction.standardProtocolURL.getter();
    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      v119 = *(v37 + 32);
      v119(v42, v35, v36);
      v53 = type metadata accessor for TaskPriority();
      v54 = v116;
      (*(*(v53 - 8) + 56))(v116, 1, 1, v53);
      (*(v37 + 16))(v40, v42, v36);
      v55 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v56 = swift_allocObject();
      *(v56 + 2) = 0;
      *(v56 + 3) = 0;
      v57 = v119;
      *(v56 + 4) = v120;
      v57(&v56[v55], v40, v36);
      v58 = &v56[(v38 + v55 + 7) & 0xFFFFFFFFFFFFFFF8];
      v59 = v122;
      *v58 = v121;
      v58[1] = v59;

      sub_100012D00(0, 0, v54, &unk_100017548, v56);

      (*(v37 + 8))(v42, v36);
      return;
    }

    sub_100006EE0(v35, &qword_1000259F8, &unk_100017090);
    v27 = v106;
  }

  QuickAction.handle.getter();
  if (v43)
  {
    goto LABEL_5;
  }

  v106 = a1;
  v116 = a2;
  v49 = v117;
  sub_10001527C(a2, v117, &qword_100025D00, &qword_100017220);
  v50 = type metadata accessor for Person();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v49, 1, v50) == 1)
  {
    sub_100006EE0(v49, &qword_100025D00, &qword_100017220);
LABEL_18:
    v120 = v9;
    v87 = v118;
    static PeopleLogger.common.getter();
    sub_10001527C(v116, v27, &qword_100025D00, &qword_100017220);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = v27;
      v93 = v91;
      v123 = v91;
      *v90 = 136315138;
      v106 = v92;
      v94 = v107;
      sub_10001527C(v92, v107, &qword_100025D00, &qword_100017220);
      if (v52(v94, 1, v50) == 1)
      {
        sub_100006EE0(v94, &qword_100025D00, &qword_100017220);
        v95 = 0;
        v96 = 0xE000000000000000;
      }

      else
      {
        v97 = v94;
        v95 = Person.description.getter();
        v96 = v98;
        (*(v51 + 8))(v97, v50);
      }

      sub_100006EE0(v106, &qword_100025D00, &qword_100017220);
      v99 = sub_1000141EC(v95, v96, &v123);

      *(v90 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v88, v89, "Could not find handle for person %s", v90, 0xCu);
      sub_100004208(v93);

      (*(v111 + 8))(v118, v112);
    }

    else
    {

      sub_100006EE0(v27, &qword_100025D00, &qword_100017220);
      (*(v111 + 8))(v87, v112);
    }

    static CocoaError.Code.coderInvalidValue.getter();
    sub_100014AD8(&_swiftEmptyArrayStorage);
    sub_100014DF8(&qword_1000263E8, &type metadata accessor for CocoaError);
    v100 = v113;
    v101 = v120;
    _BridgedStoredNSError.init(_:userInfo:)();
    v102 = CocoaError._nsError.getter();
    (*(v115 + 8))(v100, v101);
    v121(v102);

    return;
  }

  v104 = v52;
  v105 = v50;
  v80 = v109;
  v79 = v110;
  v81 = v51;
  v82 = v108;
  (*(v109 + 104))(v108, enum case for HandleType.phoneNumber(_:), v110);
  v83 = v49;
  Person.preferredHandle(ofType:)();
  v85 = v84;
  v86 = v82;
  v51 = v81;
  v50 = v105;
  (*(v80 + 8))(v86, v79);
  v52 = v104;
  (*(v51 + 8))(v83, v50);
  if (!v85)
  {
    goto LABEL_18;
  }

LABEL_5:
  v44 = objc_allocWithZone(CNPhoneNumber);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 initWithStringValue:v45];

  v47 = v119;
  if (v46)
  {

    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  v60 = objc_allocWithZone(INPersonHandle);
  v61 = String._bridgeToObjectiveC()();

  v62 = [v60 initWithValue:v61 type:v48];

  v63 = type metadata accessor for PersonNameComponents();
  v64 = *(v63 - 8);
  (*(v64 + 56))(v47, 1, 1, v63);
  QuickAction.contactIdentifier.getter();
  QuickAction.customIdentifier.getter();
  v66 = v65;
  isa = 0;
  if ((*(v64 + 48))(v47, 1, v63) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v64 + 8))(v47, v63);
  }

  v68 = String._bridgeToObjectiveC()();

  if (v66)
  {
    v69 = String._bridgeToObjectiveC()();
  }

  else
  {
    v69 = 0;
  }

  v70 = [objc_allocWithZone(INPerson) initWithPersonHandle:v62 nameComponents:isa displayName:0 image:0 contactIdentifier:v68 customIdentifier:v69];

  sub_10000417C(&qword_1000262E0, &qword_100017460);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1000172A0;
  *(v71 + 32) = v70;
  v72 = objc_allocWithZone(INSendMessageIntent);
  sub_100014E40();
  v73 = v70;
  v74 = Array._bridgeToObjectiveC()().super.isa;

  v75 = [v72 initWithRecipients:v74 outgoingMessageType:1 content:0 speakableGroupName:0 conversationIdentifier:0 serviceName:0 sender:0 attachments:0];

  v76 = *(v120 + 16);
  v77 = QuickAction.bundleID.getter();
  sub_10000529C(v75, v77, v78, v121, v122);
}

uint64_t sub_100013C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_100013CA4, 0, 0);
}

uint64_t sub_100013CA4()
{
  v2 = v0[30];
  v1 = v0[31];
  sub_10000417C(&qword_100025F88, &unk_100017370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000172B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v5 = sub_100014AD8(inited);
  swift_setDeallocating();
  sub_100006EE0(inited + 32, &qword_100025F90, &unk_100017570);
  v6 = *(v2 + 24);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v0[34] = v8;
  sub_1000129C4(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000095A0;
  v11 = swift_continuation_init();
  v0[27] = sub_10000417C(&qword_100025F98, &unk_100017380);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100012C8C;
  v0[23] = &unk_1000213A8;
  v0[24] = v11;
  [v6 openSensitiveURLInBackground:v9 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100013EB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100013F44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001403C;

  return v7(a1);
}

uint64_t sub_10001403C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100014134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000141EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000142B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000AA00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004208(v11);
  return v7;
}

unint64_t sub_1000142B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000143C4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000143C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100014410(a1, a2);
  sub_100014540(&off_100020FC8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100014410(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001462C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001462C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100014540(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000146A0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001462C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000417C(&qword_100026400, &qword_100017590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000146A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000417C(&qword_100026400, &qword_100017590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100014794(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000148AC(a1, v4);
}

uint64_t sub_100014828(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

unint64_t sub_1000148AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1000149B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000417C(&qword_100026408, &qword_100017598);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001527C(v4, &v11, &qword_100026410, &unk_1000175A0);
      v5 = v11;
      result = sub_100014794(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001526C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100014AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000417C(&qword_1000263F8, &qword_100017588);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001527C(v4, &v13, &qword_100025F90, &unk_100017570);
      v5 = v13;
      v6 = v14;
      result = sub_100014828(v13, v14, sub_100014134);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001526C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100014C1C()
{
  v0 = type metadata accessor for QuickActionType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  QuickAction.type.getter();
  (*(v1 + 104))(v5, enum case for QuickActionType.message(_:), v0);
  sub_100014DF8(&qword_1000259F0, &type metadata accessor for QuickActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);

  return v8 & 1;
}

uint64_t sub_100014DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014E40()
{
  result = qword_100025FA0;
  if (!qword_100025FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025FA0);
  }

  return result;
}

uint64_t sub_100014E8C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100014F70(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000A8FC;

  return sub_100013C80(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000150AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000150E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000129BC;

  return sub_100013F44(a1, v5);
}

uint64_t sub_10001519C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A8FC;

  return sub_100013F44(a1, v5);
}

_OWORD *sub_10001526C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001527C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000417C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t URLComponents.subscript.getter()
{
  return URLComponents.subscript.getter();
}

{
  return URLComponents.subscript.getter();
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v0 = String.trimToNil()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}