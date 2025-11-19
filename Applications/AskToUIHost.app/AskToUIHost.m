uint64_t sub_1000017D8()
{
  v0 = type metadata accessor for Logger();
  sub_100001864(v0, qword_10000CED8);
  sub_1000018C8(v0, qword_10000CED8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001864(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000018C8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1000019F8()
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

uint64_t sub_100001ADC()
{
  v1 = [*v0 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003874(0, &qword_10000CDD0, BSAction_ptr);
  sub_1000038BC(&qword_10000CDD8, &qword_10000CDD0, BSAction_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100001C78(uint64_t a1)
{
  v2 = v1;
  if (qword_10000CB80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000018C8(v4, qword_10000CED8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046D0, &v21);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s called", v7, 0xCu);
    sub_100003760(v8);
  }

  if (a1)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046D0, &v21);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Encountered error %@", v11, 0x16u);
      sub_100003010(v12, &qword_10000CDB0, &unk_100004570);

      sub_100003760(v13);
    }

    sub_100002014(a1);

    return _swift_errorRelease(a1);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046D0, &v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s No error, tearing down the connection without additional UI", v17, 0xCu);
      sub_100003760(v18);
    }

    v19 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);

    return [v19 invalidate];
  }
}

void sub_100002014(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002910(&qword_10000CD88, &qword_100004548);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002910(&qword_10000CD90, &qword_100004550);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v33[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33[-1] - v11;
  v13 = *(v1 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowKind;
    swift_beginAccess();
    sub_100002F00(v1 + v14, v12);
    v15 = type metadata accessor for FlowKind();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v12, 1, v15) == 1)
    {
      v17 = v13;
    }

    else
    {
      sub_100002F00(v12, v10);
      if ((*(v16 + 88))(v10, v15) == enum case for FlowKind.sendAsk(_:))
      {
        v24 = v13;
        LocalizedStringKey.init(stringLiteral:)();
        sub_100003010(v12, &qword_10000CD90, &qword_100004550);
        goto LABEL_15;
      }

      v25 = *(v16 + 8);
      v26 = v13;
      v25(v10, v15);
    }

    sub_100003010(v12, &qword_10000CD90, &qword_100004550);
    LocalizedStringKey.init(stringLiteral:)();
LABEL_15:
    v32 = a1;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_errorRetain();
    sub_100002910(&qword_10000CD98, &qword_100004558);
    ErrorView.init(title:error:onDismiss:)();
    v27 = objc_allocWithZone(sub_100002910(&qword_10000CDA0, &qword_100004560));
    v28 = UIHostingController.init(rootView:)();
    v29 = [v28 view];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_opt_self() clearColor];
      [v30 setBackgroundColor:v31];

      [v13 setRootViewController:v28];
      if (([v13 isKeyWindow] & 1) == 0)
      {
        [v13 makeKeyAndVisible];
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (qword_10000CB80 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000018C8(v18, qword_10000CED8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046B0, v33);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s No window to present error off of", v21, 0xCu);
    sub_100003760(v22);
  }

  v23 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);

  [v23 invalidate];
}

void sub_100002560()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);

    [v2 invalidate];
  }
}

id sub_1000025D8()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene] = 0;
  v2 = OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowKind;
  v3 = type metadata accessor for FlowKind();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window] = 0;
  v4 = &v1[OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowCoordinator];
  v10[3] = type metadata accessor for HostSendAskToQuestionFlowCoordinatorFactory();
  v10[4] = &protocol witness table for HostSendAskToQuestionFlowCoordinatorFactory;
  sub_100003070(v10);
  HostSendAskToQuestionFlowCoordinatorFactory.init()();
  v5 = type metadata accessor for SceneBasedSendAskFlowController();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *v4 = SceneBasedSendAskFlowController.init(flowCoordinatorFactory:)();
  v4[1] = &protocol witness table for SceneBasedSendAskFlowController;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100002704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SceneDelegate()
{
  result = qword_10000CD70;
  if (!qword_10000CD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000280C()
{
  sub_1000028B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000028B4()
{
  if (!qword_10000CD80)
  {
    type metadata accessor for FlowKind();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10000CD80);
    }
  }
}

uint64_t sub_100002910(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002958(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002A24(v11, 0, 0, 1, a1, a2);
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
    sub_100002FB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003760(v11);
  return v7;
}

unint64_t sub_100002A24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002B30(a5, a6);
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

char *sub_100002B30(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002B7C(a1, a2);
  sub_100002CAC(&off_100008460);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002B7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002D98(v5, 0);
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
        v7 = sub_100002D98(v10, 0);
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

uint64_t sub_100002CAC(uint64_t result)
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

  result = sub_100002E0C(result, v12, 1, v3);
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

void *sub_100002D98(uint64_t a1, uint64_t a2)
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

  sub_100002910(&qword_10000CDA8, &qword_100004568);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002910(&qword_10000CDA8, &qword_100004568);
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

uint64_t sub_100002F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002910(&qword_10000CD90, &qword_100004550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002F70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002FB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003010(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002910(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100003070(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1000030D4(void *a1)
{
  v2 = v1;
  v4 = *(*(sub_100002910(&qword_10000CD90, &qword_100004550) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = type metadata accessor for FlowKind();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000CB80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000018C8(v13, qword_10000CED8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v59[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002958(0xD00000000000001FLL, 0x80000001000046F0, v59);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s called", v16, 0xCu);
    sub_100003760(v17);
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = a1;
  }

  v20 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);
  *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene) = v18;
  v58 = v18;

  if (v18)
  {
    v21 = objc_allocWithZone(UIWindow);
    v22 = [v21 initWithWindowScene:v58];
    v23 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window) = v22;
    v24 = v22;

    if (v24)
    {
      v25 = [v58 configurationContext];
      if (v25)
      {
        v26 = v25;
        v52 = a1;
        v54 = v7;
        v55 = v24;
        v27 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowCoordinator);
        v28 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowCoordinator + 8);
        v29 = v10;
        ObjectType = swift_getObjectType();
        v51 = sub_100003874(0, &qword_10000CDB8, SBSRemoteAlertConfigurationContext_ptr);
        v60 = v51;
        v50 = sub_1000038BC(&qword_10000CDC0, &qword_10000CDB8, SBSRemoteAlertConfigurationContext_ptr);
        v61 = v50;
        v59[0] = v26;
        v31 = v26;
        v53 = ObjectType;
        v32 = v29;
        dispatch thunk of SceneBasedFlowController.flowKind(for:)();
        sub_100003760(v59);
        v33 = v57;
        if ((*(v57 + 48))(v9, 1, v29) != 1)
        {
          v44 = v56;
          (*(v33 + 32))(v56, v9, v32);
          v45 = v54;
          (*(v33 + 16))(v54, v44, v32);
          (*(v33 + 56))(v45, 0, 1, v32);
          v46 = v31;
          v47 = OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowKind;
          swift_beginAccess();
          sub_1000037AC(v45, v2 + v47);
          swift_endAccess();
          sub_10000381C();
          swift_unknownObjectRetain();
          dispatch thunk of SceneBasedFlowController.delegate.setter();
          v60 = v51;
          v61 = v50;
          v59[0] = v46;
          v48 = v46;
          v49 = v55;
          dispatch thunk of SceneBasedFlowController.handle(remoteAlertConfigurationContext:window:)();

          (*(v33 + 8))(v44, v32);
          sub_100003760(v59);
          return;
        }

        sub_100003010(v9, &qword_10000CD90, &qword_100004550);
        v24 = v55;
        a1 = v52;
      }

      v34 = a1;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v34;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "flowCoordinator cannot handle scene! %@", v37, 0xCu);
        sub_100003010(v38, &qword_10000CDB0, &unk_100004570);
      }
    }

    else
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No window!", v42, 2u);
      }

      v43 = v58;
    }
  }
}

uint64_t sub_100003760(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000037AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002910(&qword_10000CD90, &qword_100004550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000381C()
{
  result = qword_10000CDC8;
  if (!qword_10000CDC8)
  {
    type metadata accessor for SceneDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CDC8);
  }

  return result;
}

uint64_t sub_100003874(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000038BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003874(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}