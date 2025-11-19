id sub_100001D50()
{
  if (qword_100047CE8[0] != -1)
  {
    sub_10002A868();
  }

  v1 = qword_100047CE0;

  return v1;
}

void sub_100001D94(id a1)
{
  qword_100047CE0 = os_log_create("com.apple.sharinguiservice", "ShareSheetUI");

  _objc_release_x1();
}

void sub_100001EDC()
{
  v0 = share_sheet_log();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetServiceLoad", "", v1, 2u);
  }
}

void sub_100001F54()
{
  v0 = +[UIApplication sharedApplication];
  [v0 _performBlockAfterCATransactionCommits:&stru_10003D518];
}

void sub_100001FA4(id a1)
{
  v1 = share_sheet_log();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetServiceLoad", "", v2, 2u);
  }
}

id sub_1000021F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of ShareIntent._shareTransport()
{
  v21 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000025C4(&qword_100046540, &unk_10002D2A0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000025C4(&qword_100046550, &qword_10002D2B0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v15 + 56))(v13, 1, 1, v14);
  v17 = type metadata accessor for IntentDialog();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000260C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_1000025C4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000260C()
{
  result = qword_100046558;
  if (!qword_100046558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046558);
  }

  return result;
}

uint64_t variable initialization expression of ShareIntent._recipients()
{
  v22 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IntentPerson.ParameterMode();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000025C4(&qword_100046540, &unk_10002D2A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_1000025C4(&qword_100046560, &qword_10002D2B8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v17 + 56))(v15, 1, 1, v16);
  v19 = type metadata accessor for IntentDialog();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  (*(v4 + 104))(v7, enum case for IntentPerson.ParameterMode.contact(_:), v21);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v22);
  return IntentParameter<>.init(title:description:mode:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ShareIntent._mode()
{
  v21 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000025C4(&qword_100046540, &unk_10002D2A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000025C4(&qword_100046568, &qword_10002D2C0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 2;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100002C98();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_100002C98()
{
  result = qword_100046570;
  if (!qword_100046570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046570);
  }

  return result;
}

uint64_t variable initialization expression of ShareIntent._content()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000025C4(&qword_100046540, &unk_10002D2A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - v7;
  v9 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v21 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_1000025C4(&qword_100046578, &qword_10002D2C8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v14 + 56))(v12, 1, 1, v13);
  v21[1] = 0;
  v16 = type metadata accessor for IntentDialog();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_1000025C4(&qword_100046580, &unk_10002D2D0);
  v17 = *(type metadata accessor for UTType() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_10002D290;
  static UTType.item.getter();
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t variable initialization expression of ShareTransportQuery._shareIntent()
{
  sub_1000025C4(&qword_100046588, &qword_10002E4F0);
  swift_getKeyPath();
  return IntentParameterDependency.__allocating_init<A, B>(_:)();
}

uint64_t sub_1000030BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

BOOL sub_100003110(void *a1, uint64_t *a2)
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

uint64_t sub_100003168(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000031E0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003260@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000032B4(uint64_t a1)
{
  v2 = sub_100003400(&qword_100046730, type metadata accessor for ActivityType);
  v3 = sub_100003400(&qword_100046738, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003490(uint64_t a1)
{
  v2 = sub_100003400(&qword_1000467C8, type metadata accessor for URLResourceKey);
  v3 = sub_100003400(&unk_1000467D0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003550()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003590()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000035E8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003660(uint64_t *a1, uint64_t *a2)
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

void sub_100003758(uint64_t a1, unint64_t *a2)
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

void sub_1000038B0(void *a1)
{
  v2 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customWindow;
  v3 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customWindow);
  *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customWindow) = a1;
  v7 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter);
    v6 = v4;
    if (v5)
    {
      v5 = [v5 mainNavigationController];
    }

    [v6 setRootViewController:v5];
  }
}

uint64_t sub_100003970()
{
  v1 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  sub_100008808();
  v6 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_100008A10(v4);
    return static SHSheetRemoteSetting.HostProcessType.defaultValue.getter();
  }

  else
  {
    type metadata accessor for SHSheetRemoteSetting.HostProcessType();
    swift_getOpaqueTypeConformance2();
    sub_10000A6D4(&unk_100046BE0, &type metadata accessor for SHSheetRemoteSetting.HostProcessType);
    dispatch thunk of UISceneKeyValueStorage.subscript.getter();
    v9 = v10[1];
    (*(v7 + 8))(v4, v6);
    return v9;
  }
}

uint64_t sub_100003B34()
{
  v1 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  sub_100008808();
  v6 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    result = sub_100008A10(v4);
  }

  else
  {
    type metadata accessor for SHSheetRemoteSetting.ClientContext();
    swift_getOpaqueTypeConformance2();
    sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
    sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
    v8 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
    result = (*(v7 + 8))(v4, v6);
    if (v8)
    {
      v10 = [v8 sessionIdentifier];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_100003D30(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_rootViewController] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_window] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customViewController] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customWindow] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_sceneSettingsObservables] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_activeCloudShareRequest] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_scene] = a1;
  v4 = a1;
  v5 = [v4 _FBSScene];
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_fbsScene] = v5;
  objc_opt_self();
  *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene] = swift_dynamicCastObjCClassUnconditional();
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v6 = v4;
  v7 = objc_msgSendSuper2(&v27, "init");
  v8 = sub_100004060();
  v9 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession;
  v10 = *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession];
  *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession] = v8;

  sub_10000438C();
  v11 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_rootViewController;
  v12 = *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_rootViewController];
  *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_rootViewController] = v13;

  v14 = sub_100004C70();
  v15 = *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_window];
  *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_window] = v14;

  v16 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController;
  v17 = *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController];
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!*&v7[v11])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*&v7[v9])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  objc_opt_self();
  v18 = [objc_allocWithZone(SHSheetRouter) initWithRootViewController:v17 mainNavigationController:swift_dynamicCastObjCClassUnconditional() supportsModalPresentations:1];
  v19 = *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router];
  *&v7[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router] = v18;
  v20 = v18;

  if (v20)
  {
    [v20 setMainViewController:*&v7[v16]];

    sub_100004F00();
    v21 = *&v7[v9];
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26[4] = sub_100009C10;
    v26[5] = v23;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_1000076A8;
    v26[3] = &unk_10003D848;
    v24 = _Block_copy(v26);
    v25 = v21;

    [v22 registerHandler:v24 forHostedWindowScene:v7];
    _Block_release(v24);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100004060()
{
  v1 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000097A8(v5, qword_1000493C0);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *&v6[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_scene];
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "create new share sheet session for scene:%@", v9, 0xCu);
    sub_100009C18(v10, &qword_1000475A0, &unk_10002D720);
  }

  v13 = *&v6[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene];
  sub_100008808();
  v14 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    result = sub_100008A10(v4);
  }

  else
  {
    type metadata accessor for SHSheetRemoteSetting.ClientContext();
    swift_getOpaqueTypeConformance2();
    sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
    sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
    v16 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
    result = (*(v15 + 8))(v4, v14);
    if (v16)
    {
      v18 = objc_allocWithZone(type metadata accessor for ShareSheetUISession());
      v19 = sub_10001B504(v16);
      *&v19[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate + 8] = &off_10003D748;
      swift_unknownObjectWeakAssign();
      return v19;
    }
  }

  __break(1u);
  return result;
}

void sub_10000438C()
{
  v1 = v0;
  v2 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v54 = *(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  sub_100008808();
  v15 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v16 = *(v15 - 8);
  v53 = *(v16 + 48);
  if (v53(v14, 1, v15) == 1)
  {
    sub_100008A10(v14);
    goto LABEL_18;
  }

  v48 = v9;
  v49 = v6;
  type metadata accessor for SHSheetRemoteSetting.ClientContext();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
  sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
  v51 = OpaqueTypeConformance2;
  v18 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
  v19 = *(v16 + 8);
  v52 = v16 + 8;
  v50 = v19;
  v19(v14, v15);
  if (!v18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = [objc_allocWithZone(UIActivityContentContext) init];
  [v20 setIsRemote:1];
  [v20 setCanRenderPeople:1];
  [v20 setConfigureForCloudSharing:{objc_msgSend(v18, "configureForCloudSharing")}];
  [v20 setConfigureForPhotosEdit:{objc_msgSend(v18, "configureForPhotosEdit")}];
  [v20 setHideHeaderView:{objc_msgSend(v18, "hideHeaderView")}];
  [v20 setSharingExpanded:{objc_msgSend(v18, "isSharingExpanded")}];
  [v20 setSharingStyle:{objc_msgSend(v18, "sharingStyle")}];
  v21 = [v18 topContentSectionText];
  [v20 setTopContentSectionText:v21];

  v22 = [v18 applicationActivityTypes];
  [v20 setApplicationActivityTypes:v22];

  v23 = [v18 heroActionActivityTypes];
  [v20 setHeroActionActivityTypes:v23];

  [v20 setShowHeroActionsHorizontally:{objc_msgSend(v18, "showHeroActionsHorizontally")}];
  v24 = [v18 tintColor];
  [v20 setTintColor:v24];

  [v18 hostPortraitWindowSize];
  [v20 setHostPortraitWindowSize:?];
  v25 = [*(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_fbsScene) hostAuditToken];
  if (!v25)
  {
    goto LABEL_6;
  }

  v26 = v25;
  v27 = v25;
  [v20 setHostAuditToken:v27];
  v28 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession);
  if (v28)
  {
    v29 = v28;

    v30 = *&v29[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_hostAuditToken];
    *&v29[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_hostAuditToken] = v26;

LABEL_6:
    v31 = [objc_allocWithZone(UIActivityContentViewController) initWithContext:v20];
    [v31 setDelegate:v1];
    v32 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession;
    [v31 setPresenter:*(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession)];
    sub_100008808();
    if (v53(v12, 1, v15) == 1)
    {
      sub_100008A10(v12);
      v33 = static SHSheetRemoteSetting.HostPresentationStyle.defaultValue.getter();
    }

    else
    {
      type metadata accessor for SHSheetRemoteSetting.HostPresentationStyle();
      sub_10000A6D4(&qword_100046C70, &type metadata accessor for SHSheetRemoteSetting.HostPresentationStyle);
      dispatch thunk of UISceneKeyValueStorage.subscript.getter();
      v33 = v55;
      v50(v12, v15);
    }

    v34 = v49;
    v35 = [objc_allocWithZone(NSNumber) initWithInteger:v33];
    [v31 setHostPresentationStyle:v35];

    v36 = v48;
    sub_100008808();
    if (v53(v36, 1, v15) == 1)
    {
      sub_100008A10(v36);
      v37 = static SHSheetRemoteSetting.HostSLMEnabled.defaultValue.getter();
    }

    else
    {
      type metadata accessor for SHSheetRemoteSetting.HostSLMEnabled();
      sub_10000A6D4(&qword_100046C50, &type metadata accessor for SHSheetRemoteSetting.HostSLMEnabled);
      v37 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
      v50(v36, v15);
    }

    v38 = [objc_allocWithZone(NSNumber) initWithBool:v37 & 1];
    [v31 setHostSLMEnabled:v38];

    sub_100008808();
    if (v53(v34, 1, v15) == 1)
    {
      sub_100008A10(v34);
      v39 = static SHSheetRemoteSetting.HostPresentationDirectionType.defaultValue.getter();
    }

    else
    {
      type metadata accessor for SHSheetRemoteSetting.HostPresentationDirectionType();
      sub_10000A6D4(&qword_100046C40, &type metadata accessor for SHSheetRemoteSetting.HostPresentationDirectionType);
      dispatch thunk of UISceneKeyValueStorage.subscript.getter();
      v39 = v55;
      v50(v34, v15);
    }

    v40 = [objc_allocWithZone(NSNumber) initWithInteger:v39];
    [v31 setHostPresentationDirectionType:v40];

    v41 = *(v1 + v32);
    if (v41)
    {
      v42 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
      swift_beginAccess();
      v43 = *&v41[v42];
      *&v41[v42] = v31;
      v44 = v41;
      v45 = v31;

      swift_unknownObjectRelease();
      v46 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController);
      *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController) = v31;
      v47 = v45;

      [objc_allocWithZone(SUISNavigationController) initWithRootViewController:v47];
      return;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100004C70()
{
  v1 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_scene);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = objc_allocWithZone(UIWindow);
  v8 = v5;
  v9 = [v7 initWithWindowScene:v6];
  [v9 setRootViewController:*(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_rootViewController)];
  v10 = *(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  v11 = v9;
  sub_100008808();
  v12 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    result = sub_100008A10(v4);
  }

  else
  {
    type metadata accessor for SHSheetRemoteSetting.ClientContext();
    swift_getOpaqueTypeConformance2();
    sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
    sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
    v14 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
    result = (*(v13 + 8))(v4, v12);
    if (v14)
    {
      v16 = [v14 tintColor];

      [v11 setTintColor:v16];
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004F00()
{
  v1 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - v6;
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = __chkstk_darwin(v10);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v43 = &v42 - v15;
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005B94(sub_100009C78, v19);

  v20 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_sceneSettingsObservables;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*(v0 + v20) + 16) >= *(*(v0 + v20) + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000061E8(sub_100009C80, v21);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*(v0 + v20) + 16) >= *(*(v0 + v20) + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_10000656C(sub_100006484, 0);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*(v0 + v20) + 16) >= *(*(v0 + v20) + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v48 = v18;
  sub_100008808();
  v23 = v47;
  v46 = *(v47 + 48);
  if (v46(v9, 1, v10) == 1)
  {

    sub_100008A10(v9);
  }

  else
  {
    (*(v23 + 32))(v17, v9, v10);
    type metadata accessor for SHSheetRemoteSetting.OptionGroups();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100009C88;
    *(v24 + 24) = v22;

    swift_getOpaqueTypeConformance2();
    sub_10000A6D4(&qword_100046C20, &type metadata accessor for SHSheetRemoteSetting.OptionGroups);
    dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();

    v23 = v47;

    (*(v23 + 8))(v17, v10);
  }

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v25 = *(v0 + v20);
  if (*(v25 + 16) >= *(v25 + 24) >> 1)
  {
    v39 = *(v25 + 16);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100008808();
  if (v46(v7, 1, v10) == 1)
  {

    sub_100008A10(v7);
  }

  else
  {
    v27 = v43;
    (*(v23 + 32))(v43, v7, v10);
    type metadata accessor for SHSheetRemoteSetting.CollaborationOptions();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_100009CC0;
    *(v28 + 24) = v26;

    swift_getOpaqueTypeConformance2();
    type metadata accessor for SHSheetCollaborationOptions();
    sub_10000A6D4(&qword_100046C18, &type metadata accessor for SHSheetRemoteSetting.CollaborationOptions);
    dispatch thunk of UISceneKeyValueStorage.observe<A, B>(_:handler:)();

    (*(v47 + 8))(v27, v10);
  }

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v29 = *(v0 + v20);
  if (*(v29 + 16) >= *(v29 + 24) >> 1)
  {
    v40 = *(v29 + 16);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = v45;
  sub_100008808();
  if (v46(v31, 1, v10) == 1)
  {

    sub_100008A10(v31);
  }

  else
  {
    v32 = v47;
    v33 = v44;
    (*(v47 + 32))(v44, v31, v10);
    type metadata accessor for SHSheetRemoteSetting.CloudShareRequest();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100009CF8;
    *(v34 + 24) = v30;

    swift_getOpaqueTypeConformance2();
    type metadata accessor for SHSheetCloudSharingRequest();
    sub_10000A6D4(&qword_100046C10, &type metadata accessor for SHSheetRemoteSetting.CloudShareRequest);
    dispatch thunk of UISceneKeyValueStorage.observe<A, B>(_:handler:)();

    (*(v32 + 8))(v33, v10);
  }

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*(v0 + v20) + 16) >= *(*(v0 + v20) + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100006BC4(sub_100009D00, v35);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*(v0 + v20) + 16) >= *(*(v0 + v20) + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100006F88(sub_100009D08, v36);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v37 = *(v0 + v20);
  if (*(v37 + 16) >= *(v37 + 24) >> 1)
  {
    v41 = *(v37 + 16);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_100005AB8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController);
    if (v4)
    {
      v5 = objc_allocWithZone(NSNumber);
      v6 = v4;
      v7 = [v5 initWithInteger:a1];
      [v6 setHostPresentationStyle:v7];

      v8 = *&v3[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router];
      if (v8)
      {
        [v8 layoutPresentationBlockingViewController];

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

uint64_t sub_100005B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  sub_100008808();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100008A10(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    type metadata accessor for SHSheetRemoteSetting.HostPresentationStyle();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;

    swift_getOpaqueTypeConformance2();
    sub_10000A6D4(&qword_100046C70, &type metadata accessor for SHSheetRemoteSetting.HostPresentationStyle);
    v16 = dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();

    (*(v9 + 8))(v12, v8);
    return v16;
  }
}

void sub_100005E28()
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000097A8(v0, qword_1000493C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "handle client context update", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100005F38();
  }
}

void sub_100005F38()
{
  v1 = v0;
  v2 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000097A8(v6, qword_1000493C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating remote scene session", v9, 2u);
  }

  v10 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession);
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  v12 = v10;
  sub_100008808();
  v13 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
LABEL_10:
    sub_100008A10(v5);
    goto LABEL_11;
  }

  type metadata accessor for SHSheetRemoteSetting.ClientContext();
  swift_getOpaqueTypeConformance2();
  sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
  sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
  v15 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
  (*(v14 + 8))(v5, v13);
  if (v15)
  {
    sub_10001B2C4(v15);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1000061E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  sub_100008808();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100008A10(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    type metadata accessor for SHSheetRemoteSetting.ClientContext();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;

    swift_getOpaqueTypeConformance2();
    sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
    sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
    v16 = dispatch thunk of UISceneKeyValueStorage.observe<A, B>(_:handler:)();

    (*(v9 + 8))(v12, v8);
    return v16;
  }
}

void sub_100006484()
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000097A8(v0, qword_1000493C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "handle host process type update", v2, 2u);
  }
}

uint64_t sub_10000656C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  sub_100008808();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100008A10(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    type metadata accessor for SHSheetRemoteSetting.HostProcessType();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;

    swift_getOpaqueTypeConformance2();
    sub_10000A6D4(&unk_100046BE0, &type metadata accessor for SHSheetRemoteSetting.HostProcessType);
    v16 = dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();

    (*(v9 + 8))(v12, v8);
    return v16;
  }
}

void sub_100006800(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(uint64_t))
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000097A8(v7, qword_1000493C0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession);
    v13 = Strong;
    v14 = v12;

    if (v12)
    {
      a4(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100006950()
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000097A8(v0, qword_1000493C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "handle cloud sharing request update", v3, 2u);
  }

  swift_beginAccess();
}

void sub_100006A54(char a1)
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handle host SLM enabled update", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      v10 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
      [v9 setHostSLMEnabled:v10];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100006BC4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_100008808();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100008A10(v8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    type metadata accessor for SHSheetRemoteSetting.HostSLMEnabled();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v2;

    v16 = v2;
    swift_getOpaqueTypeConformance2();
    sub_10000A6D4(&qword_100046C50, &type metadata accessor for SHSheetRemoteSetting.HostSLMEnabled);
    v17 = dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();

    (*(v10 + 8))(v13, v9);
    return v17;
  }
}

void sub_100006E18(uint64_t a1)
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handle host presentation direction type update", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_contentViewController);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      v10 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
      [v9 setHostPresentationDirectionType:v10];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100006F88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_100008808();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100008A10(v8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    type metadata accessor for SHSheetRemoteSetting.HostPresentationDirectionType();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v2;

    v16 = v2;
    swift_getOpaqueTypeConformance2();
    sub_10000A6D4(&qword_100046C40, &type metadata accessor for SHSheetRemoteSetting.HostPresentationDirectionType);
    v17 = dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();

    (*(v10 + 8))(v13, v9);
    return v17;
  }
}

void sub_1000071F4(void *a1)
{
  v2 = sub_1000025C4(&qword_100046C08, &unk_10002E280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;
    v10 = [v7 event];
    sub_10001A780(v10);
    goto LABEL_4;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v10 = v13;
      v9 = [v12 change];
      v14 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
      swift_beginAccess();
      if (!*&v10[v14])
      {
LABEL_4:

        return;
      }

      [swift_unknownObjectRetain() didUpdateAirDropTransferWithChange:v9];
LABEL_10:
      swift_unknownObjectRelease();
      goto LABEL_4;
    }
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        v19 = [v16 activityUUID];
        if (v19)
        {
          v20 = v19;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        v25 = type metadata accessor for UUID();
        (*(*(v25 - 8) + 56))(v5, v21, 1, v25);
        sub_10001AC00(v5);

        sub_100009C18(v5, &qword_100046C08, &unk_10002E280);
      }
    }

    else
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        swift_beginAccess();
        v24 = swift_unknownObjectWeakLoadStrong();
        if (v24)
        {
          v9 = v24;
          v10 = [v23 test];
          sub_10001B108(v10);
          goto LABEL_4;
        }
      }

      else
      {
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          swift_beginAccess();
          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v10 = v28;
            v9 = [v27 metadata];
            v29 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
            swift_beginAccess();
            if (!*&v10[v29])
            {
              goto LABEL_4;
            }

            [swift_unknownObjectRetain() reloadMetadata:v9];
            goto LABEL_10;
          }
        }

        else
        {
          if (qword_1000464C8 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_1000097A8(v30, qword_1000493C0);
          v31 = a1;
          v38 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v33 = 138412290;
            *(v33 + 4) = v31;
            *v34 = v31;
            v35 = v31;
            _os_log_impl(&_mh_execute_header, v38, v32, "Scene session received unhandled action: %@", v33, 0xCu);
            sub_100009C18(v34, &qword_1000475A0, &unk_10002D720);
          }

          v36 = v38;
        }
      }
    }
  }
}

void sub_1000076A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100007710()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000097A8(v3, qword_1000493C0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "deinit Remote scene session", v6, 2u);
  }

  v7 = [objc_allocWithZone(SHSheetAction) initWithType:8];
  v8 = *&v1[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    [v10 sendAction:v7];
  }

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_100007A14(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_activeCloudShareRequest;
  if (*(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_activeCloudShareRequest))
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000097A8(v5, qword_1000493C0);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Sending collaboration cloud sharing result: %@ to host", v9, 0xCu);
      sub_100009C18(v10, &qword_1000475A0, &unk_10002D720);
    }

    v12 = *(v2 + v3);
    *(v2 + v3) = 0;

    oslog = [objc_allocWithZone(SHSheetCloudShareResultAction) initWithResult:v6];
    v13 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      [v15 sendAction:oslog];
    }
  }

  else
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000097A8(v17, qword_1000493C0);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "Can't send collaboration cloud sharing result without an active share request", v19, 2u);
    }
  }
}

uint64_t sub_100007CB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100007D5C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_fbsScene) settings];
  v2 = [v1 isForeground];

  return v2 ^ 1;
}

id sub_100007DB8()
{
  v1 = objc_opt_self();

  return [v1 unregisterHandlerForHostedWindowScene:v0];
}

void sub_100007DF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_uiSession);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_wantsRemoteOptionsPresentation] = 0;
      v4 = *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_optionsViewController];
      *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_optionsViewController] = 0;

      v5 = *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_collaborationOptionsViewController];
      *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_collaborationOptionsViewController] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100007EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result sendAction:a2];
  }

  return result;
}

void sub_100007F20(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter);
  if (v4)
  {
    v6 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter);
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router);
    v4 = 0;
  }

  v5 = v4;
  [v6 presentAlertController:a2];
}

id sub_100007FC4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = *(v4 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router);
  if (result)
  {
    return [result *a4];
  }

  __break(1u);
  return result;
}

void sub_1000080A8(void *a1)
{
  v1 = [a1 headerMetadata];
  if (v1)
  {
    v2 = v1;
    sub_1000025C4(&qword_100046C88, qword_10002DD20);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10002D6A0;
    *(v3 + 32) = v2;
    sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
    v4 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_10000A590;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000F620;
    v8[3] = &unk_10003D9D8;
    v7 = _Block_copy(v8);

    SFUILinkMetadataSerializationForLocalUseOnly();
    _Block_release(v7);
  }
}

void sub_10000820C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1[2])
    {
      v21 = v3;
      v14 = a1[4];
      v15 = a1[5];
      sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
      sub_10000A5E0(v14, v15);
      v20 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v15;
      v16[4] = v13;
      aBlock[4] = sub_10000A6C8;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007CB0;
      aBlock[3] = &unk_10003DA28;
      v17 = _Block_copy(aBlock);
      sub_10000A5E0(v14, v15);
      v19 = v13;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10000A6D4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000025C4(&unk_100047A00, qword_10002D780);
      sub_10000A71C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v20;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      sub_10000A674(v14, v15);
      (*(v21 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
    }
  }
}

void sub_100008548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(SHSheetMetadataUpdateAction);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v4 initWithSerializedMetadata:isa];

  v6 = *(a3 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    [v8 sendAction:v10];
  }
}

uint64_t sub_100008808()
{
  v1 = v0;
  v2 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  UIScene.hostStorage.getter();
  v6 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100008A10(v5);
  if (v7 == 1)
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000097A8(v8, qword_1000493C0);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "No host storage found for scene: %@", v12, 0xCu);
      sub_100009C18(v13, &qword_1000475A0, &unk_10002D720);
    }
  }

  return UIScene.hostStorage.getter();
}

uint64_t sub_100008A10(uint64_t a1)
{
  v2 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100008A78(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  sub_1000025C4(&qword_100046C68, &qword_10002D760);
  UITypedKeyDiff.oldValue.getter();
  v10 = v18;
  UITypedKeyDiff.newValue.getter();
  v11 = v17;
  if (v10)
  {
    if (v17)
    {
      sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v11 = v10;
  }

  else if (!v17)
  {
LABEL_7:

    return;
  }

LABEL_10:
  sub_100008808();
  v13 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_100008A10(v7);
    v15 = 0;
  }

  else
  {
    type metadata accessor for SHSheetRemoteSetting.ClientContext();
    swift_getOpaqueTypeConformance2();
    sub_10000A598(0, &qword_100046BF0, SHSheetUIServiceClientContext_ptr);
    sub_10000A6D4(&qword_100046BF8, &type metadata accessor for SHSheetRemoteSetting.ClientContext);
    v15 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
    (*(v14 + 8))(v7, v13);
  }

  a3(v15);
}

void sub_100008D1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1000025C4(&qword_100046C78, &qword_10002D768);
    UITypedKeyDiff.oldValue.getter();
    v10 = v16;
    UITypedKeyDiff.newValue.getter();
    if (v10 != v15[1])
    {
      sub_100008808();
      v11 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        sub_100008A10(v7);
        v13 = static SHSheetRemoteSetting.HostPresentationStyle.defaultValue.getter();
      }

      else
      {
        type metadata accessor for SHSheetRemoteSetting.HostPresentationStyle();
        swift_getOpaqueTypeConformance2();
        sub_10000A6D4(&qword_100046C70, &type metadata accessor for SHSheetRemoteSetting.HostPresentationStyle);
        dispatch thunk of UISceneKeyValueStorage.subscript.getter();
        v14 = v16;
        (*(v12 + 8))(v7, v11);
        v13 = v14;
      }

      a3(v13);
    }
  }
}

void sub_100008F60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1000025C4(&qword_100046C60, &qword_10002D758);
    UITypedKeyDiff.oldValue.getter();
    v10 = v16;
    UITypedKeyDiff.newValue.getter();
    if (v10 != v15[1])
    {
      sub_100008808();
      v11 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        sub_100008A10(v7);
        v13 = static SHSheetRemoteSetting.HostProcessType.defaultValue.getter();
      }

      else
      {
        type metadata accessor for SHSheetRemoteSetting.HostProcessType();
        swift_getOpaqueTypeConformance2();
        sub_10000A6D4(&unk_100046BE0, &type metadata accessor for SHSheetRemoteSetting.HostProcessType);
        dispatch thunk of UISceneKeyValueStorage.subscript.getter();
        v14 = v16;
        (*(v12 + 8))(v7, v11);
        v13 = v14;
      }

      a3(v13);
    }
  }
}

void sub_1000091A4(uint64_t a1, void (*a2)())
{
  sub_1000025C4(&qword_100046C28, &qword_10002D730);
  UITypedKeyDiff.oldValue.getter();
  UITypedKeyDiff.newValue.getter();
  type metadata accessor for SHSheetOptionGroups();
  v3 = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    UITypedKeyDiff.newValue.getter();
    a2();
  }
}

void sub_100009274(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t (*a7)(uint64_t))
{
  sub_1000025C4(a4, a5);
  UITypedKeyDiff.oldValue.getter();
  UITypedKeyDiff.newValue.getter();
  v10 = v14;
  if (v15)
  {
    if (v14)
    {
      a6(0);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }

      goto LABEL_9;
    }

    v10 = v15;
  }

  else if (!v14)
  {
    return;
  }

LABEL_9:
  v12 = UITypedKeyDiff.newValue.getter();
  if (v15)
  {
    v13 = a7(v12);
  }

  else
  {
    v13 = 0;
  }

  a2(v13);
}

uint64_t sub_100009388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12[-v5];
  sub_1000025C4(&qword_100046C58, &qword_10002D750);
  UITypedKeyDiff.oldValue.getter();
  v7 = v12[15];
  result = UITypedKeyDiff.newValue.getter();
  if (v7 != v12[14])
  {
    sub_100008808();
    v9 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_100008A10(v6);
      v11 = static SHSheetRemoteSetting.HostSLMEnabled.defaultValue.getter();
    }

    else
    {
      type metadata accessor for SHSheetRemoteSetting.HostSLMEnabled();
      swift_getOpaqueTypeConformance2();
      sub_10000A6D4(&qword_100046C50, &type metadata accessor for SHSheetRemoteSetting.HostSLMEnabled);
      v11 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
      (*(v10 + 8))(v6, v9);
    }

    return a2(v11 & 1);
  }

  return result;
}

uint64_t sub_10000958C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  sub_1000025C4(&qword_100046C48, &qword_10002D748);
  UITypedKeyDiff.oldValue.getter();
  v7 = v14;
  result = UITypedKeyDiff.newValue.getter();
  if (v7 != v13)
  {
    sub_100008808();
    v9 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_100008A10(v6);
      v11 = static SHSheetRemoteSetting.HostPresentationDirectionType.defaultValue.getter();
    }

    else
    {
      type metadata accessor for SHSheetRemoteSetting.HostPresentationDirectionType();
      swift_getOpaqueTypeConformance2();
      sub_10000A6D4(&qword_100046C40, &type metadata accessor for SHSheetRemoteSetting.HostPresentationDirectionType);
      dispatch thunk of UISceneKeyValueStorage.subscript.getter();
      v12 = v14;
      (*(v10 + 8))(v6, v9);
      v11 = v12;
    }

    return a2(v11);
  }

  return result;
}

uint64_t sub_1000097A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1000097E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router);
  if (v2)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_10000991C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100007CB0;
    v7[3] = &unk_10003D7F8;
    v5 = _Block_copy(v7);
    v6 = v2;

    [v6 presentOptionsViewController:a1 dismissalHandler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000098E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10000993C(void *a1)
{
  if (_UISolariumEnabled())
  {
    if (*(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customViewController))
    {
      if (qword_1000464C8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000097A8(v3, qword_1000493C0);
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v4, "There is already an active user defaults view controller.", v5, 2u);
      }
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customViewController) = a1;
      v7 = [objc_allocWithZone(SHSheetRouter) initWithRootViewController:a1 supportsModalPresentations:1];
      v8 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter);
      *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter) = v7;

      oslog = [objc_allocWithZone(SHSheetAction) initWithType:12];
      v9 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        [v11 sendAction:oslog];
      }
    }
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_router);
    if (v6)
    {

      [v6 presentUserDefaultsViewController:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100009B40(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customViewController;
  v4 = *(v1 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customViewController);
  if (v4)
  {
    sub_10000A598(0, &qword_100046C00, UIViewController_ptr);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      v8 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter);
      *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_customRouter) = 0;

      v9 = *(v2 + v3);
      *(v2 + v3) = 0;
    }
  }
}

uint64_t sub_100009C18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000025C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009D10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009DFC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_10000958C(a1, *(v1 + 16));
}

uint64_t sub_100009E08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009E48(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100009388(a1, *(v1 + 16));
}

uint64_t sub_100009E70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100009EBC(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1000025C4(&qword_100046C80, &unk_10002D770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_activeCloudShareRequest);
  if (v13)
  {
    v30 = a1;
    v14 = v13;
    v15 = [v14 collaborationItemIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v7, 1, 1, v16);
    v18.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v20 = 0;
    if ((*(v17 + 48))(v7, 1, v16) != 1)
    {
      URL._bridgeToObjectiveC()(v19);
      v20 = v21;
      (*(v17 + 8))(v7, v16);
    }

    v22 = objc_allocWithZone(SFCollaborationCloudSharingResult);
    v23 = _convertErrorToNSError(_:)();
    v24 = [v22 initWithCollaborationItemIdentifier:v18.super.isa sharingURL:v20 share:0 error:v23 mailResult:0];

    (*(v9 + 8))(v12, v8);
    sub_100007A14(v24);
  }

  else
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000097A8(v25, qword_1000493C0);
    v30 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v30, v26, "Received failedToSaveShareWithError message without an active cloud share request", v27, 2u);
    }

    v28 = v30;
  }
}

void sub_10000A220(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = sub_1000025C4(&qword_100046C80, &unk_10002D770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_activeCloudShareRequest);
  if (v15)
  {
    v31 = a2;
    v16 = v15;
    v17 = [v16 collaborationItemIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v22 = 0;
    if ((*(v19 + 48))(v9, 1, v18) != 1)
    {
      URL._bridgeToObjectiveC()(v21);
      v22 = v23;
      (*(v19 + 8))(v9, v18);
    }

    v24 = objc_allocWithZone(SFCollaborationCloudSharingResult);
    v25 = [v24 initWithCollaborationItemIdentifier:v20.super.isa sharingURL:v22 share:v31 error:0 mailResult:0];

    (*(v11 + 8))(v14, v10);
    sub_100007A14(v25);
  }

  else
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000097A8(v26, qword_1000493C0);
    v31 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v31, v27, "Received completedSharingWithShare message without an active cloud share request", v28, 2u);
    }

    v29 = v31;
  }
}

uint64_t sub_10000A598(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000A5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A634()
{
  sub_10000A674(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A674(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A6D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000A71C()
{
  result = qword_100046CB0;
  if (!qword_100046CB0)
  {
    sub_10000A780(&unk_100047A00, qword_10002D780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046CB0);
  }

  return result;
}

uint64_t sub_10000A780(uint64_t *a1, uint64_t *a2)
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

id sub_10000A8D0()
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

id sub_10000A984(void *a1)
{
  v2 = [a1 role];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v5 != v6)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = [a1 role];
  v9 = objc_allocWithZone(UISceneConfiguration);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithName:v10 sessionRole:v8];

  return v11;
}

uint64_t sub_10000AAE8()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_1000493A8);
  sub_1000097A8(v0, qword_1000493A8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000AB94(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000AC20(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10000AB94(v3, a2);
  sub_1000097A8(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t ShareTransportEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ShareTransportEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ShareTransportEntity.displayRepresentation.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return DisplayRepresentation.init(stringLiteral:)(v2, v1);
}

uint64_t sub_10000AD74()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000AB94(v0, static ShareTransportEntity.typeDisplayRepresentation);
  sub_1000097A8(v0, static ShareTransportEntity.typeDisplayRepresentation);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t ShareTransportEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1000464D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_1000097A8(v0, static ShareTransportEntity.typeDisplayRepresentation);
}

uint64_t static ShareTransportEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000464D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000097A8(v2, static ShareTransportEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ShareTransportEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_1000464D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000097A8(v2, static ShareTransportEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ShareTransportEntity.typeDisplayRepresentation.modify())()
{
  if (qword_1000464D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_1000097A8(v0, static ShareTransportEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10000B078()
{
  sub_1000025C4(&qword_100046588, &qword_10002E4F0);
  swift_getKeyPath();
  result = IntentParameterDependency.__allocating_init<A, B>(_:)();
  static ShareTransportEntity.defaultQuery = result;
  return result;
}

uint64_t *ShareTransportEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1000464E0 != -1)
  {
    swift_once();
  }

  return &static ShareTransportEntity.defaultQuery;
}

uint64_t static ShareTransportEntity.defaultQuery.getter()
{
  if (qword_1000464E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ShareTransportEntity.defaultQuery.setter(uint64_t a1)
{
  if (qword_1000464E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ShareTransportEntity.defaultQuery = a1;
}

uint64_t (*static ShareTransportEntity.defaultQuery.modify())()
{
  if (qword_1000464E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ShareTransportEntity.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ShareTransportEntity.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ShareTransportEntity.activityType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ShareTransportEntity.activityType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ShareTransportEntity.appBundleID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ShareTransportEntity.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ShareTransportEntity.description.getter()
{
  _StringGuts.grow(_:)(77);
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x800000010002EB60;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x3A656C746974202CLL;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._object = 0x800000010002EB80;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 0x6E7542707061202CLL;
  v4._object = 0xEF203A4449656C64;
  String.append(_:)(v4);
  String.append(_:)(v0[3]);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0;
}

unint64_t sub_10000B548()
{
  result = qword_100046D50;
  if (!qword_100046D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D50);
  }

  return result;
}

unint64_t sub_10000B5A0()
{
  result = qword_100046D58;
  if (!qword_100046D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D58);
  }

  return result;
}

unint64_t sub_10000B5F8()
{
  result = qword_100046D60;
  if (!qword_100046D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D60);
  }

  return result;
}

unint64_t sub_10000B650()
{
  result = qword_100046D68;
  if (!qword_100046D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D68);
  }

  return result;
}

uint64_t sub_10000B6B0@<X0>(void *a1@<X8>)
{
  if (qword_1000464E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static ShareTransportEntity.defaultQuery;
}

uint64_t sub_10000B73C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_10000B750()
{
  result = qword_100046D70;
  if (!qword_100046D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D70);
  }

  return result;
}

unint64_t sub_10000B7A8()
{
  result = qword_100046D78;
  if (!qword_100046D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D78);
  }

  return result;
}

unint64_t sub_10000B800()
{
  result = qword_100046D80;
  if (!qword_100046D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D80);
  }

  return result;
}

unint64_t sub_10000B858()
{
  result = qword_100046D88;
  if (!qword_100046D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D88);
  }

  return result;
}

unint64_t sub_10000B8B4()
{
  result = qword_100046D90;
  if (!qword_100046D90)
  {
    sub_10000A780(&qword_100046D98, &qword_10002D920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046D90);
  }

  return result;
}

uint64_t sub_10000B918(uint64_t a1)
{
  v2 = sub_10000260C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B968()
{
  result = qword_100046DA0;
  if (!qword_100046DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046DA0);
  }

  return result;
}

uint64_t sub_10000B9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000BA80;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000BA80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000BB74(uint64_t a1)
{
  v2 = sub_10000B858();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_10000BBC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000BBD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10000BC1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for SUISRemoteAlertPresentationManager()
{
  result = qword_100046DB8;
  if (!qword_100046DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000BD18()
{
  if (qword_1000464E8 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

void sub_10000BD88(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SFRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)();
}

void sub_10000BDF0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SFRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)();
}

void sub_10000BE58(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a1;
  v7 = a4;
  SFRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)();
}

id sub_10000BED0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for SUISRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000BF14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUISRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000BF54()
{
  result = [objc_allocWithZone(type metadata accessor for SUISRemoteAlertPresentationManager()) init];
  qword_100046DB0 = result;
  return result;
}

uint64_t sub_10000BF88()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_100046E70);
  v1 = sub_1000097A8(v0, qword_100046E70);
  if (qword_1000464D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000097A8(v0, qword_1000493D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000C050()
{
  type metadata accessor for ShareTransportEntitiesProviderActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100049420 = v0;
  return result;
}

uint64_t sub_10000C08C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000C0EC()
{
  if (qword_1000464F8 != -1)
  {
    swift_once();
  }
}

void sub_10000C150()
{
  *&xmmword_100049428 = 0xD00000000000002ALL;
  *(&xmmword_100049428 + 1) = 0x800000010002ECA0;
  *&xmmword_100049438 = 0x725420796D6D7544;
  *(&xmmword_100049438 + 1) = 0xEF74726F70736E61;
  *&xmmword_100049448 = 0xD00000000000002ALL;
  *(&xmmword_100049448 + 1) = 0x800000010002ECA0;
  *&xmmword_100049458 = 0xD00000000000002ALL;
  *(&xmmword_100049458 + 1) = 0x800000010002ECA0;
}

uint64_t sub_10000C1A4()
{
  *(v1 + 24) = v0;
  if (qword_1000464F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100049420;
  *(v1 + 32) = qword_100049420;

  return _swift_task_switch(sub_10000C240, v2, 0);
}

uint64_t sub_10000C240()
{
  v1 = v0[3];
  if (v1[3])
  {
    v13 = v0[1];

    return v13(v2);
  }

  else
  {
    v4 = v0[4];
    v5 = v1[2];
    v6 = v1[4];
    v0[5] = v6;
    v7 = v6;
    v8 = sub_10000E3B4();
    v9 = swift_task_alloc();
    v0[6] = v9;
    v9[2] = v6;
    v9[3] = v5;
    v9[4] = v1;
    v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    v0[7] = v11;
    v12 = sub_1000025C4(&qword_100047038, &unk_10002DC10);
    *v11 = v0;
    v11[1] = sub_10000C3CC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v4, v8, 0xD00000000000001BLL, 0x800000010002ECD0, sub_10000E464, v9, v12);
  }
}

uint64_t sub_10000C3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_10000C78C;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_10000C4F4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

char *sub_10000C4F4()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v28 = *(v0 + 16);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:

LABEL_24:
    v29 = *(v0 + 24);
    v30 = *(v29 + 24);
    *(v29 + 24) = _swiftEmptyArrayStorage;

    v31 = *(v0 + 8);

    return v31(_swiftEmptyArrayStorage);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  result = sub_100014620(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v32 = v0;
    v33 = v1 & 0xC000000000000001;
    v34 = v2;
    v35 = v1;
    while (1)
    {
      if (v33)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 identifier];
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

      v12 = sub_10000EA5C(v9, v11);
      v14 = v13;

      v15 = [v6 title];
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = [v6 identifier];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

LABEL_16:
      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        sub_100014620((v25 > 1), v26 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27 = &_swiftEmptyArrayStorage[8 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v27[6] = v17;
      v27[7] = v19;
      v27[8] = v22;
      v27[9] = v24;
      v27[10] = v12;
      v27[11] = v14;
      v1 = v35;
      if (v34 == v4)
      {

        v0 = v32;
        goto LABEL_24;
      }
    }

LABEL_15:

    v22 = 0;
    v17 = 0;
    v24 = 0xE000000000000000;
    v19 = 0xE000000000000000;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C78C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_10000C7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  if (qword_1000464F8 != -1)
  {
    swift_once();
  }

  v5 = qword_100049420;
  v4[46] = qword_100049420;

  return _swift_task_switch(sub_10000C898, v5, 0);
}

uint64_t sub_10000C898()
{
  v1 = *(v0 + 344) == 0xD00000000000002ALL && 0x800000010002ECA0 == *(v0 + 352);
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v2 = xmmword_100049438;
    *(v0 + 208) = xmmword_100049428;
    *(v0 + 224) = v2;
    v3 = xmmword_100049458;
    *(v0 + 240) = xmmword_100049448;
    *(v0 + 256) = v3;
    v12 = *(v0 + 208);
    v10 = *(v0 + 224);
    v11 = *(v0 + 240);
    v9 = *(v0 + 256);
    sub_10000E408(v0 + 208, v0 + 272);
    v4 = *(v0 + 336);
    *v4 = v12;
    v4[1] = v10;
    v4[2] = v11;
    v4[3] = v9;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 376) = v7;
    *v7 = v0;
    v7[1] = sub_10000CA1C;
    v8 = *(v0 + 360);

    return sub_10000C1A4();
  }
}

uint64_t sub_10000CA1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v5 = *v2;
  *(*v2 + 384) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 368);

    return _swift_task_switch(sub_10000CB64, v8, 0);
  }
}

uint64_t sub_10000CB64()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v4 = *(v0 + 344);
      v5 = *(v0 + 352);
      v6 = v3[3];
      v8 = *v3;
      v7 = v3[1];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v6;
      *(v0 + 16) = v8;
      *(v0 + 32) = v7;
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);
      v11 = *(v0 + 56);
      v22 = v11;
      v23 = *(v0 + 40);
      v12 = *(v0 + 72);
      v24 = v10;
      if (v9 == v4 && v5 == v10)
      {
        v17 = *(v0 + 384);
        sub_10000E408(v0 + 16, v0 + 144);

        v9 = *(v0 + 344);
        goto LABEL_11;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        v13 = *(v0 + 384);
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 384);
    sub_10000E408(v0 + 16, v0 + 80);

LABEL_11:
    v15 = v23;
    v14 = v24;
    v16 = v22;
  }

  else
  {
LABEL_8:

    v9 = 0;
    v12 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v19 = *(v0 + 336);
  *v19 = v9;
  *(v19 + 8) = v14;
  *(v19 + 24) = v15;
  *(v19 + 40) = v16;
  *(v19 + 56) = v12;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10000CCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  if (qword_1000464F8 != -1)
  {
    swift_once();
  }

  v3[45] = qword_100049420;
  v4 = swift_task_alloc();
  v3[46] = v4;
  *v4 = v3;
  v4[1] = sub_10000CD88;

  return sub_10000C1A4();
}

uint64_t sub_10000CD88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *v2;
  *(*v2 + 376) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 360);

    return _swift_task_switch(sub_10000CED0, v8, 0);
  }
}

uint64_t sub_10000CED0()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v4 = *(v0 + 344);
      v5 = *(v0 + 352);
      v6 = *v3;
      v7 = v3[1];
      v8 = v3[3];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v8;
      *(v0 + 16) = v6;
      *(v0 + 32) = v7;
      v9 = *(v0 + 64);
      v10 = *(v0 + 72);
      v11 = *(v0 + 56);
      v25 = *(v0 + 48);
      v12 = *(v0 + 32);
      v13 = *(v0 + 40);
      v15 = *(v0 + 16);
      v14 = *(v0 + 24);
      if (v9 == v4 && v10 == v5)
      {
        v20 = *(v0 + 376);
        sub_10000E408(v0 + 16, v0 + 144);

        v9 = *(v0 + 344);
        goto LABEL_13;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        v16 = *(v0 + 376);
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 376);
    sub_10000E408(v0 + 16, v0 + 80);

LABEL_13:
    v19 = v25;
  }

  else
  {
LABEL_8:

    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v17 = xmmword_100049458;
    *(v0 + 240) = xmmword_100049448;
    *(v0 + 256) = v17;
    v18 = xmmword_100049438;
    *(v0 + 208) = xmmword_100049428;
    *(v0 + 224) = v18;
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);
    v19 = *(v0 + 240);
    v11 = *(v0 + 248);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    sub_10000E408(v0 + 208, v0 + 272);
  }

  v22 = *(v0 + 336);
  *v22 = v15;
  v22[1] = v14;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v19;
  v22[5] = v11;
  v22[6] = v9;
  v22[7] = v10;
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10000D074(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_1000025C4(&qword_100047040, &qword_10002DC20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  type metadata accessor for MainActor();
  v18 = a2;
  v19 = a3;

  v20 = static MainActor.shared.getter();
  v21 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = a2;
  *(v22 + 5) = v19;
  *(v22 + 6) = a4;
  (*(v9 + 32))(&v22[v21], v12, v8);
  sub_10000E0A8(0, 0, v16, &unk_10002DC38, v22);
}

uint64_t sub_10000D2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = *(*(sub_1000025C4(&qword_100047048, &qword_10002DC28) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[25] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[26] = v10;
  v7[27] = v9;

  return _swift_task_switch(sub_10000D374, v10, v9);
}

uint64_t sub_10000D374()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[20];
  }

  else
  {
    v3 = v0[24];
    v4 = v0[22];
    v5 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v0[21]];
    [v5 setHideSuggestions:1];
    [v5 setExcludedActivityCategories:1];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = qword_1000464F8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = v0[24];
    v1 = v0[20];
    v10 = qword_100049420;
    v11 = sub_10000E3B4();
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v7;
    v12[5] = v5;
    v2 = v5;

    sub_10000D9D4(0, 0, v9, &unk_10002DC48, v12);
  }

  v0[28] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000D620;
  v13 = swift_continuation_init();
  v0[17] = sub_1000025C4(&qword_100047050, &qword_10002DC50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000DFC8;
  v0[13] = &unk_10003DB50;
  v0[14] = v13;
  v14 = v1;
  [v2 _findSupportedActivitiesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000D620()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_10000D808;
  }

  else
  {
    v6 = sub_10000D750;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000D750()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  v5 = v0[18];

  v0[19] = v5;
  sub_1000025C4(&qword_100047040, &qword_10002DC20);
  CheckedContinuation.resume(returning:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000D808()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[24];
  v3 = v0[25];

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t sub_10000D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_1000464F8 != -1)
  {
    swift_once();
  }

  v6 = qword_100049420;

  return _swift_task_switch(sub_10000D928, v6, 0);
}

uint64_t sub_10000D928()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(v0 + 56);
    v5 = *(Strong + 32);
    *(Strong + 32) = v4;
    v6 = v4;
  }

  **(v0 + 40) = v3 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000D9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000F1B4(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100009C18(v12, &qword_100047048, &qword_10002DC28);
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

      sub_1000025C4(&qword_100047068, &qword_10002DC70);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100009C18(a3, &qword_100047048, &qword_10002DC28);

      return v24;
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

  sub_100009C18(a3, &qword_100047048, &qword_10002DC28);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000025C4(&qword_100047068, &qword_10002DC70);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000DCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000F1B4(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100009C18(v12, &qword_100047048, &qword_10002DC28);
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

      sub_100009C18(a3, &qword_100047048, &qword_10002DC28);

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

  sub_100009C18(a3, &qword_100047048, &qword_10002DC28);
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

uint64_t sub_10000DFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000F3D8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000025C4(&qword_100047060, &qword_10002DC58);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10000F41C();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000F1B4(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009C18(v11, &qword_100047048, &qword_10002DC28);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100009C18(a3, &qword_100047048, &qword_10002DC28);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009C18(a3, &qword_100047048, &qword_10002DC28);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000E344()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_10000E3B4()
{
  result = qword_100047030;
  if (!qword_100047030)
  {
    type metadata accessor for ShareTransportEntitiesProviderActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047030);
  }

  return result;
}

id sub_10000E470(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  v12 = 0;
  v8 = [v4 initWithBundleIdentifier:v7 requireValid:a3 & 1 platform:a4 error:&v12];

  if (v8)
  {
    v9 = v12;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_10000E554(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E64C;

  return v7(a1);
}

uint64_t sub_10000E64C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000E744(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10000E7A4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10000E898;

  return v6(v2 + 32);
}

uint64_t sub_10000E898()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000E9AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10000EA5C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v4 == a2;
  if (v5 || (v6 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v6 & 1) != 0))
  {

    return 0xD000000000000013;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v8 == a2)
  {
    goto LABEL_17;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_18;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v11 == a2)
  {

LABEL_26:

    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_26;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v14 == a2)
  {
LABEL_17:

LABEL_18:

    return 0xD000000000000014;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_18;
  }

  v16._countAndFlagsBits = 0xD000000000000025;
  v16._object = 0x800000010002ECF0;
  if (String.hasPrefix(_:)(v16))
  {
    v17 = String.count.getter();
    sub_10000E9AC(v17, v3, a2);

    v3 = static String._fromSubstring(_:)();
  }

  else
  {

    active_platform = dyld_get_active_platform();
    v19 = objc_allocWithZone(LSApplicationExtensionRecord);
    v20 = sub_10000E470(v3, a2, 0, active_platform);
    v21 = [v20 containingBundleRecord];
    if (v21 && (v22 = v21, v23 = [v21 bundleIdentifier], v22, v23))
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_10000EF68(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000EFB4()
{
  v1 = sub_1000025C4(&qword_100047040, &qword_10002DC20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F09C(uint64_t a1)
{
  v4 = *(sub_1000025C4(&qword_100047040, &qword_10002DC20) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000BA80;

  return sub_10000D2A0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10000F1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F224()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F25C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F2A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BA80;

  return sub_10000D88C(a1, v4, v5, v7, v6);
}

uint64_t sub_10000F374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000F3D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000F41C()
{
  result = qword_100047058;
  if (!qword_100047058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047058);
  }

  return result;
}

uint64_t sub_10000F468()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F4A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F61C;

  return sub_10000E7A4(a1, v5);
}

uint64_t sub_10000F558(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F61C;

  return sub_10000E554(a1, v5);
}

uint64_t sub_10000F620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_10000F7EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  result = *&v0[OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_window];
  if (result)
  {
    result = [result _rootSheetPresentationController];
    if (result)
    {
      v4 = result;
      [objc_opt_self() resetSheetPresentationController:result];

      v9[1] = &_swiftEmptySetSingleton;
      v5 = [objc_allocWithZone(SHSheetAction) initWithType:8];
      sub_1000103DC(v9, v5);

      v6 = *&v1[OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene];
      sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
      sub_100010614();
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v6 sendActions:isa];

      v8.receiver = v1;
      v8.super_class = ObjectType;
      return objc_msgSendSuper2(&v8, "dealloc");
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FA60()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene) settings];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() sessionIdentifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

BOOL sub_10000FB14()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene) settings];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() applicationState];

  return v2 == 2;
}

id sub_10000FB94()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene) settings];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() hostProcessType];

  return v2;
}

void sub_10000FC10(uint64_t a1, void *a2)
{
  v5[1] = &_swiftEmptySetSingleton;
  sub_1000103DC(v5, a2);

  v3 = *(v2 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene);
  sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
  sub_100010614();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v3 sendActions:isa];
}

id sub_10000FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = *(v5 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_router);
  if (result)
  {
    return [result *a5];
  }

  __break(1u);
  return result;
}

void sub_10000FD74(void *a1)
{
  v1 = [a1 headerMetadata];
  if (v1)
  {
    v2 = v1;
    sub_1000025C4(&qword_100046C88, qword_10002DD20);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10002D6A0;
    *(v3 + 32) = v2;
    sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
    v4 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_100011438;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000F620;
    v8[3] = &unk_10003DCC8;
    v7 = _Block_copy(v8);

    SFUILinkMetadataSerializationForLocalUseOnly();
    _Block_release(v7);
  }
}

void sub_10000FED8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1[2])
    {
      v21 = v3;
      v14 = a1[4];
      v15 = a1[5];
      sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
      sub_10000A5E0(v14, v15);
      v20 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v15;
      v16[4] = v13;
      aBlock[4] = sub_100011498;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007CB0;
      aBlock[3] = &unk_10003DD18;
      v17 = _Block_copy(aBlock);
      sub_10000A5E0(v14, v15);
      v19 = v13;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_1000114A4();
      sub_1000025C4(&unk_100047A00, qword_10002D780);
      sub_10000A71C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v20;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      sub_10000A674(v14, v15);
      (*(v21 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
    }
  }
}

void sub_1000101E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(SHSheetMetadataUpdateAction);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithSerializedMetadata:isa];

  v10[1] = &_swiftEmptySetSingleton;
  v9 = v6;
  sub_1000103DC(v10, v9);

  v7 = *(a3 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene);
  sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
  sub_100010614();
  v8 = Set._bridgeToObjectiveC()().super.isa;

  [v7 sendActions:v8];
}

uint64_t sub_1000103DC(void *a1, void *a2)
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

      sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10001067C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10001086C(v21 + 1);
    }

    v19 = v8;
    sub_100010A94(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100010B18(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

unint64_t sub_100010614()
{
  result = qword_1000471C8;
  if (!qword_1000471C8)
  {
    sub_10000A598(255, &qword_1000471C0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000471C8);
  }

  return result;
}

Swift::Int sub_10001067C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000025C4(&unk_1000471D0, &qword_10002DD18);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10001086C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10001086C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000025C4(&unk_1000471D0, &qword_10002DD18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100010A94(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100010B18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001086C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100010C88();
      goto LABEL_12;
    }

    sub_100010DD8(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100010C88()
{
  v1 = v0;
  sub_1000025C4(&unk_1000471D0, &qword_10002DD18);
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

uint64_t sub_100010DD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000025C4(&unk_1000471D0, &qword_10002DD18);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

void sub_100010FEC(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v18[1] = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
    sub_100010614();
    Set.Iterator.init(_cocoa:)();
    v3 = v18[2];
    v4 = v18[3];
    v5 = v18[4];
    v6 = v18[5];
    v7 = v18[6];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
    swift_bridgeObjectRetain_n();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while ((v3 & 0x8000000000000000) != 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_10000A598(0, &qword_1000471C0, BSAction_ptr), swift_dynamicCast(), v16 = v18[0], v14 = v6, v15 = v7, !v18[0]))
    {
LABEL_21:
      sub_1000114FC();
      return;
    }

LABEL_19:
    v17 = *(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetSceneActionHandler_handler + 8);
    if ((*(v2 + OBJC_IVAR____TtC16SharingUIService28ShareSheetSceneActionHandler_handler))(v16))
    {
    }

    else
    {
      sub_1000103DC(v18, v16);
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_21;
    }

    v13 = v4[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_10001121C()
{
  v4[1] = &_swiftEmptySetSingleton;
  v3 = [objc_allocWithZone(SHSheetAction) initWithType:10];
  sub_1000103DC(v4, v3);

  v1 = *(v0 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene);
  sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
  sub_100010614();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v1 sendActions:isa];
}

void sub_10001130C(uint64_t a1)
{
  v5[1] = &_swiftEmptySetSingleton;
  v4 = [objc_allocWithZone(SHSheetDraggingAction) initWithDraggingEvent:a1];
  sub_1000103DC(v5, v4);

  v2 = *(v1 + OBJC_IVAR____TtC16SharingUIService22ShareSheetSceneSession_fbsScene);
  sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
  sub_100010614();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v2 sendActions:isa];
}

uint64_t sub_100011400()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011440(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011458()
{
  sub_10000A674(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000114A4()
{
  result = qword_100046CA0;
  if (!qword_100046CA0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046CA0);
  }

  return result;
}

Class sub_10001164C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4(0);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_1000116D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void *a5)
{
  a4(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(a1 + *a5);
  *(a1 + *a5) = v7;
}

id sub_1000119D4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100011A4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

Class sub_100011C98(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *(a1 + *a3);

  sub_1000025C4(a4, a5);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_100011D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  sub_1000025C4(a4, a5);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(a1 + *a6);
  *(a1 + *a6) = v8;
}

id sub_100012128(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isSharingExpanded;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isSharingExpanded] = 0;
  v7 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_metadataValues;
  v8 = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_metadataValues] = &_swiftEmptyArrayStorage;
  v66 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isLoadingMetadata;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isLoadingMetadata] = 0;
  v67 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlRequests;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlRequests] = &_swiftEmptyArrayStorage;
  v68 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions] = 0;
  v69 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showOptions;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showOptions] = 0;
  v9 = &v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customOptionsTitle];
  *v9 = 0;
  v9[1] = 0;
  v70 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showCustomHeaderButton;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showCustomHeaderButton] = 0;
  v71 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showHeaderSpecialization;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showHeaderSpecialization] = 0;
  v72 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonTitle;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonTitle] = 0;
  v73 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonColor;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonColor] = 0;
  v74 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isModeSwitchDisabled;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isModeSwitchDisabled] = 0;
  v75 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_supportsCollaboration;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_supportsCollaboration] = 0;
  v76 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_supportsSendCopy;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_supportsSendCopy] = 0;
  v77 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isCollaborative;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_isCollaborative] = 0;
  v78 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showCollaborationOptions;
  v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_showCollaborationOptions] = 0;
  v10 = &v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationModeTitle];
  *v10 = 0;
  v10[1] = 0;
  v79 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationFooterViewModel;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationFooterViewModel] = 0;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController] = 0;
  v80 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerVerticalInsetWrapper;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerVerticalInsetWrapper] = 0;
  v81 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerSectionHeightWrapper;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerSectionHeightWrapper] = 0;
  v11 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_activitiesByUUID;
  *&v2[v11] = sub_10001FDE8(&_swiftEmptyArrayStorage);
  v82 = OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_applicationActivityTypes;
  *&v2[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_applicationActivityTypes] = &_swiftEmptyArrayStorage;
  v12 = [a1 peopleProxies];
  if (v12)
  {
    v13 = v12;
    sub_10000A598(0, &qword_100047388, UIAirDropNode_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v8 >> 62)
  {
    sub_1000025C4(&qword_100047350, &qword_10002DD88);
    v14 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v14 = v8;
  }

  *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_peopleSuggestionProxies] = v14;
  v15 = [a1 shareProxies];
  if (v15)
  {
    v16 = v15;
    sub_10000A598(0, &qword_100047380, _UIHostActivityProxy_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v17 >> 62))
    {
LABEL_7:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v18 = v17;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_7;
    }
  }

  sub_1000025C4(&qword_100047358, &qword_10002DD90);
  v18 = _bridgeCocoaArray<A>(_:)();

LABEL_8:

  *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_shareProxies] = v18;
  v19 = [a1 actionProxies];
  if (v19)
  {
    v20 = v19;
    sub_10000A598(0, &qword_100047380, _UIHostActivityProxy_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v21 >> 62))
    {
LABEL_10:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v22 = v21;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_10;
    }
  }

  sub_1000025C4(&qword_100047358, &qword_10002DD90);
  v22 = _bridgeCocoaArray<A>(_:)();

LABEL_11:

  *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_actionProxies] = v22;
  isa = [a1 nearbyCountSlotID];
  if (!isa)
  {
    sub_10000A598(0, &unk_100047360, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  *&v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_nearbyCountSlotID] = isa;
  v24 = [a1 reloadData];
  v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_reloadData] = v24;
  v25 = [a1 wantsAnimation];
  v3[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_updateProxiesWithAnimation] = v25;
  if (a2)
  {
    v26 = a2;
    v3[v6] = [v26 isSharingExpanded];
    v27 = [v26 activitiesByUUID];
    type metadata accessor for UUID();
    sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
    sub_1000129E4();
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *&v3[v11];
    *&v3[v11] = v28;

    v30 = [v26 metadataValues];
    sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = *&v3[v7];
    *&v3[v7] = v31;

    v3[v66] = [v26 isLoadingMetadata];
    v33 = [v26 urlRequests];
    type metadata accessor for URLRequest();
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = *&v3[v67];
    *&v3[v67] = v34;

    v36 = [v26 urlSandboxExtensions];
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *&v3[v68];
    *&v3[v68] = v37;

    v3[v69] = [v26 showOptions];
    v39 = [v26 customOptionsTitle];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = v9[1];
    *v9 = v41;
    v9[1] = v43;

    v3[v70] = [v26 showCustomHeaderButton];
    v3[v71] = [v26 showHeaderSpecialization];
    v45 = [v26 customHeaderButtonTitle];
    v46 = *&v3[v72];
    *&v3[v72] = v45;

    v47 = [v26 customHeaderButtonColor];
    v48 = *&v3[v73];
    *&v3[v73] = v47;

    v3[v74] = [v26 isModeSwitchDisabled];
    v3[v75] = [v26 supportsCollaboration];
    v3[v76] = [v26 supportsSendCopy];
    v3[v77] = [v26 isCollaborative];
    v3[v78] = [v26 showCollaborationOptions];
    v49 = [v26 collaborationModeTitle];
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

    v54 = v10[1];
    *v10 = v51;
    v10[1] = v53;

    v55 = [v26 collaborationFooterViewModel];
    v56 = *&v3[v79];
    *&v3[v79] = v55;

    v57 = [v26 customViewControllerVerticalInsetWrapper];
    v58 = *&v3[v80];
    *&v3[v80] = v57;

    v59 = [v26 customViewControllerSectionHeightWrapper];
    v60 = *&v3[v81];
    *&v3[v81] = v59;

    v61 = [v26 applicationActivityTypes];
    if (v61)
    {
      v62 = v61;
      type metadata accessor for ActivityType(0);
      v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v62;
    }

    else
    {
      v63 = &_swiftEmptyArrayStorage;
    }

    v64 = *&v3[v82];
    *&v3[v82] = v63;
  }

  v84.receiver = v3;
  v84.super_class = ObjectType;
  return objc_msgSendSuper2(&v84, "init");
}

unint64_t sub_1000129E4()
{
  result = qword_100047370;
  if (!qword_100047370)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047370);
  }

  return result;
}

uint64_t sub_100012A3C()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_100047390);
  v1 = sub_1000097A8(v0, qword_100047390);
  if (qword_1000464D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000097A8(v0, qword_1000493D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100012B04()
{
  v1[3] = v0;
  v2 = *(*(sub_1000025C4(&qword_1000473A8, &qword_10002E490) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for UTType();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100012BFC, 0, 0);
}

uint64_t sub_100012BFC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  UTType.init(identifier:allowUndeclared:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009C18(v0[4], &qword_1000473A8, &qword_10002E490);
LABEL_16:
    v33 = v0[7];
    v34 = v0[4];

    v35 = v0[1];

    return v35(0);
  }

  v4 = v0[3];
  (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
  v5 = String._bridgeToObjectiveC()();
  LODWORD(v4) = [v4 hasRepresentationConformingToTypeIdentifier:v5 fileOptions:0];

  if (!v4)
  {
    if (qword_100046508 != -1)
    {
      swift_once();
    }

    v21 = v0[3];
    v22 = type metadata accessor for Logger();
    sub_1000097A8(v22, qword_100047390);
    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[3];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&_mh_execute_header, v24, v25, "No metadata registered in item provider: %@", v27, 0xCu);
      sub_100009C18(v28, &qword_1000475A0, &unk_10002D720);
    }

    v31 = v0[6];
    v30 = v0[7];
    v32 = v0[5];

    (*(v31 + 8))(v30, v32);
    goto LABEL_16;
  }

  if (qword_100046508 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000097A8(v7, qword_100047390);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v11;
    *v13 = v11;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "Loading metadata from item provider %@", v12, 0xCu);
    sub_100009C18(v13, &qword_1000475A0, &unk_10002D720);
  }

  v15 = v0[7];
  v16 = v0[3];

  v17 = swift_task_alloc();
  v0[8] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v19 = swift_task_alloc();
  v0[9] = v19;
  v20 = sub_1000025C4(&qword_1000473B0, &qword_10002DDA0);
  *v19 = v0;
  v19[1] = sub_100013060;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000010, 0x800000010002F6A0, sub_1000138D0, v17, v20);
}

uint64_t sub_100013060()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100013178, 0, 0);
}

uint64_t sub_100013178()
{
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v1);
}

void sub_100013204(uint64_t a1)
{
  v2 = sub_1000025C4(&qword_1000473B8, &qword_10002DDA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = NSItemProvider.loadDataRepresentation(for:completionHandler:)();
}

uint64_t sub_10001335C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    if (qword_100046508 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000097A8(v4, qword_100047390);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      if (a3)
      {
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        v10 = v9;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *(v7 + 4) = v9;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load metadata: %@", v7, 0xCu);
      sub_100009C18(v8, &qword_1000475A0, &unk_10002D720);
    }

    sub_1000025C4(&qword_1000473B8, &qword_10002DDA8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_10000A598(0, &qword_1000473C0, NSKeyedUnarchiver_ptr);
    sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
    sub_10000A5E0(a1, a2);
    v13 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v13)
    {
      if (qword_100046508 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000097A8(v14, qword_100047390);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v13;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Loaded metadata: %@", v18, 0xCu);
        sub_100009C18(v19, &qword_1000475A0, &unk_10002D720);
      }
    }

    else
    {
      if (qword_100046508 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000097A8(v22, qword_100047390);
      v16 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v16, v23, "Failed to unarchive metadata", v24, 2u);
      }
    }

    sub_1000025C4(&qword_1000473B8, &qword_10002DDA8);
    CheckedContinuation.resume(returning:)();
    return sub_100013A00(a1, a2);
  }
}

void sub_1000138D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100013204(a1);
}

uint64_t sub_1000138D8()
{
  v1 = sub_1000025C4(&qword_1000473B8, &qword_10002DDA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001396C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_1000025C4(&qword_1000473B8, &qword_10002DDA8) - 8) + 80);

  return sub_10001335C(a1, a2, a3);
}

uint64_t sub_100013A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000A674(a1, a2);
  }

  return a1;
}

void sub_100013A14()
{
  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000097A8(v0, qword_1000493A8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "didReceiveMemoryWarning", v3, 2u);
  }

  sub_100013B04(0);
}

void sub_100013B04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    ObjectType = &_swiftEmptyArrayStorage;
    v35 = a1;
    do
    {
      a1 = ObjectType;
      v7 = v5;
      while (1)
      {
        if (v7 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v37 = *(v3 + 32 + 16 * v7);
        ObjectType = swift_getObjectType();
        v8 = *(*(&v37 + 1) + 32);
        swift_unknownObjectRetain();
        if ((v8(ObjectType, *(&v37 + 1)) & 1) != 0 && (*(*(&v37 + 1) + 40))(ObjectType, *(&v37 + 1)) == 1)
        {
          break;
        }

        ++v7;
        swift_unknownObjectRelease();
        if (v4 == v7)
        {
          ObjectType = a1;
          a1 = v35;
          goto LABEL_16;
        }
      }

      v9 = a1;
      v39 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100014640(0, *(a1 + 16) + 1, 1);
        v9 = v39;
      }

      a1 = v35;
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_100014640((v10 > 1), v11 + 1, 1);
        v9 = v39;
      }

      v5 = v7 + 1;
      *(v9 + 16) = v11 + 1;
      *(v9 + 16 * v11 + 32) = v37;
      ObjectType = v9;
    }

    while (v4 - 1 != v7);
  }

  else
  {
    ObjectType = &_swiftEmptyArrayStorage;
  }

LABEL_16:

  if (qword_1000464C0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_1000097A8(v12, qword_1000493A8);

    v13 = Logger.logObject.getter();
    v14 = ObjectType;
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315394;
      sub_1000025C4(&qword_100047470, &qword_10002DE00);
      v18 = Array.description.getter();
      v20 = sub_100029F40(v18, v19, &v39);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v13, v15, "EvictIfNeeded: background scene sessions = %s backgroundLimit = %ld", v16, 0x16u);
      sub_10000EF68(v17);
    }

    v21 = v14[2];
    ObjectType = v14;
    if (v21 <= a1)
    {
LABEL_29:

      return;
    }

    if (__OFSUB__(v21, a1))
    {
      break;
    }

    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = 0;
    v23 = a1 - v21 + 1;
    v24 = v21 - a1 + 0x8000000000000000;
    v25 = v21 - 1;
    v26 = ObjectType + 5;
    v34 = ObjectType;
    while (1)
    {
      a1 = v25;
      if (v22 >= ObjectType[2])
      {
        break;
      }

      v27 = *(v26 - 1);
      v38 = *v26;
      swift_unknownObjectRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v36 = a1;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = swift_getObjectType();
        v33 = (*(v38 + 16))(v32);
        *(v30 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&_mh_execute_header, v28, v29, "evicting background scene session for scene:%@", v30, 0xCu);
        sub_100014660(v31);
        ObjectType = v34;

        a1 = v36;
      }

      sub_1000141D4(v27, v38);
      swift_unknownObjectRelease();
      if (!v24)
      {
        goto LABEL_32;
      }

      if (v23)
      {
        ++v23;
        --v24;
        v25 = a1 - 1;
        v26 += 2;
        ++v22;
        if (a1)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_10001408C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);

  v17 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 8);
      swift_unknownObjectRetain();
      if (v13(ObjectType, v11) == a1 && v14 == a2)
      {

LABEL_12:

        return v10;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_12;
      }

      ++v8;
      result = swift_unknownObjectRelease();
      v9 += 2;
      if (v17 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

void sub_1000141D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v28 = v2;
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);

  v29 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      v10 = *(v5 + v7 + 32);
      v9 = *(v5 + v7 + 40);
      sub_1000146C8();
      ObjectType = swift_getObjectType();
      v12 = *(v9 + 16);
      swift_unknownObjectRetain();
      v13 = v12(ObjectType, v9);
      v4 = swift_getObjectType();
      v3 = *(a2 + 16);
      v14 = v3();
      v15 = static NSObject.== infix(_:_:)();
      swift_unknownObjectRelease();

      if (v15)
      {
        break;
      }

      ++v8;
      v7 += 16;
      if (v29 == v8)
      {
        goto LABEL_6;
      }
    }

    if (qword_1000464C0 == -1)
    {
      goto LABEL_8;
    }

LABEL_13:
    swift_once();
LABEL_8:
    v16 = type metadata accessor for Logger();
    sub_1000097A8(v16, qword_1000493A8);
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = (v3)(v4, a2);
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "remove scene session for scene:%@", v19, 0xCu);
      sub_100014660(v20);
    }

    v22 = *(v28 + 24);
    if (v8 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = v22 + v7;
      v24 = *(v23 + 32);
      v25 = *(v23 + 40);
      v26 = swift_getObjectType();
      v27 = *(v25 + 64);
      swift_unknownObjectRetain();
      v27(v26, v25);
      swift_beginAccess();
      sub_1000144E8(v8);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_1000144E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100014954(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100014574()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000145D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100014600(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

char *sub_100014620(char *a1, int64_t a2, char a3)
{
  result = sub_100014714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014640(void *a1, int64_t a2, char a3)
{
  result = sub_100014820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100014660(uint64_t a1)
{
  v2 = sub_1000025C4(&qword_1000475A0, &unk_10002D720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000146C8()
{
  result = qword_100047478;
  if (!qword_100047478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047478);
  }

  return result;
}

char *sub_100014714(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100014820(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000025C4(&qword_100047480, &qword_10002DE08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000025C4(&qword_100047470, &qword_10002DE00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for RemoteAlertSceneDelegate()
{
  result = qword_1000474E8;
  if (!qword_1000474E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014E00()
{
  sub_100014E9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100014E9C()
{
  if (!qword_1000474F8)
  {
    type metadata accessor for SFRemoteAlertPresentationRequest();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000474F8);
    }
  }
}

void sub_100015000(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 window];

  if (v14)
  {
    v15 = [v14 _rootSheetPresentationController];

    if (v15)
    {
      [v15 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_5;
    }

LABEL_20:
    __break(1u);
    return;
  }

LABEL_5:
  if (SFRemoteAlertPresentationRequest.hideViewController.getter())
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000097A8(v16, qword_1000493A8);
    (*(v5 + 16))(v9, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v2;
      v40 = v20;
      v21 = v20;
      *v19 = 136315138;
      v22 = SFRemoteAlertPresentationRequest.id.getter();
      v24 = v23;
      (*(v5 + 8))(v9, v4);
      v25 = sub_100029F40(v22, v24, &v40);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Adding view controller to view hierarchy in remote alert for request: %s", v19, 0xCu);
      sub_10000EF68(v21);
      v2 = v39;
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v36 = SFRemoteAlertPresentationRequest.viewControllerToPresent.getter();
    [v36 willMoveToParentViewController:v2];

    v37 = SFRemoteAlertPresentationRequest.viewControllerToPresent.getter();
    [v2 addChildViewController:v37];

    v38 = SFRemoteAlertPresentationRequest.viewControllerToPresent.getter();
    [v38 didMoveToParentViewController:v2];
  }

  else
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000097A8(v26, qword_1000493A8);
    (*(v5 + 16))(v11, a1, v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v2;
      v40 = v30;
      v31 = v30;
      *v29 = 136315138;
      v32 = SFRemoteAlertPresentationRequest.id.getter();
      v34 = v33;
      (*(v5 + 8))(v11, v4);
      v35 = sub_100029F40(v32, v34, &v40);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Presenting view controller in remote alert for request: %s", v29, 0xCu);
      sub_10000EF68(v31);
      v2 = v39;
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v38 = SFRemoteAlertPresentationRequest.viewControllerToPresent.getter();
    [v2 presentViewController:v38 animated:SFRemoteAlertPresentationRequest.animated.getter() & 1 completion:0];
  }
}

void sub_1000154E4(void (*a1)(void), int a2, id a3)
{
  if (a1)
  {
    a1();
  }

  v4 = [a3 presentedViewController];
  if (!v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];
    v4 = Strong;
  }
}

id sub_10001572C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100015798()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000157EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015804(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100015814(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100015824()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001586C()
{
  result = qword_100047590;
  if (!qword_100047590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047590);
  }

  return result;
}

unint64_t sub_1000158B8()
{
  result = qword_100047598;
  if (!qword_100047598)
  {
    sub_10001586C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047598);
  }

  return result;
}

void sub_100015910(void *a1)
{
  v3 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  v5 = __chkstk_darwin(v3);
  v97 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v88 - v7;
  v9 = sub_1000025C4(&qword_1000475A8, qword_10002DEB8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v88 - v14;
  v16 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v88 - v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v100 = v17;
    v26 = a1;
    v27 = [v25 configurationIdentifier];
    if (v27)
    {
      v28 = v27;
      v95 = v1;
      v96 = v26;
      v94 = v13;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      type metadata accessor for SUISRemoteAlertPresentationManager();
      v32 = sub_10000BD18();
      dispatch thunk of SFRemoteAlertPresentationManager.presentationRequest(for:)();

      v33 = v100;
      if ((v100[6])(v15, 1, v16) == 1)
      {
        sub_100009C18(v15, &qword_1000475A8, qword_10002DEB8);
        if (qword_1000464C0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_1000097A8(v34, qword_1000493A8);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v101[0] = v38;
          *v37 = 136315138;
          v39 = sub_100029F40(v29, v31, v101);

          *(v37 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v35, v36, "Could not find a remote alert presentation request for ID: %s", v37, 0xCu);
          sub_10000EF68(v38);
        }

        else
        {
        }
      }

      else
      {

        v92 = v33[4];
        v93 = v33 + 4;
        v92(v23, v15, v16);
        if (qword_1000464C0 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        v55 = sub_1000097A8(v54, qword_1000493A8);
        (v33[2])(v21, v23, v16);
        v56 = v96;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        v59 = os_log_type_enabled(v57, v58);
        v96 = v56;
        if (v59)
        {
          v60 = swift_slowAlloc();
          v91 = v55;
          v61 = v60;
          v62 = swift_slowAlloc();
          v89 = v57;
          v63 = v62;
          v90 = swift_slowAlloc();
          v101[0] = v90;
          *v61 = 138412546;
          *(v61 + 4) = v25;
          *v63 = v25;
          *(v61 + 12) = 2080;
          v64 = v56;
          v65 = SFRemoteAlertPresentationRequest.id.getter();
          v66 = v33;
          v68 = v67;
          (v66[1])(v21, v16);
          v69 = sub_100029F40(v65, v68, v101);

          *(v61 + 14) = v69;
          v70 = v89;
          _os_log_impl(&_mh_execute_header, v89, v58, "Configuring remote alert scene: %@ for request with ID: %s", v61, 0x16u);
          sub_100009C18(v63, &qword_1000475A0, &unk_10002D720);

          sub_10000EF68(v90);
        }

        else
        {

          (v33[1])(v21, v16);
        }

        v71 = v94;
        if (SFRemoteAlertPresentationRequest.contentOverlaysStatusBar.getter())
        {
          if ([v25 respondsToSelector:"setContentOverlaysStatusBar:animationSettings:"])
          {
            [v25 setContentOverlaysStatusBar:1 animationSettings:0];
          }

          else
          {
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 0;
              _os_log_impl(&_mh_execute_header, v72, v73, "Wanted to set contentOverlaysStatusBar to true, but this version of SpringBoard does not support it.", v74, 2u);
            }
          }
        }

        [v25 setAllowsAlertStacking:1];
        [v25 setOrientationChangedEventsDisabled:1];
        SFRemoteAlertPresentationRequest.presentationType.getter();
        v76 = v97;
        v75 = v98;
        v77 = v99;
        (*(v98 + 104))(v97, enum case for SFRemoteAlertPresentationRequest.PresentationType.sharesheet(_:), v99);
        v78 = static SFRemoteAlertPresentationRequest.PresentationType.== infix(_:_:)();
        v79 = *(v75 + 8);
        v79(v76, v77);
        v79(v8, v77);
        v80 = v95;
        if (v78)
        {
          [v25 setDelegate:v95];
          [v25 setAllowsMenuButtonDismissal:1];
          [v25 setDesiredHardwareButtonEvents:16];
        }

        v81 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v25];
        v82 = type metadata accessor for RemoteAlertRootViewController();
        v83 = objc_allocWithZone(v82);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v102.receiver = v83;
        v102.super_class = v82;
        v84 = objc_msgSendSuper2(&v102, "initWithNibName:bundle:", 0, 0);
        v85 = v81;
        [v85 setRootViewController:v84];
        [v85 makeKeyAndVisible];

        v86 = *(v80 + OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_window);
        *(v80 + OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_window) = v85;

        v92(v71, v23, v16);
        v100[7](v71, 0, 1, v16);
        v87 = OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_presentationRequest;
        swift_beginAccess();
        sub_100016E54(v71, v80 + v87);
        swift_endAccess();
      }

      return;
    }

    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000097A8(v48, qword_1000493A8);
    v49 = v26;
    v100 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v25;
      *v52 = v25;
      v49 = v49;
      _os_log_impl(&_mh_execute_header, v100, v50, "Could not find configuration identifier on remote alert scene: %@", v51, 0xCu);
      sub_100009C18(v52, &qword_1000475A0, &unk_10002D720);
    }
  }

  else
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000097A8(v40, qword_1000493A8);
    v41 = a1;
    v100 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v101[0] = v44;
      *v43 = 136315138;
      swift_getObjectType();
      v45 = _typeName(_:qualified:)();
      v47 = sub_100029F40(v45, v46, v101);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v100, v42, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v43, 0xCu);
      sub_10000EF68(v44);

      return;
    }
  }

  v53 = v100;
}

void sub_100016448()
{
  v1 = v0;
  v2 = sub_1000025C4(&qword_1000475A8, qword_10002DEB8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000097A8(v11, qword_1000493A8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RemoteAlertSceneDelegate: sceneDidBecomeActive", v14, 2u);
  }

  v15 = *(v1 + OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_window);
  if (v15)
  {
    v16 = [v15 rootViewController];
    if (v16)
    {
      v23 = v16;
      type metadata accessor for RemoteAlertRootViewController();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = [v17 presentedViewController];
        if (!v18)
        {
          v20 = OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_presentationRequest;
          swift_beginAccess();
          sub_100016DE4(v1 + v20, v5);
          if ((*(v7 + 48))(v5, 1, v6) == 1)
          {

            sub_100009C18(v5, &qword_1000475A8, qword_10002DEB8);
          }

          else
          {
            (*(v7 + 32))(v10, v5, v6);
            sub_100015000(v10);

            (*(v7 + 8))(v10, v6);
          }

          return;
        }

        v22 = v18;

        v19 = v22;
      }

      else
      {
        v19 = v23;
      }
    }
  }
}

void sub_100016760(const char *a1)
{
  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493A8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_100016850(void *a1, uint64_t a2)
{
  if (qword_1000464C0 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000097A8(v4, qword_1000493A8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41[0] = v8;
      *v7 = 136315138;
      sub_10001586C();
      sub_1000158B8();
      v9 = Set.description.getter();
      v11 = sub_100029F40(v9, v10, v41);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "RemoteAlertSceneDelegate: handle buttonActions: %s", v7, 0xCu);
      sub_10000EF68(v8);
    }

    v12 = [a1 configurationIdentifier];
    if (!v12)
    {
      v22 = a1;
      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v22;
        *v25 = v22;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, oslog, v23, "Could not find configuration identifier on remote alert scene: %@", v24, 0xCu);
        sub_100009C18(v25, &qword_1000475A0, &unk_10002D720);
      }

      goto LABEL_31;
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    type metadata accessor for SUISRemoteAlertPresentationManager();
    v17 = sub_10000BD18();
    v18 = dispatch thunk of SFRemoteAlertPresentationManager.presentationHandle(for:)();

    if (!v18)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10001586C();
      sub_1000158B8();
      Set.Iterator.init(_cocoa:)();
      a2 = v41[0];
      v19 = v41[1];
      v20 = v41[2];
      v21 = v41[3];
      a1 = v41[4];
    }

    else
    {
      v31 = -1 << *(a2 + 32);
      v19 = a2 + 56;
      v20 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      a1 = (v33 & *(a2 + 56));

      v21 = 0;
    }

    while (a2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_10001586C(), swift_dynamicCast(), v38 = v40, v36 = v21, v37 = a1, !v40))
      {
LABEL_29:
        sub_1000114FC();

        return;
      }

LABEL_27:
      if ([v38 events] == 16)
      {
        dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
      }

      else
      {
        [v38 sendResponseWithUnHandledEvents:{objc_msgSend(v38, "events")}];
      }

      v21 = v36;
      a1 = v37;
    }

    v34 = v21;
    v35 = a1;
    v36 = v21;
    if (a1)
    {
LABEL_23:
      v37 = (v35 - 1) & v35;
      v38 = *(*(a2 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v38)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= ((v20 + 64) >> 6))
      {
        goto LABEL_29;
      }

      v35 = *(v19 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  oslog = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136315138;
    v30 = sub_100029F40(v14, v16, v41);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, oslog, v27, "Could not find a remote alert presentation request for ID: %s", v28, 0xCu);
    sub_10000EF68(v29);

    return;
  }

LABEL_31:
}

uint64_t sub_100016DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025C4(&qword_1000475A8, qword_10002DEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025C4(&qword_1000475A8, qword_10002DEB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100016EC4()
{
  type metadata accessor for SceneSessionManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  qword_100049470 = v0;
}

uint64_t sub_100017038(void *a1)
{
  v2 = v1;
  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493A8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "disconnect scene:%@", v8, 0xCu);
    sub_100014660(v9);
  }

  [v5 _unregisterSceneComponentForKey:*(v2 + OBJC_IVAR____TtC16SharingUIService13SceneDelegate_sceneComponentKey)];
  v11 = [v5 session];
  v12 = [v11 configuration];

  v13 = [v12 role];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  result = sub_100017BE4(v5);
  if (!result)
  {
    return result;
  }

  v20 = result;
  sub_1000038B0(0);

LABEL_11:
  v21 = v2 + OBJC_IVAR____TtC16SharingUIService13SceneDelegate_sceneSession;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v21 + 8);
    if (qword_100046510 != -1)
    {
      v23 = result;
      v24 = v22;
      swift_once();
      v22 = v24;
      result = v23;
    }

    sub_1000141D4(result, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100017390(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000097A8(v2, qword_1000493A8);
    v3 = a1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "sceneDidUpdateSettings:%@", v6, 0xCu);
      sub_100014660(v7);
    }

    v9 = [v3 _FBSScene];
    v10 = [v9 settings];

    LOBYTE(v9) = [v10 isForeground];
    if ((v9 & 1) == 0)
    {
      if (qword_100046510 != -1)
      {
        swift_once();
      }

      sub_100013B04(2);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000097A8(v11, qword_1000493A8);
    v12 = a1;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, oslog, v13, "no scene session for scene settings update:%@", v14, 0xCu);
      sub_100014660(v15);
    }
  }
}

id sub_100017740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000177F4()
{
  v1 = v0;
  v2 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  UIScene.hostStorage.getter();
  v6 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100008A10(v5);
  if (v7 == 1)
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000097A8(v8, qword_1000493C0);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "No host storage found for scene: %@", v12, 0xCu);
      sub_100014660(v13);
    }
  }

  return UIScene.hostStorage.getter();
}

void sub_1000179EC(void *a1, uint64_t a2)
{
  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493A8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *&v5[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_scene];
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "adding scene session for scene:%@", v8, 0xCu);
    sub_100014660(v9);
  }

  swift_beginAccess();
  v12 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100029A20(0, v12[2] + 1, 1, v12);
    *(a2 + 24) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100029A20((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = v5;
  v16[5] = &off_10003D788;
  *(a2 + 24) = v12;
  swift_endAccess();
  v17 = v5;
  sub_100013B04(2);
}

uint64_t sub_100017BE4(void *a1)
{
  v2 = sub_1000025C4(&unk_100046BD0, &unk_10002D710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v30 - v4;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000097A8(v9, qword_1000493A8);
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, v10, "scene is not a UIWindowScene.", v11, 2u);
    }

    goto LABEL_20;
  }

  v6 = a1;
  sub_1000177F4();
  v7 = sub_1000025C4(&qword_100047710, &qword_10002DEE0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100008A10(v5);
LABEL_14:
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000097A8(v17, qword_1000493A8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "custom scene session doesn't have a session identifier.", v20, 2u);
    goto LABEL_18;
  }

  type metadata accessor for SHSheetRemoteSetting.SessionIdentifier();
  swift_getOpaqueTypeConformance2();
  sub_1000181E4();
  sub_10001823C(&qword_100047720);
  sub_10001823C(&qword_100047730);
  sub_10001823C(&qword_100047738);
  dispatch thunk of UISceneKeyValueStorage.subscript.getter();
  v13 = v30[0];
  v12 = v30[1];
  (*(v8 + 8))(v5, v7);
  if (!v12)
  {
    goto LABEL_14;
  }

  if (qword_100046510 != -1)
  {
    swift_once();
  }

  if (!sub_10001408C(v13, v12))
  {
    if (qword_1000464C0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000097A8(v21, qword_1000493A8);

    v18 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v22))
    {

      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315138;
    v25 = sub_100029F40(v13, v12, v30);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v22, "couldn't find a matching scene session for session identifier: %s.", v23, 0xCu);
    sub_10000EF68(v24);

LABEL_18:

LABEL_19:

LABEL_20:
    return 0;
  }

  type metadata accessor for ShareSheetRemoteSceneSession();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    return v15;
  }

  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000097A8(v26, qword_1000493A8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "scene session matched is not of expected type: ShareSheetRemoteSceneSession.", v29, 2u);
  }

  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_1000181E4()
{
  result = qword_100047718;
  if (!qword_100047718)
  {
    type metadata accessor for SHSheetRemoteSetting.SessionIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047718);
  }

  return result;
}

uint64_t sub_10001823C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000A780(&qword_100047728, &qword_10002DEE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000182A8()
{
  result = qword_100047740;
  if (!qword_100047740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047740);
  }

  return result;
}

void sub_1000182F4(void *a1)
{
  v2 = v1;
  if (qword_1000464C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493A8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "connect scene:%@", v8, 0xCu);
    sub_100014660(v9);
  }

  v11 = [v5 session];
  v12 = [v11 configuration];

  v13 = [v12 role];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      v20 = [v5 session];
      v21 = [v20 configuration];

      v22 = [v21 role];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {
      }

      else
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          v53 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v53, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&_mh_execute_header, v53, v50, "scene session role is not supported.", v51, 2u);
          }

          goto LABEL_27;
        }
      }

      v53 = sub_100017BE4(v5);
      if (!v53)
      {
        return;
      }

      objc_opt_self();
      v42 = [objc_allocWithZone(UIWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
      v43 = v42;
      sub_1000038B0(v42);
      swift_unknownObjectWeakAssign();
      [v43 makeKeyAndVisible];
      v52 = v43;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = [v52 rootViewController];
        *(v46 + 4) = v48;
        *v47 = v48;
        _os_log_impl(&_mh_execute_header, v44, v45, "custom scene setup successful with rootVC:%@.", v46, 0xCu);
        sub_100014660(v47);

        v49 = v52;
LABEL_28:

        return;
      }

LABEL_27:
      v49 = v53;
      goto LABEL_28;
    }
  }

  v27 = type metadata accessor for SceneWindowObserver();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene] = v5;
  v54.receiver = v28;
  v54.super_class = v27;
  v29 = v5;
  v30 = objc_msgSendSuper2(&v54, "init");
  [v29 _registerSceneComponent:v30 forKey:*(v2 + OBJC_IVAR____TtC16SharingUIService13SceneDelegate_sceneComponentKey)];
  v31 = objc_allocWithZone(type metadata accessor for ShareSheetRemoteSceneSession());
  sub_100003D30(v29);
  v33 = v32;
  v34 = *&v32[OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_window];
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong makeKeyAndVisible];

  *(v2 + OBJC_IVAR____TtC16SharingUIService13SceneDelegate_sceneSession + 8) = &off_10003D788;
  swift_unknownObjectWeakAssign();
  if (qword_100046510 != -1)
  {
    swift_once();
  }

  v36 = qword_100049470;
  v37 = v33;
  sub_1000179EC(v37, v36);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "setup share sheet scene", v40, 2u);
  }
}

uint64_t sub_1000189CC()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000AB94(v0, static ShareIntentMode.typeDisplayRepresentation);
  sub_1000097A8(v0, static ShareIntentMode.typeDisplayRepresentation);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t ShareIntentMode.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100046518 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_1000097A8(v0, static ShareIntentMode.typeDisplayRepresentation);
}

uint64_t static ShareIntentMode.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100046518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000097A8(v2, static ShareIntentMode.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ShareIntentMode.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100046518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000097A8(v2, static ShareIntentMode.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ShareIntentMode.typeDisplayRepresentation.modify())()
{
  if (qword_100046518 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_1000097A8(v0, static ShareIntentMode.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100018CD0()
{
  v0 = sub_1000025C4(&qword_1000477B8, &qword_10002E1F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for LocalizedStringResource();
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000025C4(&qword_1000477C0, &qword_10002E208);
  v11 = sub_1000025C4(&qword_1000477C8, &qword_10002E210);
  v12 = *(v11 - 8);
  v27 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10002DEF0;
  v15 = (v14 + v13);
  v16 = *(v11 + 48);
  *v15 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v17 = *(v9 + 56);
  v24 = v9 + 56;
  v26 = v17;
  v18 = v7;
  v17(v7, 1, 1, v8);
  v19 = type metadata accessor for DisplayRepresentation.Image();
  v20 = *(*(v19 - 8) + 56);
  v20(v3, 1, 1, v19);
  DisplayRepresentation.init(title:subtitle:image:)();
  v21 = &v15[v27];
  v27 = *(v11 + 48);
  *v21 = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v26(v18, 1, 1, v25);
  v20(v3, 1, 1, v19);
  DisplayRepresentation.init(title:subtitle:image:)();
  v22 = sub_100020090(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static ShareIntentMode.caseDisplayRepresentations = v22;
  return result;
}

uint64_t *ShareIntentMode.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100046520 != -1)
  {
    swift_once();
  }

  return &static ShareIntentMode.caseDisplayRepresentations;
}

uint64_t static ShareIntentMode.caseDisplayRepresentations.getter()
{
  if (qword_100046520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ShareIntentMode.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_100046520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ShareIntentMode.caseDisplayRepresentations = a1;
}

uint64_t (*static ShareIntentMode.caseDisplayRepresentations.modify())()
{
  if (qword_100046520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t ShareIntentMode.description.getter(char a1)
{
  if (a1)
  {
    return 0x6F62616C6C6F632ELL;
  }

  else
  {
    return 0x706F43646E65732ELL;
  }
}

SharingUIService::ShareIntentMode_optional __swiftcall ShareIntentMode.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SharingUIService_ShareIntentMode_collaborate;
  }

  else
  {
    v1.value = SharingUIService_ShareIntentMode_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000192AC()
{
  result = qword_100047750;
  if (!qword_100047750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047750);
  }

  return result;
}

Swift::Int sub_100019300()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019374()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_1000193B8@<X0>(void *result@<X0>, char *a2@<X8>)
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

unint64_t sub_1000193E8()
{
  result = qword_100047758;
  if (!qword_100047758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047758);
  }

  return result;
}

unint64_t sub_100019440()
{
  result = qword_100047760;
  if (!qword_100047760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047760);
  }

  return result;
}

unint64_t sub_100019498()
{
  result = qword_100047768;
  if (!qword_100047768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047768);
  }

  return result;
}

uint64_t sub_1000194F8()
{
  if (*v0)
  {
    result = 0x6F62616C6C6F632ELL;
  }

  else
  {
    result = 0x706F43646E65732ELL;
  }

  *v0;
  return result;
}

unint64_t sub_100019544()
{
  result = qword_100047770;
  if (!qword_100047770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047770);
  }

  return result;
}

unint64_t sub_10001959C()
{
  result = qword_100047778;
  if (!qword_100047778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047778);
  }

  return result;
}

unint64_t sub_1000195F0()
{
  result = qword_100047780;
  if (!qword_100047780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047780);
  }

  return result;
}

unint64_t sub_100019648()
{
  result = qword_100047788;
  if (!qword_100047788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047788);
  }

  return result;
}

uint64_t sub_1000196F0(uint64_t a1)
{
  v2 = sub_100002C98();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100019740()
{
  result = qword_100047790;
  if (!qword_100047790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047790);
  }

  return result;
}

unint64_t sub_100019798()
{
  result = qword_100047798;
  if (!qword_100047798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047798);
  }

  return result;
}

unint64_t sub_1000197F0()
{
  result = qword_1000477A0;
  if (!qword_1000477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000477A0);
  }

  return result;
}

uint64_t sub_100019844(uint64_t a1)
{
  v2 = sub_100019648();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100019894()
{
  result = qword_1000477A8;
  if (!qword_1000477A8)
  {
    sub_10000A780(&qword_1000477B0, &qword_10002E180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000477A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareIntentMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShareIntentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100019A84()
{
  if (*(v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_wantsRemoteOptionsPresentation) != 1)
  {
    return;
  }

  v1 = v0;
  v2 = SHSheetOptionGroups.groups.getter();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  if (qword_1000464C8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v47 = v1;
    v4 = type metadata accessor for Logger();
    sub_1000097A8(v4, qword_1000493C0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = v3 >> 62;
    v49 = v3;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 134218242;
      if (v7)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v10;

      *(v8 + 12) = 2080;
      sub_10000A598(0, &unk_100047A50, _UIActivityItemCustomizationGroup_ptr);
      v11 = Array.description.getter();
      v13 = sub_100029F40(v11, v12, &aBlock);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "options to update: group count %ld, %s", v8, 0x16u);
      sub_10000EF68(v9);
    }

    else
    {
    }

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!v7)
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        break;
      }

      goto LABEL_11;
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      break;
    }

LABEL_11:
    v15 = 0;
    v50 = v1;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = __OFADD__(v15, 1);
        v18 = v15 + 1;
        if (v17)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v15 >= *(v48 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v49 + 32 + 8 * v15);
        v17 = __OFADD__(v15, 1);
        v18 = v15 + 1;
        if (v17)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v51 = v16;
      v19 = [v16 customizations];
      sub_10000A598(0, &qword_100047A48, _UIActivityItemCustomization_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v18;
      if (v20 >> 62)
      {
        break;
      }

      v1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
        goto LABEL_21;
      }

LABEL_12:

      v1 = v50;
      v15 = v52;
      if (v52 == v50)
      {
        goto LABEL_45;
      }
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (v1 >= 1)
    {
      v21 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          v57 = sub_1000211E4;
          v58 = v14;
          aBlock = _NSConcreteStackBlock;
          v54 = 1107296256;
          v55 = sub_10002128C;
          v26 = &unk_10003E028;
        }

        else
        {
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (v27)
          {
            v25 = v27;
            v57 = sub_1000211E4;
            v58 = v14;
            aBlock = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_10002128C;
            v26 = &unk_10003E000;
          }

          else
          {
            objc_opt_self();
            v28 = swift_dynamicCastObjCClass();
            if (!v28)
            {
              v30 = v23;
              v3 = Logger.logObject.getter();
              v31 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v3, v31))
              {
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                *v32 = 138412290;
                *(v32 + 4) = v30;
                *v33 = v30;
                v30 = v30;
                _os_log_impl(&_mh_execute_header, v3, v31, "Received unhandled customization: %@", v32, 0xCu);
                sub_100009C18(v33, &qword_1000475A0, &unk_10002D720);
              }

              goto LABEL_33;
            }

            v25 = v28;
            v57 = sub_1000211E4;
            v58 = v14;
            aBlock = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_10002128C;
            v26 = &unk_10003DFD8;
          }
        }

        v56 = v26;
        v29 = _Block_copy(&aBlock);
        v3 = v23;

        [v25 _setHandler:v29];

        _Block_release(v29);
LABEL_33:
        ++v21;

        if (v1 == v21)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_45:
  v34 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_optionsViewController;
  v35 = *(v47 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_optionsViewController);
  if (v35)
  {
    sub_10000A598(0, &unk_100047A50, _UIActivityItemCustomizationGroup_ptr);
    v36 = v35;
    v37.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 updateWithCustomizationGroups:v37.super.isa];
  }

  else
  {
    v38 = objc_allocWithZone(SHSheetOptionsViewContext);
    sub_10000A598(0, &unk_100047A50, _UIActivityItemCustomizationGroup_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v38 initWithCustomizationGroups:isa];

    v37.super.isa = [objc_opt_self() createOptionsViewControllerWithContext:v40 delegate:v47];
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = v37.super.isa;
    }

    v43 = *(v47 + v34);
    *(v47 + v34) = v41;

    v44 = v47 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = *(v44 + 8);
      ObjectType = swift_getObjectType();
      (*(v45 + 40))(v47, v37.super.isa, ObjectType, v45);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10001A250(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_wantsRemoteOptionsPresentation) != 1 || a1 == 0)
  {
    return;
  }

  v33 = a1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(NSKeyedUnarchiver);
  v7 = sub_10001FFD0();
  sub_10000A674(v3, v5);
  if (!v7)
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000097A8(v8, qword_1000493C0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found collaboration options data but couldn't create unarchiver to decode it", v11, 2u);
    }

    goto LABEL_12;
  }

  [v7 setRequiresSecureCoding:1];
  sub_10000A598(0, &qword_100047A40, _SWCollaborationShareOptions_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v12)
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000097A8(v18, qword_1000493C0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't decode collaboration options", v21, 2u);
    }

    goto LABEL_12;
  }

  [v7 finishDecoding];
  v13 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_collaborationOptionsViewController;
  if (*(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_collaborationOptionsViewController))
  {
    if (qword_1000464C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000097A8(v14, qword_1000493C0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Collaboration options view controller already exists", v17, 2u);
    }

LABEL_12:

    return;
  }

  sub_10001B430();
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000211DC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002128C;
  aBlock[3] = &unk_10003DFB0;
  v26 = _Block_copy(aBlock);

  v27 = [v24 createCollaborationOptionsViewControllerWithCollaborationOptions:v12 bundleIdentifier:v23 updateHandler:v26];
  _Block_release(v26);

  v28 = *(v1 + v13);
  *(v1 + v13) = v27;
  v29 = v27;

  v30 = v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 40))(v1, v29, ObjectType, v31);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10001A780(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext);
  if (v12)
  {
    v13 = [v12 activitiesByUUID];
    sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
    sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = [a1 activityUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {
      v16 = sub_10001FAB4(v11);
      if (v17)
      {
        v18 = *(v5 + 8);
        v19 = *(*(v14 + 56) + 8 * v16);
        v18(v11, v4);

        v20 = [a1 isPulsing];
        v21 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
        if (v20)
        {
          swift_beginAccess();
          v22 = *(v2 + v21);
          if (v22)
          {
            swift_unknownObjectRetain();
            v23 = [a1 localizedTitle];
            if (!v23)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v23 = String._bridgeToObjectiveC()();
            }

            [v22 startPulsingActivity:v19 localizedTitle:v23];

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          swift_beginAccess();
          v35 = *(v2 + v21);
          if (v35)
          {
            [v35 stopPulsingActivity:v19];
          }
        }

        return;
      }
    }

    (*(v5 + 8))(v11, v4);
  }

  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000097A8(v24, qword_1000493C0);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    v30 = [v25 activityUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v5 + 8))(v9, v4);
    v34 = sub_100029F40(v31, v33, &v37);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Couldn't resolve activity for UUUID:%s", v28, 0xCu);
    sub_10000EF68(v29);
  }
}

void sub_10001AC00(uint64_t a1)
{
  v3 = sub_1000025C4(&qword_100046C08, &unk_10002E280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  sub_1000211EC(a1, v6, &qword_100046C08, &unk_10002E280);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100009C18(v6, &qword_100046C08, &unk_10002E280);
    v15 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
    swift_beginAccess();
    v16 = *(v1 + v15);
    if (v16)
    {
      [v16 reloadContent];
    }

    return;
  }

  (*(v8 + 32))(v14, v6, v7);
  v17 = *(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext);
  if (v17)
  {
    v18 = [v17 activitiesByUUID];
    sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
    sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v19 + 16))
    {
      v20 = v1;
      v21 = sub_10001FAB4(v14);
      if (v22)
      {
        v23 = *(*(v19 + 56) + 8 * v21);

        v24 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
        swift_beginAccess();
        v25 = *(v20 + v24);
        if (v25)
        {
          swift_endAccess();
          [v25 reloadActivity:v23];

          (*(v8 + 8))(v14, v7);
        }

        else
        {
          (*(v8 + 8))(v14, v7);
          swift_endAccess();
        }

        return;
      }
    }
  }

  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000097A8(v26, qword_1000493C0);
  (*(v8 + 16))(v12, v14, v7);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v29 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v33 = *(v8 + 8);
    v33(v12, v7);
    v34 = sub_100029F40(v30, v32, &v37);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Couldn't resolve activity for UUUID:%s", v29, 0xCu);
    sub_10000EF68(v36);

    v33(v14, v7);
  }

  else
  {

    v35 = *(v8 + 8);
    v35(v12, v7);
    v35(v14, v7);
  }
}

uint64_t sub_10001B108(void *a1)
{
  v3 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    result = [v5 respondsToSelector:"runScrollingTestWithName:type:completionHandler:"];
    if (result)
    {
      swift_unknownObjectRetain();
      v6 = [a1 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = [a1 type];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v9 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000211D4;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007CB0;
      aBlock[3] = &unk_10003DF88;
      v10 = _Block_copy(aBlock);

      [v5 runScrollingTestWithName:v9 type:v7 completionHandler:v10];
      _Block_release(v10);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10001B2C4(void *a1)
{
  v2 = v1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "updateSessionContext: %@", v8, 0xCu);
    sub_100009C18(v9, &qword_1000475A0, &unk_10002D720);
  }

  v11 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext);
  *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext) = v5;

  v12 = v5;

  sub_10001B960();
}

uint64_t sub_10001B430()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_hostAuditToken);
  if (v1)
  {
    v2 = v1;
    [v2 realToken];
    CPCopyBundleIdentifierAndTeamFromAuditToken();
  }

  return 0;
}

char *sub_10001B504(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_hostAuditToken] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_currentConfiguration] = 0;
  v5 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_customViewController;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_customViewController] = 0;
  v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_wantsRemoteOptionsPresentation] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_optionsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_collaborationOptionsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController] = 0;
  *&v1[v4] = a1;
  v6 = a1;
  v7 = [v6 sessionIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = &v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier];
  *v11 = v8;
  v11[1] = v10;
  if ([v6 wantsCustomScene])
  {
    v12 = [v6 processIdentity];
    v13 = [objc_allocWithZone(SHSheetCustomSceneViewController) initWithProcessIdentity:v12];

    v14 = *&v1[v5];
    *&v1[v5] = v13;
  }

  v22.receiver = v1;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "init");
  sub_100001EDC();
  sub_10001B71C();
  v16 = *&v15[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager];
  if (v16)
  {
    v17 = *&v15[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier];
    v18 = *&v15[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8];
    v19 = v16;

    v20 = String._bridgeToObjectiveC()();

    [v19 connectUIServiceToDaemonWithSessionID:v20];
  }

  return v15;
}

id sub_10001B71C()
{
  v1 = [objc_allocWithZone(SFShareSheetSlotManager) init];
  v2 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager;
  v3 = *(v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  *(v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager) = v1;

  result = *(v0 + v2);
  if (result)
  {
    [result setDelegate:v0];
    result = *(v0 + v2);
    if (result)
    {

      return [result activate];
    }
  }

  return result;
}

id sub_10001B7A8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001B960()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v8 = sub_10001C134();
  if (!v8)
  {
    return;
  }

  v6 = v8;
  if (qword_1000464C8 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v9 = type metadata accessor for Logger();
  sub_1000097A8(v9, qword_1000493C0);
  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v6;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "update content with viewModel %@", v13, 0xCu);
    sub_100009C18(v14, &qword_1000475A0, &unk_10002D720);
  }

  v16 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17)
  {
    [v17 updateWithViewModel:v10];
  }
}