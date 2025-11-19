id sub_100001B28(void *a1)
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup33SetupInProgressCardViewController_activityIndicator;
  *&v1[v3] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v4 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup33SetupInProgressCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v5 = qword_100023FC0;
  *&v1[v4] = qword_100023FC0;
  v25.receiver = v1;
  v25.super_class = type metadata accessor for SetupInProgressCardViewController();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v25, "initWithContentView:", a1);
  [v7 setDismissalType:0];
  v8 = v7;
  v9 = sub_100001E18();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v26._object = 0xEA0000000000656CLL;
  v26._countAndFlagsBits = 0x7469742064726143;
  v14._countAndFlagsBits = v9;
  v14._object = v11;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v26);

  v16 = String._bridgeToObjectiveC()();

  [v8 setTitle:v16];

  v17 = sub_100001F84();
  v19 = v18;
  v20 = [v12 mainBundle];
  v27._object = 0x8000000100014E70;
  v21._countAndFlagsBits = v17;
  v21._object = v19;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v27);

  v23 = String._bridgeToObjectiveC()();

  [v8 setSubtitle:v23];

  return v8;
}

unint64_t sub_100001E18()
{
  v1 = 0xD000000000000016;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup33SetupInProgressCardViewController_remoteSetupManager);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0xD00000000000001CLL;
    }

    if (v3 != 11)
    {
      goto LABEL_9;
    }

    return 0xD00000000000001DLL;
  }

  if (v3 == 1)
  {
    return 0xD00000000000001DLL;
  }

  if (v3 != 3)
  {
LABEL_9:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v4 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v1;
  }

  return 0xD00000000000001BLL;
}

unint64_t sub_100001F84()
{
  v1 = 0xD000000000000019;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup33SetupInProgressCardViewController_remoteSetupManager);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0xD00000000000001FLL;
    }

    if (v3 != 11)
    {
      goto LABEL_9;
    }

    return 0xD000000000000020;
  }

  if (v3 == 1)
  {
    return 0xD000000000000020;
  }

  if (v3 != 3)
  {
LABEL_9:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v4 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v1;
  }

  return 0xD00000000000001ELL;
}

id sub_1000020F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupInProgressCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000021C4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000223C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000022BC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

_DWORD *sub_100002300@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10000231C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002364@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002390(uint64_t a1)
{
  v2 = sub_100002A2C(&qword_100022DA0);
  v3 = sub_100002A2C(&qword_100022DA8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002428()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100002464()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000024B8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000252C(uint64_t *a1, uint64_t *a2)
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

void sub_1000025B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup33SetupInProgressCardViewController_activityIndicator];
  [v2 setActivityIndicatorViewStyle:101];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 contentView];
  [v3 addSubview:v2];

  v4 = [v1 contentView];
  v5 = [v4 mainContentGuide];

  v6 = objc_opt_self();
  sub_1000028AC(&qword_100022D68, "4S");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100014200;
  v8 = [v2 topAnchor];
  v9 = [v5 topAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [v2 bottomAnchor];
  v12 = [v5 bottomAnchor];
  v13 = [v11 constraintLessThanOrEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v2 centerYAnchor];
  v15 = [v5 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v7 + 48) = v16;
  v17 = [v2 centerXAnchor];
  v18 = [v5 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 56) = v19;
  sub_1000028F4(0, &qword_1000232F0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];
}

uint64_t sub_1000028AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000028F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100002978(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002A2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ObjectType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100002AB0(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CaptivePortalDetectedCardViewController();
  v3 = objc_msgSendSuper2(&v16, "initWithContentView:", a1);
  v4 = &v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle];
  v5 = *&v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle + 8];
  *v4 = 0xD00000000000001ALL;
  *(v4 + 1) = 0x8000000100014EE0;
  v6 = v3;

  v7 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase];
  v8 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase + 8];
  *v7 = 0xD00000000000001DLL;
  *(v7 + 1) = 0x8000000100014F00;

  v9 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText];
  v10 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText + 8];
  *v9 = 0xD000000000000020;
  *(v9 + 1) = 0x8000000100014F20;

  v11 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName];
  v12 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName + 8];
  *v11 = 0xD000000000000014;
  *(v11 + 1) = 0x8000000100014F50;

  v13 = [objc_opt_self() systemGrayColor];

  v14 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor];
  *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor] = v13;

  return v6;
}

id sub_100002C48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptivePortalDetectedCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002CA0()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000028AC(&qword_100022F10, &qword_1000145D0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000515C(v5);
    return 0;
  }
}

void sub_100002D60(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = [a1 userInfo];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v6)
  {
    goto LABEL_10;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = v2, v8 = sub_100011F40(v32), (v9 & 1) == 0))
  {

    sub_1000052AC(v32);
LABEL_10:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_11;
  }

  sub_10000534C(*(v6 + 56) + 32 * v8, &v33);
  sub_1000052AC(v32);

  if (!*(&v34 + 1))
  {
LABEL_11:
    sub_10000515C(&v33);
    goto LABEL_12;
  }

  sub_1000028AC(&qword_100022F18, &unk_1000145D8);
  if (swift_dynamicCast())
  {
    v10 = objc_allocWithZone(CBDevice);
    v12 = sub_1000051C4();
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100014570;
    *(v13 + 56) = sub_1000028F4(0, &qword_100022F20, CBDevice_ptr);
    *(v13 + 64) = sub_1000055F8();
    *(v13 + 32) = v12;
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v14 = v12;
    v15 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v16 = v7;
    v17 = *(v7 + OBJC_IVAR___RemoteViewController_cbDevice);
    *(v7 + OBJC_IVAR___RemoteViewController_cbDevice) = v14;

    v18 = *(v7 + OBJC_IVAR___RemoteViewController_remoteSetupManager);
    if (v18)
    {
      v19 = *(v7 + OBJC_IVAR___RemoteViewController_cbDevice);
      v20 = v19;
      v21 = v18;
      sub_10000F98C(v19);
      v16 = v7;
    }

    v22 = objc_opt_self();
    v23 = [v22 defaultCenter];
    if (qword_100022D18 != -1)
    {
      swift_once();
    }

    [v23 addObserver:v16 selector:? name:? object:?];

    v24 = [v22 defaultCenter];
    if (qword_100022D10 != -1)
    {
      swift_once();
    }

    [v24 addObserver:v16 selector:? name:? object:?];

    v25 = [v22 defaultCenter];
    if (qword_100022D20 != -1)
    {
      swift_once();
    }

    [v25 addObserver:v16 selector:? name:? object:?];

    v26 = [v22 defaultCenter];
    if (qword_100022CF8 != -1)
    {
      swift_once();
    }

    [v26 addObserver:v16 selector:? name:? object:?];

    v27 = [v22 defaultCenter];
    if (qword_100022D00 != -1)
    {
      swift_once();
    }

    [v27 addObserver:v16 selector:? name:? object:?];

    v28 = [v22 defaultCenter];
    if (qword_100022D08 != -1)
    {
      swift_once();
    }

    [v28 addObserver:v16 selector:? name:? object:?];

    v29 = [objc_allocWithZone(SFClient) init];
    v30 = *(v16 + OBJC_IVAR___RemoteViewController_sharingClient);
    *(v16 + OBJC_IVAR___RemoteViewController_sharingClient) = v29;

    if (a2)
    {
      a2();
    }

    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v31 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

LABEL_12:
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a2)
  {
    a2();
  }
}

void sub_100003614(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RemoteViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  if (qword_100022CC8 != -1)
  {
    swift_once();
  }

  if (byte_100023FB0 != 1 || !*&v2[OBJC_IVAR___RemoteViewController_cbDevice])
  {
    goto LABEL_9;
  }

  if (qword_100022CE0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023310;
  v5 = [qword_100023310 networkName];
  if (v5 && (v5, ([v4 reachabilityFlags] & 2) != 0))
  {
    v7 = *&v2[OBJC_IVAR___RemoteViewController_sharingClient];
    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      v12[4] = sub_1000054E8;
      v12[5] = v8;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100003A80;
      v12[3] = &unk_10001CB38;
      v9 = _Block_copy(v12);
      v10 = v7;
      v11 = v2;

      [v10 startProxCardTransactionWithOptions:0 completion:v9];

      _Block_release(v9);
    }
  }

  else
  {
LABEL_9:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v6 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100003B94();
  }
}

void sub_1000038E4(char a1, char *a2)
{
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  if (a1)
  {
    os_log(_:dso:log:type:_:)();

    v5 = sub_1000054F0();
    v6 = [v5 navigationController];
    v7 = *&a2[OBJC_IVAR___RemoteViewController_cardNavigationController];
    *&a2[OBJC_IVAR___RemoteViewController_cardNavigationController] = v6;

    v8 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    os_log(_:dso:log:type:_:)();

    a2[OBJC_IVAR___RemoteViewController_resetSetupFlowOnExit] = 1;
    sub_100003B94();
  }
}

uint64_t sub_100003A80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_100003B94()
{
  v1 = v0;
  v2 = sub_100002CA0();
  if (v2)
  {
    [v2 dismiss];
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + OBJC_IVAR___RemoteViewController_remoteSetupManager);
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
    v4 = *(v3 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
    if (v4)
    {
      [v4 invalidate];
    }
  }

  if (*(v0 + OBJC_IVAR___RemoteViewController_resetSetupFlowOnExit) == 1)
  {
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v5 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v6 = [objc_allocWithZone(CBController) init];
    v7 = String._bridgeToObjectiveC()();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v12[4] = sub_10000548C;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100003EC8;
    v12[3] = &unk_10001CAE8;
    v9 = _Block_copy(v12);
    v10 = v6;

    [v10 resetCBExtensionID:v7 completionHandler:v9];
    _Block_release(v9);
  }

  return [*(v1 + OBJC_IVAR___RemoteViewController_sharingClient) invalidate];
}

id sub_100003DA0(uint64_t a1, id a2)
{
  result = [a2 invalidate];
  if (a1)
  {
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    swift_errorRetain();
    v4 = static OS_os_log.default.getter();
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100014570;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100005494();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

void sub_100003EC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100003F7C()
{
  type metadata accessor for SetupCompleteCardViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *(v0 + OBJC_IVAR___RemoteViewController_cardNavigationController);
  if (v2)
  {
    v3 = v2;
    [v3 pushViewController:v1 animated:1];
  }

  *(v0 + OBJC_IVAR___RemoteViewController_resetSetupFlowOnExit) = 1;
}

uint64_t sub_10000404C(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR___RemoteViewController_resetSetupFlowOnExit] = 1;
  v3 = [a1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v21, "CancelReason");
    BYTE13(v21[0]) = 0;
    HIWORD(v21[0]) = -5120;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16))
    {
      v6 = sub_100011F40(aBlock);
      if (v7)
      {
        sub_10000534C(*(v5 + 56) + 32 * v6, v21);
        sub_1000052AC(aBlock);

        goto LABEL_7;
      }
    }

    sub_1000052AC(aBlock);
  }

  memset(v21, 0, sizeof(v21));
LABEL_7:
  sub_1000053A8(v21, aBlock);
  if (!v17)
  {
    sub_10000515C(aBlock);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_13:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    type metadata accessor for SetupFailedCardViewController();
    goto LABEL_14;
  }

  if ((v20 & 1) == 0)
  {
    type metadata accessor for SetupCancelledCardViewController();
LABEL_14:
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v14 = *&v2[OBJC_IVAR___RemoteViewController_cardNavigationController];
    if (v14)
    {
      [v14 pushViewController:v11 animated:1];
    }

    goto LABEL_16;
  }

  v8 = *&v2[OBJC_IVAR___RemoteViewController_cardNavigationController];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    v18 = sub_100005450;
    v19 = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008948;
    v17 = &unk_10001CA98;
    v10 = _Block_copy(aBlock);
    v11 = v8;
    v12 = v2;

    [v11 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
LABEL_16:
  }

  return sub_10000515C(v21);
}

uint64_t sub_1000043E4(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v18[0] = 0xD000000000000011;
    *(&v18[0] + 1) = 0x8000000100015050;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16))
    {
      v6 = sub_100011F40(v16);
      if (v7)
      {
        sub_10000534C(*(v5 + 56) + 32 * v6, v18);
        sub_1000052AC(v16);

        goto LABEL_7;
      }
    }

    sub_1000052AC(v16);
  }

  memset(v18, 0, sizeof(v18));
LABEL_7:
  sub_1000053A8(v18, v16);
  if (!v16[3])
  {
    sub_10000515C(v16);
    goto LABEL_12;
  }

  type metadata accessor for CUPasswordType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = v17;
  if (v17 == 8)
  {
    type metadata accessor for QRCodeScannerCardViewController();
LABEL_16:
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_17;
  }

  if (v17 != 1 && v17 != 2 && v17 != 3)
  {
LABEL_12:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v10 = *(v2 + OBJC_IVAR___RemoteViewController_remoteSetupManager);
    if (v10)
    {
      *(v10 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
      v11 = *(v10 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
      if (v11)
      {
        [v11 invalidate];
      }
    }

    type metadata accessor for SetupFailedCardViewController();
    goto LABEL_16;
  }

  type metadata accessor for PinEntryCardViewController();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = v15;
  if (v8 == 3)
  {
    [v15 setNumberOfDigits:8];
  }

  else if (v8 == 2)
  {
    [v15 setNumberOfDigits:6];
  }

  else
  {
    [v15 setNumberOfDigits:4];
  }

LABEL_17:
  v13 = *(v2 + OBJC_IVAR___RemoteViewController_cardNavigationController);
  if (v13)
  {
    [v13 pushViewController:v12 animated:1];
  }

  return sub_10000515C(v18);
}

void sub_100004780(void *a1)
{
  v2 = v1;
  v4 = [a1 userInfo];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_100011F40(v32), (v8 & 1) == 0))
  {

    sub_1000052AC(v32);
LABEL_15:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_16;
  }

  sub_10000534C(*(v6 + 56) + 32 * v7, &v33);
  sub_1000052AC(v32);

  if (!*(&v34 + 1))
  {
LABEL_16:
    sub_10000515C(&v33);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
LABEL_18:
    os_log(_:dso:log:type:_:)();

    v18 = *(v2 + OBJC_IVAR___RemoteViewController_remoteSetupManager);
    if (v18)
    {
      *(v18 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
      v19 = *(v18 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
      if (v19)
      {
        [v19 invalidate];
      }
    }

    type metadata accessor for SetupFailedCardViewController();
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v21 = *(v2 + OBJC_IVAR___RemoteViewController_cardNavigationController);
    if (v21)
    {
      v22 = v21;
      [v22 pushViewController:v20 animated:1];
    }

    return;
  }

  v10 = v32[0];
  v9 = v32[1];
  v11 = [a1 userInfo];
  if (!v11)
  {

    goto LABEL_15;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v14 = sub_100011F40(v32), (v15 & 1) == 0))
  {

    sub_1000052AC(v32);
    v33 = 0u;
    v34 = 0u;
    goto LABEL_26;
  }

  sub_10000534C(*(v13 + 56) + 32 * v14, &v33);
  sub_1000052AC(v32);

  if (!*(&v34 + 1))
  {
LABEL_26:

    goto LABEL_16;
  }

  type metadata accessor for CUPasswordType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v16 = v32[0];
  if (LODWORD(v32[0]) != 8 && LODWORD(v32[0]) != 2)
  {

    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    goto LABEL_18;
  }

  type metadata accessor for QRCodeDisplayCardViewController();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = &v23[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password];
  v25 = *&v23[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8];
  *v24 = v10;
  v24[1] = v9;

  if (v16 == 2)
  {
    v23[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_codeDisplayType] = 1;
  }

  v26 = *(v2 + OBJC_IVAR___RemoteViewController_cardNavigationController);
  if (v26)
  {
    [v26 pushViewController:v23 animated:1];
  }

  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);

  v27 = static OS_os_log.default.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v29 = 136315138;
    v31 = sub_10000DC70(v10, v9, v32);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Presented authentication for code %s", v29, 0xCu);
    sub_100005300(v30);
  }

  else
  {
  }
}

void sub_100004D44(void (*a1)(void))
{
  a1(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(v1 + OBJC_IVAR___RemoteViewController_cardNavigationController);
  if (v3)
  {
    v5 = v2;
    v4 = v3;
    [v4 pushViewController:v5 animated:1];

    v2 = v5;
  }
}

id sub_100004E1C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___RemoteViewController_cbDevice] = 0;
  v3[OBJC_IVAR___RemoteViewController_resetSetupFlowOnExit] = 0;
  *&v3[OBJC_IVAR___RemoteViewController_cardNavigationController] = 0;
  *&v3[OBJC_IVAR___RemoteViewController_sharingClient] = 0;
  v6 = OBJC_IVAR___RemoteViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v7 = qword_100023FC0;
  *&v3[v6] = qword_100023FC0;
  v8 = v7;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for RemoteViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100004F8C(void *a1)
{
  *&v1[OBJC_IVAR___RemoteViewController_cbDevice] = 0;
  v1[OBJC_IVAR___RemoteViewController_resetSetupFlowOnExit] = 0;
  *&v1[OBJC_IVAR___RemoteViewController_cardNavigationController] = 0;
  *&v1[OBJC_IVAR___RemoteViewController_sharingClient] = 0;
  v3 = OBJC_IVAR___RemoteViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023FC0;
  *&v1[v3] = qword_100023FC0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RemoteViewController();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100005098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000515C(uint64_t a1)
{
  v2 = sub_1000028AC(&unk_100022E90, "XU");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000051C4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100005300(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000534C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000053A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028AC(&unk_100022E90, "XU");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005418()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005494()
{
  result = qword_1000232E0;
  if (!qword_1000232E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000232E0);
  }

  return result;
}

id sub_1000054F0()
{
  if (sub_10000BB84())
  {
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v0 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    type metadata accessor for CaptivePortalDetectedCardViewController();
  }

  else
  {
    type metadata accessor for WelcomeCardViewController();
  }

  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1000055A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000055B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000055F8()
{
  result = qword_100022F28;
  if (!qword_100022F28)
  {
    sub_1000028F4(255, &qword_100022F20, CBDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022F28);
  }

  return result;
}

id sub_1000056C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

id sub_100005774(void *a1)
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup26PinEntryCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023FC0;
  *&v1[v3] = qword_100023FC0;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for PinEntryCardViewController();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v24, "initWithContentView:", a1);
  [v6 setDismissalType:1];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v25._object = 0xEA0000000000656CLL;
  v9._countAndFlagsBits = 0x445241435F4E4950;
  v9._object = 0xEE00454C5449545FLL;
  v25._countAndFlagsBits = 0x7469742064726143;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v25);

  v11 = String._bridgeToObjectiveC()();

  [v6 setTitle:v11];

  v12 = v6;
  v13 = sub_100005BCC();
  v15 = v14;
  v16 = [v7 mainBundle];
  v26._object = 0xE90000000000004ELL;
  v26._countAndFlagsBits = 0x4950207265746E45;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v26);

  v19 = String._bridgeToObjectiveC()();

  [v12 setSubtitle:v19];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100005DCC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005B30;
  aBlock[3] = &unk_10001CBB0;
  v21 = _Block_copy(aBlock);

  [v12 setTextEntryCompletionHandler:v21];
  _Block_release(v21);

  return v12;
}

void sub_100005A68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];
    if (v6)
    {
      v7 = v6;
    }

    v8 = *&v5[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26PinEntryCardViewController_remoteSetupManager];
    if (v8)
    {
      v9 = v8;
      sub_10001030C(a1, a2);
    }
  }
}

uint64_t sub_100005B30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

unint64_t sub_100005BCC()
{
  v1 = 0xD000000000000011;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup26PinEntryCardViewController_remoteSetupManager);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v3 == 1)
  {
    return 0xD000000000000018;
  }

  if (v3 != 3)
  {
LABEL_7:
    sub_100005D48();
    v4 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v1;
  }

  return 0xD000000000000016;
}

id sub_100005CE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinEntryCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100005D48()
{
  result = qword_1000232C0;
  if (!qword_1000232C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000232C0);
  }

  return result;
}

uint64_t sub_100005D94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100005DEC(void *a1)
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023FC0;
  *&v1[v3] = qword_100023FC0;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_fontSizeTitle] = 0x403C000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_fontSizeBody] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_buttonMinimumWidth] = 0x4046000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_legalTextPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_cardHeight] = 0x4080E00000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_symbolSize] = 0x4052000000000000;
  v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_textSized] = 0;
  v5 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_termsAndConditionsTextView;
  v6 = objc_allocWithZone(UITextView);
  v7 = v4;
  *&v1[v5] = [v6 init];
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView] = 0;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for TermsAndConditionsCardViewController();
  v8 = objc_msgSendSuper2(&v39, "initWithContentView:", a1);
  [v8 setDismissalType:0];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 mainBundle];
  v40._object = 0xEA0000000000656CLL;
  v40._countAndFlagsBits = 0x7469742064726143;
  v12._object = 0x8000000100015850;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v40);
  v32 = a1;

  v14 = String._bridgeToObjectiveC()();

  [v10 setTitle:v14];

  v15 = [v9 mainBundle];
  v41._object = 0x80000001000158A0;
  v16._countAndFlagsBits = 0xD000000000000022;
  v16._object = 0x8000000100015870;
  v41._countAndFlagsBits = 0xD000000000000021;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v41);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();

  v37 = sub_100007480;
  v38 = v18;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10000BFE4;
  v36 = &unk_10001CC00;
  v20 = _Block_copy(&aBlock);
  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];

  _Block_release(v20);

  v23 = [v9 mainBundle];
  v42._object = 0x8000000100015920;
  v24._countAndFlagsBits = 0xD000000000000025;
  v24._object = 0x80000001000158F0;
  v42._countAndFlagsBits = 0xD000000000000024;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v42);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = String._bridgeToObjectiveC()();

  v37 = sub_1000074A0;
  v38 = v26;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10000BFE4;
  v36 = &unk_10001CC28;
  v28 = _Block_copy(&aBlock);
  v29 = [v21 actionWithTitle:v27 style:0 handler:v28];

  _Block_release(v28);

  v30 = [v10 addAction:v29];

  return v10;
}

void sub_10000634C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() mainBundle];
    v11._object = 0xED00002E2E2E676ELL;
    v11._countAndFlagsBits = 0x697463656E6E6F43;
    v3._object = 0x8000000100015760;
    v3._countAndFlagsBits = 0xD000000000000017;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

    v5 = String._bridgeToObjectiveC()();

    [v1 showActivityIndicatorWithStatus:v5];

    v6 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_remoteSetupManager];
    if (v6)
    {
      v7 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient];
      if (v7 && v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState])
      {
        v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState] = 2;
        v8 = v6;
        [v7 activate];
      }

      else
      {
        sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
        v9 = v6;
        v10 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v8 = v1;
        v1 = v10;
      }
    }
  }
}

void sub_10000651C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000065B0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TermsAndConditionsCardViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_1000066B4();
  v1 = [v0 contentView];
  if (*&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView])
  {
    v2 = v1;
    [v1 addSubview:?];

    v3 = [v0 contentView];
    [v3 addSubview:*&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_termsAndConditionsTextView]];

    sub_100006D84();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000066B4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 configurationPreferringMulticolor];
    v5 = [v3 configurationWithColorRenderingMode:2];
    v6 = [v4 configurationByApplyingConfiguration:v5];

    v7 = [v2 imageWithConfiguration:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];
  v9 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView;
  v10 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView];
  *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView] = v8;
  v11 = v8;

  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = *&v0[v9];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_symbolSize];
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 configurationWithPointSize:v13];
  [v15 setPreferredSymbolConfiguration:v16];

  v17 = *&v0[v9];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v17 setContentMode:1];
  v18 = *&v0[v9];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemBlueColor];
  [v20 setTintColor:v21];

  v22 = sub_100006BCC(&_swiftEmptyArrayStorage, 0xD000000000000024, 0x8000000100015800);
  v24 = v23;
  v25 = [objc_opt_self() mainBundle];
  v38._object = 0x8000000100015830;
  v26._countAndFlagsBits = v22;
  v26._object = v24;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v38);

  v28 = objc_allocWithZone(NSMutableAttributedString);
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 initWithString:v29];

  v31 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v31 setHyphenationFactor:0.0];
  [v31 setAlignment:4];
  [v31 setParagraphSpacingBefore:15.0];
  v36 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v32 = v30;
  v33 = [v32 length];
  [v32 addAttribute:NSParagraphStyleAttributeName value:v31 range:{0, v33}];
  [v32 addAttribute:NSFontAttributeName value:v36 range:{0, v33}];
  v34 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_termsAndConditionsTextView];
  [v34 setAttributedText:v32];

  [v34 setDataDetectorTypes:2];
  v35 = [v19 labelColor];
  [v34 setTextColor:v35];

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 setEditable:0];
  [v34 setScrollEnabled:0];
  [v0 setDesiredHeight:540.0];
}

uint64_t sub_100006BCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v22._object = 0xE000000000000000;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v22);

  v16 = v15._countAndFlagsBits == a2 && v15._object == a3;
  if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v17 = [v11 mainBundle];
    v23._object = 0xE000000000000000;
    v18._countAndFlagsBits = a2;
    v18._object = a3;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v23)._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = String.init(format:arguments:)();
  }

  return countAndFlagsBits;
}

void sub_100006D84()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = [v2 mainContentGuide];

  sub_1000028AC(&qword_100022D68, "4S");
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100014620;
  v5 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView;
  v6 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_glyphView];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = [v6 topAnchor];
  v8 = [v3 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v4 + 32) = v9;
  v10 = *&v1[v5];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = [v10 centerXAnchor];
  v12 = [v3 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 40) = v13;
  v14 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_termsAndConditionsTextView];
  v15 = [v14 topAnchor];
  v16 = *&v1[v5];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v15;
  v18 = objc_opt_self();
  v19 = [v16 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];

  *(v4 + 48) = v20;
  v21 = [v14 bottomAnchor];
  v22 = [v3 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-15.0];

  *(v4 + 56) = v23;
  v24 = [v14 leadingAnchor];
  v25 = [v3 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:15.0];

  *(v4 + 64) = v26;
  v27 = [v14 trailingAnchor];
  v28 = [v3 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-15.0];

  *(v4 + 72) = v29;
  v30 = [v14 widthAnchor];
  v31 = [v3 widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-30.0];

  *(v4 + 80) = v32;
  sub_1000028F4(0, &qword_1000232F0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];
}

void sub_100007168()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xED00002E2E2E676ELL;
  v10._countAndFlagsBits = 0x697463656E6E6F43;
  v2._object = 0x8000000100015760;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = String._bridgeToObjectiveC()();

  [v0 showActivityIndicatorWithStatus:v4];

  v5 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup36TermsAndConditionsCardViewController_remoteSetupManager];
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient];
    if (v6 && v5[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState])
    {
      v5[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState] = 2;

      [v6 activate];
    }

    else
    {
      sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
      v7 = v5;
      v8 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

id sub_100007394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TermsAndConditionsCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007448()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000074B0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 addSuiteNamed:v1];

  qword_1000230C8 = v0;
}

void sub_100007530()
{
  if (qword_100022CC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000230C8;
  v1 = String._bridgeToObjectiveC()();
  LOBYTE(v0) = [v0 BOOLForKey:v1];

  byte_100023FB0 = v0;
}

uint64_t sub_1000075C8()
{
  result = sub_1000075E8();
  byte_100023FB1 = result;
  return result;
}

uint64_t sub_1000075E8()
{
  if (qword_100022CC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000230C8;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100007A1C(v7, v8);
    sub_10000534C(v8, v7);
    if (swift_dynamicCast())
    {
      sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100014570;
      *(v3 + 56) = &type metadata for Bool;
      *(v3 + 64) = &protocol witness table for Bool;
      *(v3 + 32) = v6;
      sub_100005D48();
      v4 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_100005300(v8);
      return v6;
    }

    sub_100005300(v8);
  }

  return 2;
}

unint64_t sub_100007798()
{
  result = sub_1000077C4();
  dword_100023FB4 = result;
  byte_100023FB8 = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1000077C4()
{
  if (qword_100022CC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000230C8;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_10000515C(v11);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v3 = v8;
  sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100014570;
  *(v4 + 56) = &type metadata for Int32;
  *(v4 + 64) = &protocol witness table for Int32;
  *(v4 + 32) = v8;
  sub_100005D48();
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = 0;
  return v3 | (v6 << 32);
}

id sub_1000079C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteSetupUserDefaults();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_OWORD *sub_100007A1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_100007A2C(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SetupFailedCardViewController();
  v3 = objc_msgSendSuper2(&v16, "initWithContentView:", a1);
  v4 = &v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle];
  v5 = *&v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle + 8];
  *v4 = 0xD000000000000011;
  *(v4 + 1) = 0x8000000100015AE0;
  v6 = v3;

  v7 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase];
  v8 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase + 8];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x8000000100015B00;

  v9 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText];
  v10 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText + 8];
  *v9 = 0xD000000000000017;
  *(v9 + 1) = 0x8000000100015B20;

  v11 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName];
  v12 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName + 8];
  *v11 = 0xD000000000000016;
  *(v11 + 1) = 0x8000000100015B40;

  v13 = [objc_opt_self() systemRedColor];

  v14 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor];
  *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor] = v13;

  return v6;
}

id sub_100007BC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupFailedCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100007C18(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SetupCancelledCardViewController();
  v3 = objc_msgSendSuper2(&v16, "initWithContentView:", a1);
  v4 = &v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle];
  v5 = *&v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle + 8];
  *v4 = 0xD000000000000014;
  *(v4 + 1) = 0x8000000100015BB0;
  v6 = v3;

  v7 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase];
  v8 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase + 8];
  *v7 = 0xD000000000000017;
  *(v7 + 1) = 0x8000000100015BD0;

  v9 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText];
  v10 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText + 8];
  *v9 = 0xD00000000000001ALL;
  *(v9 + 1) = 0x8000000100015BF0;

  v11 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName];
  v12 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName + 8];
  *v11 = 0xD000000000000020;
  *(v11 + 1) = 0x8000000100015C10;

  v13 = [objc_opt_self() systemOrangeColor];

  v14 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor];
  *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor] = v13;

  return v6;
}

id sub_100007DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupCancelledCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100008000(void *a1)
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023FC0;
  *&v1[v3] = qword_100023FC0;
  v5 = &v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle];
  *v5 = 0xD000000000000016;
  *(v5 + 1) = 0x8000000100015CE0;
  v6 = &v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase];
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x8000000100015D00;
  v7 = &v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText];
  *v7 = 0xD00000000000001CLL;
  *(v7 + 1) = 0x8000000100015D20;
  v8 = &v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName];
  strcpy(&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName], "ladybug.circle");
  v8[15] = -18;
  v9 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor;
  v10 = objc_opt_self();
  v11 = v4;
  *&v1[v9] = [v10 systemPurpleColor];
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolSize] = 0x4052000000000000;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SFSymbolCardViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithContentView:", a1);
  [v12 setDismissalType:1];

  return v12;
}

void sub_1000081D8(char a1)
{
  v44.receiver = v1;
  v44.super_class = type metadata accessor for SFSymbolCardViewController();
  objc_msgSendSuper2(&v44, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle];
  v4 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle + 8];
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v45._object = 0xEA0000000000656CLL;
  v45._countAndFlagsBits = 0x7469742064726143;
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v45);

  v9 = String._bridgeToObjectiveC()();

  [v1 setTitle:v9];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText];
  v12 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText + 8];

  v13 = [v5 mainBundle];
  v46._object = 0xEB000000006E6F74;
  v46._countAndFlagsBits = 0x74756220656E6F44;
  v14._countAndFlagsBits = v11;
  v14._object = v12;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v46);

  v16 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000074A0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BFE4;
  aBlock[3] = &unk_10001CC78;
  v17 = _Block_copy(aBlock);
  v18 = [objc_opt_self() actionWithTitle:v16 style:0 handler:v17];

  _Block_release(v17);

  v19 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName];
  v20 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName + 8];

  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() systemImageNamed:v21];

  v23 = [objc_allocWithZone(UIImageView) initWithImage:v22];
  [v23 setTintColor:*&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor]];
  v24 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolSize];
  v26 = objc_opt_self();
  v27 = [v26 configurationWithPointSize:v25];
  v28 = [v26 configurationWithColorRenderingMode:2];
  v29 = [v27 configurationByApplyingConfiguration:v28];

  [v24 setPreferredSymbolConfiguration:v29];
  [v24 setContentMode:1];

  v30 = [v1 contentView];
  sub_1000028AC(&qword_100022D68, "4S");
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000146D0;
  *(v31 + 32) = v24;
  sub_1000028F4(0, &qword_1000231A8, UIImageView_ptr);
  v32 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 setImageViews:isa];

  v34 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v35 = sub_100007E04();
  v37 = v36;
  v38 = [v5 mainBundle];
  v47._object = 0xED0000656C746974;
  v47._countAndFlagsBits = 0x6275732064726143;
  v39._countAndFlagsBits = v35;
  v39._object = v37;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v47);

  v41 = String._bridgeToObjectiveC()();

  [v34 setText:v41];

  v42 = [v1 contentView];
  [v42 setBodyLabel:v34];
}

id sub_100008804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFSymbolCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000088F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000898C(void *a1)
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup25WelcomeCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023FC0;
  *&v1[v3] = qword_100023FC0;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for WelcomeCardViewController();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v44, "initWithContentView:", a1);
  [v6 setDismissalType:1];
  v7 = objc_opt_self();
  v8 = v6;
  v42 = a1;
  v9 = [v7 mainBundle];
  v45._object = 0xEA0000000000656CLL;
  v45._countAndFlagsBits = 0x7469742064726143;
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x8000000100016140;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v45);

  v12 = String._bridgeToObjectiveC()();

  [v8 setTitle:v12];

  v13 = [v7 mainBundle];
  v46._object = 0x8000000100016180;
  v14._countAndFlagsBits = 0xD000000000000019;
  v14._object = 0x8000000100016160;
  v46._countAndFlagsBits = 0xD000000000000018;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v46);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100009EAC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BFE4;
  aBlock[3] = &unk_10001CCC8;
  v18 = _Block_copy(aBlock);
  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];

  _Block_release(v18);

  v20 = objc_opt_self();
  v21 = [v20 configurationWithPointSize:64.0];
  v22 = [v20 configurationWithColorRenderingMode:2];
  v23 = [v21 configurationByApplyingConfiguration:v22];

  v24 = v23;
  v25 = String._bridgeToObjectiveC()();
  v26 = [objc_opt_self() _systemImageNamed:v25 withConfiguration:v24];

  v27 = [objc_allocWithZone(UIImageView) initWithImage:v26];
  v28 = [v8 contentView];
  sub_1000028AC(&qword_100022D68, "4S");
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000146D0;
  *(v29 + 32) = v27;
  sub_1000028F4(0, &qword_1000231A8, UIImageView_ptr);
  v30 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 setImageViews:isa];

  v32 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v33 = sub_1000096D8();
  v35 = v34;
  v36 = [v7 mainBundle];
  v47._object = 0x80000001000161C0;
  v47._countAndFlagsBits = 0xD000000000000015;
  v37._countAndFlagsBits = v33;
  v37._object = v35;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v47);

  v39 = String._bridgeToObjectiveC()();

  [v32 setText:v39];

  v40 = [v8 contentView];
  [v40 setBodyLabel:v32];

  return v8;
}

void sub_100008F70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() mainBundle];
    v11._object = 0xED00002E2E2E676ELL;
    v11._countAndFlagsBits = 0x697463656E6E6F43;
    v3._object = 0x8000000100015760;
    v3._countAndFlagsBits = 0xD000000000000017;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

    v5 = String._bridgeToObjectiveC()();

    [v1 showActivityIndicatorWithStatus:v5];

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    aBlock[4] = sub_100009ECC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000094C4;
    aBlock[3] = &unk_10001CD18;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 prepareLocalizedStringsWithCompletionHandler:v8];
    _Block_release(v8);
  }
}

uint64_t sub_100009138(char a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  sub_1000028F4(0, &qword_1000231E0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  aBlock[4] = sub_100009F0C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008948;
  aBlock[3] = &unk_10001CD68;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100009F14();
  sub_1000028AC(&qword_1000231F0, "4U");
  sub_100009F6C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

void sub_100009430(void *a1)
{
  type metadata accessor for TermsAndConditionsCardViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 pushViewController:v4 animated:1];
  }
}

void sub_1000094C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_10000956C()
{
  v1 = 0xD000000000000015;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup25WelcomeCardViewController_remoteSetupManager);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0xD00000000000001BLL;
    }

    if (v3 != 11)
    {
      goto LABEL_9;
    }

    return 0xD00000000000001CLL;
  }

  if (v3 == 1)
  {
    return 0xD00000000000001CLL;
  }

  if (v3 != 3)
  {
LABEL_9:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v4 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v1;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_1000096D8()
{
  v0 = sub_10000956C();
  v2 = v1;
  v3 = [objc_opt_self() mainBundle];
  v20._object = 0x8000000100015E20;
  v4._countAndFlagsBits = v0;
  v4._object = v2;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v20);

  v6 = sub_100009918();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100014570;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100005494();
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    v11._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v11);
  }

  v12 = sub_100009B5C();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100014570;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100005494();
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    v17._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v17);
  }

  v18 = String.init(format:_:)();

  return v18;
}

id sub_1000098B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009918()
{
  if (qword_100022CE8 != -1)
  {
    swift_once();
  }

  if (byte_100023FB9)
  {
    v0 = "transferred network";
  }

  else
  {
    v0 = "ay without Language setting";
  }

  v1 = [objc_opt_self() mainBundle];
  v13._object = 0xE700000000000000;
  v13._countAndFlagsBits = 0x6B726F7774654ELL;
  v2._object = (v0 | 0x8000000000000000);
  v2._countAndFlagsBits = 0xD000000000000026;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v13);

  if (qword_100022CE0 != -1)
  {
    swift_once();
  }

  v4 = [qword_100023310 networkName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100014570;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100005494();
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    v10 = String.init(format:_:)();
  }

  else
  {

    static os_log_type_t.error.getter();
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  return v10;
}

uint64_t sub_100009B5C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v21._object = 0xE800000000000000;
  v21._countAndFlagsBits = 0x65676175676E614CLL;
  v7._object = 0x8000000100015E40;
  v7._countAndFlagsBits = 0xD00000000000002ALL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v21);

  v9 = [v5 mainBundle];
  v10 = [v9 preferredLocalizations];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];

    static Locale.current.getter();
    v14._countAndFlagsBits = v12;
    v14._object = v13;
    v15 = Locale.localizedString(forLanguageCode:)(v14);

    (*(v1 + 8))(v4, v0);
    if (v15.value._object)
    {
      sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100014570;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100005494();
      *(v16 + 32) = v15;
      v17 = String.init(format:_:)();

      return v17;
    }

    static os_log_type_t.error.getter();
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
  }

  else
  {

    static os_log_type_t.error.getter();
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v19 = static OS_os_log.default.getter();
  }

  os_log(_:dso:log:type:_:)();

  return 0;
}

uint64_t sub_100009E74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009ED4()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100009F14()
{
  result = qword_1000231E8;
  if (!qword_1000231E8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000231E8);
  }

  return result;
}

unint64_t sub_100009F6C()
{
  result = qword_1000231F8;
  if (!qword_1000231F8)
  {
    sub_100009FD0(&qword_1000231F0, "4U");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000231F8);
  }

  return result;
}

uint64_t sub_100009FD0(uint64_t *a1, uint64_t *a2)
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

id sub_10000A02C(void *a1)
{
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_cameraPreviewOffsetFromLabel] = 0x4039000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_cameraPreviewAspectRatioHeightMultiplier] = 0x3FE5555555555555;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_previewView] = 0;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_capturePreviewLayer] = 0;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession] = 0;
  v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_codeCaptured] = 0;
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v4 = qword_100023FC0;
  *&v1[v3] = qword_100023FC0;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for QRCodeScannerCardViewController();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v20, "initWithContentView:", a1);
  [v6 setDismissalType:1];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v21._object = 0xEA0000000000656CLL;
  v21._countAndFlagsBits = 0x7469742064726143;
  v9._object = 0x8000000100016590;
  v9._countAndFlagsBits = 0xD000000000000015;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v21);

  v11 = String._bridgeToObjectiveC()();

  [v6 setTitle:v11];

  v12 = sub_10000B5B0();
  v14 = v13;
  v15 = [v7 mainBundle];
  v22._object = 0xEF736E6F69746365;
  v22._countAndFlagsBits = 0x726964206E616353;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v22);

  v18 = String._bridgeToObjectiveC()();

  [v6 setSubtitle:v18];

  return v6;
}

void sub_10000A440(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_capturePreviewLayer;
  v4 = *(a2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_capturePreviewLayer);
  if (v4)
  {
    v5 = [v4 connection];
    if (v5)
    {
      v6 = v5;
      sub_10000B0D8();
      [v6 setVideoOrientation:v7];
    }
  }

  v8 = *(a2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_previewView);
  if (v8)
  {
    v9 = *(a2 + v3);
    if (v9)
    {
      v11 = v8;
      v10 = v9;
      [v11 bounds];
      [v10 setFrame:?];
    }
  }
}

uint64_t sub_10000A52C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000A6C4()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_remoteSetupManager];
  if (v1)
  {
    v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState] = 1;
    v2 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient];
    v3 = v1;
    if (v2)
    {
      [v2 invalidate];
    }

    v4 = [objc_opt_self() defaultCenter];
    v5 = v4;
    if (qword_100022D20 != -1)
    {
      swift_once();
      v4 = v5;
    }

    [v4 postNotificationName:qword_100023FF0 object:0 userInfo:0];
  }
}

void sub_10000A7EC()
{
  v1 = v0;
  v67 = [objc_allocWithZone(AVCaptureSession) init];
  v2 = [objc_opt_self() defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:1];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(AVCaptureDeviceInput);
    v69 = 0;
    v5 = v3;
    v6 = [v4 initWithDevice:v5 error:&v69];
    if (v6)
    {
      v7 = v6;
      v8 = v69;

      if ([v67 canAddInput:v7])
      {
        [v67 addInput:v7];
      }

      [v67 commitConfiguration];
      v9 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession];
      *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession] = v67;
      v10 = v67;

      v11 = [v1 contentView];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = [objc_allocWithZone(UIView) initWithFrame:{v13, v15, v17, v19}];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = [objc_opt_self() blackColor];
      [v20 setBackgroundColor:v21];

      v22 = [v1 contentView];
      [v22 addSubview:v20];

      v23 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_previewView];
      *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_previewView] = v20;
      v24 = v20;

      v25 = [v1 contentView];
      v26 = [v25 mainContentGuide];

      [v26 layoutFrame];
      Width = CGRectGetWidth(v71);
      v28 = [v1 contentView];
      v29 = [v28 subtitleLabel];

      if (v29)
      {
        v66 = v10;
        v68 = objc_opt_self();
        sub_1000028AC(&qword_100022D68, "4S");
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100014740;
        v31 = [v24 topAnchor];
        v65 = v29;
        v32 = [v29 bottomAnchor];
        v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:25.0];

        *(v30 + 32) = v33;
        v34 = [v24 bottomAnchor];
        v35 = [v1 contentView];
        v36 = [v35 bottomAnchor];

        v37 = [v34 constraintEqualToAnchor:v36];
        *(v30 + 40) = v37;
        v38 = [v24 centerXAnchor];
        v39 = [v26 centerXAnchor];
        v40 = [v38 constraintEqualToAnchor:v39];

        *(v30 + 48) = v40;
        v41 = [v24 centerYAnchor];
        v42 = [v26 centerYAnchor];
        v43 = [v41 constraintEqualToAnchor:v42];

        *(v30 + 56) = v43;
        v44 = [v24 widthAnchor];
        v45 = [v44 constraintEqualToConstant:Width];

        *(v30 + 64) = v45;
        v46 = [v24 heightAnchor];
        v47 = [v46 constraintEqualToConstant:Width * 0.666666667];

        *(v30 + 72) = v47;
        sub_1000028F4(0, &qword_1000232F0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v68 activateConstraints:isa];

        v49 = [v1 view];
        if (v49)
        {
          v50 = v49;
          [v49 layoutIfNeeded];

          v51 = [objc_allocWithZone(AVCaptureVideoPreviewLayer) initWithSession:v66];
          [v51 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
          v52 = [v51 connection];
          if (v52)
          {
            v53 = v52;
            sub_10000B0D8();
            [v53 setVideoOrientation:v54];
          }

          v55 = v51;
          [v24 bounds];
          [v55 setFrame:?];

          v56 = [v24 layer];
          [v56 addSublayer:v55];

          v57 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_capturePreviewLayer];
          *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_capturePreviewLayer] = v55;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
        v64 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_10000A6C4();
      }
    }

    else
    {
      v58 = v69;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.error.getter();
      sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100014570;
      swift_getErrorValue();
      Error.localizedDescription.getter();
      v60 = String.debugDescription.getter();
      v62 = v61;

      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100005494();
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
      v63 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_10000A6C4();
    }
  }

  else
  {
    sub_10000A6C4();
  }
}

void sub_10000B0D8()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      v4 = [v3 window];

      if (v4)
      {
        v5 = [v4 windowScene];

        if (v5)
        {
          [v5 interfaceOrientation];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000B1AC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_captureSession);
  if (v2)
  {
    v3 = objc_allocWithZone(AVCaptureMetadataOutput);
    v4 = v2;
    v5 = [v3 init];
    [v4 addOutput:v5];
    sub_1000028F4(0, &qword_1000231E0, OS_dispatch_queue_ptr);
    v6 = static OS_dispatch_queue.main.getter();
    [v5 setMetadataObjectsDelegate:v1 queue:v6];

    sub_1000028AC(&unk_1000232D0, "LU");
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100014570;
    *(v7 + 32) = AVMetadataObjectTypeQRCode;
    type metadata accessor for ObjectType(0);
    v8 = AVMetadataObjectTypeQRCode;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setMetadataObjectTypes:isa];
  }

  else
  {

    sub_10000A6C4();
  }
}

void sub_10000B334(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v26 = i;
    v27 = v2;
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = v8;
        v13 = [v11 stringValue];
        if (v13)
        {
          v14 = v13;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_10000B7E0(0, *(v18 + 2) + 1, 1, v18);
            *a2 = v18;
          }

          v21 = *(v18 + 2);
          v20 = *(v18 + 3);
          if (v21 >= v20 >> 1)
          {
            *a2 = sub_10000B7E0((v20 > 1), v21 + 1, 1, v18);
          }

          v22 = *a2;
          *(v22 + 2) = v21 + 1;
          v23 = &v22[16 * v21];
          *(v23 + 4) = v15;
          *(v23 + 5) = v17;
          i = v26;
          v2 = v27;
          v6 = v24;
          v5 = v25;
        }

        else
        {
        }
      }

      ++v4;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

unint64_t sub_10000B5B0()
{
  v1 = 0xD000000000000018;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_remoteSetupManager);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 0xD00000000000001ELL;
    }

    if (v3 != 11)
    {
      goto LABEL_9;
    }

    return 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    return 0xD00000000000001FLL;
  }

  if (v3 != 3)
  {
LABEL_9:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v4 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v1;
  }

  return 0xD00000000000001DLL;
}

id sub_10000B71C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeScannerCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10000B7E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028AC(&unk_100023300, &qword_100014778);
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

uint64_t sub_10000B8EC(unint64_t a1)
{
  v8 = &_swiftEmptyArrayStorage;
  sub_10000B334(a1, &v8);
  if (*(v8 + 2) && (v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_codeCaptured] & 1) == 0)
  {
    v3 = *(v8 + 4);
    v2 = *(v8 + 5);
    v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_codeCaptured] = 1;

    v4 = [v1 navigationController];

    v5 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeScannerCardViewController_remoteSetupManager];
    if (v5)
    {
      v6 = v5;
      sub_10001030C(v3, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_10000B9FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000BA54()
{
  v0 = [objc_allocWithZone(CWFInterface) init];
  result = [v0 activate];
  qword_100023310 = v0;
  return result;
}

void sub_10000BAA0()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    wapiCapability = MobileGestalt_get_wapiCapability();

    byte_100023FB9 = wapiCapability;
  }

  else
  {
    __break(1u);
  }
}

id sub_10000BB28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WifiUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BB84()
{
  if (qword_100022CE0 != -1)
  {
    swift_once();
  }

  v0 = qword_100023310;
  v1 = [qword_100023310 currentKnownNetworkProfile];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v0 networkName];
  if (!v3 || (v3, (v4 = [v0 networkName]) == 0))
  {
    sub_100005D48();
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [v2 isCaptive];
  v10 = [v2 wasCaptive];
  v11 = v9 | v10;
  sub_100005D48();

  v12 = static OS_os_log.default.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315650;
    v16 = sub_10000DC70(v6, v8, &v19);

    *(v14 + 4) = v16;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v9;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v10 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "Captive portal network check - current network: %s, Is currently captive: %{BOOL}d, was previously captive: %{BOOL}d", v14, 0x18u);
    sub_100005300(v15);
  }

  else
  {
  }

  return v11 & 1;
}

char *sub_10000BDF4(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SetupCompleteCardViewController();
  v3 = objc_msgSendSuper2(&v16, "initWithContentView:", a1);
  v4 = &v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle];
  v5 = *&v3[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardTitle + 8];
  *v4 = 0xD000000000000013;
  *(v4 + 1) = 0x8000000100016670;
  v6 = v3;

  v7 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase];
  v8 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_cardSubtitleBase + 8];
  *v7 = 0xD000000000000016;
  *(v7 + 1) = 0x8000000100016690;

  v9 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText];
  v10 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_buttonText + 8];
  *v9 = 0xD000000000000019;
  *(v9 + 1) = 0x80000001000166B0;

  v11 = &v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName];
  v12 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolName + 8];
  *v11 = 0xD000000000000010;
  *(v11 + 1) = 0x80000001000166D0;

  v13 = [objc_opt_self() systemBlueColor];

  v14 = *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor];
  *&v6[OBJC_IVAR____TtC23CheckerBoardRemoteSetup26SFSymbolCardViewController_symbolColor] = v13;

  return v6;
}

id sub_10000BF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupCompleteCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000BFE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Int sub_10000C064()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C0D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_10000C11C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_codeDisplayType] = 0;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_appClipCodeSize] = 0x4069000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_qrCodeTransformScale] = 0x4016000000000000;
  *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_maxAppClipCodePasswordLength] = 6;
  v4 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager;
  if (qword_100022CF0 != -1)
  {
    swift_once();
  }

  v5 = qword_100023FC0;
  *&v1[v4] = qword_100023FC0;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for QRCodeDisplayCardViewController();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v29, "initWithContentView:", a1);
  [v7 setDismissalType:1];
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v30._object = 0xEA0000000000656CLL;
  v30._countAndFlagsBits = 0x7469742064726143;
  v10._object = 0x8000000100016CB0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v30);

  v12 = String._bridgeToObjectiveC()();

  [v7 setTitle:v12];

  v13 = sub_10000D6D4();
  v15 = v14;
  v16 = [v8 mainBundle];
  v31._object = 0xEF736E6F69746365;
  v31._countAndFlagsBits = 0x726964206E616353;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v31);

  v19 = String._bridgeToObjectiveC()();

  [v7 setSubtitle:v19];

  if (sub_10000D83C())
  {
    v20 = [v8 mainBundle];
    v32._object = 0x8000000100016D00;
    v21._object = 0x8000000100016CD0;
    v21._countAndFlagsBits = 0xD000000000000027;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000027;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v32);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v24 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10000F734;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000BFE4;
    aBlock[3] = &unk_10001CE98;
    v25 = _Block_copy(aBlock);
    v26 = [objc_opt_self() actionWithTitle:v24 style:0 handler:v25];

    _Block_release(v25);
  }

  return v7;
}

void sub_10000C538()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
    v2 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager];
    if (v2)
    {
      v3 = v2;
      sub_100011904();
    }
  }
}

id sub_10000C634()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password);
  v7 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8);

  static String.Encoding.ascii.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;

  (*(v2 + 8))(v5, v1);
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() filterWithName:v11];

  if (v12)
  {
    v13 = v12;
    if (v10 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_10000F0FC(v8, v10);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10000F0E8(v8, v10);
    }

    v15 = String._bridgeToObjectiveC()();
    [v13 setValue:isa forKey:v15];

    swift_unknownObjectRelease();
  }

  CGAffineTransformMakeScale(&v28, 5.5, 5.5);
  if (!v12)
  {
    goto LABEL_10;
  }

  v26 = *&v28.c;
  v27 = *&v28.a;
  v25 = *&v28.tx;
  v16 = [v12 outputImage];
  if (!v16)
  {
    goto LABEL_10;
  }

  *&v28.a = v27;
  *&v28.c = v26;
  *&v28.tx = v25;
  v17 = v16;
  v18 = [v16 imageByApplyingTransform:&v28];

  if (v18)
  {
    v19 = [objc_allocWithZone(UIImage) initWithCIImage:v18];

    sub_10000F0E8(v8, v10);
    return v19;
  }

  else
  {
LABEL_10:
    v21 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager);
    if (v21)
    {
      v21[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState] = 1;
      v22 = *&v21[OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient];
      v23 = v21;
      if (v22)
      {
        [v22 invalidate];
      }

      v24 = [objc_opt_self() defaultCenter];
      if (qword_100022D20 != -1)
      {
        swift_once();
      }

      [v24 postNotificationName:qword_100023FF0 object:0 userInfo:0];

      sub_10000F0E8(v8, v10);
    }

    else
    {

      sub_10000F0E8(v8, v10);
    }

    return 0;
  }
}

id sub_10000C9EC()
{
  v1 = v0;
  swift_getObjectType();
  v56 = type metadata accessor for URL();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  v55 = sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v8 = static OS_os_log.default.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v0;
    v12 = v11;
    v57 = v11;
    *v10 = 136446210;
    v13 = _typeName(_:qualified:)();
    v54 = v7;
    v15 = v2;
    v16 = sub_10000DC70(v13, v14, &v57);
    v7 = v54;

    *(v10 + 4) = v16;
    v2 = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s generating App Clip Code.", v10, 0xCu);
    sub_100005300(v12);
    v1 = v52;
  }

  sub_10000D020();
  if (v1)
  {
    return v9;
  }

  sub_10000D478(v17, v18, v7);
  v51 = sub_10000EC18();
  v52 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22 = CGSVGDocumentCreateFromData();

  if (!v22)
  {

    static os_log_type_t.error.getter();
    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_10000DC1C();
    v9 = swift_allocError();
    *v43 = 3;
    swift_willThrow();
    sub_10000F04C(v51, v52);
LABEL_12:
    (*(v2 + 8))(v7, v56);
    return v9;
  }

  v23 = [objc_opt_self() _imageWithCGSVGDocument:v22 scale:0 orientation:1.0];
  if (!v23)
  {

    static os_log_type_t.error.getter();
    v44 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_10000DC1C();
    v9 = swift_allocError();
    *v45 = 4;
    swift_willThrow();
    sub_10000F04C(v51, v52);

    goto LABEL_12;
  }

  v50 = v23;
  v24 = v53;
  (*(v2 + 16))(v53, v7, v56);
  v25 = static OS_os_log.default.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v49 = v2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v54 = v7;
    v48 = v26;
    v29 = v28;
    v55 = swift_slowAlloc();
    v57 = v55;
    *v29 = 136446466;
    v30 = _typeName(_:qualified:)();
    v31 = v24;
    v33 = sub_10000DC70(v30, v32, &v57);
    v47 = v25;
    v34 = v33;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    sub_10000F0A0(&qword_1000233E0, &type metadata accessor for URL);
    v35 = v56;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = *(v2 + 8);
    v39(v31, v35);
    v40 = sub_10000DC70(v36, v38, &v57);

    *(v29 + 14) = v40;
    v41 = v47;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s successfully generated VisualPairingAppClipCode with URL: %{public}s.", v29, 0x16u);
    swift_arrayDestroy();

    v7 = v54;
  }

  else
  {

    v39 = *(v2 + 8);
    v39(v24, v56);
  }

  v46 = v50;
  result = [v50 sbf_resizeImageToSize:{200.0, 200.0}];
  if (result)
  {
    v9 = result;
    v39(v7, v56);

    sub_10000F04C(v51, v52);

    return v9;
  }

  __break(1u);
  return result;
}

void sub_10000D020()
{
  v1 = (v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password);
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password);
  v3 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8);
  v4 = HIBYTE(v3) & 0xF;
  v5 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_66;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8);

    v9 = sub_10000E218(v2, v3, 10);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
LABEL_63:
      if (v9 <= 999999)
      {
        sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100014570;
        *(v27 + 56) = &type metadata for Int;
        *(v27 + 64) = &protocol witness table for Int;
        *(v27 + 32) = v9;
        String.init(format:_:)();
        return;
      }
    }

LABEL_66:
    static os_log_type_t.error.getter();
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100014570;
    v33 = *v1;
    v32 = v1[1];
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100005494();
    *(v31 + 32) = v33;
    *(v31 + 40) = v32;
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);

    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_10000DC1C();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    return;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password);
      v37 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8);
      v7 = _StringObject.sharedUTF8.getter();
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (v7)
          {
            v16 = v7 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        v9 = 0;
        if (v7)
        {
          while (1)
          {
            v22 = *v7 - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v4) = 1;
LABEL_62:
      v39 = v4;
      if ((v4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_66;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v38[0] = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password);
  v38[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v9 = 0;
        v24 = v38;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v9 = 0;
        v13 = v38 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v19 = v38 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_10000D478@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*(sub_1000028AC(&qword_1000233C8, &unk_100014888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v16 - v7;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v16 = 0xD000000000000021;
  v17 = 0x8000000100016960;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  URL.init(string:)();

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v8, v10);
  }

  sub_10000DBB4(v8);
  static os_log_type_t.error.getter();
  sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100014570;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100005494();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);

  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000DC1C();
  swift_allocError();
  *v14 = 1;
  return swift_willThrow();
}

unint64_t sub_10000D6D4()
{
  v1 = 0xD000000000000018;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v3 == 1)
  {
    return 0xD00000000000001FLL;
  }

  if (v3 == 11)
  {
    return 0xD000000000000020;
  }

  if (v3 != 3)
  {
LABEL_9:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v4 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return v1;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_10000D83C()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass);
  if (v2 == 1 || v2 == 3)
  {
    return 1;
  }

  if (v2 != 11)
  {
LABEL_10:
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v5 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  return 0;
}

id sub_10000D93C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeDisplayCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CodeDisplayType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CodeDisplayType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000DB60()
{
  result = qword_1000233C0;
  if (!qword_1000233C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000233C0);
  }

  return result;
}

uint64_t sub_10000DBB4(uint64_t a1)
{
  v2 = sub_1000028AC(&qword_1000233C8, &unk_100014888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000DC1C()
{
  result = qword_1000233D0;
  if (!qword_1000233D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000233D0);
  }

  return result;
}

uint64_t sub_10000DC70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000DD3C(v11, 0, 0, 1, a1, a2);
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
    sub_10000534C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005300(v11);
  return v7;
}

unint64_t sub_10000DD3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000DE48(a5, a6);
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

char *sub_10000DE48(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000DE94(a1, a2);
  sub_10000DFC4(&off_10001C950);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000DE94(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000E0B0(v5, 0);
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
        v7 = sub_10000E0B0(v10, 0);
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

uint64_t sub_10000DFC4(uint64_t result)
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

  result = sub_10000E124(result, v12, 1, v3);
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

void *sub_10000E0B0(uint64_t a1, uint64_t a2)
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

  sub_1000028AC(&qword_1000233D8, &qword_100014898);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E124(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028AC(&qword_1000233D8, &qword_100014898);
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

unsigned __int8 *sub_10000E218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000E7A4();
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

uint64_t sub_10000E7A4()
{
  v0 = String.subscript.getter();
  v4 = sub_10000E824(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000E824(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000E0B0(v9, 0);
  v12 = sub_10000E97C(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_10000E97C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10000EB9C(v12, a6, a7);
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

    result = sub_10000EB9C(v12, a6, a7);
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

uint64_t sub_10000EB9C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

uint64_t sub_10000EC18()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  v2 = sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v4 = v1 != 2;

  sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000147D0;
  v6 = URL.absoluteString.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100005494();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 64) = v9;
  *(v5 + 72) = v4;
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  URL._bridgeToObjectiveC()(ACCBakerDataVersion2);
  v12 = v11;
  v13 = ACCBakerCreate();

  if (v13)
  {
    v14 = v13;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100014570;
    v16 = URL.absoluteString.getter();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v9;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_10000DC1C();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10000F04C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F0A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F0E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F04C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F0FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F110(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F110(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10000F164()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_codeDisplayType])
  {
    v2 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password];
    v3 = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8];
    v4 = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_password + 8];

    v5 = String.count.getter();

    if (v5 > 6)
    {
      sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
      v6 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      isa = *&v1[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager];
      if (!isa)
      {
        return;
      }

      *(isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
      v8 = *(isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
      if (v8)
      {
LABEL_5:
        v9 = isa;
        [v8 invalidate];
LABEL_15:
        v29 = [objc_opt_self() defaultCenter];
        v31 = v29;
        if (qword_100022D20 != -1)
        {
          swift_once();
          v29 = v31;
        }

        [v29 postNotificationName:qword_100023FF0 object:0 userInfo:{0, v31}];
        goto LABEL_18;
      }

LABEL_14:
      v28 = isa;
      goto LABEL_15;
    }

    v10 = sub_10000C9EC();
  }

  else
  {
    v10 = sub_10000C634();
    if (!v10)
    {
      sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
      v11 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      isa = *&v0[OBJC_IVAR____TtC23CheckerBoardRemoteSetup31QRCodeDisplayCardViewController_remoteSetupManager];
      if (!isa)
      {
        return;
      }

      *(isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
      v8 = *(isa + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  v30 = v10;
  v12 = [objc_allocWithZone(UIImageView) initWithImage:v10];
  [v12 setUserInteractionEnabled:0];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setContentMode:1];
  v14 = [v1 contentView];
  [v14 addSubview:v13];

  v15 = [v1 contentView];
  v16 = [v15 mainContentGuide];

  v17 = objc_opt_self();
  sub_1000028AC(&qword_100022D68, "4S");
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000147E0;
  v19 = [v13 topAnchor];
  v20 = [v16 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

  *(v18 + 32) = v21;
  v22 = [v13 bottomAnchor];
  v23 = [v16 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v18 + 40) = v24;
  v25 = [v13 centerXAnchor];

  v26 = [v16 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v18 + 48) = v27;
  sub_1000028F4(0, &qword_1000232F0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

LABEL_18:
}

uint64_t sub_10000F6FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for QRCodeDisplayCardViewController.VisualPairingAppClipCodeGenerationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QRCodeDisplayCardViewController.VisualPairingAppClipCodeGenerationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F8B0()
{
  result = qword_1000233F0;
  if (!qword_1000233F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000233F0);
  }

  return result;
}

unint64_t sub_10000F904@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100012D2C(*a1);
  *a2 = result;
  return result;
}

void *sub_10000F93C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_10000F95C()
{
  result = [objc_allocWithZone(type metadata accessor for RemoteSetupClientManager()) init];
  qword_100023FC0 = result;
  return result;
}

void sub_10000F98C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v4 = swift_allocObject();
    v60 = xmmword_100014570;
    *(v4 + 16) = xmmword_100014570;
    v5 = a1;
    v6 = [v5 identifier];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100005494();
    v14 = 0x29656E6F6E28;
    if (v10)
    {
      v14 = v8;
    }

    v15 = 0xE600000000000000;
    if (v10)
    {
      v15 = v10;
    }

    *(v4 + 32) = v14;
    *(v4 + 40) = v15;
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v17 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice);
    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice) = a1;
    v18 = v5;

    v19 = [v18 nearbyActionDeviceClass];
    v20 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass;
    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDeviceClass) = v19;
    if (qword_100022CD0 != -1)
    {
      swift_once();
    }

    LOBYTE(v21) = byte_100023FB1;
    if (byte_100023FB1 == 2)
    {
      v22 = *(v2 + v20);
      if (v22 > 0xB)
      {
        LOBYTE(v21) = 0;
      }

      else
      {
        v21 = 0x80Au >> v22;
      }
    }

    v23 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_clientSideAuth;
    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_clientSideAuth) = v21 & 1;
    v24 = swift_allocObject();
    v25 = *(v2 + v20);
    *(v24 + 16) = xmmword_100014570;
    *(v24 + 56) = &type metadata for Int32;
    *(v24 + 64) = &protocol witness table for Int32;
    *(v24 + 32) = v25;
    v26 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v27 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_reverseFlowForDevices;
    swift_beginAccess();
    v28 = *(v2 + v27);

    v29 = [v18 identifier];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_1000101B8(v31, v33, v28);

    if (v34)
    {
      v35 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      *(v2 + v23) = (*(v2 + v23) & 1) == 0;
    }

    v36 = [objc_allocWithZone(SKSetupFieldDiagnosticsClient) init];
    v37 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient) = v36;
    v38 = v36;

    if (v38)
    {
      if (*(v2 + v23) == 1)
      {
        if (qword_100022CD8 != -1)
        {
          swift_once();
        }

        if ((byte_100023FB8 & 1) == 0 && ((v39 = dword_100023FB4, dword_100023FB4 == 8) || dword_100023FB4 == 2))
        {
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_100014570;
          *(v46 + 56) = &type metadata for Int32;
          *(v46 + 64) = &protocol witness table for Int32;
          *(v46 + 32) = v39;
          v47 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          [v38 setPasswordType:v39];
        }

        else
        {
          v40 = *(v2 + v20);
          v41 = v38;
          if (v40 == 11)
          {
            v43 = 2;
          }

          else if (v40 == 6)
          {
            static os_log_type_t.fault.getter();
            v42 = static OS_os_log.default.getter();
            os_log(_:dso:log:type:_:)();

            v43 = 0;
          }

          else
          {
            v43 = 8;
          }

          [v41 setPasswordType:{v43, 1, 2}];
          v48 = swift_allocObject();
          *(v48 + 16) = v60;
          v49 = [v41 passwordType];

          *(v48 + 56) = &type metadata for Int32;
          *(v48 + 64) = &protocol witness table for Int32;
          *(v48 + 32) = v49;
          v50 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();
        }
      }

      v51 = *(v2 + v23);
      v52 = v38;
      [v52 setReversePairing:v51];
      v53 = [objc_allocWithZone(SKDevice) init];
      v54 = [v18 identifier];
      [v53 setIdentifier:v54];

      [v52 setPeerDevice:v53];
      *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
      v55 = swift_allocObject();
      *(v55 + 16) = v60;
      v56 = [v52 reversePairing];
      *(v55 + 56) = &type metadata for Bool;
      *(v55 + 64) = &protocol witness table for Bool;
      *(v55 + 32) = v56;
      v57 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100012F10;
      aBlock[5] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000BFE4;
      aBlock[3] = &unk_10001D008;
      v59 = _Block_copy(aBlock);

      [v52 setEventHandler:v59];
      _Block_release(v59);
    }

    else
    {
      v44 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 0;
    v11 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient;
    v12 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
    if (v12)
    {
      [v12 invalidate];
      v13 = *(v2 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v2 + v11) = 0;

    v45 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice);
    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice) = 0;
  }
}

uint64_t sub_1000101B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1000102B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000104E8(a1);
  }
}

void sub_10001030C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
  if (v3)
  {
    v4 = v2;
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100014570;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100005494();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v8 = v3;

    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v4 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 2;
    v10 = objc_allocWithZone(SKAuthenticationResponseEvent);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithPassword:v11];

    [v8 postEvent:v12];
  }

  else
  {
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void sub_1000104E8(void *a1)
{
  v2 = v1;
  sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100014570;
  *(v4 + 56) = sub_1000028F4(0, &qword_100023478, SKEvent_ptr);
  *(v4 + 64) = sub_100012E70();
  *(v4 + 32) = a1;
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v5 = a1;
  v6 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v7 = [v5 eventType];
  if (v7 > 119)
  {
    if (v7 > 199)
    {
      if ((v7 - 200) < 3)
      {
        v10 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
        v11 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
        if (v11)
        {
          [v11 invalidate];
        }

        goto LABEL_52;
      }

      if (v7 == 300)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v7 != 120)
    {
      if (v7 == 130)
      {
        goto LABEL_46;
      }

      if (v7 == 140)
      {
        v14 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v15 = [objc_opt_self() defaultCenter];
        v25 = v15;
        if (qword_100022D08 != -1)
        {
          swift_once();
          v15 = v25;
        }

        v16 = qword_100023FD8;
        goto LABEL_55;
      }

      goto LABEL_47;
    }

    sub_100010C44(v5);
  }

  else
  {
    if (v7 <= 39)
    {
      if (v7 == 10)
      {
        v19 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 2;
        return;
      }

      if (v7 != 20)
      {
        if (v7 == 30)
        {
          v12 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          if ((*(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) & 0xFE) != 2)
          {
            return;
          }

          *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
          v13 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
          if (v13)
          {
            [v13 invalidate];
          }

          goto LABEL_52;
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (v7 <= 99)
      {
        if (v7 != 40)
        {
          if (v7 == 41)
          {
            v8 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v9 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState);
            if (v9 == 1)
            {
              return;
            }

            if (v9 == 3)
            {

              sub_100011760(0);
              return;
            }

            *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
            v24 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
            if (v24)
            {
              [v24 invalidate];
            }

            goto LABEL_52;
          }

          goto LABEL_47;
        }

LABEL_46:
        v26 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
LABEL_56:

        return;
      }

      if (v7 != 100)
      {
        if (v7 == 110)
        {
          v17 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          sub_100011058(v5);
          return;
        }

LABEL_47:
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100014570;
        v21 = [v5 eventType];
        *(v20 + 56) = &type metadata for Int32;
        *(v20 + 64) = &protocol witness table for Int32;
        *(v20 + 32) = v21;
        v22 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
        v23 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
        if (v23)
        {
          [v23 invalidate];
        }

LABEL_52:
        v15 = [objc_opt_self() defaultCenter];
        v25 = v15;
        if (qword_100022D20 != -1)
        {
          swift_once();
          v15 = v25;
        }

        v16 = qword_100023FF0;
LABEL_55:
        [v15 postNotificationName:v16 object:0 userInfo:{0, v25}];
        goto LABEL_56;
      }

      v18 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      if (*(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) != 3)
      {
        return;
      }
    }

    sub_100011470();
  }
}

void sub_100010C44(void *a1)
{
  v2 = v1;
  if ((*(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_clientSideAuth) & 1) != 0 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100014570;
    *(v16 + 56) = sub_1000028F4(0, &qword_100023478, SKEvent_ptr);
    *(v16 + 64) = sub_100012E70();
    *(v16 + 32) = a1;
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v17 = a1;
    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
    v19 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
    if (v19)
    {
      [v19 invalidate];
    }

    v20 = [objc_opt_self() defaultCenter];
    v21 = v20;
    if (qword_100022D20 != -1)
    {
      swift_once();
      v20 = v21;
    }

    [v20 postNotificationName:qword_100023FF0 object:0 userInfo:{0, v21}];
  }

  else
  {
    v5 = v4;
    sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100014570;
    v7 = a1;
    v8 = [v5 passwordType];
    *(v6 + 56) = &type metadata for Int32;
    *(v6 + 64) = &protocol witness table for Int32;
    *(v6 + 32) = v8;
    sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 3;
    v10 = [objc_opt_self() defaultCenter];
    if (qword_100022CF8 != -1)
    {
      swift_once();
    }

    v11 = qword_100023FC8;
    sub_1000028AC(&qword_100023460, &qword_100014A50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100014570;
    AnyHashable.init<A>(_:)();
    v13 = [v5 passwordType];
    type metadata accessor for CUPasswordType(0);
    *(inited + 96) = v14;
    *(inited + 72) = v13;
    sub_100012C10(inited);
    swift_setDeallocating();
    sub_100012D3C(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 postNotificationName:v11 object:0 userInfo:isa];
  }
}

void sub_100011058(void *a1)
{
  v2 = v1;
  if (*(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_clientSideAuth) == 1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = [v5 password];
      if (v7)
      {
        v8 = v7;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 3;
        v12 = [objc_opt_self() defaultCenter];
        if (qword_100022D00 != -1)
        {
          swift_once();
        }

        v13 = qword_100023FD0;
        sub_1000028AC(&qword_100023460, &qword_100014A50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000147D0;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v9;
        *(inited + 80) = v11;
        AnyHashable.init<A>(_:)();
        v15 = [v5 passwordType];
        type metadata accessor for CUPasswordType(0);
        *(inited + 168) = v16;
        *(inited + 144) = v15;
        sub_100012C10(inited);
        swift_setDeallocating();
        sub_1000028AC(&qword_100023468, &qword_100014A58);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v12 postNotificationName:v13 object:0 userInfo:isa];

        return;
      }
    }
  }

  sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100014570;
  *(v18 + 56) = sub_1000028F4(0, &qword_100023478, SKEvent_ptr);
  *(v18 + 64) = sub_100012E70();
  *(v18 + 32) = a1;
  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v19 = a1;
  v20 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
  v21 = *(v2 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
  if (v21)
  {
    [v21 invalidate];
  }

  v22 = [objc_opt_self() defaultCenter];
  v23 = v22;
  if (qword_100022D20 != -1)
  {
    swift_once();
    v22 = v23;
  }

  [v22 postNotificationName:qword_100023FF0 object:0 userInfo:0];
}

void sub_100011470()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_reverseFlowForDevices;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = *(v1 + v3);

    v6 = v2;
    v7 = [v6 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1000101B8(v9, v11, v4);

    if (v12)
    {
      sub_1000028AC(&unk_100022EA0, &unk_1000145C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100014570;
      v14 = [v6 identifier];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_100005494();
      if (v18)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      v20 = 0xE000000000000000;
      if (v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

      *(v13 + 32) = v19;
      *(v13 + 40) = v21;
      sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
      v22 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v23 = [v6 identifier];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v26;
      }

      else
      {
        v25 = 0;
      }

      swift_beginAccess();
      sub_10001204C(v25, v20);
      swift_endAccess();
    }

    else
    {
    }
  }

  *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
  v27 = *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
  if (v27)
  {
    [v27 invalidate];
  }

  v28 = [objc_opt_self() defaultCenter];
  if (qword_100022D18 != -1)
  {
    swift_once();
  }

  [v28 postNotificationName:qword_100023FE8 object:0 userInfo:0];
}

void sub_100011760(char a1)
{
  *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
  v3 = *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = [objc_opt_self() defaultCenter];
  if (qword_100022D10 != -1)
  {
    swift_once();
  }

  v5 = qword_100023FE0;
  sub_1000028AC(&qword_100023460, &qword_100014A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014570;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for RemoteSetupCancelReason;
  *(inited + 72) = a1 & 1;
  sub_100012C10(inited);
  swift_setDeallocating();
  sub_100012D3C(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 postNotificationName:v5 object:0 userInfo:isa];
}

void sub_100011904()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_remoteDevice);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 identifier];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      swift_beginAccess();
      sub_100012940(&v14, v6, v8);
      swift_endAccess();

      sub_100011760(1);

      return;
    }
  }

  sub_1000028F4(0, &qword_1000232C0, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupState) = 1;
  v10 = *(v1 + OBJC_IVAR____TtC23CheckerBoardRemoteSetup24RemoteSetupClientManager_setupClient);
  if (v10)
  {
    [v10 invalidate];
  }

  v11 = [objc_opt_self() defaultCenter];
  v12 = v11;
  if (qword_100022D20 != -1)
  {
    swift_once();
    v11 = v12;
  }

  [v11 postNotificationName:qword_100023FF0 object:0 userInfo:{0, v12}];
}

id sub_100011B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteSetupClientManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for RemoteSetupState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteSetupState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100011D9C()
{
  result = qword_100023450;
  if (!qword_100023450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023450);
  }

  return result;
}

NSString sub_100011DF0()
{
  result = String._bridgeToObjectiveC()();
  qword_100023FC8 = result;
  return result;
}

NSString sub_100011E28()
{
  result = String._bridgeToObjectiveC()();
  qword_100023FD0 = result;
  return result;
}

NSString sub_100011E60()
{
  result = String._bridgeToObjectiveC()();
  qword_100023FD8 = result;
  return result;
}

NSString sub_100011E98()
{
  result = String._bridgeToObjectiveC()();
  qword_100023FE0 = result;
  return result;
}

NSString sub_100011ED0()
{
  result = String._bridgeToObjectiveC()();
  qword_100023FE8 = result;
  return result;
}

NSString sub_100011F08()
{
  result = String._bridgeToObjectiveC()();
  qword_100023FF0 = result;
  return result;
}

unint64_t sub_100011F40(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100011F84(a1, v4);
}

unint64_t sub_100011F84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012E14(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000052AC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001204C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100012188();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10001277C(v9);
  *v2 = v20;
  return v13;
}

void *sub_100012188()
{
  v1 = v0;
  sub_1000028AC(&qword_100023458, &qword_100014A48);
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

uint64_t sub_1000122E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000028AC(&qword_100023458, &qword_100014A48);
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

uint64_t sub_10001251C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000028AC(&qword_100023458, &qword_100014A48);
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

unint64_t sub_10001277C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100012940(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100012A90(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100012A90(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10001251C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100012188();
      goto LABEL_16;
    }

    sub_1000122E4(v8 + 1);
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

unint64_t sub_100012C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000028AC(&qword_100023470, &unk_100014A60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012DA4(v4, v13);
      result = sub_100011F40(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007A1C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100012D2C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_100012D3C(uint64_t a1)
{
  v2 = sub_1000028AC(&qword_100023468, &qword_100014A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028AC(&qword_100023468, &qword_100014A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100012E70()
{
  result = qword_100023480;
  if (!qword_100023480)
  {
    sub_1000028F4(255, &qword_100023478, SKEvent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023480);
  }

  return result;
}

uint64_t sub_100012ED8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012F18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012F44()
{
  result = qword_100023488;
  if (!qword_100023488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023488);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  v1 = Locale.localizedString(forLanguageCode:)(forLanguageCode._countAndFlagsBits, forLanguageCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}