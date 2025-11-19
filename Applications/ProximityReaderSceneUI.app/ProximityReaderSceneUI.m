id sub_100001D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001DC8()
{
  result = [objc_allocWithZone(type metadata accessor for ProximityReaderSceneUI()) init];
  qword_100022970 = result;
  return result;
}

uint64_t *sub_100001DF8()
{
  if (qword_1000221C0 != -1)
  {
    swift_once();
  }

  return &qword_100022970;
}

void *sub_100001E48()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100001E94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100001F4C()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_handle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100001F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_handle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100002054()
{
  v1 = (*(*(sub_100002388(&qword_100021930, &unk_100013460) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = aBlock - v2;
  *&v0[OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener] = 0;
  *&v0[OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_handle] = 0;
  v4 = type metadata accessor for ProximityReaderSceneUI();
  v21.receiver = v0;
  v21.super_class = v4;
  v5 = objc_msgSendSuper2(&v21, "init");
  v6 = sub_100008C08();
  sub_1000023F4(v6, v3);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    v9 = sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "ProximityReaderSceneUI server init", v12, 2u);
    }

    v9 = (*(v8 + 8))(v3, v7);
  }

  __chkstk_darwin(v9);
  aBlock[-2] = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100002464;
  *(v13 + 24) = &aBlock[-4];
  aBlock[4] = sub_100002540;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002568;
  aBlock[3] = &unk_10001C938;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();

  v16 = [v15 listenerWithConfigurator:v14];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v18 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener;
    swift_beginAccess();
    v19 = *&v5[v18];
    *&v5[v18] = v16;

    return v5;
  }

  return result;
}

uint64_t sub_100002388(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000023F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100002464(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100008B48();
  v5 = *v4;
  v6 = v4[1];

  v7 = String._bridgeToObjectiveC()();

  [a1 setDomain:v7];

  v8 = sub_100008B54();
  v9 = *v8;
  v10 = v8[1];

  v11 = String._bridgeToObjectiveC()();

  [a1 setService:v11];

  return [a1 setDelegate:v3];
}

uint64_t sub_100002540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100002568(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000025BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000025F8()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  else
  {
    v9 = sub_100008DA0();
    v10 = sub_100008DA8();
    sub_100008DB4(v9 & 1, v0, 0x6574617669746361, 0xEA00000000002928, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = (*((swift_isaMask & *v0) + 0x60))(v8);
  if (v12)
  {
    v13 = v12;
    [v12 activate];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000027B0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  else
  {
    v8 = sub_100008DA0();
    v9 = sub_100008DA8();
    sub_100008DB4(v8 & 1, v0, 0x6164696C61766E69, 0xEC00000029286574, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  return (*((swift_isaMask & *v0) + 0x80))(0);
}

id sub_1000029F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProximityReaderSceneUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002A70(void *a1)
{
  v2 = v1;
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - v9;
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_100008C08();
  sub_1000023F4(v13, v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v50 = v10;
  if (v17 == 1)
  {
    sub_100002FAC(v12, &qword_100021930, &unk_100013460);
  }

  else
  {
    v46 = v15;
    v47 = v2;
    v48 = a1;
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "ProximityReaderSceneServerHandle listener: %@", v21, 0xCu);
      sub_100002FAC(v22, &unk_100021A20, &qword_1000134C0);
    }

    v15 = v46;
    (*(v46 + 8))(v12, v14);
    v2 = v47;
    a1 = v48;
  }

  v24 = [a1 remoteToken];
  v25 = sub_100008B54();
  v26 = *v25;
  v27 = v25[1];

  v28 = String._bridgeToObjectiveC()();

  LODWORD(v27) = [v24 hasEntitlement:v28];

  v29 = v13;
  if (v27)
  {
    v30 = v50;
    sub_1000023F4(v13, v50);
    if (v16(v30, 1, v14) == 1)
    {
      sub_100002FAC(v30, &qword_100021930, &unk_100013460);
    }

    else
    {
      v32 = a1;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = v30;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v32;
        *v37 = v32;
        v38 = v32;
        _os_log_impl(&_mh_execute_header, v33, v34, "ProximityReaderSceneServerHandle accepting: %@", v36, 0xCu);
        sub_100002FAC(v37, &unk_100021A20, &qword_1000134C0);

        v30 = v35;
      }

      (*(v15 + 8))(v30, v14);
    }

    type metadata accessor for SceneUIServerHandle();
    v39 = sub_1000037B4(a1);
    v40 = *((swift_isaMask & *v2) + 0x80);
    v41 = v39;
    v40(v39);
  }

  else
  {
    v31 = v49;
    sub_1000023F4(v29, v49);
    if (v16(v31, 1, v14) == 1)
    {
      sub_100002FAC(v31, &qword_100021930, &unk_100013460);
    }

    else
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "ProximityReaderSceneUIServer connection to service denied", v44, 2u);
      }

      (*(v15 + 8))(v31, v14);
    }

    [a1 invalidate];
  }
}

uint64_t sub_100002FAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002388(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001DF8();
  v4 = *((swift_isaMask & **v3) + 0x90);
  v5 = *v3;
  v4();

  v6 = static CommandLine.argc.getter();
  v7 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for ProximityReaderSceneUIAppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v6, v7, 0, v9);

  return 0;
}

void *sub_1000030E0()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000312C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000031E4()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_currentScene;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100003230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_currentScene;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000032E8()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_readerServiceEndpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100003334(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_readerServiceEndpoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000033EC()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_userInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100003434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_userInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000034EC()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_uiSessionRole;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100003538(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_uiSessionRole;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000035F0()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  }

  else
  {
    v4 = sub_100008B54();
    v5 = *v4;
    v6 = v4[1];

    v7 = String._bridgeToObjectiveC()();

    v8 = [objc_opt_self() interfaceWithIdentifier:v7];

    v9 = objc_opt_self();
    v10 = [v9 protocolForProtocol:&OBJC_PROTOCOL___ProximityReaderSceneUIServerInterface];
    [v8 setServer:v10];

    v11 = [v9 protocolForProtocol:&OBJC_PROTOCOL___ProximityReaderSceneUIClientInterface];
    [v8 setClient:v11];

    [v8 setClientMessagingExpectation:0];
    v12 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_100003740(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface) = a1;
  return _objc_release_x1();
}

void (*sub_100003754(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000035F0();
  return sub_10000379C;
}

void sub_10000379C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface) = v2;
}

uint64_t sub_1000037E8(void *a1)
{
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_currentScene] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_readerServiceEndpoint] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_userInfo] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_uiSessionRole] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface] = 0;
  v10 = type metadata accessor for SceneUIServerHandle();
  v34.receiver = v1;
  v34.super_class = v10;
  v11 = objc_msgSendSuper2(&v34, "init");
  v31 = sub_100008C08();
  sub_1000023F4(v31, v9);
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v13 = *(v32 + 48);
  if (v13(v9, 1, v12) == 1)
  {
    sub_100002FAC(v9, &qword_100021930, &unk_100013460);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "SceneUIServerHandle init", v16, 2u);
    }

    (*(v32 + 8))(v9, v12);
  }

  v17 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection;
  swift_beginAccess();
  v18 = *&v11[v17];
  *&v11[v17] = a1;
  v19 = a1;

  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100003CD8;
  *(v21 + 24) = v20;
  aBlock[4] = sub_100002540;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002568;
  aBlock[3] = &unk_10001C9B0;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  v24 = v11;
  v25 = v23;

  [v25 configureConnection:v22];

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    sub_1000023F4(v31, v7);
    if (v13(v7, 1, v12) == 1)
    {
      sub_100002FAC(v7, &qword_100021930, &unk_100013460);
    }

    else
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "SceneUIServerHandle connection activate", v29, 2u);
      }

      (*(v32 + 8))(v7, v12);
    }

    [v25 activate];

    return v24;
  }

  return result;
}

uint64_t sub_100003C98()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100003CD8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*((swift_isaMask & *v3) + 0xF8))();
  [a1 setInterface:v5];

  sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v6];

  v7 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v7];

  [a1 setInterfaceTarget:v3];
  v18 = sub_100003FA8;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10000412C;
  v17 = &unk_10001CC70;
  v8 = _Block_copy(&v14);
  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v9;
  v18 = sub_100008AE8;
  v19 = v10;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10000412C;
  v17 = &unk_10001CCE8;
  v11 = _Block_copy(&v14);
  v12 = v4;

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
  v18 = sub_100004534;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10000412C;
  v17 = &unk_10001CD10;
  v13 = _Block_copy(&v14);
  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_100003FA8()
{
  v0 = sub_100002388(&qword_100021930, &unk_100013460);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "activation handler", v10, 2u);
  }

  return (*(v6 + 8))(v3, v5);
}

void sub_100004134(void *a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16[-v4];
  v6 = sub_100008C08();
  sub_1000023F4(v6, v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100002FAC(v5, &qword_100021930, &unk_100013460);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "invalidation handler - remote client disconnected", v11, 2u);
    }

    (*(v8 + 8))(v5, v7);
  }

  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*((swift_isaMask & *Strong) + 0x88))(0);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*((swift_isaMask & *v14) + 0x120))(sub_1000043B0, 0);
  }
}

uint64_t sub_1000043B0()
{
  v0 = sub_100002388(&qword_100021930, &unk_100013460);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "could not invalidate remote ui", v10, 2u);
  }

  return (*(v6 + 8))(v3, v5);
}

id sub_100004534(void *a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_100008C08();
  sub_1000023F4(v6, v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100002FAC(v5, &qword_100021930, &unk_100013460);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "interruption handler", v11, 2u);
    }

    (*(v8 + 8))(v5, v7);
  }

  return [a1 activate];
}

uint64_t sub_1000046E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000046FC()
{
  v1 = v0;
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_100008C08();
  sub_1000023F4(v6, v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100002FAC(v5, &qword_100021930, &unk_100013460);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "SceneUIServerHandle destroyed", v11, 2u);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = type metadata accessor for SceneUIServerHandle();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_10000495C(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v118 = a4;
  v116 = a1;
  v112 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v112 - 8);
  v8 = *(v111 + 64);
  __chkstk_darwin(v112);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchQoS();
  v108 = *(v110 - 8);
  v10 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for XPCUserInfoKey();
  v12 = *(v115 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v115);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002388(&qword_100021930, &unk_100013460);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v114 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v103 = &v101 - v21;
  v22 = __chkstk_darwin(v20);
  v106 = &v101 - v23;
  v24 = __chkstk_darwin(v22);
  v104 = &v101 - v25;
  v26 = __chkstk_darwin(v24);
  v105 = &v101 - v27;
  __chkstk_darwin(v26);
  v29 = &v101 - v28;
  v120 = sub_100008C08();
  sub_1000023F4(v120, v29);
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v117 = v31 + 48;
  v121 = v32;
  v33 = v32(v29, 1, v30);
  v119 = a3;
  v113 = v31;
  if (v33 == 1)
  {
    v34 = v30;
    sub_100002FAC(v29, &qword_100021930, &unk_100013460);
  }

  else
  {
    v102 = v5;
    v35 = [a2 debugDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_100008DA0();
    v5 = v102;
    sub_100008DB4(v39 & 1, v102, 0xD00000000000002BLL, 0x8000000100014ED0, v36, v38);

    v34 = v30;
    (*(v31 + 8))(v29, v30);
  }

  v40 = *((swift_isaMask & *v5) + 0xB8);
  v41 = a2;
  v102 = a2;
  v40(a2);
  v42 = *((swift_isaMask & *v5) + 0xD0);
  v43 = v116;

  v42(v44);
  v45 = v115;
  (*(v12 + 104))(v15, enum case for XPCUserInfoKey.uiMode(_:), v115);
  v46 = XPCUserInfoKey.rawValue.getter();
  v48 = v47;
  (*(v12 + 8))(v15, v45);
  v123 = v46;
  v124 = v48;
  AnyHashable.init<A>(_:)();
  if (!v43[2] || (v49 = sub_100007448(aBlock), (v50 & 1) == 0))
  {
    sub_10000748C(aBlock);
    v51 = v34;
    goto LABEL_11;
  }

  sub_100007534(v43[7] + 32 * v49, v125);
  sub_10000748C(aBlock);
  v51 = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v59 = v114;
    sub_1000023F4(v120, v114);
    if (v121(v59, 1, v51) == 1)
    {
      sub_100002FAC(v59, &qword_100021930, &unk_100013460);
    }

    else
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Couldn't get ui mode from userInfo", v62, 2u);
      }

      (*(v113 + 8))(v59, v51);
    }

    sub_1000074E0();
    v63 = swift_allocError();
    *v64 = 0;
    goto LABEL_17;
  }

  v52 = v123;
  v53 = UIMode.init(rawValue:)();
  v54 = v113;
  if (v53 >= 2)
  {
    if (v53 == 2)
    {
      v116 = v41;
      v66 = v104;
      sub_1000023F4(v120, v104);
      v67 = v121(v66, 1, v34);
      v115 = v52;
      v57 = v5;
      if (v67 == 1)
      {
        sub_100002FAC(v66, &qword_100021930, &unk_100013460);
        v58 = SBSUIProximityReaderIDVerifierSceneSpecification_ptr;
        goto LABEL_23;
      }

      v69 = v119;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "activateRemoteUI - ui role = identity", v76, 2u);
      }

      (*(v54 + 8))(v104, v34);
      v58 = SBSUIProximityReaderIDVerifierSceneSpecification_ptr;
LABEL_32:
      v68 = v69;
      goto LABEL_33;
    }

    v73 = v103;
    sub_1000023F4(v120, v103);
    if (v121(v73, 1, v34) == 1)
    {
      sub_100002FAC(v73, &qword_100021930, &unk_100013460);
    }

    else
    {
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Invalid ui mode", v99, 2u);
      }

      (*(v54 + 8))(v73, v34);
    }

    sub_1000074E0();
    v63 = swift_allocError();
    *v100 = 1;
LABEL_17:
    v119(v63);
  }

  v116 = v41;
  v55 = v105;
  sub_1000023F4(v120, v105);
  v56 = v121(v55, 1, v34);
  v115 = v52;
  v57 = v5;
  if (v56 != 1)
  {
    v69 = v119;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "activateRemoteUI - ui role = transaction", v72, 2u);
    }

    (*(v54 + 8))(v105, v34);
    v58 = SBSUIProximityReaderSceneSpecification_ptr;
    goto LABEL_32;
  }

  sub_100002FAC(v55, &qword_100021930, &unk_100013460);
  v58 = SBSUIProximityReaderSceneSpecification_ptr;
LABEL_23:
  v68 = v119;
LABEL_33:
  v77 = [objc_allocWithZone(*v58) init];
  v78 = [v77 uiSceneSessionRole];

  v79 = v78;
  v80 = v57;
  (*((swift_isaMask & *v57) + 0xE8))();
  v81 = v106;
  sub_1000023F4(v120, v106);
  if (v121(v81, 1, v34) == 1)
  {
    sub_100002FAC(v81, &qword_100021930, &unk_100013460);
  }

  else
  {
    v121 = v34;
    v82 = v116;
    v83 = v79;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138412802;
      *(v86 + 4) = v82;
      *(v86 + 12) = 2112;
      *(v86 + 14) = v83;
      *v87 = v102;
      v87[1] = v79;
      *(v86 + 22) = 2048;
      *(v86 + 24) = v115;
      v88 = v82;
      v89 = v83;
      _os_log_impl(&_mh_execute_header, v84, v85, "activateRemoteUI ep: %@ role: %@ mode: %ld", v86, 0x20u);
      sub_100002388(&unk_100021A20, &qword_1000134C0);
      swift_arrayDestroy();
    }

    (*(v113 + 8))(v81, v121);
    v68 = v119;
  }

  (*((swift_isaMask & *v80) + 0xA0))(0);
  sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
  v90 = static OS_dispatch_queue.main.getter();
  v91 = swift_allocObject();
  v91[2] = v79;
  v91[3] = v68;
  v91[4] = v118;
  aBlock[4] = sub_100007590;
  aBlock[5] = v91;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059F4;
  aBlock[3] = &unk_10001CA00;
  v92 = _Block_copy(aBlock);
  v93 = v79;

  v94 = v107;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000078C0(&qword_100021B98, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002388(&qword_100021BA0, &qword_1000134B8);
  sub_10000759C();
  v95 = v109;
  v96 = v112;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v92);

  (*(v111 + 8))(v95, v96);
  return (*(v108 + 8))(v94, v110);
}

uint64_t sub_100005728(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UISceneSessionActivationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002388(&qword_100021930, &unk_100013460);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_100008C08();
  sub_1000023F4(v15, v14);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_100002FAC(v14, &qword_100021930, &unk_100013460);
  }

  else
  {
    v26 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = a2;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "activateRemoteUI() activateSceneSession", v20, 2u);
      a2 = v25;
    }

    (*(v17 + 8))(v14, v16);
    a1 = v26;
  }

  v21 = a1;
  UISceneSessionActivationRequest.init(role:userActivity:options:)();
  v22 = [objc_opt_self() sharedApplication];
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;

  UIApplication.activateSceneSession(for:errorHandler:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000059F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100005AF4(uint64_t a1, uint64_t a2)
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

void sub_100005B58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin(v39);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002388(&qword_100021930, &unk_100013460);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_100008C08();
  sub_1000023F4(v17, v16);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    v20 = sub_100002FAC(v16, &qword_100021930, &unk_100013460);
  }

  else
  {
    v38 = v12;
    v21 = sub_100008DA0();
    v22 = sub_100008DA8();
    v12 = v38;
    sub_100008DB4(v21 & 1, v3, 0xD000000000000016, 0x8000000100014F00, v22, v23);

    v20 = (*(v19 + 8))(v16, v18);
  }

  v24 = (*((swift_isaMask & *v3) + 0xE0))(v20);
  if (v24)
  {
    v25 = v24;
    sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = a1;
    v27[4] = a2;
    aBlock[4] = sub_10000764C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000059F4;
    aBlock[3] = &unk_10001CA50;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000078C0(&qword_100021B98, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002388(&qword_100021BA0, &qword_1000134B8);
    sub_10000759C();
    v30 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v42 + 8))(v8, v30);
    (*(v40 + 8))(v12, v41);
  }

  v31 = (*((swift_isaMask & *v3) + 0xA0))(0);
  v32 = (*((swift_isaMask & *v3) + 0x80))(v31);
  if (v32)
  {
    v33 = v32;
    [v32 invalidate];
  }

  v34 = sub_100001DF8();
  v35 = *((swift_isaMask & **v34) + 0x98);
  v36 = *v34;
  v35();
}

void sub_100006070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v44 - v5;
  v48 = objc_opt_self();
  v6 = [v48 sharedApplication];
  v7 = [v6 connectedScenes];

  v8 = sub_1000088DC(0, &qword_100021C78, UIScene_ptr);
  sub_100008924();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = v55[4];
    v10 = v55[5];
    v11 = v55[6];
    v12 = v55[7];
    v13 = v55[8];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);
  }

  v44 = v11;
  v17 = (v11 + 64) >> 6;
  v47 = v55;
  v46 = v9;
  while (v9 < 0)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28 || (v53 = v28, swift_dynamicCast(), v23 = aBlock[0], v26 = v12, v27 = v13, !aBlock[0]))
    {
LABEL_31:
      sub_10000898C();
      return;
    }

LABEL_20:
    v29 = [v23 session];
    v30 = [v29 role];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v37 = sub_100008C08();
    v38 = v52;
    sub_1000023F4(v37, v52);
    v39 = type metadata accessor for Logger();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_100002FAC(v38, &qword_100021930, &unk_100013460);
    }

    else
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "invalidateRemoteUI destroying scene", v43, 2u);
      }

      (*(v40 + 8))(v52, v39);
    }

    v18 = [v48 sharedApplication];
    v19 = [v23 session];
    v20 = swift_allocObject();
    v21 = v50;
    *(v20 + 16) = v49;
    *(v20 + 24) = v21;
    v55[2] = sub_1000089CC;
    v55[3] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v55[0] = sub_1000067D8;
    v55[1] = &unk_10001CC20;
    v22 = _Block_copy(aBlock);

    [v18 requestSceneSessionDestruction:v19 options:0 errorHandler:v22];
    _Block_release(v22);

    v23 = v19;
    v9 = v46;
LABEL_10:

    v12 = v26;
    v13 = v27;
  }

  v24 = v12;
  v25 = v13;
  v26 = v12;
  if (v13)
  {
LABEL_16:
    v27 = (v25 - 1) & v25;
    v23 = *(*(v9 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v17)
    {
      goto LABEL_31;
    }

    v25 = *(v10 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000065B8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  v7 = sub_100002388(&qword_100021930, &unk_100013460);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_100008C08();
  sub_1000023F4(v11, v10);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_100002FAC(v10, &qword_100021930, &unk_100013460);
  }

  else
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = a4;
      v17 = v16;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, v22, v17, 0xCu);
      sub_100002FAC(v18, &unk_100021A20, &qword_1000134C0);
    }

    (*(v13 + 8))(v10, v12);
  }

  return a2(a1);
}

void sub_1000067E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000068D8()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD000000000000016, 0x8000000100014F20, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

BOOL sub_100006BB8(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x98))();
  v4 = v3;
  if (v3)
  {

    v5 = [objc_opt_self() sharedApplication];
    v6 = [a1 session];
    v11[4] = sub_100006D40;
    v11[5] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000067D8;
    v11[3] = &unk_10001CA78;
    v7 = _Block_copy(v11);
    [v5 requestSceneSessionDestruction:v6 options:0 errorHandler:v7];
    _Block_release(v7);
  }

  else
  {
    v8 = *((swift_isaMask & *v1) + 0xA0);
    v9 = a1;
    v8(a1);
  }

  return v4 == 0;
}

uint64_t sub_100006D40()
{
  v0 = sub_100002388(&qword_100021930, &unk_100013460);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "~~~~ Could not close scene %@", v10, 0xCu);
    sub_100002FAC(v11, &unk_100021A20, &qword_1000134C0);
  }

  return (*(v6 + 8))(v3, v5);
}

Swift::Int sub_100006F80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100006FF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100007050(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000070C8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100007148@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000718C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000071D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100007200(uint64_t a1)
{
  v2 = sub_1000078C0(&qword_100021C68, type metadata accessor for Role);
  v3 = sub_1000078C0(&qword_100021C70, type metadata accessor for Role);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000072BC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000072F8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000734C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000073C0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100007448(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000079D8(a1, v4);
}

unint64_t sub_1000074E0()
{
  result = qword_100021B88;
  if (!qword_100021B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B88);
  }

  return result;
}

uint64_t sub_100007534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000759C()
{
  result = qword_100021BA8;
  if (!qword_100021BA8)
  {
    sub_100007600(&qword_100021BA0, &qword_1000134B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BA8);
  }

  return result;
}

uint64_t sub_100007600(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000765C()
{
  result = qword_100021BB8;
  if (!qword_100021BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UISceneError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UISceneError(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for Role()
{
  if (!qword_100021C48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100021C48);
    }
  }
}

uint64_t sub_1000078C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007998()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000079D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100008A14(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000748C(v8);
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

uint64_t sub_100007AA0(uint64_t a1, void *a2, void *a3, void (**a4)(const void *, void *))
{
  v119 = a1;
  v105 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v105 - 8);
  v7 = *(v111 + 64);
  __chkstk_darwin(v105);
  v109 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchQoS();
  v108 = *(v110 - 8);
  v9 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCUserInfoKey();
  v117 = *(v11 - 8);
  v118 = v11;
  v12 = *(v117 + 64);
  __chkstk_darwin(v11);
  v116 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002388(&qword_100021930, &unk_100013460);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v112 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v106 = &v100 - v19;
  v20 = __chkstk_darwin(v18);
  v103 = &v100 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v100 - v23;
  v25 = __chkstk_darwin(v22);
  v113 = &v100 - v26;
  __chkstk_darwin(v25);
  v28 = &v100 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  v114 = a4;
  _Block_copy(a4);
  v122 = sub_100008C08();
  sub_1000023F4(v122, v28);
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  v121 = *(v31 + 48);
  v32 = v121(v28, 1, v30);
  v120 = v31 + 48;
  v102 = v24;
  v115 = v31;
  if (v32 == 1)
  {
    sub_100002FAC(v28, &qword_100021930, &unk_100013460);
    v33 = a2;
  }

  else
  {
    v34 = v31;
    v35 = [a2 debugDescription];
    v33 = a2;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v29;
    v39 = v38;

    v40 = sub_100008DA0();
    sub_100008DB4(v40 & 1, a3, 0xD00000000000002BLL, 0x8000000100014ED0, v36, v39);
    v29 = v37;

    (*(v34 + 8))(v28, v30);
  }

  v41 = *((swift_isaMask & *a3) + 0xB8);
  v104 = v33;
  v101 = v33;
  v41(v33);
  v42 = *((swift_isaMask & *a3) + 0xD0);
  v43 = v119;

  v42(v44);
  v45 = v116;
  v46 = v117;
  v47 = v118;
  (*(v117 + 104))(v116, enum case for XPCUserInfoKey.uiMode(_:), v118);
  v48 = XPCUserInfoKey.rawValue.getter();
  v50 = v49;
  (*(v46 + 8))(v45, v47);
  v124 = v48;
  v125 = v50;
  AnyHashable.init<A>(_:)();
  if (!*(v43 + 16) || (v51 = sub_100007448(aBlock), (v52 & 1) == 0))
  {
    sub_10000748C(aBlock);
    v54 = v121;
    goto LABEL_11;
  }

  sub_100007534(*(v43 + 56) + 32 * v51, v126);
  sub_10000748C(aBlock);
  v53 = swift_dynamicCast();
  v54 = v121;
  if (!v53)
  {
LABEL_11:
    v58 = v113;
    sub_1000023F4(v122, v113);
    v59 = v54(v58, 1, v30);
    v60 = v115;
    if (v59 == 1)
    {
      sub_100002FAC(v58, &qword_100021930, &unk_100013460);
    }

    else
    {
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Couldn't get ui mode from userInfo", v63, 2u);
      }

      (*(v60 + 8))(v58, v30);
    }

    sub_1000074E0();
    swift_allocError();
    *v64 = 0;
    goto LABEL_17;
  }

  v55 = v124;
  v56 = UIMode.init(rawValue:)();
  if (v56 >= 2)
  {
    if (v56 == 2)
    {
      v119 = v55;
      v67 = v103;
      sub_1000023F4(v122, v103);
      if (v54(v67, 1, v30) == 1)
      {
        sub_100002FAC(v67, &qword_100021930, &unk_100013460);
      }

      else
      {
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "activateRemoteUI - ui role = identity", v75, 2u);
          v54 = v121;
        }

        (*(v115 + 8))(v103, v30);
      }

      v71 = SBSUIProximityReaderIDVerifierSceneSpecification_ptr;
      goto LABEL_33;
    }

    v72 = v102;
    sub_1000023F4(v122, v102);
    if (v54(v72, 1, v30) == 1)
    {
      sub_100002FAC(v72, &qword_100021930, &unk_100013460);
    }

    else
    {
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Invalid ui mode", v98, 2u);
      }

      (*(v115 + 8))(v72, v30);
    }

    sub_1000074E0();
    swift_allocError();
    *v99 = 1;
LABEL_17:
    v65 = _convertErrorToNSError(_:)();
    v114[2](v114, v65);
  }

  v119 = v55;
  v57 = v106;
  sub_1000023F4(v122, v106);
  if (v54(v57, 1, v30) == 1)
  {
    sub_100002FAC(v57, &qword_100021930, &unk_100013460);
  }

  else
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "activateRemoteUI - ui role = transaction", v70, 2u);
      v54 = v121;
    }

    (*(v115 + 8))(v106, v30);
  }

  v71 = SBSUIProximityReaderSceneSpecification_ptr;
LABEL_33:
  v76 = [objc_allocWithZone(*v71) init];
  v77 = [v76 uiSceneSessionRole];

  v78 = v77;
  (*((swift_isaMask & *a3) + 0xE8))();
  v79 = v112;
  sub_1000023F4(v122, v112);
  if (v54(v79, 1, v30) == 1)
  {
    sub_100002FAC(v79, &qword_100021930, &unk_100013460);
  }

  else
  {
    v122 = a3;
    v80 = v104;
    v81 = v78;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v120 = v30;
      v85 = v84;
      v86 = swift_slowAlloc();
      v121 = v29;
      *v85 = 138412802;
      *(v85 + 4) = v80;
      *(v85 + 12) = 2112;
      *(v85 + 14) = v81;
      *v86 = v101;
      v86[1] = v78;
      *(v85 + 22) = 2048;
      *(v85 + 24) = v119;
      v87 = v80;
      v88 = v81;
      _os_log_impl(&_mh_execute_header, v82, v83, "activateRemoteUI ep: %@ role: %@ mode: %ld", v85, 0x20u);
      sub_100002388(&unk_100021A20, &qword_1000134C0);
      swift_arrayDestroy();
      v29 = v121;

      v30 = v120;
    }

    (*(v115 + 8))(v112, v30);
    a3 = v122;
  }

  (*((swift_isaMask & *a3) + 0xA0))(0);
  sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
  v89 = static OS_dispatch_queue.main.getter();
  v90 = swift_allocObject();
  v90[2] = v78;
  v90[3] = sub_100008B40;
  v90[4] = v29;
  aBlock[4] = sub_100008B44;
  aBlock[5] = v90;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059F4;
  aBlock[3] = &unk_10001CBD0;
  v91 = _Block_copy(aBlock);
  v92 = v78;

  v93 = v107;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000078C0(&qword_100021B98, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002388(&qword_100021BA0, &qword_1000134B8);
  sub_10000759C();
  v94 = v109;
  v95 = v105;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v91);

  (*(v111 + 8))(v94, v95);
  (*(v108 + 8))(v93, v110);
}

uint64_t sub_10000889C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000088DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100008924()
{
  result = qword_100021C80;
  if (!qword_100021C80)
  {
    sub_1000088DC(255, &qword_100021C78, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C80);
  }

  return result;
}

uint64_t sub_100008994()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008A70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008AA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B70(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008C2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  sub_1000098D0(v3, a2);
  v4 = sub_100008B70(v3, a2);
  Logger.init(subsystem:category:)();
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_100008D00(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_100002388(&qword_100021930, &unk_100013460);

  return sub_100008B70(v3, a2);
}

uint64_t sub_100008D60()
{
  result = MCGestaltIsInternalBuild();
  byte_1000229A8 = result;
  return result;
}

uint64_t sub_1000091A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009270(v11, 0, 0, 1, a1, a2);
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
    sub_100007534(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009880(v11);
  return v7;
}

unint64_t sub_100009270(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000937C(a5, a6);
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

char *sub_10000937C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000093C8(a1, a2);
  sub_1000094F8(&off_10001CD78);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000093C8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000095E4(v5, 0);
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
        v7 = sub_1000095E4(v10, 0);
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

uint64_t sub_1000094F8(uint64_t result)
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

  result = sub_100009658(result, v12, 1, v3);
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

void *sub_1000095E4(uint64_t a1, uint64_t a2)
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

  sub_100002388(&unk_100021F50, ">$");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009658(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002388(&unk_100021F50, ">$");
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

uint64_t sub_10000974C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
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

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t sub_100009808()
{
  result = qword_100021DB0;
  if (!qword_100021DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DB0);
  }

  return result;
}

uint64_t sub_100009880(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_1000098D0(uint64_t a1, uint64_t *a2)
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

void sub_100009934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_100002388(&qword_100021930, &unk_100013460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  v13 = sub_100008C08();
  sub_1000023F4(v13, v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_100009BB0(v12);
  }

  else
  {
    v25[0] = a4;
    v25[1] = a3;
    v16 = sub_100008DA0();
    v17 = sub_100008DA8();
    sub_100008DB4(v16 & 1, v5, 0xD000000000000042, 0x8000000100015140, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  type metadata accessor for IdentityRemoteSceneController();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  dispatch thunk of BaseRemoteSceneController.setup(scene:userInfo:endpoint:handle:)();
  v20 = v19;
  [a1 setRootViewController:v20];
  [a1 setContentsPosition:0];
  v21 = *((swift_isaMask & *v5) + 0x68);
  v22 = a1;
  v23 = v21(a1);
  v24 = (*((swift_isaMask & *v5) + 0x60))(v23);
  [v24 setRootViewController:v20];
}

uint64_t sub_100009BB0(uint64_t a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100009CBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100009CF0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - v7;
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_100008C08();
  sub_1000023F4(v11, v10);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    v15 = sub_100009BB0(v10);
  }

  else
  {
    v29 = v11;
    v16 = sub_100008DA0();
    v17 = sub_100008DA8();
    v28 = v14;
    v11 = v29;
    sub_100008DB4(v16 & 1, v0, 0xD000000000000016, 0x80000001000151E0, v17, v18);
    v14 = v28;

    v15 = (*(v13 + 8))(v10, v12);
  }

  v19 = (*((swift_isaMask & *v0) + 0x60))(v15);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 rootViewController];

    if (v21)
    {
      type metadata accessor for IdentityRemoteSceneController();
      if (swift_dynamicCastClass())
      {
        sub_1000023F4(v11, v8);
        if (v14(v8, 1, v12) == 1)
        {
          sub_100009BB0(v8);
        }

        else
        {
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v25, v26, "IdentityUISceneDelegate:scene() didDisconnect: CLEANUP!!!", v27, 2u);
          }

          (*(v13 + 8))(v8, v12);
        }

        dispatch thunk of BaseRemoteSceneController.disconnected()();

        return;
      }
    }
  }

  sub_1000023F4(v11, v5);
  if (v14(v5, 1, v12) == 1)
  {
    sub_100009BB0(v5);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "IdentityUISceneDelegate:scene() didDisconnect: cannot get root controller", v24, 2u);
    }

    (*(v13 + 8))(v5, v12);
  }
}

uint64_t sub_10000A108()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_100008C08();
  sub_10000DA34(v5, v4, &qword_100021930, &unk_100013460);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v18 = *&v9[OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action];
    v19 = v13;
    v14 = v18;
    sub_100002388(&qword_100021F48, &qword_100013808);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000091A4(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "UISceneActionHandler - Received action: %s", v12, 0xCu);
    sub_100009880(v13);
  }

  return (*(v7 + 8))(v4, v6);
}

void sub_10000A340(void *a1)
{
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action);
  if (v7)
  {
    v29 = v7;
    if ([v29 canSendResponse])
    {
      v8 = sub_100008C08();
      sub_10000DA34(v8, v6, &qword_100021930, &unk_100013460);
      v9 = type metadata accessor for Logger();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        sub_100002FAC(v6, &qword_100021930, &unk_100013460);
        v11 = a1;
      }

      else
      {
        v11 = a1;
        v13 = v29;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v30 = a1;
          v31 = v28;
          *v16 = 136315394;
          v17 = v11;
          sub_100002388(&unk_100021E90, &qword_1000137B8);
          v18 = String.init<A>(describing:)();
          v20 = sub_1000091A4(v18, v19, &v31);
          v26 = v14;
          v21 = v15;
          v22 = v20;

          *(v16 + 4) = v22;
          *(v16 + 12) = 2112;
          *(v16 + 14) = v13;
          v23 = v27;
          *v27 = v7;
          v24 = v13;
          v25 = v26;
          _os_log_impl(&_mh_execute_header, v26, v21, "UISceneActionHandler - Sending response: %s action %@", v16, 0x16u);
          sub_100002FAC(v23, &unk_100021A20, &qword_1000134C0);

          sub_100009880(v28);
        }

        else
        {
        }

        (*(v10 + 8))(v6, v9);
      }

      [v29 sendResponse:v11];
    }

    else
    {
      v12 = v29;
    }
  }
}

uint64_t sub_10000A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_100002388(&qword_100021930, &unk_100013460) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000A804, 0, 0);
}

uint64_t sub_10000A804()
{
  type metadata accessor for AppManager();
  static AppManager.shared.getter();
  v1 = dispatch thunk of AppManager.callHandler.getter();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  if (v1)
  {
    v20 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_10000AABC;

    return v20();
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = sub_100008C08();
    sub_10000DA34(v8, v7, &qword_100021930, &unk_100013460);
    v9 = type metadata accessor for Logger();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_100002FAC(*(v0 + 32), &qword_100021930, &unk_100013460);
    }

    else
    {
      v11 = *(v0 + 32);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "BSAction activity can't continue, ignore", v14, 2u);
      }

      v15 = *(v0 + 32);

      (*(v10 + 8))(v15, v9);
    }

    [*(v0 + 16) setProceed:0];
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10000AABC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10000AF0C;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v7 = sub_10000ABE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000ABE8()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 40);
    v2 = sub_100008C08();
    sub_10000DA34(v2, v1, &qword_100021930, &unk_100013460);
    v3 = type metadata accessor for Logger();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_100002FAC(*(v0 + 40), &qword_100021930, &unk_100013460);
    }

    else
    {
      v10 = *(v0 + 40);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "BSAction activity handling success, proceed ", v13, 2u);
      }

      v14 = *(v0 + 40);

      (*(v4 + 8))(v14, v3);
    }

    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    [*(v0 + 16) setProceed:1];
    sub_10000DA24(v15);
  }

  else
  {
    v5 = *(v0 + 56);
    sub_10000DA24(*(v0 + 48));
    v6 = *(v0 + 32);
    v7 = sub_100008C08();
    sub_10000DA34(v7, v6, &qword_100021930, &unk_100013460);
    v8 = type metadata accessor for Logger();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_100002FAC(*(v0 + 32), &qword_100021930, &unk_100013460);
    }

    else
    {
      v17 = *(v0 + 32);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "BSAction activity can't continue, ignore", v20, 2u);
      }

      v21 = *(v0 + 32);

      (*(v9 + 8))(v21, v8);
    }

    [*(v0 + 16) setProceed:0];
  }

  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v24 = *(v0 + 24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10000AF0C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  sub_10000DA24(*(v0 + 48));
  v3 = sub_100008C08();
  sub_10000DA34(v3, v2, &qword_100021930, &unk_100013460);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_100002FAC(*(v0 + 24), &qword_100021930, &unk_100013460);
  }

  else
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 24);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "BSAction activity handling failed, do not proceed, thrown %@", v11, 0xCu);
      sub_100002FAC(v12, &unk_100021A20, &qword_1000134C0);
    }

    v14 = *(v0 + 24);

    (*(v5 + 8))(v14, v4);
  }

  v15 = *(v0 + 72);
  [*(v0 + 16) setProceed:0];

  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = *(v0 + 24);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10000B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002388(&qword_100021F40, &qword_1000137E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000DA34(a3, v27 - v11, &qword_100021F40, &qword_1000137E0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002FAC(v12, &qword_100021F40, &qword_1000137E0);
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

      sub_100002FAC(a3, &qword_100021F40, &qword_1000137E0);

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

  sub_100002FAC(a3, &qword_100021F40, &qword_1000137E0);
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

uint64_t sub_10000B454()
{
  v1 = *(*(sub_100002388(&qword_100021930, &unk_100013460) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10000B504, 0, 0);
}

uint64_t sub_10000B504()
{
  type metadata accessor for AppManager();
  static AppManager.shared.getter();
  v1 = dispatch thunk of AppManager.homeButtonHandler.getter();
  v3 = v2;

  v0[5] = v1;
  v0[6] = v3;
  if (v1)
  {
    v20 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10000B7A8;

    return v20();
  }

  else
  {
    v7 = v0[3];
    v8 = sub_100008C08();
    sub_10000DA34(v8, v7, &qword_100021930, &unk_100013460);
    v9 = type metadata accessor for Logger();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_100002FAC(v0[3], &qword_100021930, &unk_100013460);
    }

    else
    {
      v11 = v0[3];
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "BSAction button can't continue, ignore", v14, 2u);
      }

      v15 = v0[3];

      (*(v10 + 8))(v15, v9);
    }

    v17 = v0[3];
    v16 = v0[4];
    v18 = v0[2];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10000B7A8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_10000BBB4;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v7 = sub_10000B8D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000B8D4()
{
  if (*(v0 + 72) == 1)
  {
    v1 = *(v0 + 32);
    v2 = sub_100008C08();
    sub_10000DA34(v2, v1, &qword_100021930, &unk_100013460);
    v3 = type metadata accessor for Logger();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      v5 = *(v0 + 48);
      v6 = *(v0 + 32);
      sub_10000DA24(*(v0 + 40));
      sub_100002FAC(v6, &qword_100021930, &unk_100013460);
      goto LABEL_13;
    }

    v10 = *(v0 + 32);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "BSAction button handling success, proceed ", v13, 2u);
    }

    v14 = *(v0 + 48);
    v15 = *(v0 + 32);
    sub_10000DA24(*(v0 + 40));
  }

  else
  {
    v7 = *(v0 + 48);
    sub_10000DA24(*(v0 + 40));
    v8 = *(v0 + 24);
    v9 = sub_100008C08();
    sub_10000DA34(v9, v8, &qword_100021930, &unk_100013460);
    v3 = type metadata accessor for Logger();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v8, 1, v3) == 1)
    {
      sub_100002FAC(*(v0 + 24), &qword_100021930, &unk_100013460);
      goto LABEL_13;
    }

    v16 = *(v0 + 24);
    v11 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v11, v17, "BSAction button can't continue, ignore", v18, 2u);
    }

    v15 = *(v0 + 24);
  }

  (*(v4 + 8))(v15, v3);
LABEL_13:
  v20 = *(v0 + 24);
  v19 = *(v0 + 32);
  v21 = *(v0 + 16);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10000BBB4()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_10000DA24(v0[5]);
  v3 = sub_100008C08();
  sub_10000DA34(v3, v2, &qword_100021930, &unk_100013460);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[8];
  v8 = v0[2];
  if (v6 == 1)
  {
    v9 = v0[8];

    sub_100002FAC(v8, &qword_100021930, &unk_100013460);
  }

  else
  {
    v10 = v0[8];
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[8];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "BSAction button handling failed, do not proceed, thrown %@", v15, 0xCu);
      sub_100002FAC(v16, &unk_100021A20, &qword_1000134C0);
    }

    else
    {
    }

    (*(v5 + 8))(v0[2], v4);
  }

  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];

  v21 = v0[1];

  return v21();
}

id sub_10000BDF8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000BE78()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BEC0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BFB8;

  return v7(a1);
}

uint64_t sub_10000BFB8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000C0B0(void *a1, void *a2)
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

      sub_10000D6F4();
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

    v20 = sub_10000C2C8(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10000C4A8(v21 + 1);
    }

    v19 = v8;
    sub_10000C6D0(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000D6F4();
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
    sub_10000C754(v19, v13, isUniquelyReferenced_nonNull_native);
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

Swift::Int sub_10000C2C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002388(&qword_100021F38, "&$");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000D6F4();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000C4A8(v9 + 1);
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

uint64_t sub_10000C4A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002388(&qword_100021F38, "&$");
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

unint64_t sub_10000C6D0(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10000C754(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000C4A8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000C8B4();
      goto LABEL_12;
    }

    sub_10000CA04(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000D6F4();
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

id sub_10000C8B4()
{
  v1 = v0;
  sub_100002388(&qword_100021F38, "&$");
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

uint64_t sub_10000CA04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002388(&qword_100021F38, "&$");
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

uint64_t sub_10000CC18(void *a1)
{
  v3 = sub_100002388(&qword_100021F40, &qword_1000137E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_100002388(&qword_100021930, &unk_100013460);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = sub_100008C08();
    sub_10000DA34(v19, v16, &qword_100021930, &unk_100013460);
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      sub_100002FAC(v16, &qword_100021930, &unk_100013460);
    }

    else
    {
      v27 = v1;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "BSAction: SBUIBackgroundActivityAction received", v30, 2u);
      }

      (*(v21 + 8))(v16, v20);
      v1 = v27;
    }

    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v18;
    v33 = a1;
    sub_10000B154(0, 0, v6, &unk_100013800, v32);

LABEL_21:
    v47 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action);
    *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action) = a1;
    v48 = a1;

    sub_10000A108();
    return 1;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v50 = v22;
    v23 = a1;
    v24 = sub_100008C08();
    sub_10000DA34(v24, v14, &qword_100021930, &unk_100013460);
    v25 = type metadata accessor for Logger();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v14, 1, v25) == 1)
    {
      sub_100002FAC(v14, &qword_100021930, &unk_100013460);
    }

    else
    {
      v49 = v1;
      v38 = v23;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = [v50 buttonEvents];

        _os_log_impl(&_mh_execute_header, v39, v40, "BSAction: SBUIButtonAction received, %lu", v41, 0xCu);
      }

      else
      {

        v39 = v38;
      }

      v1 = v49;

      (*(v26 + 8))(v14, v25);
    }

    v45 = type metadata accessor for TaskPriority();
    (*(*(v45 - 8) + 56))(v6, 1, 1, v45);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    sub_10000B154(0, 0, v6, &unk_1000137F0, v46);

    goto LABEL_21;
  }

  v34 = sub_100008C08();
  sub_10000DA34(v34, v11, &qword_100021930, &unk_100013460);
  v35 = type metadata accessor for Logger();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v11, 1, v35) == 1)
  {
    sub_100002FAC(v11, &qword_100021930, &unk_100013460);
    return 0;
  }

  else
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Unknown action", v44, 2u);
    }

    (*(v36 + 8))(v11, v35);
    return 0;
  }
}

void sub_10000D264(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100002388(&qword_100021930, &unk_100013460);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_100008C08();
  sub_10000DA34(v10, v9, &qword_100021930, &unk_100013460);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_100002FAC(v9, &qword_100021930, &unk_100013460);
  }

  else
  {

    v13 = a2;
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v17 = 136315650;
      sub_10000D6F4();
      HIDWORD(v37) = v16;
      sub_10000D740();
      v18 = Set.description.getter();
      v20 = sub_1000091A4(v18, v19, v42);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v13;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v14;
      v21 = v38;
      *v38 = v13;
      v21[1] = v14;
      v22 = v13;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, BYTE4(v37), "UISceneActionHandler:  Responding to BSActions:%s, for fbsScene %@ uiScene %@", v17, 0x20u);
      sub_100002388(&unk_100021A20, &qword_1000134C0);
      swift_arrayDestroy();

      sub_100009880(v39);
    }

    (*(v12 + 8))(v9, v11);
  }

  v41[1] = &_swiftEmptySetSingleton;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000D6F4();
    sub_10000D740();
    Set.Iterator.init(_cocoa:)();
    a1 = v42[0];
    v24 = v42[1];
    v25 = v42[2];
    v26 = v42[3];
    v27 = v42[4];
  }

  else
  {
    v28 = -1 << *(a1 + 32);
    v24 = a1 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(a1 + 56);

    v26 = 0;
  }

  while (a1 < 0)
  {
    v36 = __CocoaSet.Iterator.next()();
    if (!v36 || (v40 = v36, sub_10000D6F4(), swift_dynamicCast(), v35 = v41[0], v33 = v26, v34 = v27, !v41[0]))
    {
LABEL_25:
      sub_10000898C();
      return;
    }

LABEL_23:
    if (sub_10000CC18(v35))
    {
    }

    else
    {
      sub_10000C0B0(v41, v35);
    }

    v26 = v33;
    v27 = v34;
  }

  v31 = v26;
  v32 = v27;
  v33 = v26;
  if (v27)
  {
LABEL_19:
    v34 = (v32 - 1) & v32;
    v35 = *(*(a1 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v35)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= ((v25 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v32 = *(v24 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t sub_10000D6F4()
{
  result = qword_100021F28;
  if (!qword_100021F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021F28);
  }

  return result;
}

unint64_t sub_10000D740()
{
  result = qword_100021F30;
  if (!qword_100021F30)
  {
    sub_10000D6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F30);
  }

  return result;
}

uint64_t sub_10000D798()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D7D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D85C;

  return sub_10000B454();
}

uint64_t sub_10000D85C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D950()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D990()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DC48;

  return sub_10000A750(v3, v4, v5, v2);
}

uint64_t sub_10000DA24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002388(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000DA9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DAD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC48;

  return sub_10000BEC0(a1, v5);
}

uint64_t sub_10000DB8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D85C;

  return sub_10000BEC0(a1, v5);
}

void sub_10000DC4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_100002388(&qword_100021930, &unk_100013460);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  v13 = sub_100008C08();
  sub_1000023F4(v13, v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_100009BB0(v12);
  }

  else
  {
    v25[0] = a4;
    v25[1] = a3;
    v16 = sub_100008DA0();
    v17 = sub_100008DA8();
    sub_100008DB4(v16 & 1, v5, 0xD000000000000042, 0x8000000100015140, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  type metadata accessor for TapRemoteSceneController();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  dispatch thunk of BaseRemoteSceneController.setup(scene:userInfo:endpoint:handle:)();
  v20 = v19;
  [a1 setRootViewController:v20];
  [a1 setContentsPosition:0];
  v21 = *((swift_isaMask & *v5) + 0x68);
  v22 = a1;
  v23 = v21(a1);
  v24 = (*((swift_isaMask & *v5) + 0x60))(v23);
  [v24 setRootViewController:v20];
}

id sub_10000DF6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000DFA0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - v7;
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_100008C08();
  sub_1000023F4(v11, v10);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    v15 = sub_100009BB0(v10);
  }

  else
  {
    v29 = v11;
    v16 = sub_100008DA0();
    v17 = sub_100008DA8();
    v28 = v14;
    v11 = v29;
    sub_100008DB4(v16 & 1, v0, 0xD000000000000016, 0x80000001000151E0, v17, v18);
    v14 = v28;

    v15 = (*(v13 + 8))(v10, v12);
  }

  v19 = (*((swift_isaMask & *v0) + 0x60))(v15);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 rootViewController];

    if (v21)
    {
      type metadata accessor for TapRemoteSceneController();
      if (swift_dynamicCastClass())
      {
        sub_1000023F4(v11, v8);
        if (v14(v8, 1, v12) == 1)
        {
          sub_100009BB0(v8);
        }

        else
        {
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v25, v26, "TapUISceneDelegate:scene() didDisconnect: CLEANUP!!!", v27, 2u);
          }

          (*(v13 + 8))(v8, v12);
        }

        dispatch thunk of BaseRemoteSceneController.disconnected()();

        return;
      }
    }
  }

  sub_1000023F4(v11, v5);
  if (v14(v5, 1, v12) == 1)
  {
    sub_100009BB0(v5);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TapUISceneDelegate:scene() didDisconnect: cannot get root controller", v24, 2u);
    }

    (*(v13 + 8))(v5, v12);
  }
}

id sub_10000E49C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProximityReaderSceneUIAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000E4D0(void *a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100008C08();
  sub_1000023F4(v6, v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100002FAC(v5, &qword_100021930, &unk_100013460);
  }

  else
  {
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = [v9 role];
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "ProximityReaderSceneUIApplicationDelegate: SBUIProximityReader Configuration - connecting scene session role = %@", v12, 0xCu);
      sub_100002FAC(v13, &unk_100021A20, &qword_1000134C0);
    }

    (*(v8 + 8))(v5, v7);
  }

  v15 = [a1 role];
  v16 = objc_allocWithZone(UISceneConfiguration);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithName:v17 sessionRole:v15];

  return v18;
}

void *sub_10000E7B4()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000E860(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10000E920()
{
  v0 = sub_100002388(&qword_100021930, &unk_100013460);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not destroy scene %@", v10, 0xCu);
    sub_100002FAC(v11, &unk_100021A20, &qword_1000134C0);
  }

  return (*(v6 + 8))(v3, v5);
}

void sub_10000EB18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_10000EBF4()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD000000000000042, 0x8000000100015140, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

void sub_10000ED5C(void *a1)
{
  v2 = v1;
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_100008C08();
  sub_1000023F4(v8, v7);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v11 = a1;
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = v2;
      v16 = v15;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v16 = 136315394;
      ObjectType = swift_getObjectType();
      sub_100002388(&unk_100022038, &qword_1000138A8);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000091A4(v17, v18, &v28);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v11;
      v20 = v24;
      *v24 = a1;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s sendActionResponse: %@", v16, 0x16u);
      sub_100002FAC(v20, &unk_100021A20, &qword_1000134C0);

      sub_100009880(v25);

      v2 = v26;
    }

    (*(v10 + 8))(v7, v9);
  }

  v22 = *&v2[OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_actionHandler];
  sub_10000A340(a1);
}

uint64_t sub_10000F000()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD000000000000016, 0x80000001000151E0, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_10000F2E0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD000000000000018, 0x8000000100015350, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_10000F5C0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD000000000000019, 0x8000000100015370, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_10000F8A0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD00000000000001CLL, 0x8000000100015390, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_10000FB80()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  v9 = sub_100008DA0();
  v10 = sub_100008DA8();
  sub_100008DB4(v9 & 1, v0, 0xD00000000000001BLL, 0x80000001000153B0, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

id sub_10000FED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000FF50(uint64_t a1)
{
  v2 = sub_100011874(&qword_1000220F0);
  v3 = sub_100011874(&unk_100022120);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_10000FFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002388(&qword_1000220F8, &qword_1000138F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1000101DC(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v154 = &v144 - v10;
  v11 = __chkstk_darwin(v9);
  v152 = &v144 - v12;
  v13 = __chkstk_darwin(v11);
  v151 = &v144 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v144 - v16;
  __chkstk_darwin(v15);
  v19 = &v144 - v18;
  v155 = sub_100008C08();
  sub_1000023F4(v155, v19);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v156 = v21[6];
  if (v156(v19, 1, v20) == 1)
  {
    sub_100002FAC(v19, &qword_100021930, &unk_100013460);
  }

  else
  {
    v153 = v17;
    v22 = v2;
    v149 = a1;
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v147 = v20;
      v27 = v26;
      v28 = swift_slowAlloc();
      v148 = v21;
      v145 = v28;
      v146 = swift_slowAlloc();
      aBlock = v146;
      *v27 = 136315394;
      v163 = swift_getObjectType();
      sub_100002388(&unk_100022038, &qword_1000138A8);
      v29 = String.init<A>(describing:)();
      v31 = v8;
      v32 = v2;
      v33 = sub_1000091A4(v29, v30, &aBlock);

      *(v27 + 4) = v33;
      v2 = v32;
      v8 = v31;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v23;
      v34 = v145;
      *v145 = v23;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s:scene() with: %@", v27, 0x16u);
      sub_100002FAC(v34, &unk_100021A20, &qword_1000134C0);
      v21 = v148;

      sub_100009880(v146);

      v20 = v147;
    }

    (v21[1])(v19, v20);
    v17 = v153;
    a1 = v149;
  }

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    sub_1000023F4(v155, v8);
    if (v156(v8, 1, v20) != 1)
    {
      v87 = v2;
      v88 = a1;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v156 = v8;
        v92 = v91;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v92 = 136315394;
        v163 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v95 = String.init<A>(describing:)();
        v97 = v21;
        v98 = sub_1000091A4(v95, v96, &aBlock);

        *(v92 + 4) = v98;
        v21 = v97;
        *(v92 + 12) = 2112;
        *(v92 + 14) = v88;
        *v93 = v88;
        v99 = v88;
        _os_log_impl(&_mh_execute_header, v89, v90, "%s:scene() Got a non UIWindowScene: %@", v92, 0x16u);
        sub_100002FAC(v93, &unk_100021A20, &qword_1000134C0);

        sub_100009880(v94);

        v8 = v156;
      }

      (v21[1])(v8, v20);
      return;
    }

    v85 = v8;
LABEL_16:
    sub_100002FAC(v85, &qword_100021930, &unk_100013460);
    return;
  }

  v37 = v36;
  v153 = a1;
  v38 = sub_100001DF8();
  v39 = *((swift_isaMask & **v38) + 0x78);
  v40 = *v38;
  v41 = v39();

  if (!v41)
  {
    v86 = v154;
    sub_1000023F4(v155, v154);
    if (v156(v86, 1, v20) == 1)
    {
      sub_100002FAC(v86, &qword_100021930, &unk_100013460);
    }

    else
    {
      v101 = v2;
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        aBlock = v105;
        *v104 = 136315138;
        v163 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v106 = String.init<A>(describing:)();
        v108 = sub_1000091A4(v106, v107, &aBlock);

        *(v104 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v102, v103, "%s:scene() Unusable scene handle = nil", v104, 0xCu);
        sub_100009880(v105);
        v86 = v154;
      }

      (v21[1])(v86, v20);
    }

    v109 = [objc_opt_self() sharedApplication];
    v110 = [v37 session];
    v161 = sub_1000118C4;
    v162 = 0;
    aBlock = _NSConcreteStackBlock;
    v158 = 1107296256;
    v159 = sub_1000067D8;
    v160 = &unk_10001CE40;
    v111 = _Block_copy(&aBlock);
    [v109 requestSceneSessionDestruction:v110 options:0 errorHandler:v111];
    _Block_release(v111);

    goto LABEL_40;
  }

  v154 = v2;
  v42 = (*((swift_isaMask & *v41) + 0xB0))();
  if (!v42)
  {
    v100 = v152;
    sub_1000023F4(v155, v152);
    if (v156(v100, 1, v20) == 1)
    {
      sub_100002FAC(v100, &qword_100021930, &unk_100013460);
    }

    else
    {
      v114 = v154;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        aBlock = v118;
        *v117 = 136315138;
        v163 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v119 = String.init<A>(describing:)();
        v121 = sub_1000091A4(v119, v120, &aBlock);

        *(v117 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v115, v116, "%s:scene() Unusable scene endpoint = nil", v117, 0xCu);
        sub_100009880(v118);

        v100 = v152;
      }

      (v21[1])(v100, v20);
    }

    v109 = [objc_opt_self() sharedApplication];
    v110 = [v37 session];
    v161 = sub_10000E91C;
    v162 = 0;
    aBlock = _NSConcreteStackBlock;
    v158 = 1107296256;
    v159 = sub_1000067D8;
    v160 = &unk_10001CE68;
    v122 = _Block_copy(&aBlock);
    [v109 requestSceneSessionDestruction:v110 options:0 errorHandler:v122];
    _Block_release(v122);

    goto LABEL_40;
  }

  v43 = v42;
  v44 = (*((swift_isaMask & *v41) + 0xC8))();
  if (!v44)
  {
    v112 = v151;
    sub_1000023F4(v155, v151);
    if (v156(v112, 1, v20) == 1)
    {
      sub_100002FAC(v112, &qword_100021930, &unk_100013460);
    }

    else
    {
      v123 = v154;
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        aBlock = v156;
        *v126 = 136315138;
        v163 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v127 = String.init<A>(describing:)();
        v129 = v43;
        v130 = sub_1000091A4(v127, v128, &aBlock);

        *(v126 + 4) = v130;
        v43 = v129;
        _os_log_impl(&_mh_execute_header, v124, v125, "%s:scene() Unusable scene userInfo = nil", v126, 0xCu);
        sub_100009880(v156);
      }

      (v21[1])(v151, v20);
    }

    v109 = [objc_opt_self() sharedApplication];
    v110 = [v37 session];
    v161 = sub_1000118C4;
    v162 = 0;
    aBlock = _NSConcreteStackBlock;
    v158 = 1107296256;
    v159 = sub_1000067D8;
    v160 = &unk_10001CE90;
    v131 = _Block_copy(&aBlock);
    [v109 requestSceneSessionDestruction:v110 options:0 errorHandler:v131];
    _Block_release(v131);

LABEL_40:
    return;
  }

  v152 = v44;
  v45 = *((swift_isaMask & *v41) + 0x130);
  v153 = v153;
  if ((v45(v37) & 1) == 0)
  {

    v113 = v153;

    sub_1000023F4(v155, v17);
    if (v156(v17, 1, v20) != 1)
    {
      v148 = v21;
      v132 = v154;
      v133 = v113;
      v153 = v17;
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v156 = v43;
        v138 = v137;
        v155 = swift_slowAlloc();
        aBlock = v155;
        *v136 = 136315394;
        v163 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v139 = String.init<A>(describing:)();
        v141 = v20;
        v142 = sub_1000091A4(v139, v140, &aBlock);

        *(v136 + 4) = v142;
        v20 = v141;
        *(v136 + 12) = 2112;
        *(v136 + 14) = v37;
        *v138 = v37;
        v143 = v133;
        _os_log_impl(&_mh_execute_header, v134, v135, "%s:scene() Duplicate scene: %@", v136, 0x16u);
        sub_100002FAC(v138, &unk_100021A20, &qword_1000134C0);

        sub_100009880(v155);
      }

      else
      {
      }

      (v148[1])(v153, v20);
      return;
    }

    v85 = v17;
    goto LABEL_16;
  }

  v156 = v43;
  v147 = [objc_allocWithZone(UIWindow) initWithWindowScene:v37];
  sub_100002388(&qword_1000220D8, &qword_1000138D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100013880;
  v47 = STBackgroundActivityIdentifierInCall;
  *(inited + 32) = STBackgroundActivityIdentifierInCall;
  v155 = (inited + 32);
  v48 = STBackgroundActivityIdentifierInVideoConference;
  v49 = STBackgroundActivityIdentifierCallRinging;
  *(inited + 40) = STBackgroundActivityIdentifierInVideoConference;
  *(inited + 48) = v49;
  v50 = STBackgroundActivityIdentifierVideoConferenceRinging;
  v51 = STBackgroundActivityIdentifierSharePlay;
  *(inited + 56) = STBackgroundActivityIdentifierVideoConferenceRinging;
  *(inited + 64) = v51;
  v151 = v37;
  v52 = STBackgroundActivityIdentifierSharePlayInactive;
  v53 = STBackgroundActivityIdentifierActivePushToTalkCall;
  *(inited + 72) = STBackgroundActivityIdentifierSharePlayInactive;
  *(inited + 80) = v53;
  v54 = STBackgroundActivityIdentifierIdlePushToTalkCall;
  v55 = STBackgroundActivityIdentifierCallHandoff;
  *(inited + 88) = STBackgroundActivityIdentifierIdlePushToTalkCall;
  *(inited + 96) = v55;
  v148 = STBackgroundActivityIdentifierCallScreening;
  v56 = STBackgroundActivityIdentifierVideoConferenceHandoff;
  v149 = STBackgroundActivityIdentifierVideoConferenceHandoff;
  *(inited + 104) = STBackgroundActivityIdentifierCallScreening;
  *(inited + 112) = v56;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v65 = v55;
  v66 = v148;
  v67 = v149;
  v68 = sub_10000FFE8(inited);
  swift_setDeallocating();
  type metadata accessor for STBackgroundActivityIdentifier();
  swift_arrayDestroy();
  v69 = v151;
  v70 = [v151 _FBSScene];
  v71 = v153;

  v72 = swift_allocObject();
  *(v72 + 16) = v68;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_10001171C;
  *(v73 + 24) = v72;
  v161 = sub_100002540;
  v162 = v73;
  aBlock = _NSConcreteStackBlock;
  v158 = 1107296256;
  v159 = sub_10000EB18;
  v160 = &unk_10001CF08;
  v74 = _Block_copy(&aBlock);

  [v70 updateClientSettingsWithBlock:v74];

  _Block_release(v74);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
  }

  else
  {
    sub_100002388(&qword_1000220E0, &unk_1000138D8);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_100013890;
    v76 = v154;
    v77 = *&v154[OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_actionHandler];
    *(v75 + 32) = v77;
    v78 = v77;
    sub_100002388(&qword_1000220E8, &qword_1000138E8);
    v79.super.isa = Array._bridgeToObjectiveC()().super.isa;

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v81 = NSStringFromClass(ObjCClassFromMetadata);
    if (v81)
    {
      v82 = v81;

      [v69 _registerBSActionResponderArray:v79.super.isa forKey:v82];

      v83 = v147;
      v84 = v156;
      (*((swift_isaMask & *v76) + 0x80))(v147, v71, v152, v156, v41);

      [v83 makeKeyAndVisible];

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10001167C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for STBackgroundActivityIdentifier()
{
  if (!qword_100022100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100022100);
    }
  }
}

uint64_t sub_1000116E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001171C(void *a1)
{
  v3 = *(v1 + 16);
  [a1 setDesiredHardwareButtonEvents:16];
  type metadata accessor for STBackgroundActivityIdentifier();
  sub_100011874(&qword_1000220F0);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [a1 setDesiredBackgroundActivities:isa];
}

uint64_t sub_100011874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STBackgroundActivityIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100011920()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000119CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100011B7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100011BC0(void *a1, void *a2)
{
  v5 = sub_100002388(&qword_100021930, &unk_100013460);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v48[-v10];
  v12 = sub_100008BC4();
  sub_1000023F4(v12, v11);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    sub_100002FAC(v11, &qword_100021930, &unk_100013460);
  }

  else
  {
    v53 = v2;
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v52 = v9;
      v20 = v19;
      v50 = swift_slowAlloc();
      v51 = v14;
      v54 = v50;
      *v20 = 136315138;
      v21 = [v16 role];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v18;
      v23 = v15;
      v24 = v22;
      v25 = a1;
      v27 = v26;

      v28 = v24;
      v15 = v23;
      v29 = sub_1000091A4(v28, v27, &v54);
      a1 = v25;

      *(v20 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v17, v49, "DefaultSceneDelegate: Scene will connect called with role: %s", v20, 0xCu);
      sub_100009880(v50);
      v14 = v51;

      v9 = v52;
    }

    (*(v14 + 8))(v11, v13);
    v2 = v53;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v32 = objc_allocWithZone(UIWindow);
    v33 = a1;
    v34 = [v32 initWithWindowScene:v31];
    v35 = [objc_allocWithZone(UIViewController) init];
    v36 = [v35 view];
    if (v36)
    {
      v37 = v36;
      v38 = [objc_opt_self() redColor];
      [v37 setBackgroundColor:v38];

      [v34 setRootViewController:v35];
      [v34 makeKeyAndVisible];
      v39 = *((swift_isaMask & *v2) + 0x60);
      v40 = v34;
      v39(v34);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v41 = sub_100008C08();
    sub_1000023F4(v41, v9);
    if (v15(v9, 1, v13) == 1)
    {
      sub_100002FAC(v9, &qword_100021930, &unk_100013460);
    }

    else
    {
      v42 = a1;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v46 = v42;
        v47 = v42;
        _os_log_impl(&_mh_execute_header, v43, v44, "DefaultSceneDelegate: Got a non UIWindowScene: %@", v45, 0xCu);
        sub_100002FAC(v46, &unk_100021A20, &qword_1000134C0);
      }

      (*(v14 + 8))(v9, v13);
    }
  }
}