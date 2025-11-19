id sub_1000019A8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100001A04(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotoGridViewModel.PickerMode();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin();
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CreationViewStyle();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExecutionContext.GPClientIdentity();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservableDebugSettings();
  v36 = static ObservableDebugSettings.shared.getter();
  State.init(wrappedValue:)();
  v13 = v38;
  a1[1] = v37;
  a1[2] = v13;
  v14 = *(type metadata accessor for GenerativePlaygroundApp() + 24);
  type metadata accessor for AppDelegate();
  UIApplicationDelegateAdaptor.init(_:)();
  v30 = [objc_allocWithZone(type metadata accessor for AppleConnectAuthenticator()) init];
  v29[2] = [objc_allocWithZone(GPAppleConnectTokenProvider) initWithAuthenticatingProtocol:v30];
  v15 = type metadata accessor for SessionUndoManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v29[1] = SessionUndoManager.init(undoManager:)();
  v18 = type metadata accessor for ServicesFetcher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = ServicesFetcher.init()();
  v22 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v24 = String._bridgeToObjectiveC()();
  [v22 setValue:isa forKey:v24];

  (*(v9 + 104))(v12, enum case for ExecutionContext.GPClientIdentity.currentProcess(_:), v8);
  static ExecutionContext.setClientIdentity(_:)();
  (*(v9 + 8))(v12, v8);
  static ObservableDebugSettings.shared.getter();
  swift_getKeyPath();
  v37 = v21;

  ObservableDebugSettings.subscript.setter();

  (*(v5 + 104))(v31, enum case for CreationViewStyle.generativePlaygroundApp(_:), v32);
  (*(v34 + 104))(v33, enum case for PhotoGridViewModel.PickerMode.none(_:), v35);
  v25 = type metadata accessor for PlaygroundHomeViewModel();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = PlaygroundHomeViewModel.init(servicesFetcher:appleConnectTokenProvider:creationViewStyle:pickerMode:forceDarkMode:sessionUndoManager:visionOSHideStylePicker:)();

  *a1 = v28;
}

uint64_t sub_100001E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for WindowResizability();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(type metadata accessor for GenerativePlaygroundApp() - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin();
  v8 = sub_1000026DC(&qword_100018A68, &qword_100010C28);
  v40 = *(v8 - 8);
  v9 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = sub_1000026DC(&qword_100018A70, &qword_100010C30);
  v41 = *(v12 - 8);
  v13 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v37 - v14;
  v16 = sub_1000026DC(&qword_100018A78, &qword_100010C38);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v20 = &v37 - v19;
  v21 = sub_1000026DC(&qword_100018A80, &qword_100010C40);
  v22 = *(v21 - 8);
  v44 = v21;
  v45 = v22;
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = &v37 - v24;
  sub_1000029BC(v2, &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v27 = swift_allocObject();
  sub_100002B24(&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_1000026DC(&qword_100018A88, &qword_100010C48);
  v28 = sub_100002BF8();
  v50 = &type metadata for AppWindowContentView;
  v51 = v28;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  static WindowResizability.contentMinSize.getter();
  v29 = sub_100002C4C();
  Scene.windowResizability(_:)();
  (*(v46 + 8))(v6, v47);
  (*(v40 + 8))(v11, v8);
  v50 = v8;
  v51 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  Scene.extendedLaunchTestName(_:)();
  (*(v41 + 8))(v15, v12);
  v49 = v39;
  v31 = type metadata accessor for GenerativePlaygroundCommands();
  v50 = v12;
  v51 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_100002D00(&qword_100018AA0, type metadata accessor for GenerativePlaygroundCommands);
  v34 = v42;
  Scene.commands<A>(content:)();
  (*(v43 + 8))(v20, v34);
  v50 = v34;
  v51 = v31;
  v52 = v32;
  v53 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v45 + 8))(v25, v35);
}

uint64_t sub_1000023EC(uint64_t *a1)
{
  v5 = *a1;
  swift_getKeyPath();
  v3 = a1[1];
  v4 = a1[2];

  sub_1000026DC(&qword_100018AB8, &qword_100010D20);
  State.wrappedValue.getter();
  sub_100002BF8();
  View.debugSettings(_:)();
}

uint64_t sub_1000024B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  v4 = type metadata accessor for GenerativePlaygroundCommands();
  v5 = v4[5];

  FocusedValue.init(_:)();
  swift_getKeyPath();
  v6 = a2 + v4[6];
  FocusedValue.init(_:)();
  swift_getKeyPath();
  v7 = a2 + v4[7];
  result = FocusedValue.init(_:)();
  *a2 = v3;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GenerativePlaygroundApp();
  sub_100002D00(&qword_1000189B0, type metadata accessor for GenerativePlaygroundApp);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for GenerativePlaygroundApp()
{
  result = qword_100018A18;
  if (!qword_100018A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002620(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000026DC(&qword_1000189B8, &unk_100010B90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000026DC(uint64_t *a1, uint64_t *a2)
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

void *sub_100002738(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000026DC(&qword_1000189B8, &unk_100010B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000027E8()
{
  type metadata accessor for PlaygroundHomeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1000028E4(319, &qword_100018A28, &type metadata accessor for ObservableDebugSettings, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1000028E4(319, &unk_100018A30, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000028E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100002964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DebugSettings.servicesFetcher.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100002990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return DebugSettings.servicesFetcher.setter();
}

uint64_t sub_1000029BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002A20()
{
  v1 = (type metadata accessor for GenerativePlaygroundApp() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = v1[8];
  v9 = sub_1000026DC(&qword_1000189B8, &unk_100010B90);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100002B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundApp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002B88()
{
  v1 = *(type metadata accessor for GenerativePlaygroundApp() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1000023EC(v2);
}

unint64_t sub_100002BF8()
{
  result = qword_100018A90;
  if (!qword_100018A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A90);
  }

  return result;
}

unint64_t sub_100002C4C()
{
  result = qword_100018A98;
  if (!qword_100018A98)
  {
    sub_100002CB0(&qword_100018A68, &qword_100010C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A98);
  }

  return result;
}

uint64_t sub_100002CB0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002DA8@<X0>(uint64_t *a1@<X8>)
{
  result = FocusedValues.composingViewActions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100002DD4(uint64_t *a1)
{
  v1 = *a1;

  return FocusedValues.composingViewActions.setter();
}

uint64_t sub_100002E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = (*(*(sub_1000026DC(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v15 - v12;
  sub_100002F0C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_100002F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026DC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100002F74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.undoManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100002FA0()
{
  sub_100002CB0(&qword_100018A78, &qword_100010C38);
  type metadata accessor for GenerativePlaygroundCommands();
  sub_100002CB0(&qword_100018A70, &qword_100010C30);
  sub_100002CB0(&qword_100018A68, &qword_100010C28);
  sub_100002C4C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100002D00(&qword_100018AA0, type metadata accessor for GenerativePlaygroundCommands);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000030CC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1000030FC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_1000031FC, v6, v5);
}

uint64_t sub_1000031FC()
{
  v1 = v0[6];
  static GPLog.authentication.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching auth token", v4, 2u);
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token + 8);
  if (v10)
  {
    v11 = *(v8 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token);
    v12 = v0[7];
    v13 = v0[5];
    v14 = *(v8 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token + 8);

    static GPLog.authentication.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reusing cached authentication token", v21, 2u);
    }

    v9(v18, v20);
    v23 = v0[5];
    v22 = v0[6];

    v24 = v0[1];

    return v24(v11, v10);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = sub_10000346C;
    v27 = v0[2];

    return sub_1000036A0();
  }
}

uint64_t sub_10000346C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_100003628;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_1000035A0;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000035A0()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6(v3, v2);
}

uint64_t sub_100003628()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1000036A0()
{
  v1[23] = v0;
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100003738, v3, v2);
}

uint64_t sub_100003738()
{
  v1 = type metadata accessor for Logger();
  v0[27] = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  v0[28] = v2;
  v0[29] = *(v2 + 64);
  v4 = swift_task_alloc();
  static GPLog.authentication.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Apple Connect authentication", v7, 2u);
  }

  v8 = *(v3 + 8);
  v0[30] = v8;
  v8(v4, v1);

  if (ACAuthenticationRequest)
  {
    v9 = v0[23];
    v10 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v0[31] = v10;
    [v10 setAuthType:3];
    v11 = *(v9 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_context);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_100003A28;
    v12 = swift_continuation_init();
    v0[17] = sub_1000026DC(&qword_100018B68, &qword_100010E38);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003EAC;
    v0[13] = &unk_100014DE0;
    v0[14] = v12;
    [v11 authenticateWithRequest:v10 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v13 = v0[24];

    sub_100005124();
    swift_allocError();
    *v14 = xmmword_100010D40;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100003A28()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100003B30, v2, v1);
}

uint64_t sub_100003B30()
{
  v1 = v0[24];

  v2 = v0[21];
  v3 = [v2 serviceTicket];
  if (v3)
  {
    v4 = v0[31];
    v5 = v0[23];
    v6 = v3;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = (v5 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token);
    v11 = *(v5 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token + 8);
    *v10 = v7;
    v10[1] = v9;

    v12 = v0[1];

    return v12(v7, v9);
  }

  else
  {
    v14 = v0[29] + 15;
    v15 = swift_task_alloc();
    static GPLog.authentication.getter();
    v16 = v2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 error];
      if (v21)
      {
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 4) = v21;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to authenticate: %@", v19, 0xCu);
      sub_100005238(v20, &qword_100018B70, &qword_100010E40);
    }

    v23 = v0[30];
    v24 = v0[27];
    v25 = v0[28];

    v23(v15, v24);

    v26 = [v16 error];
    if (v26)
    {
      v27 = v26;
      swift_getErrorValue();
      v28 = v0[18];
      v29 = v0[19];
      v30 = v0[20];
      v31 = *(v29 - 8);
      v32 = *(v31 + 64) + 15;
      v33 = swift_task_alloc();
      (*(v31 + 16))(v33, v28, v29);

      v34 = Error.localizedDescription.getter();
      v36 = v35;
      (*(v31 + 8))(v33, v29);
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = v0[31];
    sub_100005124();
    swift_allocError();
    *v38 = v34;
    v38[1] = v36;
    swift_willThrow();

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_100003EAC(uint64_t a1, void *a2)
{
  v3 = sub_100005298((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100003F10(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return static String.localizedStringWithFormat(_:_:)();
  }

  sub_1000026DC(&qword_100018B78, &unk_100010F30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100010D50;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000053FC();
  if (a2)
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 32) = 0x6E776F6E6B6E75;
    *(v5 + 40) = 0xE700000000000000;
    sub_100005450(a1, 0);
  }

  sub_100005464(a1, a2);
  v6 = static String.localizedStringWithFormat(_:_:)();

  return v6;
}

id sub_100004048()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_context;
  v4 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
  v5 = objc_allocWithZone(NSNumber);
  v6 = v4;
  v7 = [v5 initWithInteger:191000];
  [v6 setAppID:v7];

  [v6 setEnvironment:0];
  *&v0[v3] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000041CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_10000427C;

  return sub_1000030FC();
}

uint64_t sub_10000427C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *v3;
  v7[7] = v2;

  v10 = v7[5];
  v11 = v7[4];
  if (v4)
  {
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = sub_100004494;
  }

  else
  {
    v7[8] = a2;
    v7[9] = a1;
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v16;
    v15 = sub_100004408;
  }

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_100004408()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v5(v2, v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100004494()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  v4(0, 0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100004530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000026DC(&qword_100018B58, &qword_100010DF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100004D1C(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005238(v11, &qword_100018B58, &qword_100010DF8);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100005238(a3, &qword_100018B58, &qword_100010DF8);

      return v24;
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

  sub_100005238(a3, &qword_100018B58, &qword_100010DF8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

__n128 sub_1000049A8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000049B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000049FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100004A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100004AD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004B18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100004C28;

  return sub_1000041CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100004C28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026DC(&qword_100018B58, &qword_100010DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004D8C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004E84;

  return v7(a1);
}

uint64_t sub_100004E84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004F7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000547C;

  return sub_100004D8C(a1, v5);
}

uint64_t sub_100005034()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000506C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004C28;

  return sub_100004D8C(a1, v5);
}

unint64_t sub_100005124()
{
  result = qword_100018B60;
  if (!qword_100018B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B60);
  }

  return result;
}

uint64_t sub_100005188(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000051EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100005298(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000052DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000535C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000053BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1000053FC()
{
  result = qword_100018B80;
  if (!qword_100018B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B80);
  }

  return result;
}

uint64_t sub_100005450(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100005464(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 sub_10000548C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000054A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000054E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005554@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v61 = a2;
  v62 = a4;
  v5 = sub_1000026DC(&qword_100018BA0, &qword_100011028);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v50 = type metadata accessor for PlaygroundHomeView();
  v51 = *(v50 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v50);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000026DC(&qword_100018BA8, &qword_100011030);
  v13 = *(v12 - 8);
  v49 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v48 - v15;
  v52 = sub_1000026DC(&qword_100018BB0, &qword_100011038);
  v17 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = &v48 - v18;
  v56 = sub_1000026DC(&qword_100018BB8, &qword_100011040);
  v19 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v54 = &v48 - v20;
  v21 = sub_1000026DC(&qword_100018BC0, &qword_100011048);
  v58 = *(v21 - 8);
  v59 = v21;
  v22 = *(v58 + 64);
  __chkstk_darwin(v21);
  v55 = &v48 - v23;

  v60 = a1;
  PlaygroundHomeView.init(viewModel:)();
  v24 = enum case for ColorScheme.dark(_:);
  v25 = type metadata accessor for ColorScheme();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v27(v8, v24, v25);
  v28 = *(v26 + 56);
  v28(v8, 0, 1, v25);
  sub_1000065D8(&qword_100018BC8, &type metadata accessor for PlaygroundHomeView);
  v29 = v50;
  View.dialogColorScheme(_:)();
  sub_100005DF0(v8);
  (*(v51 + 8))(v11, v29);
  v30 = *(v49 + 44);
  v27(&v16[v30], v24, v25);
  v28(&v16[v30], 0, 1, v25);
  if (qword_1000188C0 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v53;
  sub_100006070(v16, v53, &qword_100018BA8, &qword_100011030);
  v32 = (v31 + *(v52 + 36));
  v33 = v70;
  v32[4] = v69;
  v32[5] = v33;
  v32[6] = v71;
  v34 = v66;
  *v32 = v65;
  v32[1] = v34;
  v35 = v68;
  v32[2] = v67;
  v32[3] = v35;
  v36 = swift_allocObject();
  v38 = v60;
  v37 = v61;
  *(v36 + 16) = v60;
  *(v36 + 24) = v37;
  v39 = v57 & 1;
  *(v36 + 32) = v57 & 1;
  v40 = v54;
  sub_100006070(v31, v54, &qword_100018BB0, &qword_100011038);
  v41 = v56;
  v42 = (v40 + *(v56 + 36));
  *v42 = sub_100006064;
  v42[1] = v36;
  v42[2] = 0;
  v42[3] = 0;

  sub_100006240(v37, v39);
  sub_1000060D8(&off_100014C38);
  sub_10000624C(&unk_100014C58);
  sub_1000060D8(&off_100014C68);
  sub_10000624C(&unk_100014C88);
  v43 = sub_1000062A0();
  v44 = v55;
  View.handlesExternalEvents(preferring:allowing:)();

  sub_100006508(v40);
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  *(v45 + 24) = v37;
  *(v45 + 32) = v39;

  sub_100006240(v37, v39);
  v63 = v41;
  v64 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v59;
  View.onOpenURL(perform:)();

  return (*(v58 + 8))(v44, v46);
}

void sub_100005C58(uint64_t a1, void *a2, char a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100006058(a2, 0);
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    a2 = v14;
  }

  v10.value.super.isa = a2;
  PlaygroundHomeViewModel.setUndoManager(_:)(v10);
}

uint64_t sub_100005DF0(uint64_t a1)
{
  v2 = sub_1000026DC(&qword_100018BA0, &qword_100011028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005E58()
{
  v0 = type metadata accessor for DeviceClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  static DeviceClass.current.getter();
  (*(v1 + 104))(v5, enum case for DeviceClass.ipad(_:), v0);
  sub_1000065D8(&qword_100018C00, &type metadata accessor for DeviceClass);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12[2] == v12[0] && v12[3] == v12[1])
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

  v11 = 0x4080E00000000000;
  if ((v8 & 1) == 0)
  {
    v11 = 0;
  }

  qword_100018B90 = v11;
  byte_100018B98 = (v8 & 1) == 0;
  return result;
}

void sub_100006058(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100006070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026DC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int sub_1000060D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026DC(&qword_100018BF8, qword_100011058);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

id sub_100006240(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1000062A0()
{
  result = qword_100018BD0;
  if (!qword_100018BD0)
  {
    sub_100002CB0(&qword_100018BB8, &qword_100011040);
    sub_10000632C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BD0);
  }

  return result;
}

unint64_t sub_10000632C()
{
  result = qword_100018BD8;
  if (!qword_100018BD8)
  {
    sub_100002CB0(&qword_100018BB0, &qword_100011038);
    sub_1000063B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BD8);
  }

  return result;
}

unint64_t sub_1000063B8()
{
  result = qword_100018BE0;
  if (!qword_100018BE0)
  {
    sub_100002CB0(&qword_100018BA8, &qword_100011030);
    type metadata accessor for PlaygroundHomeView();
    sub_1000065D8(&qword_100018BC8, &type metadata accessor for PlaygroundHomeView);
    swift_getOpaqueTypeConformance2();
    sub_1000064A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BE0);
  }

  return result;
}

unint64_t sub_1000064A4()
{
  result = qword_100018BE8;
  if (!qword_100018BE8)
  {
    sub_100002CB0(&qword_100018BF0, &qword_100011050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BE8);
  }

  return result;
}

uint64_t sub_100006508(uint64_t a1)
{
  v2 = sub_1000026DC(&qword_100018BB8, &qword_100011040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006570()
{
  v1 = *(v0 + 16);

  sub_100006058(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000065D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006620()
{
  sub_100002CB0(&qword_100018BC0, &qword_100011048);
  sub_100002CB0(&qword_100018BB8, &qword_100011040);
  sub_1000062A0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000066D8(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000026DC(&qword_100018C08, &qword_100011080);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_10000687C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000026DC(&qword_100018C08, &qword_100011080);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for GenerativePlaygroundCommands()
{
  result = qword_100018C78;
  if (!qword_100018C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006A58()
{
  type metadata accessor for PlaygroundHomeViewModel();
  if (v0 <= 0x3F)
  {
    sub_100006B60(319, &qword_100018C88, &type metadata accessor for PhotoGridActions);
    if (v1 <= 0x3F)
    {
      sub_100006B60(319, &qword_100018C90, &type metadata accessor for ComposingViewActions);
      if (v2 <= 0x3F)
      {
        sub_100006B60(319, &unk_100018C98, &type metadata accessor for DetailViewActions);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100006B60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for FocusedValue();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100006BD0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v52 = sub_1000026DC(&qword_100018CD0, &qword_100011108);
  v2 = *(*(v52 - 1) + 64);
  __chkstk_darwin(v52);
  v40 = &v33 - v3;
  v43 = sub_1000026DC(&qword_100018CD8, &qword_100011110);
  v42 = *(v43 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v43);
  v38 = &v33 - v5;
  v41 = sub_1000026DC(&qword_100018CE0, &qword_100011118);
  v39 = *(v41 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v41);
  v50 = &v33 - v7;
  v37 = sub_1000026DC(&qword_100018CE8, &qword_100011120);
  v36 = *(v37 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v37);
  v45 = &v33 - v9;
  v35 = type metadata accessor for PrintingCommands();
  v51 = *(v35 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v35);
  v46 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CommandGroupPlacement();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000026DC(&qword_100018CF0, &qword_100011128);
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  __chkstk_darwin(v14);
  v47 = &v33 - v16;
  static CommandGroupPlacement.newItem.getter();
  v56 = v1;
  sub_1000026DC(&qword_100018CF8, &qword_100011130);
  sub_10000E958(&qword_100018D00, &qword_100018CF8, &qword_100011130);
  CommandGroup.init(replacing:addition:)();
  PrintingCommands.init()();
  LocalizedStringKey.init(stringLiteral:)();
  v55 = v1;
  sub_1000026DC(&qword_100018D08, &qword_100011138);
  sub_10000E958(&qword_100018D10, &qword_100018D08, &qword_100011138);
  v17 = v45;
  CommandMenu.init(_:content:)();
  static CommandGroupPlacement.pasteboard.getter();
  v54 = v1;
  sub_1000026DC(&qword_100018D18, &qword_100011140);
  sub_10000E958(&qword_100018D20, &qword_100018D18, &qword_100011140);
  CommandGroup.init(after:addition:)();
  static CommandGroupPlacement.sidebar.getter();
  v53 = v1;
  sub_1000026DC(&qword_100018D28, &qword_100011148);
  sub_10000E958(&qword_100018D30, &qword_100018D28, &qword_100011148);
  v18 = v38;
  CommandGroup.init(replacing:addition:)();
  v19 = v52[12];
  v20 = v52[16];
  v21 = v52[20];
  v34 = v52[24];
  v22 = v40;
  (*(v48 + 16))(v40, v47, v49);
  v23 = v35;
  (*(v51 + 16))(&v22[v19], v46, v35);
  v24 = v36;
  v25 = v37;
  (*(v36 + 16))(&v22[v20], v17, v37);
  v26 = v39;
  v27 = &v22[v21];
  v28 = v50;
  v29 = v41;
  (*(v39 + 16))(v27, v50, v41);
  v30 = v42;
  v31 = v43;
  (*(v42 + 16))(&v22[v34], v18, v43);
  TupleCommandContent.init(_:)();
  (*(v30 + 8))(v18, v31);
  (*(v26 + 8))(v28, v29);
  (*(v24 + 8))(v45, v25);
  (*(v51 + 8))(v46, v23);
  return (*(v48 + 8))(v47, v49);
}

uint64_t sub_100007328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v260 = a2;
  v234 = sub_1000026DC(&qword_100018DB8, &unk_1000111E8);
  v3 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v235 = &v230 - v4;
  v5 = sub_1000026DC(&qword_100018AA8, &unk_100010CE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v239 = &v230 - v7;
  v255 = sub_1000026DC(&qword_100018DD8, &qword_100011208);
  v8 = *(*(v255 - 8) + 64);
  __chkstk_darwin(v255);
  v257 = &v230 - v9;
  v256 = sub_1000026DC(&qword_100018DE0, &qword_100011210);
  v10 = *(*(v256 - 8) + 64);
  __chkstk_darwin(v256);
  v233 = &v230 - v11;
  v261 = sub_1000026DC(&qword_100018DB0, &qword_1000111D8);
  v12 = *(*(v261 - 8) + 64);
  v13 = __chkstk_darwin(v261);
  v231 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v253 = &v230 - v15;
  v16 = sub_1000026DC(&qword_100018AB0, &qword_1000111E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v232 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v254 = &v230 - v20;
  v21 = sub_1000026DC(&qword_100018DE8, &qword_100011218);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v270 = &v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v281 = &v230 - v25;
  v267 = sub_1000026DC(&qword_100018D40, &qword_100011158);
  v26 = *(*(v267 - 8) + 64);
  v27 = __chkstk_darwin(v267);
  v284 = &v230 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v283 = &v230 - v30;
  v31 = __chkstk_darwin(v29);
  v282 = &v230 - v32;
  v33 = __chkstk_darwin(v31);
  v237 = &v230 - v34;
  v35 = __chkstk_darwin(v33);
  v238 = &v230 - v36;
  v37 = __chkstk_darwin(v35);
  v252 = &v230 - v38;
  v39 = __chkstk_darwin(v37);
  v280 = &v230 - v40;
  v41 = __chkstk_darwin(v39);
  v250 = &v230 - v42;
  v43 = __chkstk_darwin(v41);
  v279 = &v230 - v44;
  v45 = __chkstk_darwin(v43);
  v248 = &v230 - v46;
  __chkstk_darwin(v45);
  v278 = &v230 - v47;
  v259 = type metadata accessor for Divider();
  v258 = *(v259 - 8);
  v48 = *(v258 + 64);
  v49 = __chkstk_darwin(v259);
  v268 = &v230 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v269 = &v230 - v52;
  v53 = __chkstk_darwin(v51);
  v276 = &v230 - v54;
  __chkstk_darwin(v53);
  v277 = &v230 - v55;
  v264 = type metadata accessor for KeyEquivalent();
  v285 = *(v264 - 8);
  v56 = *(v285 + 64);
  v57 = __chkstk_darwin(v264);
  v246 = &v230 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v242 = &v230 - v59;
  v271 = type metadata accessor for GenerativePlaygroundCommands();
  v291 = *(v271 - 1);
  v60 = *(v291 + 64);
  __chkstk_darwin(v271);
  v61 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v292 = *(v61 - 8);
  v293 = v61;
  v62 = v292[8];
  v63 = __chkstk_darwin(v61);
  v236 = &v230 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v63);
  v251 = &v230 - v66;
  v67 = __chkstk_darwin(v65);
  v249 = &v230 - v68;
  v69 = __chkstk_darwin(v67);
  v247 = &v230 - v70;
  v71 = __chkstk_darwin(v69);
  v243 = &v230 - v72;
  __chkstk_darwin(v71);
  v74 = &v230 - v73;
  v263 = sub_1000026DC(&qword_100018D90, &qword_1000111B8);
  v272 = *(v263 - 8);
  v75 = *(v272 + 8);
  v76 = __chkstk_darwin(v263);
  v245 = &v230 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v79 = &v230 - v78;
  v262 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  v80 = *(*(v262 - 8) + 64);
  v81 = __chkstk_darwin(v262);
  v266 = &v230 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __chkstk_darwin(v81);
  v265 = &v230 - v84;
  v85 = __chkstk_darwin(v83);
  v244 = &v230 - v86;
  v87 = __chkstk_darwin(v85);
  v275 = &v230 - v88;
  v89 = __chkstk_darwin(v87);
  v91 = &v230 - v90;
  __chkstk_darwin(v89);
  v274 = &v230 - v92;
  v93 = LocalizedStringKey.init(stringLiteral:)();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v273 = a1;
  sub_10000DE34(a1, &v230 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = *(v291 + 80);
  v101 = (v100 + 16) & ~v100;
  v290 = v60;
  v287 = v100;
  v102 = swift_allocObject();
  v288 = v101;
  v291 = &v230 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DE9C(v291, v102 + v101);
  v294 = v93;
  v295 = v95;
  v296 = v97 & 1;
  v297 = v99;
  v298 = 0x7269632E73756C70;
  v299 = 0xEB00000000656C63;
  v103 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v104 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168);
  v289 = v103;
  v105 = v242;
  v286 = v104;
  Button.init(action:label:)();

  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v106 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v106)
  {
    EventModifiers.init(rawValue:)();
  }

  v107 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
  v108 = v293;
  v241 = v107;
  View.keyboardShortcut(_:modifiers:)();
  v109 = *(v285 + 8);
  v285 += 8;
  v240 = v109;
  v109(v105, v264);
  v110 = v292[1];
  v110(v74, v108);
  v111 = v273;
  v112 = *v273;
  LOBYTE(v112) = PlaygroundHomeViewModel.composingViewDidAppear.getter();
  KeyPath = swift_getKeyPath();
  v114 = swift_allocObject();
  *(v114 + 16) = v112 & 1;
  v115 = *(v272 + 4);
  v272 += 32;
  v242 = v115;
  (v115)(v91, v79, v263);
  v116 = &v91[*(v262 + 36)];
  *v116 = KeyPath;
  v116[1] = sub_10000EA44;
  v116[2] = v114;
  sub_10000E1F8(v91, v274);
  LocalizedStringKey.init(stringLiteral:)();
  v117 = v111;
  v118 = v291;
  sub_10000DE34(v117, v291);
  v119 = v288;
  v120 = swift_allocObject();
  v121 = sub_10000DE9C(v118, v120 + v119);
  __chkstk_darwin(v121);
  v122 = v243;
  Button.init(action:label:)();

  v123 = v246;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v124 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v124)
  {
    EventModifiers.init(rawValue:)();
  }

  v125 = v245;
  v126 = v293;
  View.keyboardShortcut(_:modifiers:)();
  v240(v123, v264);
  v110(v122, v126);
  v127 = v271[6];
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  v128 = v273;
  v285 = v127;
  FocusedValue.content.getter();
  if ((v301 & 1) == 0)
  {
    j__swift_release();
    goto LABEL_10;
  }

  if (!v300)
  {
LABEL_10:
    v130 = 1;
    goto LABEL_11;
  }

  v129 = ComposingViewActions.saveImage.getter();
  v130 = 1;
  j__swift_release();
  if (v129)
  {
    sub_10000E3E8(v129);
    v130 = 0;
  }

LABEL_11:
  v131 = swift_getKeyPath();
  v132 = swift_allocObject();
  *(v132 + 16) = v130;
  v133 = v244;
  (v242)(v244, v125, v263);
  v134 = (v133 + *(v262 + 36));
  *v134 = v131;
  v134[1] = sub_10000EA44;
  v134[2] = v132;
  sub_10000E1F8(v133, v275);
  Divider.init()();
  LocalizedStringKey.init(stringLiteral:)();
  v135 = v291;
  sub_10000DE34(v128, v291);
  v136 = v288;
  v137 = swift_allocObject();
  v138 = sub_10000DE9C(v135, v137 + v136);
  __chkstk_darwin(v138);
  v139 = v247;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  if (v301 == 1)
  {
    v140 = v267;
    if (v300)
    {
      v141 = ComposingViewActions.choosePhoto.getter();
      v142 = 1;
      j__swift_release();
      if (v141)
      {
        sub_10000E3E8(v141);
        v142 = 0;
      }
    }

    else
    {
      v142 = 1;
    }
  }

  else
  {
    j__swift_release();
    v142 = 1;
    v140 = v267;
  }

  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  *(v144 + 16) = v142;
  v145 = v292[4];
  v146 = v248;
  v292 += 4;
  v272 = v145;
  (v145)(v248, v139, v293);
  v147 = (v146 + *(v140 + 36));
  *v147 = v143;
  v147[1] = sub_10000EA44;
  v147[2] = v144;
  sub_100006070(v146, v278, &qword_100018D40, &qword_100011158);
  LocalizedStringKey.init(stringLiteral:)();
  v148 = v291;
  sub_10000DE34(v128, v291);
  v149 = v288;
  v150 = swift_allocObject();
  v151 = sub_10000DE9C(v148, v150 + v149);
  __chkstk_darwin(v151);
  v152 = v249;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  if (v301 != 1)
  {
    j__swift_release();
    goto LABEL_22;
  }

  if (!v300)
  {
LABEL_22:
    v154 = 1;
    goto LABEL_23;
  }

  v153 = ComposingViewActions.takePhoto.getter();
  v154 = 1;
  j__swift_release();
  if (v153)
  {
    sub_10000E3E8(v153);
    v154 = 0;
  }

LABEL_23:
  v155 = swift_getKeyPath();
  v156 = swift_allocObject();
  *(v156 + 16) = v154;
  v157 = v250;
  (v272)(v250, v152, v293);
  v158 = (v157 + *(v140 + 36));
  *v158 = v155;
  v158[1] = sub_10000EA44;
  v158[2] = v156;
  sub_100006070(v157, v279, &qword_100018D40, &qword_100011158);
  LocalizedStringKey.init(stringLiteral:)();
  v159 = v291;
  sub_10000DE34(v128, v291);
  v160 = v288;
  v161 = swift_allocObject();
  v162 = sub_10000DE9C(v159, v161 + v160);
  __chkstk_darwin(v162);
  v163 = v251;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  if (v301 != 1)
  {
    j__swift_release();
    goto LABEL_28;
  }

  if (!v300)
  {
LABEL_28:
    v165 = 1;
    goto LABEL_29;
  }

  v164 = ComposingViewActions.chooseFile.getter();
  v165 = 1;
  j__swift_release();
  if (v164)
  {
    sub_10000E3E8(v164);
    v165 = 0;
  }

LABEL_29:
  v166 = swift_getKeyPath();
  v167 = swift_allocObject();
  *(v167 + 16) = v165;
  v168 = v252;
  (v272)(v252, v163, v293);
  v169 = (v168 + *(v140 + 36));
  *v169 = v166;
  v169[1] = sub_10000EA44;
  v169[2] = v167;
  sub_100006070(v168, v280, &qword_100018D40, &qword_100011158);
  Divider.init()();
  v170 = v271[5];
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v171 = v253;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v172 = v171;
    v173 = v254;
    sub_100006070(v172, v254, &qword_100018AB0, &qword_1000111E0);
    v174 = type metadata accessor for PhotoGridActions();
    v175 = *(v174 - 8);
    v176 = *(v175 + 48);
    if (v176(v173, 1, v174) != 1)
    {
      v177 = v173;
      v178 = PhotoGridActions.shareData.getter();
      v179 = *(v175 + 8);
      v179(v177, v174);
      v180 = v231;
      FocusedValue.content.getter();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v181 = v180;
        v182 = v232;
        sub_100006070(v181, v232, &qword_100018AB0, &qword_1000111E0);
        if (v176(v182, 1, v174) != 1)
        {
          v183 = PhotoGridActions.shareOnPresentationChange.getter();
          v185 = v184;
          v179(v182, v174);
LABEL_51:
          v300 = v178;
          v211 = swift_allocObject();
          *(v211 + 16) = v183;
          *(v211 + 24) = v185;

          sub_10000E2B0(v183);
          sub_1000026DC(&qword_100018E10, &qword_100011230);
          type metadata accessor for DisplayableImage();
          sub_10000E958(&qword_100018E18, &qword_100018E10, &qword_100011230);
          sub_10000E8BC();
          v212 = v233;
          ShareLink<>.init(items:subject:message:preview:onPresentationChanged:)();
          v213 = *(v178 + 16);

          v214 = swift_getKeyPath();
          v215 = swift_allocObject();
          *(v215 + 16) = v213 == 0;
          v216 = (v212 + *(v256 + 36));
          *v216 = v214;
          v216[1] = sub_10000EA44;
          v216[2] = v215;
          sub_100002F0C(v212, v257, &qword_100018DE0, &qword_100011210);
          swift_storeEnumTagMultiPayload();
          sub_10000E78C();
          sub_10000E038();
          _ConditionalContent<>.init(storage:)();
          sub_10000E3E8(v183);
          v208 = v212;
          v209 = &qword_100018DE0;
          v210 = &qword_100011210;
          goto LABEL_52;
        }
      }

      else
      {
        sub_100005238(v180, &qword_100018DB0, &qword_1000111D8);
        v182 = v232;
        (*(v175 + 56))(v232, 1, 1, v174);
      }

      sub_100005238(v182, &qword_100018AB0, &qword_1000111E0);
      v183 = 0;
      v185 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    sub_100005238(v171, &qword_100018DB0, &qword_1000111D8);
    v186 = type metadata accessor for PhotoGridActions();
    v173 = v254;
    (*(*(v186 - 8) + 56))(v254, 1, 1, v186);
  }

  sub_100005238(v173, &qword_100018AB0, &qword_1000111E0);
  LocalizedStringKey.init(stringLiteral:)();
  v187 = v291;
  sub_10000DE34(v273, v291);
  v188 = v288;
  v189 = swift_allocObject();
  v190 = sub_10000DE9C(v187, v189 + v188);
  __chkstk_darwin(v190);
  v191 = v236;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  if (v301 != 1)
  {
    j__swift_release();
    v192 = v267;
    v193 = v239;
    goto LABEL_40;
  }

  v192 = v267;
  v193 = v239;
  if (!v300 || (v194 = ComposingViewActions.share.getter(), j__swift_release(), !v194))
  {
LABEL_40:
    v196 = v271[7];
    sub_1000026DC(&qword_100018C18, &unk_100011090);
    v197 = v235;
    FocusedValue.content.getter();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100006070(v197, v193, &qword_100018AA8, &unk_100010CE0);
      v198 = type metadata accessor for DetailViewActions();
      v199 = *(v198 - 8);
      if ((*(v199 + 48))(v193, 1, v198) != 1)
      {
        v200 = DetailViewActions.share.getter();
        (*(v199 + 8))(v193, v198);
        if (v200)
        {
          v195 = v200;
          goto LABEL_44;
        }

LABEL_47:
        v201 = 1;
        goto LABEL_48;
      }
    }

    else
    {
      sub_100005238(v197, &qword_100018DB8, &unk_1000111E8);
      v202 = type metadata accessor for DetailViewActions();
      (*(*(v202 - 8) + 56))(v193, 1, 1, v202);
    }

    sub_100005238(v193, &qword_100018AA8, &unk_100010CE0);
    goto LABEL_47;
  }

  v195 = v194;
LABEL_44:
  sub_10000E3E8(v195);
  v201 = 0;
LABEL_48:
  v203 = swift_getKeyPath();
  v204 = swift_allocObject();
  *(v204 + 16) = v201;
  v205 = v237;
  (v272)(v237, v191, v293);
  v206 = (v205 + *(v192 + 36));
  *v206 = v203;
  v206[1] = sub_10000EA44;
  v206[2] = v204;
  v207 = v238;
  sub_100006070(v205, v238, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v207, v257, &qword_100018D40, &qword_100011158);
  swift_storeEnumTagMultiPayload();
  sub_10000E78C();
  sub_10000E038();
  _ConditionalContent<>.init(storage:)();
  v208 = v207;
  v209 = &qword_100018D40;
  v210 = &qword_100011158;
LABEL_52:
  sub_100005238(v208, v209, v210);
  v217 = v265;
  sub_100002F0C(v274, v265, &qword_100018D98, &qword_1000111C0);
  v218 = v266;
  sub_100002F0C(v275, v266, &qword_100018D98, &qword_1000111C0);
  v219 = v258;
  v220 = *(v258 + 16);
  v221 = v269;
  v222 = v259;
  v220(v269, v277, v259);
  sub_100002F0C(v278, v282, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v279, v283, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v280, v284, &qword_100018D40, &qword_100011158);
  v220(v268, v276, v222);
  sub_100002F0C(v281, v270, &qword_100018DE8, &qword_100011218);
  v223 = v217;
  v224 = v260;
  sub_100002F0C(v223, v260, &qword_100018D98, &qword_1000111C0);
  v225 = sub_1000026DC(&qword_100018E08, &qword_100011228);
  sub_100002F0C(v218, v224 + v225[12], &qword_100018D98, &qword_1000111C0);
  v220((v224 + v225[16]), v221, v222);
  sub_100002F0C(v282, v224 + v225[20], &qword_100018D40, &qword_100011158);
  sub_100002F0C(v283, v224 + v225[24], &qword_100018D40, &qword_100011158);
  sub_100002F0C(v284, v224 + v225[28], &qword_100018D40, &qword_100011158);
  v226 = v268;
  v220((v224 + v225[32]), v268, v222);
  v227 = v270;
  sub_100002F0C(v270, v224 + v225[36], &qword_100018DE8, &qword_100011218);
  sub_100005238(v281, &qword_100018DE8, &qword_100011218);
  v228 = *(v219 + 8);
  v228(v276, v222);
  sub_100005238(v280, &qword_100018D40, &qword_100011158);
  sub_100005238(v279, &qword_100018D40, &qword_100011158);
  sub_100005238(v278, &qword_100018D40, &qword_100011158);
  v228(v277, v222);
  sub_100005238(v275, &qword_100018D98, &qword_1000111C0);
  sub_100005238(v274, &qword_100018D98, &qword_1000111C0);
  sub_100005238(v227, &qword_100018DE8, &qword_100011218);
  v228(v226, v222);
  sub_100005238(v284, &qword_100018D40, &qword_100011158);
  sub_100005238(v283, &qword_100018D40, &qword_100011158);
  sub_100005238(v282, &qword_100018D40, &qword_100011158);
  v228(v269, v222);
  sub_100005238(v266, &qword_100018D98, &qword_1000111C0);
  return sub_100005238(v265, &qword_100018D98, &qword_1000111C0);
}

uint64_t sub_100009678(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(type metadata accessor for GenerativePlaygroundCommands() + 24);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  result = FocusedValue.content.getter();
  if (v7 != 1)
  {
    return j__swift_release();
  }

  if (v6)
  {
    v5 = a2(result);
    result = j__swift_release();
    if (v5)
    {
      v5(result);
      return sub_10000E3E8(v5);
    }
  }

  return result;
}

uint64_t sub_100009734(uint64_t a1)
{
  v2 = type metadata accessor for DisplayableImage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  (*(v3 + 16))(v6, a1, v2);
  sub_10000E8BC();
  return SharePreview<>.init(_:image:)();
}

uint64_t sub_100009894(uint64_t result, void (*a2)(void))
{
  if (a2)
  {
    v3 = result;

    a2(v3 & 1);

    return sub_10000E3E8(a2);
  }

  return result;
}

uint64_t sub_1000098F8()
{
  v0 = sub_1000026DC(&qword_100018DB8, &unk_1000111E8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_1000026DC(&qword_100018AA8, &unk_100010CE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for GenerativePlaygroundCommands();
  v9 = *(v8 + 24);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  FocusedValue.content.getter();
  if (v19 == 1)
  {
    if (v18)
    {
      v10 = ComposingViewActions.share.getter();
      v11 = j__swift_release();
      if (v10)
      {
        v10(v11);
        return sub_10000E3E8(v10);
      }
    }
  }

  else
  {
    j__swift_release();
  }

  v13 = *(v8 + 28);
  sub_1000026DC(&qword_100018C18, &unk_100011090);
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100005238(v3, &qword_100018DB8, &unk_1000111E8);
    v17 = type metadata accessor for DetailViewActions();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    return sub_100005238(v7, &qword_100018AA8, &unk_100010CE0);
  }

  sub_100006070(v3, v7, &qword_100018AA8, &unk_100010CE0);
  v14 = type metadata accessor for DetailViewActions();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    return sub_100005238(v7, &qword_100018AA8, &unk_100010CE0);
  }

  v16 = DetailViewActions.share.getter();
  result = (*(v15 + 8))(v7, v14);
  if (v16)
  {
    v16(result);
    return sub_10000E3E8(v16);
  }

  return result;
}

uint64_t sub_100009BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v294 = a2;
  v305 = sub_1000026DC(&qword_100018D40, &qword_100011158);
  v3 = *(*(v305 - 8) + 64);
  v4 = __chkstk_darwin(v305);
  v325 = v274 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v324 = v274 - v7;
  v8 = __chkstk_darwin(v6);
  v306 = v274 - v9;
  v10 = __chkstk_darwin(v8);
  v322 = v274 - v11;
  __chkstk_darwin(v10);
  v291 = v274 - v12;
  v308 = sub_1000026DC(&qword_100018D48, &qword_100011160);
  v307 = *(v308 - 8);
  v13 = v307[8];
  v14 = __chkstk_darwin(v308);
  v323 = v274 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v319 = v274 - v16;
  v296 = type metadata accessor for Divider();
  v295 = *(v296 - 8);
  v17 = *(v295 + 64);
  v18 = __chkstk_darwin(v296);
  v320 = v274 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v321 = v274 - v21;
  v22 = __chkstk_darwin(v20);
  v317 = v274 - v23;
  __chkstk_darwin(v22);
  v318 = v274 - v24;
  v303 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  v25 = *(*(v303 - 8) + 64);
  v26 = __chkstk_darwin(v303);
  v316 = v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v309 = v274 - v28;
  v310 = sub_1000026DC(&qword_100018DA8, &qword_1000111D0);
  v29 = *(*(v310 - 8) + 64);
  __chkstk_darwin(v310);
  v311 = v274 - v30;
  v313 = type metadata accessor for KeyEquivalent();
  v302 = *(v313 - 8);
  v31 = *(v302 + 8);
  v32 = __chkstk_darwin(v313);
  v290 = v274 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v301 = v274 - v34;
  v300 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v299 = *(v300 - 8);
  v35 = *(v299 + 64);
  __chkstk_darwin(v300);
  v298 = v274 - v36;
  v287 = sub_1000026DC(&qword_100018D90, &qword_1000111B8);
  v37 = *(v287 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v287);
  v275 = v274 - v39;
  v314 = sub_1000026DC(&qword_100018DB0, &qword_1000111D8);
  v40 = *(*(v314 - 8) + 64);
  v41 = __chkstk_darwin(v314);
  v280 = v274 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v278 = v274 - v44;
  v45 = __chkstk_darwin(v43);
  v277 = v274 - v46;
  __chkstk_darwin(v45);
  v48 = v274 - v47;
  v49 = sub_1000026DC(&qword_100018AB0, &qword_1000111E0);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v281 = v274 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v279 = v274 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = v274 - v56;
  __chkstk_darwin(v55);
  v59 = v274 - v58;
  v60 = sub_1000026DC(&qword_100018DB8, &unk_1000111E8);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60);
  v292 = v274 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v288 = v274 - v65;
  v66 = __chkstk_darwin(v64);
  v284 = v274 - v67;
  v68 = __chkstk_darwin(v66);
  v283 = v274 - v69;
  __chkstk_darwin(v68);
  v71 = v274 - v70;
  v72 = sub_1000026DC(&qword_100018AA8, &unk_100010CE0);
  v73 = *(*(v72 - 8) + 64);
  v74 = __chkstk_darwin(v72 - 8);
  v293 = v274 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __chkstk_darwin(v74);
  v78 = v274 - v77;
  v79 = __chkstk_darwin(v76);
  v285 = v274 - v80;
  v81 = __chkstk_darwin(v79);
  v286 = (v274 - v82);
  __chkstk_darwin(v81);
  v84 = v274 - v83;
  v85 = sub_1000026DC(&qword_100018DC0, &qword_1000111F8);
  v86 = *(*(v85 - 8) + 64);
  v87 = __chkstk_darwin(v85 - 8);
  v304 = v274 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v315 = v274 - v89;
  v312 = type metadata accessor for GenerativePlaygroundCommands();
  v90 = *(v312 + 28);
  v91 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  v329 = a1;
  v326 = v91;
  v327 = v90;
  FocusedValue.content.getter();
  v328 = v60;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v289 = v78;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100006070(v71, v84, &qword_100018AA8, &unk_100010CE0);
    v93 = type metadata accessor for DetailViewActions();
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v84, 1, v93) != 1)
    {
      v95 = DetailViewActions.close.getter();
      v97 = v96;
      (*(v94 + 8))(v84, v93);
      v98 = LocalizedStringKey.init(stringLiteral:)();
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v105 = swift_allocObject();
      *(v105 + 16) = v95;
      *(v105 + 24) = v97;
      v274[1] = v97;
      __chkstk_darwin(v105);
      v274[-6] = v98;
      v274[-5] = v100;
      LOBYTE(v274[-4]) = v102 & 1;
      v274[-3] = v104;
      v274[-2] = 0x6F746F6870;
      v274[-1] = 0xE500000000000000;

      sub_1000026DC(&qword_100018D50, &qword_100011168);
      sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168);
      v106 = v298;
      Button.init(action:label:)();

      v107 = v301;
      static KeyEquivalent.space.getter();
      EventModifiers.init(rawValue:)();
      v108 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
      v109 = v275;
      v110 = v300;
      View.keyboardShortcut(_:modifiers:)();
      v297 = *(v302 + 1);
      v297(v107, v313);
      v282 = *(v299 + 8);
      v282(v106, v110);
      v111 = v287;
      (*(v37 + 16))(v311, v109, v287);
      swift_storeEnumTagMultiPayload();
      v330 = v110;
      v331 = v108;
      swift_getOpaqueTypeConformance2();
      sub_10000E2C0();
      _ConditionalContent<>.init(storage:)();

      (*(v37 + 8))(v109, v111);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100005238(v71, &qword_100018DB8, &unk_1000111E8);
    v112 = type metadata accessor for DetailViewActions();
    (*(*(v112 - 8) + 56))(v84, 1, 1, v112);
  }

  sub_100005238(v84, &qword_100018AA8, &unk_100010CE0);
  v113 = *(v312 + 20);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  FocusedValue.content.getter();
  v114 = swift_getEnumCaseMultiPayload();
  v276 = v57;
  if (v114 != 1)
  {
    sub_100005238(v48, &qword_100018DB0, &qword_1000111D8);
    v120 = type metadata accessor for PhotoGridActions();
    (*(*(v120 - 8) + 56))(v59, 1, 1, v120);
    goto LABEL_9;
  }

  sub_100006070(v48, v59, &qword_100018AB0, &qword_1000111E0);
  v115 = type metadata accessor for PhotoGridActions();
  v116 = *(v115 - 8);
  if ((*(v116 + 48))(v59, 1, v115) == 1)
  {
LABEL_9:
    sub_100005238(v59, &qword_100018AB0, &qword_1000111E0);
    v117 = 0;
    v119 = 0;
    goto LABEL_10;
  }

  v117 = PhotoGridActions.open.getter();
  v119 = v118;
  (*(v116 + 8))(v59, v115);
LABEL_10:
  v275 = v119;
  v121 = LocalizedStringKey.init(stringLiteral:)();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v128 = swift_allocObject();
  *(v128 + 16) = v117;
  *(v128 + 24) = v119;
  __chkstk_darwin(v128);
  v274[-6] = v121;
  v274[-5] = v123;
  LOBYTE(v274[-4]) = v125 & 1;
  v274[-3] = v127;
  v274[-2] = 0x6F746F6870;
  v274[-1] = 0xE500000000000000;
  sub_10000E2B0(v117);
  sub_1000026DC(&qword_100018D50, &qword_100011168);
  sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168);
  v129 = v298;
  Button.init(action:label:)();

  v130 = v301;
  static KeyEquivalent.space.getter();
  EventModifiers.init(rawValue:)();
  v131 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
  v132 = v309;
  v133 = v300;
  View.keyboardShortcut(_:modifiers:)();
  v297 = *(v302 + 1);
  v297(v130, v313);
  v282 = *(v299 + 8);
  v282(v129, v133);
  KeyPath = swift_getKeyPath();
  v135 = swift_allocObject();
  *(v135 + 16) = v117 == 0;
  v136 = (v132 + *(v303 + 36));
  *v136 = KeyPath;
  v136[1] = sub_10000EA44;
  v136[2] = v135;
  sub_100002F0C(v132, v311, &qword_100018D98, &qword_1000111C0);
  swift_storeEnumTagMultiPayload();
  v330 = v133;
  v331 = v131;
  swift_getOpaqueTypeConformance2();
  sub_10000E2C0();
  _ConditionalContent<>.init(storage:)();
  sub_10000E3E8(v117);
  sub_100005238(v132, &qword_100018D98, &qword_1000111C0);
  v57 = v276;
LABEL_11:
  Divider.init()();
  v137 = v283;
  FocusedValue.content.getter();
  v138 = swift_getEnumCaseMultiPayload();
  v139 = v286;
  if (v138 == 1)
  {
    sub_100006070(v137, v286, &qword_100018AA8, &unk_100010CE0);
    v140 = type metadata accessor for DetailViewActions();
    v141 = *(v140 - 8);
    if ((*(v141 + 48))(v139, 1, v140) != 1)
    {
      v142 = DetailViewActions.edit.getter();
      v144 = v143;
      (*(v141 + 8))(v139, v140);
LABEL_18:
      v151 = swift_allocObject();
      *(v151 + 16) = v142;
      *(v151 + 24) = v144;
      v152 = swift_allocObject();
      v153 = 0;
      *(v152 + 16) = sub_10000EA48;
      *(v152 + 24) = v151;
      v154 = sub_10000EA3C;
      goto LABEL_21;
    }
  }

  else
  {
    sub_100005238(v137, &qword_100018DB8, &unk_1000111E8);
    v145 = type metadata accessor for DetailViewActions();
    (*(*(v145 - 8) + 56))(v139, 1, 1, v145);
  }

  sub_100005238(v139, &qword_100018AA8, &unk_100010CE0);
  v146 = *(v312 + 20);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v147 = v277;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100006070(v147, v57, &qword_100018AB0, &qword_1000111E0);
    v148 = type metadata accessor for PhotoGridActions();
    v149 = *(v148 - 8);
    if ((*(v149 + 48))(v57, 1, v148) != 1)
    {
      v142 = PhotoGridActions.edit.getter();
      v144 = v150;
      (*(v149 + 8))(v57, v148);
      goto LABEL_18;
    }
  }

  else
  {
    sub_100005238(v147, &qword_100018DB0, &qword_1000111D8);
    v155 = type metadata accessor for PhotoGridActions();
    (*(*(v155 - 8) + 56))(v57, 1, 1, v155);
  }

  sub_100005238(v57, &qword_100018AB0, &qword_1000111E0);
  v154 = 0;
  v152 = 0;
  v153 = 1;
LABEL_21:
  v156 = LocalizedStringKey.init(stringLiteral:)();
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = swift_allocObject();
  *(v163 + 16) = v154;
  *(v163 + 24) = v152;
  __chkstk_darwin(v163);
  v274[-6] = v156;
  v274[-5] = v158;
  LOBYTE(v274[-4]) = v160 & 1;
  v274[-3] = v162;
  v274[-2] = 0x6C69636E6570;
  v274[-1] = 0xE600000000000000;
  v286 = v154;
  v287 = v152;
  sub_10000E2B0(v154);
  v164 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v165 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168);
  v166 = v298;
  v311 = v164;
  v310 = v165;
  Button.init(action:label:)();

  v167 = v301;
  static KeyEquivalent.return.getter();
  EventModifiers.init(rawValue:)();
  sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
  v168 = v316;
  v169 = v300;
  View.keyboardShortcut(_:modifiers:)();
  v301 = v302 + 8;
  v297(v167, v313);
  v282(v166, v169);
  v170 = swift_getKeyPath();
  v171 = swift_allocObject();
  *(v171 + 16) = v153;
  v172 = (v168 + *(v303 + 36));
  *v172 = v170;
  v172[1] = sub_10000EA44;
  v172[2] = v171;
  v173 = v284;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v174 = v285;
    sub_100006070(v173, v285, &qword_100018AA8, &unk_100010CE0);
    v175 = type metadata accessor for DetailViewActions();
    v176 = *(v175 - 8);
    if ((*(v176 + 48))(v174, 1, v175) != 1)
    {
      v177 = DetailViewActions.duplicate.getter();
      v179 = v178;
      (*(v176 + 8))(v174, v175);
LABEL_28:
      v187 = swift_allocObject();
      *(v187 + 16) = v177;
      *(v187 + 24) = v179;
      v188 = swift_allocObject();
      LODWORD(v300) = 0;
      *(v188 + 16) = sub_10000EA48;
      *(v188 + 24) = v187;
      v189 = sub_10000EA3C;
      goto LABEL_31;
    }
  }

  else
  {
    sub_100005238(v173, &qword_100018DB8, &unk_1000111E8);
    v180 = type metadata accessor for DetailViewActions();
    v174 = v285;
    (*(*(v180 - 8) + 56))(v285, 1, 1, v180);
  }

  sub_100005238(v174, &qword_100018AA8, &unk_100010CE0);
  v181 = *(v312 + 20);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v182 = v278;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v183 = v279;
    sub_100006070(v182, v279, &qword_100018AB0, &qword_1000111E0);
    v184 = type metadata accessor for PhotoGridActions();
    v185 = *(v184 - 8);
    if ((*(v185 + 48))(v183, 1, v184) != 1)
    {
      v177 = PhotoGridActions.duplicate.getter();
      v179 = v186;
      (*(v185 + 8))(v183, v184);
      goto LABEL_28;
    }
  }

  else
  {
    sub_100005238(v182, &qword_100018DB0, &qword_1000111D8);
    v190 = type metadata accessor for PhotoGridActions();
    v183 = v279;
    (*(*(v190 - 8) + 56))(v279, 1, 1, v190);
  }

  sub_100005238(v183, &qword_100018AB0, &qword_1000111E0);
  v189 = 0;
  v188 = 0;
  LODWORD(v300) = 1;
LABEL_31:
  v191 = LocalizedStringKey.init(stringLiteral:)();
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v198 = swift_allocObject();
  *(v198 + 16) = v189;
  *(v198 + 24) = v188;
  __chkstk_darwin(v198);
  v274[-6] = v191;
  v274[-5] = v193;
  LOBYTE(v274[-4]) = v195 & 1;
  v274[-3] = v197;
  v274[-2] = 0xD000000000000015;
  v274[-1] = 0x800000010000FDD0;
  v303 = v188;
  sub_10000E2B0(v189);
  v199 = v291;
  Button.init(action:label:)();

  v200 = swift_getKeyPath();
  v201 = swift_allocObject();
  *(v201 + 16) = v300;
  v202 = v305;
  v203 = (v199 + *(v305 + 36));
  *v203 = v200;
  v203[1] = sub_10000EA44;
  v203[2] = v201;
  v204 = v290;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v205 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v205)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_10000E038();
  View.keyboardShortcut(_:modifiers:)();
  v297(v204, v313);
  sub_100005238(v199, &qword_100018D40, &qword_100011158);
  Divider.init()();
  v206 = v288;
  FocusedValue.content.getter();
  v207 = swift_getEnumCaseMultiPayload();
  v208 = v289;
  v302 = v189;
  if (v207 == 1)
  {
    sub_100006070(v206, v289, &qword_100018AA8, &unk_100010CE0);
    v209 = type metadata accessor for DetailViewActions();
    v210 = *(v209 - 8);
    if ((*(v210 + 48))(v208, 1, v209) != 1)
    {
      v211 = DetailViewActions.addCaption.getter();
      v213 = v212;
      (*(v210 + 8))(v208, v209);
      v214 = sub_10000EA48;
LABEL_40:
      v222 = swift_allocObject();
      *(v222 + 16) = v211;
      *(v222 + 24) = v213;
      v223 = swift_allocObject();
      v224 = 0;
      *(v223 + 16) = v214;
      *(v223 + 24) = v222;
      v225 = sub_10000E420;
      goto LABEL_43;
    }
  }

  else
  {
    sub_100005238(v206, &qword_100018DB8, &unk_1000111E8);
    v215 = type metadata accessor for DetailViewActions();
    (*(*(v215 - 8) + 56))(v208, 1, 1, v215);
  }

  sub_100005238(v208, &qword_100018AA8, &unk_100010CE0);
  v216 = *(v312 + 20);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v217 = v280;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v218 = v281;
    sub_100006070(v217, v281, &qword_100018AB0, &qword_1000111E0);
    v219 = type metadata accessor for PhotoGridActions();
    v220 = *(v219 - 8);
    if ((*(v220 + 48))(v218, 1, v219) != 1)
    {
      v211 = PhotoGridActions.addCaption.getter();
      v213 = v221;
      (*(v220 + 8))(v218, v219);
      v214 = sub_10000E3F8;
      goto LABEL_40;
    }
  }

  else
  {
    sub_100005238(v217, &qword_100018DB0, &qword_1000111D8);
    v226 = type metadata accessor for PhotoGridActions();
    v218 = v281;
    (*(*(v226 - 8) + 56))(v281, 1, 1, v226);
  }

  sub_100005238(v218, &qword_100018AB0, &qword_1000111E0);
  v225 = 0;
  v223 = 0;
  v224 = 1;
LABEL_43:
  v227 = LocalizedStringKey.init(stringLiteral:)();
  v229 = v228;
  v231 = v230;
  v233 = v232;
  v234 = swift_allocObject();
  *(v234 + 16) = v225;
  *(v234 + 24) = v223;
  __chkstk_darwin(v234);
  v274[-6] = v227;
  v274[-5] = v229;
  LOBYTE(v274[-4]) = v231 & 1;
  v274[-3] = v233;
  strcpy(&v274[-2], "accessibility");
  HIWORD(v274[-1]) = -4864;
  v313 = v225;
  sub_10000E2B0(v225);
  v235 = v322;
  Button.init(action:label:)();

  v236 = swift_getKeyPath();
  v237 = swift_allocObject();
  *(v237 + 16) = v224;
  v238 = (v235 + *(v202 + 36));
  *v238 = v236;
  v238[1] = sub_10000EA44;
  v238[2] = v237;
  v239 = v292;
  FocusedValue.content.getter();
  v240 = swift_getEnumCaseMultiPayload();
  v314 = v223;
  if (v240 != 1)
  {
    sub_100005238(v239, &qword_100018DB8, &unk_1000111E8);
    v247 = type metadata accessor for DetailViewActions();
    v241 = v293;
    (*(*(v247 - 8) + 56))(v293, 1, 1, v247);
    goto LABEL_47;
  }

  v241 = v293;
  sub_100006070(v239, v293, &qword_100018AA8, &unk_100010CE0);
  v242 = type metadata accessor for DetailViewActions();
  v243 = *(v242 - 8);
  if ((*(v243 + 48))(v241, 1, v242) == 1)
  {
LABEL_47:
    sub_100005238(v241, &qword_100018AA8, &unk_100010CE0);
    v244 = 0;
    v246 = 0;
    goto LABEL_48;
  }

  v244 = DetailViewActions.reportAConcern.getter();
  v246 = v245;
  (*(v243 + 8))(v241, v242);
LABEL_48:
  v248 = LocalizedStringKey.init(stringLiteral:)();
  v250 = v249;
  v252 = v251;
  v254 = v253;
  v255 = swift_allocObject();
  *(v255 + 16) = v244;
  *(v255 + 24) = v246;
  __chkstk_darwin(v255);
  v328 = v244;
  v329 = v246;
  v274[-6] = v248;
  v274[-5] = v250;
  LOBYTE(v274[-4]) = v252 & 1;
  v274[-3] = v254;
  v274[-2] = 0xD000000000000016;
  v274[-1] = 0x800000010000FE10;
  v256 = v244;
  sub_10000E2B0(v244);
  v257 = v306;
  Button.init(action:label:)();

  v258 = swift_getKeyPath();
  v259 = swift_allocObject();
  *(v259 + 16) = v256 == 0;
  v260 = (v257 + *(v305 + 36));
  v261 = v257;
  *v260 = v258;
  v260[1] = sub_10000EA44;
  v260[2] = v259;
  v262 = v304;
  sub_100002F0C(v315, v304, &qword_100018DC0, &qword_1000111F8);
  v263 = v295;
  v264 = *(v295 + 16);
  v265 = v296;
  v264(v321, v318, v296);
  v266 = v309;
  sub_100002F0C(v316, v309, &qword_100018D98, &qword_1000111C0);
  v327 = v307[2];
  v327(v323, v319, v308);
  v264(v320, v317, v265);
  sub_100002F0C(v322, v324, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v261, v325, &qword_100018D40, &qword_100011158);
  v267 = v262;
  v268 = v294;
  sub_100002F0C(v267, v294, &qword_100018DC0, &qword_1000111F8);
  v269 = sub_1000026DC(&qword_100018DD0, &qword_100011200);
  v264((v268 + v269[12]), v321, v265);
  sub_100002F0C(v266, v268 + v269[16], &qword_100018D98, &qword_1000111C0);
  v270 = v308;
  v327((v268 + v269[20]), v323, v308);
  v264((v268 + v269[24]), v320, v265);
  sub_100002F0C(v324, v268 + v269[28], &qword_100018D40, &qword_100011158);
  sub_100002F0C(v325, v268 + v269[32], &qword_100018D40, &qword_100011158);
  sub_10000E3E8(v328);
  sub_10000E3E8(v313);
  sub_10000E3E8(v302);
  sub_10000E3E8(v286);
  sub_100005238(v306, &qword_100018D40, &qword_100011158);
  sub_100005238(v322, &qword_100018D40, &qword_100011158);
  v271 = *(v263 + 8);
  v271(v317, v265);
  v272 = v307[1];
  v272(v319, v270);
  sub_100005238(v316, &qword_100018D98, &qword_1000111C0);
  v271(v318, v265);
  sub_100005238(v315, &qword_100018DC0, &qword_1000111F8);
  sub_100005238(v325, &qword_100018D40, &qword_100011158);
  sub_100005238(v324, &qword_100018D40, &qword_100011158);
  v271(v320, v265);
  v272(v323, v270);
  sub_100005238(v309, &qword_100018D98, &qword_1000111C0);
  v271(v321, v265);
  return sub_100005238(v304, &qword_100018DC0, &qword_1000111F8);
}

uint64_t sub_10000C3D4(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v1(v2);

    return sub_10000E3E8(v1);
  }

  return result;
}

uint64_t sub_10000C428@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v114 = a2;
  v121 = type metadata accessor for KeyEquivalent();
  v125 = *(v121 - 8);
  v3 = *(v125 + 64);
  v4 = __chkstk_darwin(v121);
  v109 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v95 - v6;
  v103 = type metadata accessor for GenerativePlaygroundCommands();
  v7 = *(v103 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v103);
  v115 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v123 = *(v115 - 8);
  v9 = *(v123 + 64);
  v10 = __chkstk_darwin(v115);
  v106 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v95 - v12;
  v118 = sub_1000026DC(&qword_100018D90, &qword_1000111B8);
  v126 = *(v118 - 8);
  v14 = *(v126 + 64);
  v15 = __chkstk_darwin(v118);
  v108 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v95 - v17;
  v116 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  v18 = *(*(v116 - 8) + 64);
  v19 = __chkstk_darwin(v116);
  v113 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v122 = &v95 - v22;
  v23 = __chkstk_darwin(v21);
  v107 = &v95 - v24;
  v25 = __chkstk_darwin(v23);
  v110 = &v95 - v26;
  v27 = __chkstk_darwin(v25);
  v101 = &v95 - v28;
  __chkstk_darwin(v27);
  v127 = &v95 - v29;
  v111 = type metadata accessor for Divider();
  v112 = *(v111 - 8);
  v30 = *(v112 + 64);
  v31 = __chkstk_darwin(v111);
  v119 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v120 = &v95 - v34;
  v35 = __chkstk_darwin(v33);
  v124 = &v95 - v36;
  __chkstk_darwin(v35);
  v117 = &v95 - v37;
  Divider.init()();
  v38 = LocalizedStringKey.init(stringLiteral:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v128 = a1;
  sub_10000DE34(a1, &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v104 = v8;
  v46 = swift_allocObject();
  v105 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DE9C(v105, v46 + v45);
  v129 = v38;
  v130 = v40;
  v131 = v42 & 1;
  v132 = v44;
  v133 = 0xD000000000000012;
  v134 = 0x800000010000FD90;
  v47 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v48 = v97;
  v49 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168);
  v100 = v47;
  v99 = v49;
  Button.init(action:label:)();

  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v50 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v50)
  {
    EventModifiers.init(rawValue:)();
  }

  v51 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
  v52 = v102;
  v53 = v115;
  v98 = v51;
  View.keyboardShortcut(_:modifiers:)();
  v54 = *(v125 + 8);
  v125 += 8;
  v97 = v54;
  (v54)(v48, v121);
  v55 = *(v123 + 8);
  v123 += 8;
  v96 = v55;
  v55(v13, v53);
  v56 = *(v103 + 24);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  v103 = v56;
  FocusedValue.content.getter();
  if (v136)
  {
    if (v135)
    {
      j__swift_release();
      v57 = 0;
    }

    else
    {
      v57 = 1;
      j__swift_release();
    }
  }

  else
  {
    j__swift_release();
    v57 = 1;
  }

  KeyPath = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  v60 = *(v126 + 32);
  v61 = v101;
  v126 += 32;
  v60(v101, v52, v118);
  v62 = (v61 + *(v116 + 36));
  *v62 = KeyPath;
  v62[1] = sub_10000EA44;
  v62[2] = v59;
  sub_10000E1F8(v61, v127);
  Divider.init()();
  v63 = LocalizedStringKey.init(stringLiteral:)();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v105;
  sub_10000DE34(v128, v105);
  v71 = swift_allocObject();
  v72 = sub_10000DE9C(v70, v71 + v45);
  __chkstk_darwin(v72);
  *(&v95 - 6) = v63;
  *(&v95 - 5) = v65;
  *(&v95 - 32) = v67 & 1;
  *(&v95 - 3) = v69;
  *(&v95 - 2) = 0x6C2E6574656C6564;
  *(&v95 - 1) = 0xEB00000000746665;
  v73 = v106;
  Button.init(action:label:)();

  v74 = v109;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v75 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v75)
  {
    EventModifiers.init(rawValue:)();
  }

  v76 = v108;
  v77 = v115;
  View.keyboardShortcut(_:modifiers:)();
  (v97)(v74, v121);
  v96(v73, v77);
  FocusedValue.content.getter();
  if (v136)
  {
    if (v135)
    {
      j__swift_release();
      v78 = 0;
    }

    else
    {
      v78 = 1;
      j__swift_release();
    }
  }

  else
  {
    j__swift_release();
    v78 = 1;
  }

  v79 = swift_getKeyPath();
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  v81 = v107;
  v60(v107, v76, v118);
  v82 = (v81 + *(v116 + 36));
  *v82 = v79;
  v82[1] = sub_10000EA44;
  v82[2] = v80;
  v83 = v110;
  sub_10000E1F8(v81, v110);
  v84 = v112;
  v85 = *(v112 + 16);
  v86 = v120;
  v87 = v111;
  v85(v120, v117, v111);
  v88 = v122;
  sub_100002F0C(v127, v122, &qword_100018D98, &qword_1000111C0);
  v85(v119, v124, v87);
  v89 = v113;
  sub_100002F0C(v83, v113, &qword_100018D98, &qword_1000111C0);
  v90 = v114;
  v85(v114, v86, v87);
  v91 = sub_1000026DC(&qword_100018DA0, &qword_1000111C8);
  sub_100002F0C(v88, &v90[v91[12]], &qword_100018D98, &qword_1000111C0);
  v92 = v119;
  v85(&v90[v91[16]], v119, v87);
  sub_100002F0C(v89, &v90[v91[20]], &qword_100018D98, &qword_1000111C0);
  sub_100005238(v83, &qword_100018D98, &qword_1000111C0);
  v93 = *(v84 + 8);
  v93(v124, v87);
  sub_100005238(v127, &qword_100018D98, &qword_1000111C0);
  v93(v117, v87);
  sub_100005238(v89, &qword_100018D98, &qword_1000111C0);
  v93(v92, v87);
  sub_100005238(v122, &qword_100018D98, &qword_1000111C0);
  return (v93)(v120, v87);
}

uint64_t sub_10000D118@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v96[0] = a1;
  v109 = a2;
  v111 = type metadata accessor for Divider();
  v110 = *(v111 - 8);
  v3 = *(v110 + 64);
  v4 = __chkstk_darwin(v111);
  v118 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v117 = v96 - v6;
  v116 = type metadata accessor for KeyEquivalent();
  v121 = *(v116 - 8);
  v7 = *(v121 + 64);
  v8 = __chkstk_darwin(v116);
  v108 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = v96 - v10;
  v11 = type metadata accessor for GenerativePlaygroundCommands();
  v12 = v11 - 8;
  v102 = *(v11 - 8);
  v13 = *(v102 + 64);
  __chkstk_darwin(v11);
  v112 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v119 = *(v112 - 8);
  v14 = *(v119 + 64);
  v15 = __chkstk_darwin(v112);
  v103 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v96 - v17;
  v113 = sub_1000026DC(&qword_100018D40, &qword_100011158);
  v19 = *(*(v113 - 8) + 64);
  v20 = __chkstk_darwin(v113);
  v104 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v99 = v96 - v22;
  v107 = sub_1000026DC(&qword_100018D48, &qword_100011160);
  v106 = *(v107 - 8);
  v23 = *(v106 + 64);
  v24 = __chkstk_darwin(v107);
  v105 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v115 = v96 - v27;
  v28 = __chkstk_darwin(v26);
  v114 = v96 - v29;
  __chkstk_darwin(v28);
  v120 = v96 - v30;
  v31 = LocalizedStringKey.init(stringLiteral:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10000DE34(a1, v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v102 + 80);
  v39 = (v38 + 16) & ~v38;
  v101 = v13;
  v96[4] = v38;
  v40 = swift_allocObject();
  v97 = v39;
  v41 = v40 + v39;
  v42 = v18;
  v102 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DE9C(v102, v41);
  v122 = v31;
  v123 = v33;
  v124 = v35 & 1;
  v125 = v37;
  v126 = 0xD000000000000012;
  v127 = 0x800000010000FD50;
  v43 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v44 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168);
  v98 = v43;
  v96[3] = v44;
  Button.init(action:label:)();

  v45 = *(v12 + 32);
  v46 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  v47 = v96[0];
  v96[2] = v45;
  v96[1] = v46;
  FocusedValue.content.getter();
  if (v129 == 1)
  {
    if (v128)
    {
      j__swift_release();
      v48 = 0;
    }

    else
    {
      v48 = 1;
      j__swift_release();
    }
  }

  else
  {
    j__swift_release();
    v48 = 1;
  }

  v49 = v113;
  v50 = v99;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  v53 = *(v119 + 32);
  v119 += 32;
  v53(v50, v42, v112);
  v54 = (v50 + *(v49 + 36));
  *v54 = KeyPath;
  v54[1] = sub_10000E020;
  v54[2] = v52;
  v55 = v100;
  static KeyEquivalent.upArrow.getter();
  v56 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v56)
  {
    EventModifiers.init(rawValue:)();
  }

  v99 = sub_10000E038();
  View.keyboardShortcut(_:modifiers:)();
  v57 = *(v121 + 8);
  v121 += 8;
  v100 = v57;
  (v57)(v55, v116);
  sub_100005238(v50, &qword_100018D40, &qword_100011158);
  v58 = LocalizedStringKey.init(stringLiteral:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v102;
  sub_10000DE34(v47, v102);
  v66 = v97;
  v67 = swift_allocObject();
  v68 = sub_10000DE9C(v65, v67 + v66);
  __chkstk_darwin(v68);
  v96[-6] = v58;
  v96[-5] = v60;
  LOBYTE(v96[-4]) = v62 & 1;
  v96[-3] = v64;
  v96[-2] = 0xD00000000000001DLL;
  v96[-1] = 0x800000010000FD70;
  v69 = v103;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  if (v129)
  {
    v70 = v108;
    v71 = v104;
    if (v128)
    {
      j__swift_release();
      v72 = 0;
    }

    else
    {
      v72 = 1;
      j__swift_release();
    }
  }

  else
  {
    j__swift_release();
    v72 = 1;
    v70 = v108;
    v71 = v104;
  }

  v73 = v113;
  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v72;
  v53(v71, v69, v112);
  v76 = (v71 + *(v73 + 36));
  *v76 = v74;
  v76[1] = sub_10000EA44;
  v76[2] = v75;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_1000026DC(&qword_100018D80, &qword_1000111A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100011070;
  v78 = static EventModifiers.command.getter();
  *(inited + 32) = v78;
  v79 = static EventModifiers.shift.getter();
  *(inited + 40) = v79;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v78)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v79)
  {
    EventModifiers.init(rawValue:)();
  }

  v80 = v114;
  View.keyboardShortcut(_:modifiers:)();
  (v100)(v70, v116);
  sub_100005238(v71, &qword_100018D40, &qword_100011158);
  v81 = v117;
  Divider.init()();
  v82 = v106;
  v83 = *(v106 + 16);
  v84 = v115;
  v85 = v107;
  v83(v115, v120, v107);
  v86 = v105;
  v83(v105, v80, v85);
  v87 = v110;
  v121 = *(v110 + 16);
  v88 = v81;
  v89 = v111;
  (v121)(v118, v88, v111);
  v90 = v109;
  v83(v109, v84, v85);
  v91 = sub_1000026DC(&qword_100018D88, &qword_1000111B0);
  v83(&v90[*(v91 + 48)], v86, v85);
  v92 = v118;
  (v121)(&v90[*(v91 + 64)], v118, v89);
  v93 = *(v87 + 8);
  v93(v117, v89);
  v94 = *(v82 + 8);
  v94(v114, v85);
  v94(v120, v85);
  v93(v92, v89);
  v94(v86, v85);
  return (v94)(v115, v85);
}

uint64_t sub_10000DD74(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(type metadata accessor for GenerativePlaygroundCommands() + 24);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  result = FocusedValue.content.getter();
  if (v6 == 1)
  {
    if (!v5)
    {
      return result;
    }

    a2(result);
  }

  return j__swift_release();
}

uint64_t sub_10000DE34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundCommands();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundCommands();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000DFC8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10000E038()
{
  result = qword_100018D60;
  if (!qword_100018D60)
  {
    sub_100002CB0(&qword_100018D40, &qword_100011158);
    sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
    sub_10000E958(&qword_100018D70, &qword_100018D78, &qword_1000111A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018D60);
  }

  return result;
}

uint64_t sub_10000E1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E2B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000E2C0()
{
  result = qword_100018DC8;
  if (!qword_100018DC8)
  {
    sub_100002CB0(&qword_100018D98, &qword_1000111C0);
    sub_100002CB0(&qword_100018D38, &qword_100011150);
    sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150);
    swift_getOpaqueTypeConformance2();
    sub_10000E958(&qword_100018D70, &qword_100018D78, &qword_1000111A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018DC8);
  }

  return result;
}

uint64_t sub_10000E3E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000E3F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000E420()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000E448()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000E480()
{
  v1 = *(type metadata accessor for GenerativePlaygroundCommands() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  PlaygroundHomeViewModel.enterComposing()();
}

uint64_t sub_10000E58C()
{
  v1 = (type metadata accessor for GenerativePlaygroundCommands() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_1000026DC(&qword_100018C08, &qword_100011080);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000E718()
{
  v0 = *(*(type metadata accessor for GenerativePlaygroundCommands() - 8) + 80);

  return sub_1000098F8();
}

unint64_t sub_10000E78C()
{
  result = qword_100018DF0;
  if (!qword_100018DF0)
  {
    sub_100002CB0(&qword_100018DE0, &qword_100011210);
    sub_10000E958(&qword_100018DF8, &qword_100018E00, &qword_100011220);
    sub_10000E958(&qword_100018D70, &qword_100018D78, &qword_1000111A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018DF0);
  }

  return result;
}

uint64_t sub_10000E874()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000E8BC()
{
  result = qword_100018E20;
  if (!qword_100018E20)
  {
    type metadata accessor for DisplayableImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018E20);
  }

  return result;
}

uint64_t sub_10000E958(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002CB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}