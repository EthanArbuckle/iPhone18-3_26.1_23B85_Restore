id sub_100001708(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  return sub_1000019D4(0xD000000000000015, 0x800000010000A5F0, v2);
}

id sub_100001884()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_1000018DC()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100001968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000019D4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100001A44()
{
  result = qword_100015208;
  if (!qword_100015208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015208);
  }

  return result;
}

void type metadata accessor for LaunchOptionsKey()
{
  if (!qword_100015220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100015220);
    }
  }
}

uint64_t sub_100001AE0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001B20()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001B7C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100001C00(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001C7C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100001CFC@<X0>(void *a1@<X8>)
{
  result = sub_100001D24();
  *a1 = result;
  return result;
}

NSString sub_100001D24()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100001D5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100001D68();
}

uint64_t sub_100001D68()
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

uint64_t sub_100001DEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001E34@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001E64(uint64_t a1)
{
  v2 = sub_100001FF8(&qword_100015218, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100001FF8(&unk_100015240, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002040(void *a1)
{
  v3 = type metadata accessor for Log();
  v4 = sub_10000386C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000389C();
  v11 = v10 - v9;
  v12 = (*((swift_isaMask & *v1) + 0x98))();
  [a1 setExportedInterface:v12];

  v13 = (*((swift_isaMask & *v1) + 0xA0))();
  [a1 setRemoteObjectInterface:v13];

  [a1 setExportedObject:v1];
  sub_100003880();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_100003718;
  v39 = v14;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000055D0;
  v37 = &unk_100010790;
  v15 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
  sub_100003880();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_100003720;
  v39 = v16;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000055D0;
  v37 = &unk_1000107B8;
  v17 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler:v17];
  _Block_release(v17);
  [a1 resume];
  v18 = *(v1 + OBJC_IVAR___BaseRemoteViewController_connection);
  *(v1 + OBJC_IVAR___BaseRemoteViewController_connection) = a1;
  v19 = a1;

  sub_100003880();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_100003728;
  v39 = v20;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100002CB8;
  v37 = &unk_1000107E0;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 remoteObjectProxyWithErrorHandler:v21];
  _Block_release(v21);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003730(&aBlock, v33);
  sub_1000035E8(&qword_1000152F0, qword_10000A420);
  if (swift_dynamicCast())
  {
    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v23 = type metadata accessor for LogInterpolation();
    sub_10000388C(v23);
    v25 = *(v24 + 72);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_10000A3B0;
    v33[3] = type metadata accessor for BaseRemoteViewController();
    v33[0] = v1;
    v28 = v1;
    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v33);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    (*(v6 + 8))(v11, v3);
    [v32 initializeClientToViewServiceConnection];
    swift_unknownObjectRelease();
  }

  return sub_100003630(&aBlock);
}

uint64_t sub_100002568()
{
  v0 = type metadata accessor for Log();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR___BaseRemoteViewController_connection);
    *(result + OBJC_IVAR___BaseRemoteViewController_connection) = 0;

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v8 = *(type metadata accessor for LogInterpolation() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_10000A3B0;
    v15[3] = type metadata accessor for BaseRemoteViewController();
    v15[0] = v6;
    v11 = v6;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v15);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1000027AC()
{
  v0 = type metadata accessor for Log();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR___BaseRemoteViewController_connection;
    [*(result + OBJC_IVAR___BaseRemoteViewController_connection) invalidate];
    v8 = *&v6[v7];
    *&v6[v7] = 0;

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v9 = *(type metadata accessor for LogInterpolation() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_10000A3B0;
    v16[3] = type metadata accessor for BaseRemoteViewController();
    v16[0] = v6;
    v12 = v6;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v16);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_100002A00(uint64_t a1)
{
  v2 = type metadata accessor for Log();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v19[0] = a1;
    v9 = *(result + OBJC_IVAR___BaseRemoteViewController_connection);
    *(result + OBJC_IVAR___BaseRemoteViewController_connection) = 0;

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_10000A3C0;
    v22 = type metadata accessor for BaseRemoteViewController();
    v21[0] = v8;
    v13 = v8;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v21);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v16 = v19[1];
    v17 = v20;
    v22 = v20;
    v18 = sub_10000378C(v21);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    static LogInterpolation.traceableSensitive(_:)();
    sub_1000037EC(v21);
    Log.error(_:)();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_100002CB8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100002DD8()
{
  v1 = type metadata accessor for Log();
  v2 = sub_10000386C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000389C();
  v9 = v8 - v7;
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v10 = type metadata accessor for LogInterpolation();
  sub_10000388C(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v22 = type metadata accessor for BaseRemoteViewController();
  aBlock[0] = v0;
  v15 = v0;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(aBlock);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v4 + 8))(v9, v1);
  sub_100003880();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v23 = sub_1000036B0;
  v24 = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000055D0;
  v22 = &unk_100010740;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  [v20 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
}

id sub_100003070(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___BaseRemoteViewController_connection] = 0;
  *&v3[OBJC_IVAR___BaseRemoteViewController_remoteScene] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BaseRemoteViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100003168(void *a1)
{
  *&v1[OBJC_IVAR___BaseRemoteViewController_connection] = 0;
  *&v1[OBJC_IVAR___BaseRemoteViewController_remoteScene] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseRemoteViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100003210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000032B4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseRemoteViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000339C(uint64_t a1)
{
  v2 = type metadata accessor for Log();
  v3 = sub_10000386C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000389C();
  v10 = v9 - v8;
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v11 = type metadata accessor for LogInterpolation();
  sub_10000388C(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v21[3] = type metadata accessor for BaseRemoteViewController();
  v21[0] = v1;
  v1;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v21);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v5 + 8))(v10, v2);
  v18 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  [v18 _setEndpoint:a1];
  v19 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:v18];
  sub_100002040(v19);
}

uint64_t sub_1000035E8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003630(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000367C()
{
  sub_100003880();

  return _swift_deallocObject();
}

uint64_t sub_1000036CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000036E4()
{
  swift_unknownObjectWeakDestroy();
  sub_100003880();

  return _swift_deallocObject();
}

uint64_t sub_100003730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000378C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000037EC(uint64_t a1)
{
  v2 = sub_1000035E8(&qword_1000152F8, &qword_10000A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000038E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_10000396C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window) = a1;
  return _objc_release_x1();
}

void sub_100003980(void *a1)
{
  v2 = v1;
  v4 = sub_1000035E8(&unk_100015400, qword_10000A480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for AuthenticationViewServiceAction();
  v9 = sub_10000386C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000389C();
  v16 = v15 - v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v38[0] = a1;
    v19 = [v18 configurationContext];
    if (v19 && (v20 = sub_1000054A8(v19)) != 0)
    {
      v21 = v20;
      v38[1] = static AuthenticationViewServiceAction.userInfoKey.getter();
      v38[2] = v22;
      AnyHashable.init<A>(_:)();
      sub_100003D08(v39, v21, &v40);

      sub_100005520(v39);
      if (!v41)
      {

        v23 = &qword_1000152F8;
        v24 = &qword_10000A4F0;
        v25 = &v40;
        goto LABEL_12;
      }

      if (swift_dynamicCast())
      {
        AuthenticationViewServiceAction.init(rawValue:)();
        if (sub_100004AB0(v7, 1, v8) == 1)
        {

          v23 = &unk_100015400;
          v24 = qword_10000A480;
          v25 = v7;
LABEL_12:
          sub_100004AD8(v25, v23, v24);
          return;
        }

        (*(v11 + 32))(v16, v7, v8);
        v27 = sub_100003DFC(v16);
        (*(v11 + 8))(v16, v8);
        v28 = *&v27[OBJC_IVAR___BaseRemoteViewController_remoteScene];
        *&v27[OBJC_IVAR___BaseRemoteViewController_remoteScene] = v18;
        v29 = v38[0];

        v30 = [v18 configurationContext];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 xpcEndpoint];

          if (v32)
          {
            sub_10000339C(v32);
            swift_unknownObjectRelease();
          }
        }

        v33 = [objc_allocWithZone(UIWindow) initWithWindowScene:v18];
        v34 = OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window;
        v35 = *(v2 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
        *(v2 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window) = v33;
        v36 = v33;

        if (v36)
        {
          [v36 setRootViewController:v27];
        }

        v37 = *(v2 + v34);
        [v37 makeKeyAndVisible];
      }

      else
      {
      }
    }

    else
    {
      v26 = v38[0];
    }
  }
}

double sub_100003D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000047A4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100003730(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_100003DFC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationViewServiceAction();
  v3 = sub_10000386C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000389C();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, a1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == enum case for AuthenticationViewServiceAction.signInAction(_:))
  {
    type metadata accessor for SignInController();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  if (v11 == enum case for AuthenticationViewServiceAction.verifyDevicePasscodeAction(_:))
  {
    type metadata accessor for VerifyDevicePasscodeController();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  _StringGuts.grow(_:)(27);
  v13._countAndFlagsBits = 0x203A6E6F69746341;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  _print_unlocked<A, B>(_:_:)();
  v14._object = 0x800000010000A980;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100003FC8()
{
  *&v0[OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000402C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004094(uint64_t a1)
{
  v2 = sub_1000035E8(&unk_100015400, qword_10000A480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for AuthenticationViewServiceAction();
  v7 = sub_10000386C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000389C();
  v47 = v13 - v12;
  v54[0] = &_swiftEmptySetSingleton;
  v45 = v5;
  v48 = v14;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100004700();
    sub_100004744();
    Set.Iterator.init(_cocoa:)();
    a1 = v54[1];
    v15 = v54[2];
    v17 = v54[3];
    v16 = v54[4];
    v18 = v54[5];
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(a1 + 56);

    v16 = 0;
  }

  v22 = (v17 + 64) >> 6;
  v44 = (v9 + 4);
  v43 = (v9 + 1);
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v16;
  v24 = v18;
  v25 = v16;
  if (v18)
  {
LABEL_12:
    v26 = (v24 - 1) & v24;
    v27 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v27)
    {
LABEL_39:
      sub_10000479C();
      return v54[0];
    }

    while (1)
    {
      v29 = [v27 info];
      if (v29)
      {
        break;
      }

LABEL_34:
      v16 = v25;
      v18 = v26;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = __CocoaSet.Iterator.next()();
      if (v28)
      {
        *&v50 = v28;
        sub_100004700();
        swift_dynamicCast();
        v27 = v52;
        v25 = v16;
        v26 = v18;
        if (v52)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    v30 = v29;
    if ([v29 objectForSetting:AuthenticationViewServiceBSSetting.rawValue.getter()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    v52 = v50;
    v53 = v51;
    if (*(&v51 + 1))
    {
      sub_1000035E8(&qword_100015470, &qword_10000A498);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_33:
        v37 = v27;
        v9 = v54;
        sub_1000048AC(&v52, v37);

        goto LABEL_34;
      }

      v31 = v49;
      if ([v30 objectForSetting:AuthenticationViewServiceBSSetting.rawValue.getter()])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      v52 = v50;
      v53 = v51;
      if (*(&v51 + 1))
      {
        if (swift_dynamicCast())
        {
          v42 = v31;
          v41 = v17;
          v9 = v45;
          AuthenticationViewServiceAction.init(rawValue:)();
          v32 = v48;
          if (sub_100004AB0(v9, 1, v48) == 1)
          {
            goto LABEL_41;
          }

          v33 = v47;
          (*v44)(v47, v9, v32);
          v9 = sub_100003DFC(v33);
          sub_10000339C(v42);
          v34 = *(v46 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
          if (v34)
          {
            v35 = v46;
            [v34 setRootViewController:v9];
            v36 = *(v35 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
          }

          else
          {
            v36 = 0;
          }

          v17 = v41;
          v38 = v36;
          [v38 makeKeyAndVisible];

          swift_unknownObjectRelease();
          (*v43)(v47, v48);
          goto LABEL_34;
        }

        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      swift_unknownObjectRelease();
    }

    sub_100004AD8(&v52, &qword_1000152F8, &qword_10000A4F0);
    goto LABEL_33;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      goto LABEL_39;
    }

    v24 = *(v15 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  sub_100004AD8(v9, &unk_100015400, qword_10000A480);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100004700()
{
  result = qword_1000153F0;
  if (!qword_1000153F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000153F0);
  }

  return result;
}

unint64_t sub_100004744()
{
  result = qword_1000153F8;
  if (!qword_1000153F8)
  {
    sub_100004700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000153F8);
  }

  return result;
}

unint64_t sub_1000047A4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000047E8(a1, v4);
}

unint64_t sub_1000047E8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100005574(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100005520(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000048AC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100004700();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_100004B38(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_100004CF4(v17 + 1);
        }

        v18 = v8;
        sub_100004F18(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_100004700();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        sub_100004F9C(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

uint64_t sub_100004AD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035E8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_100004B38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000035E8(&qword_100015478, &unk_10000A4A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      sub_100004700();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100004CF4(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100004CF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000035E8(&qword_100015478, &unk_10000A4A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1000050E4(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_100004F18(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100004F9C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100004CF4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100005298(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_100004700();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100005148();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1000050E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10000A440;
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

id sub_100005148()
{
  v1 = v0;
  sub_1000035E8(&qword_100015478, &unk_10000A4A0);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_100005298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000035E8(&qword_100015478, &unk_10000A4A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = NSObject._rawHashValue(seed:)(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000054A8(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000055D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_100005614()
{
  v1 = *(v0 + OBJC_IVAR___SignInController_navController);
  v2 = v1;
  return v1;
}

id sub_10000565C(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

uint64_t sub_1000056AC(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v29 = a1;
  v4 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v30 = &v29 - v6;
  v7 = type metadata accessor for Log();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v12 = type metadata accessor for LogInterpolation();
  sub_10000388C(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v33[3] = type metadata accessor for SignInController();
  v33[0] = v3;
  v17 = v3;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v33);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v8 + 8))(v11, v7);
  v20 = type metadata accessor for TaskPriority();
  v21 = v30;
  sub_100007024(v30, 1, 1, v20);
  type metadata accessor for MainActor();
  v22 = v17;
  v23 = v32;

  v24 = v29;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v27 = v31;
  v26[4] = v22;
  v26[5] = v27;
  v26[6] = v23;
  v26[7] = v24;
  sub_100007500(0, 0, v21, &unk_10000A4E8, v26);
}

uint64_t sub_1000059B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[36] = a6;
  v7[37] = a7;
  v7[34] = a4;
  v7[35] = a5;
  v8 = type metadata accessor for Log();
  v7[38] = v8;
  v9 = *(v8 - 8);
  v7[39] = v9;
  v10 = *(v9 + 64) + 15;
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = type metadata accessor for MainActor();
  v7[44] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[45] = v12;
  v7[46] = v11;

  return _swift_task_switch(sub_100005AC4, v12, v11);
}

uint64_t sub_100005AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[43];
  v16 = v14[34];
  v17 = [objc_allocWithZone(UIViewController) init];
  v18 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v17];
  v14[47] = v18;

  v19 = *(v16 + OBJC_IVAR___SignInController_navController);
  *(v16 + OBJC_IVAR___SignInController_navController) = v18;
  v20 = v18;

  v21 = static MainActor.shared.getter();
  v14[48] = v21;
  v22 = swift_task_alloc();
  v14[49] = v22;
  *(v22 + 16) = v16;
  *(v22 + 24) = v20;
  v23 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v14[50] = v24;
  *v24 = v14;
  v24[1] = sub_100005C34;

  return withCheckedContinuation<A>(isolation:function:_:)(v24, v21, &protocol witness table for MainActor, 0xD00000000000002CLL, 0x800000010000A9F0, sub_10000725C, v22, &type metadata for () + 8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100005C34()
{
  sub_1000074D8();
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *v0;
  sub_100007494();
  *v6 = v5;

  v7 = *(v1 + 368);
  v8 = *(v1 + 360);

  return _swift_task_switch(sub_100005D88, v8, v7);
}

uint64_t sub_100005D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000074E4();
  v15 = v14[34];
  v16 = sub_100005614();
  v14[51] = v16;
  if (v16)
  {
    v17 = v16;
    v18 = v14[37];
    v19 = type metadata accessor for ServiceOwnerSignInTask();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = v17;
    v23 = v18;
    v14[52] = ServiceOwnerSignInTask.init(request:presenter:)();
    v24 = *(&async function pointer to dispatch thunk of ServiceOwnerSignInTask.perform() + 1);
    v69 = &async function pointer to dispatch thunk of ServiceOwnerSignInTask.perform() + async function pointer to dispatch thunk of ServiceOwnerSignInTask.perform();
    v25 = swift_task_alloc();
    v14[53] = v25;
    *v25 = v14;
    v25[1] = sub_100006114;
    sub_1000074A4();

    return v26(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v69, a12, a13, a14);
  }

  else
  {
    v35 = v14[44];
    v36 = v14[42];
    v37 = v14[34];

    v38 = String._bridgeToObjectiveC()();
    v39 = AMSError();

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v40 = type metadata accessor for LogInterpolation();
    sub_10000388C(v40);
    v42 = *(v41 + 72);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    *(swift_allocObject() + 16) = xmmword_10000A3C0;
    v14[5] = type metadata accessor for SignInController();
    v14[2] = v37;
    v45 = v37;
    v46 = AMSLogKey();
    if (v46)
    {
      v47 = v46;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v48 = v14[42];
    v50 = v14[38];
    v49 = v14[39];
    v68 = v14[36];
    v70 = v14[47];
    v67 = v14[35];
    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v14 + 2);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v51 = v14[26];
    v52 = v14[27];
    v14[9] = v52;
    v53 = sub_10000378C(v14 + 6);
    (*(*(v52 - 8) + 16))(v53, v51, v52);
    static LogInterpolation.safe(_:)();
    sub_1000037EC((v14 + 6));
    Log.error(_:)();

    (*(v49 + 8))(v48, v50);
    v54 = v39;
    v67(0, v39);

    v56 = v14[41];
    v55 = v14[42];
    v57 = v14[40];

    v58 = v14[1];
    sub_1000074A4();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v70, a12, a13, a14);
  }
}

uint64_t sub_100006114()
{
  sub_1000074D8();
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 424);
  v5 = *v1;
  *(v3 + 432) = v6;
  *(v3 + 440) = v0;

  v7 = *(v2 + 368);
  v8 = *(v2 + 360);
  if (v0)
  {
    v9 = sub_1000066A0;
  }

  else
  {
    v9 = sub_100006254;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100006254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000074E4();
  v15 = v14[41];
  v16 = v14[34];
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v17 = type metadata accessor for LogInterpolation();
  sub_10000388C(v17);
  v19 = *(v18 + 72);
  *(sub_100007468() + 16) = xmmword_10000A3C0;
  v20 = type metadata accessor for SignInController();
  v14[18] = v16;
  v14[21] = v20;
  v21 = v16;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = v14[54];
  v25 = v14[41];
  v26 = v14[38];
  v27 = v14[39];
  sub_10000743C();

  sub_100003630(v14 + 18);
  LogInterpolation.init(stringLiteral:)();
  v14[25] = sub_1000035E8(&qword_100015518, &qword_10000A4F8);
  v14[22] = v24;

  static LogInterpolation.traceableSensitive(_:)();
  sub_1000037EC((v14 + 22));
  Log.default(_:)();

  (*(v27 + 8))(v25, a9);
  a10(v24, 0);

  v28 = v14[47];
  v29 = v14[43];
  v14[56] = static MainActor.shared.getter();
  v30 = swift_task_alloc();
  v14[57] = v30;
  *(v30 + 16) = v28;
  v31 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v32 = swift_task_alloc();
  v14[58] = v32;
  *v32 = v14;
  sub_100007404(v32);
  sub_100007424();
  sub_1000074C0();
  sub_1000074A4();

  return withCheckedContinuation<A>(isolation:function:_:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000064AC()
{
  sub_1000074D8();
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v4 = *(*v0 + 448);
  v5 = *v0;
  sub_100007494();
  *v6 = v5;

  v7 = *(v1 + 368);
  v8 = *(v1 + 360);

  return _swift_task_switch(sub_100006600, v8, v7);
}

uint64_t sub_100006600()
{
  sub_1000074D8();
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[34];

  sub_100002DD8();

  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000066A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000074E4();
  v15 = v14[40];
  v16 = v14[34];
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v17 = type metadata accessor for LogInterpolation();
  sub_10000388C(v17);
  v19 = *(v18 + 72);
  *(sub_100007468() + 16) = xmmword_10000A3C0;
  v20 = type metadata accessor for SignInController();
  v14[10] = v16;
  v14[13] = v20;
  v21 = v16;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = v14[55];
  v26 = v14[39];
  v25 = v14[40];
  v27 = v14[38];
  sub_10000743C();

  sub_100003630(v14 + 10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v28 = v14[29];
  v29 = v14[30];
  v14[17] = v29;
  v30 = sub_10000378C(v14 + 14);
  (*(*(v29 - 8) + 16))(v30, v28, v29);
  static LogInterpolation.traceableSensitive(_:)();
  sub_1000037EC((v14 + 14));
  Log.error(_:)();

  (*(v26 + 8))(v25, a9);
  swift_errorRetain();
  a10(0, v24);

  v31 = v14[47];
  v32 = v14[43];
  v14[56] = static MainActor.shared.getter();
  v33 = swift_task_alloc();
  v14[57] = v33;
  *(v33 + 16) = v31;
  v34 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v35 = swift_task_alloc();
  v14[58] = v35;
  *v35 = v14;
  sub_100007404(v35);
  sub_100007424();
  sub_1000074C0();
  sub_1000074A4();

  return withCheckedContinuation<A>(isolation:function:_:)(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

void sub_100006930(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000035E8(&qword_100015520, &unk_10000A500);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100007270;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000055D0;
  aBlock[3] = &unk_1000108A8;
  v13 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:1 completion:v13];
  _Block_release(v13);
}

void sub_100006AEC(uint64_t a1, void *a2)
{
  v4 = sub_1000035E8(&qword_100015520, &unk_10000A500);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100007270;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000055D0;
  aBlock[3] = &unk_100010858;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

void sub_100006D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id sub_100006E24(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___SignInController_navController] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SignInController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100006F10(void *a1)
{
  *&v1[OBJC_IVAR___SignInController_navController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SignInController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000704C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000709C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100007170;

  return sub_1000059B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100007170()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100007494();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100007288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072A0()
{
  v1 = sub_1000035E8(&qword_100015520, &unk_10000A500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007334(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_1000035E8(&qword_100015520, &unk_10000A500) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000073B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000743C()
{
  v4 = *(v0 + 288);
  v3 = *(v0 + 280);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100007468()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100007500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008DDC(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100004AB0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100009188(v12, &qword_100015510, &unk_10000A4D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100009280(v13);
    (*(v15 + 8))(v12, v13);
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

      sub_100009188(a3, &qword_100015510, &unk_10000A4D0);

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

  sub_100009188(a3, &qword_100015510, &unk_10000A4D0);
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

uint64_t sub_1000077DC(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v3 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v28 = &v27 - v5;
  v6 = type metadata accessor for Log();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v11 = type metadata accessor for LogInterpolation();
  sub_10000388C(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v31[3] = type metadata accessor for VerifyDevicePasscodeController();
  v31[0] = v2;
  v16 = v2;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v31);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v7 + 8))(v10, v6);
  v19 = type metadata accessor for TaskPriority();
  v20 = v28;
  sub_100007024(v28, 1, 1, v19);
  type metadata accessor for MainActor();
  v21 = v16;
  v22 = v30;

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v25 = v29;
  v24[4] = v21;
  v24[5] = v25;
  v24[6] = v22;
  sub_100007500(0, 0, v20, &unk_10000A558, v24);
}

uint64_t sub_100007AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for Log();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v6[23] = v10;
  *v10 = v6;
  v10[1] = sub_100007BEC;

  return sub_100008254();
}

uint64_t sub_100007BEC()
{
  sub_1000074D8();
  v2 = v0;
  sub_100009268();
  v4 = v3[23];
  v5 = v3[22];
  v6 = v3[21];
  v7 = *v1;
  sub_100007494();
  *v8 = v7;
  *(v9 + 192) = v2;

  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v12 = sub_100007EBC;
  }

  else
  {
    v12 = sub_100007D38;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100007D38()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v7 = type metadata accessor for LogInterpolation();
  sub_10000388C(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_10000A510;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v4 + 8))(v2, v3);
  v6(1, 0);
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[14];
  sub_100002DD8();

  sub_100009274();

  return v15();
}

uint64_t sub_100007EBC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[14];

  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v4 = type metadata accessor for LogInterpolation();
  sub_10000388C(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10000A3C0;
  v9 = type metadata accessor for VerifyDevicePasscodeController();
  v0[2] = v3;
  v0[5] = v9;
  v10 = v3;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = v0[24];
  v15 = v0[18];
  v14 = v0[19];
  v26 = v0[16];
  v24 = v0[17];
  v25 = v0[15];
  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v16 = v0[10];
  v17 = v0[11];
  v0[9] = v17;
  sub_10000378C(v0 + 6);
  sub_100009280(v17);
  (*(v18 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009188((v0 + 6), &qword_1000152F8, &qword_10000A4F0);
  Log.error(_:)();

  (*(v15 + 8))(v14, v24);
  swift_errorRetain();
  v25(0, v13);

  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[14];
  sub_100002DD8();

  sub_100009274();

  return v22();
}

void sub_1000081E4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_100008254()
{
  sub_10000924C();
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1000082EC, v3, v2);
}

uint64_t sub_1000082EC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_allocWithZone(LAPasscodeVerificationService) init];
  v0[7] = v3;
  v4 = static MainActor.shared.getter();
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10000841C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, v4, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x800000010000ABA0, sub_100008AB8, v5, &type metadata for Bool);
}

uint64_t sub_10000841C()
{
  sub_10000924C();
  sub_100009268();
  v3 = v2;
  v4 = v2[10];
  v5 = *v1;
  sub_100007494();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_1000085A0;
  }

  else
  {
    v10 = v3[8];
    v11 = v3[9];

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_100008530;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100008530()
{
  sub_10000924C();
  v1 = *(v0 + 32);

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000085A0()
{
  sub_1000074D8();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[11];

  return v5(0);
}

void sub_100008628(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000035E8(&qword_100015550, &qword_10000A548);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100008B50;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008864;
  aBlock[3] = &unk_100010920;
  v13 = _Block_copy(aBlock);

  [a2 startInParentVC:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1000087E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000035E8(&qword_100015550, &qword_10000A548);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000035E8(&qword_100015550, &qword_10000A548);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100008864(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_1000088F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for VerifyDevicePasscodeController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_1000089D0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VerifyDevicePasscodeController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100008A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerifyDevicePasscodeController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008AC0()
{
  v1 = sub_1000035E8(&qword_100015550, &qword_10000A548);
  sub_100009280(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008B50(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1000035E8(&qword_100015550, &qword_10000A548) - 8) + 80);

  return sub_1000087E0(a1, a2);
}

uint64_t sub_100008BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008BF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008C3C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_100009258(v8);
  *v9 = v10;
  v9[1] = sub_100008CFC;

  return sub_100007AD0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_100008CFC()
{
  sub_10000924C();
  sub_100009268();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100007494();
  *v4 = v3;

  sub_100009274();

  return v5();
}

uint64_t sub_100008DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008E4C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F44;

  return v7(a1);
}

uint64_t sub_100008F44()
{
  sub_10000924C();
  sub_100009268();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100007494();
  *v4 = v3;

  sub_100009274();

  return v5();
}

uint64_t sub_100009028()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009060()
{
  sub_1000074D8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100009258(v3);
  *v4 = v5;
  v6 = sub_10000922C(v4);

  return v7(v6);
}

uint64_t sub_1000090F4()
{
  sub_1000074D8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100009258(v3);
  *v4 = v5;
  v6 = sub_10000922C(v4);

  return v7(v6);
}

uint64_t sub_100009188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035E8(a2, a3);
  sub_100009280(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000091E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000922C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100009274()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}