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

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_100AE5B50;
  if (!qword_100AE5B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LockSettingsViewModel()
{
  result = qword_100AF3E10;
  if (!qword_100AF3E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000041E8()
{
  result = type metadata accessor for ObservationRegistrar();
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

id sub_1000042A4(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext] = 0;
  v1[OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled] = 2;
  v1[OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout] = 4;
  ObservationRegistrar.init()();
  *&v1[OBJC_IVAR____TtC7Journal21LockSettingsViewModel_authEnvironment] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LockSettingsViewModel();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v7, "init");
  [v3 addObserver:{v4, v7.receiver, v7.super_class}];
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v4 selector:"systemProtectionDidChange:" name:UISceneSystemProtectionDidChangeNotification object:0];

  return v4;
}

void sub_100004484(void *a1, uint64_t a2)
{
  v50[1] = a2;
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = v50 - v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = objc_opt_self();
  v11 = [v55 standardUserDefaults];
  sub_1000F24EC(&qword_100AD6BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = 0xD00000000000001ELL;
  v13 = inited + 32;
  *(inited + 40) = 0x80000001008F6C10;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_100363528(inited);
  swift_setDeallocating();
  sub_100004F84(v13, &qword_100ADFEB0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 registerDefaults:isa];

  type metadata accessor for AppleAccountManager();
  static AppleAccountManager.shared.getter();
  dispatch thunk of AppleAccountManager.updateAccountStatusCache()();

  sub_100004EE8();
  static AppShortcutsProvider.updateAppShortcutParameters()();
  type metadata accessor for AppDependencyManager();
  v15 = static AppDependencyManager.shared.getter();
  v16 = type metadata accessor for JournalAppIntentsManager();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC7Journal24JournalAppIntentsManager_dependencyManager] = v15;
  v61.receiver = v17;
  v61.super_class = v16;
  v18 = objc_msgSendSuper2(&v61, "init");
  type metadata accessor for SendableContext();
  aBlock = 0u;
  v58 = 0u;
  v59 = 0;
  AppDependencyManager.add<A>(key:dependency:)();
  sub_100004F84(&aBlock, &unk_100AE5BA0);

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v19 = qword_100B30290;
  sub_10000512C();

  Current = CFAbsoluteTimeGetCurrent();
  sub_1000061B4(a1);
  if (qword_100ACFB90 != -1)
  {
    swift_once();
  }

  v59 = sub_1000066C8;
  v60 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v58 = sub_100006C7C;
  *(&v58 + 1) = &unk_100A6F130;
  v21 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v56 = &_swiftEmptyArrayStorage;
  sub_1004B6488(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10001F408(&qword_100AD1530, &unk_100AD6220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v53 + 8))(v8, v6);
  (*(v51 + 8))(v10, v52);
  v22 = type metadata accessor for TaskPriority();
  v23 = *(*(v22 - 8) + 56);
  v23(v5, 1, 1, v22);
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v5, &unk_100958468, v25);

  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v26 = qword_100B2F898;
  v27 = swift_allocObject();
  v28 = v54;
  *(v27 + 16) = v54;
  v29 = swift_allocObject();
  *(v29 + 16) = &unk_100958478;
  *(v29 + 24) = v27;
  v30 = (v26 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_actionHandler);
  v31 = *(v26 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_actionHandler);
  *v30 = &unk_100958488;
  v30[1] = v29;
  v32 = v28;
  sub_100004DF8(v31);
  static TaskPriority.low.getter();
  v23(v5, 0, 1, v22);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = sub_1004AAB54(0, 0, v5, &unk_100958498, v33);
  sub_100004F84(v5, &qword_100AD5170);
  *&v32[OBJC_IVAR____TtC7Journal11AppDelegate_localNotificationsTask] = v34;

  v35 = v55;
  v36 = [v55 standardUserDefaults];
  v37 = [v35 standardUserDefaults];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 integerForKey:v38];

  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    v42 = String._bridgeToObjectiveC()();
    [v36 setInteger:v41 forKey:v42];

    v43 = [v35 standardUserDefaults];
    v44 = [v35 standardUserDefaults];
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 integerForKey:v45];

    if (!__OFADD__(v46, 1))
    {
      v47 = String._bridgeToObjectiveC()();
      [v43 setInteger:v46 + 1 forKey:v47];

      v48 = [objc_opt_self() defaultCenter];
      type metadata accessor for ProtectedData();
      v49 = static ProtectedData.willBecomeUnavailableNotification.getter();
      [v48 addObserver:v32 selector:"protectedDataWillBecomeUnavailable:" name:v49 object:static ProtectedData.shared.getter()];

      sub_100008B00(Current);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100004DF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_100004E08()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000F24EC(&qword_100AE5B60);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100004E38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100004E70()
{

  return swift_deallocObject();
}

uint64_t sub_100004EA8()
{

  return swift_deallocObject();
}

unint64_t sub_100004EE8()
{
  result = qword_100AE5B98;
  if (!qword_100AE5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5B98);
  }

  return result;
}

uint64_t sub_100004F84(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000F24EC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100004FF4()
{
  result = [objc_allocWithZone(type metadata accessor for ExportManager()) init];
  qword_100B30290 = result;
  return result;
}

id sub_100005048()
{
  v0[OBJC_IVAR____TtC7Journal13ExportManager_backgroundTaskIsRegistered] = 0;
  *&v0[OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController] = 0;
  *&v0[OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions] = 0;
  *&v0[OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask] = 0;
  *&v0[OBJC_IVAR____TtC7Journal13ExportManager_progressObservation] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Journal13ExportManager_currentContinuedProcessingTask] = 0;
  v1 = OBJC_IVAR____TtC7Journal13ExportManager_innerProgress;
  *&v0[v1] = [objc_allocWithZone(NSProgress) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ExportManager();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10000512C()
{
  v1 = OBJC_IVAR____TtC7Journal13ExportManager_backgroundTaskIsRegistered;
  if (*(v0 + OBJC_IVAR____TtC7Journal13ExportManager_backgroundTaskIsRegistered))
  {
    if (qword_100ACFC30 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100ADE8D0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100008458(0xD000000000000018, 0x80000001008EAB60, v22);
      _os_log_impl(&_mh_execute_header, v3, v4, "Skipping registration of export background task with identifier %s. Already registered.", v5, 0xCu);
      sub_10000BA7C(v6);
    }

    return 0;
  }

  else
  {
    v8 = v0;
    ObjectType = swift_getObjectType();
    v10 = [objc_opt_self() sharedScheduler];
    v11 = String._bridgeToObjectiveC()();
    sub_100005508();
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = ObjectType;
    v22[4] = sub_10031A4EC;
    v22[5] = v13;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10016B4D8;
    v22[3] = &unk_100A67578;
    v14 = _Block_copy(v22);
    v15 = v8;

    v7 = [v10 registerForTaskWithIdentifier:v11 usingQueue:v12 launchHandler:v14];
    _Block_release(v14);

    if (qword_100ACFC30 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100ADE8D0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_100008458(0xD000000000000018, 0x80000001008EAB60, v22);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v17, v18, "Registered background export task with identifier %s. Response: %{BOOL}d.", v19, 0x12u);
      sub_10000BA7C(v20);
    }

    *(v8 + v1) = 1;
  }

  return v7;
}

uint64_t sub_1000054D0()
{

  return swift_deallocObject();
}

unint64_t sub_100005508()
{
  result = qword_100AD6210;
  if (!qword_100AD6210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD6210);
  }

  return result;
}

uint64_t sub_100005554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000055A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000055B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000055C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000055E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000055F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000056A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000056B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000056C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000056D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000056E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000056F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005774(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000057B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000057C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000057D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000057E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000057F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005FB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005FC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000060A4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADE8D0);
  sub_10000617C(v0, qword_100ADE8D0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100006118(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000617C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1000061B4(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  result = [a1 shouldRecordExtendedLaunchTime];
  if (result)
  {
    v6 = [objc_opt_self() defaultCenter];
    if (qword_100ACFC00 != -1)
    {
      swift_once();
    }

    v7 = NSNotificationCenter.notifications(named:object:)();

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = a1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v7;
    v11[5] = v9;
    sub_1003E9628(0, 0, v4, &unk_1009724D0, v11);
  }

  return result;
}

uint64_t sub_100006368()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

NSString sub_1000063B0()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F730 = result;
  return result;
}

uint64_t sub_1000063E8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000065A8(0, &qword_100AD6210);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B2F628 = result;
  return result;
}

uint64_t sub_1000065A8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000065F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006610()
{
  result = qword_100AD1530;
  if (!qword_100AD1530)
  {
    sub_1000F2A18(&unk_100AD6220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1530);
  }

  return result;
}

id sub_100006674()
{
  result = [objc_allocWithZone(type metadata accessor for JournalNotificationsManager()) init];
  qword_100B2F898 = result;
  return result;
}

void sub_1000066C8()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_1000076C4(2);
}

uint64_t sub_100006724()
{
  sub_1000F24EC(&qword_100ADFD10);
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(sub_1000F24EC(&qword_100ADFD18)) init];
  sub_1000F24EC(&qword_100ADFD20);
  result = swift_allocObject();
  v0[3] = result;
  v0[4] = 0xD000000000000011;
  v0[5] = 0x80000001008ECE90;
  qword_100B2F850 = v0;
  return result;
}

uint64_t sub_10000688C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000068D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000691C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000069AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000069F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006C34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006C7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_100006CC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults;
  sub_1000065A8(0, &qword_100AE1A30);
  *&v0[v11] = static NSUserDefaults.shared.getter();
  v12 = &v0[OBJC_IVAR____TtC7Journal27JournalNotificationsManager_actionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  if (static Runtime.isJournalApp.getter())
  {
    v13 = [objc_opt_self() currentNotificationCenter];
    *&v0[OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter] = v13;
    v14 = [objc_opt_self() mainBundle];
  }

  else
  {
    static AppInfo.bundleIdentifier.getter();
    v15 = objc_allocWithZone(UNUserNotificationCenter);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 initWithBundleIdentifier:v16];

    *&v1[OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter] = v17;
    v18 = static AppInfo.bundleIdentifier.getter();
    v20 = v19;
    v21 = objc_allocWithZone(LSApplicationRecord);
    v22 = sub_1003C4764(v18, v20, 0);
    v23 = [v22 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = objc_allocWithZone(NSBundle);
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    v28 = [v24 initWithURL:v26];

    (*(v8 + 8))(v10, v7);
    v14 = v28;
  }

  *&v1[OBJC_IVAR____TtC7Journal27JournalNotificationsManager_bundle] = v14;
  v75.receiver = v1;
  v75.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v75, "init");
  v71 = OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter;
  v29 = *&v70[OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter];
  v30 = v70;
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  v63 = xmmword_100941D60;
  *(inited + 16) = xmmword_100941D60;
  v32 = inited;
  v65 = inited;
  v33 = v30;
  v74 = v33;
  v69 = v29;
  v34 = String._bridgeToObjectiveC()();
  v67 = sub_1000065A8(0, &qword_100AE1DA0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36 = Array._bridgeToObjectiveC()().super.isa;
  v66 = objc_opt_self();
  v37 = [v66 categoryWithIdentifier:v34 actions:isa intentIdentifiers:v36 options:0];

  *(v32 + 32) = v37;
  v68 = v32 + 32;
  v64 = "sd.MOUserNotifications";
  v38 = swift_allocObject();
  *(v38 + 16) = v63;
  String.LocalizationValue.init(stringLiteral:)();
  v39 = OBJC_IVAR____TtC7Journal27JournalNotificationsManager_bundle;
  v40 = *&v33[OBJC_IVAR____TtC7Journal27JournalNotificationsManager_bundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v41 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v43 = [v42 iconWithSystemImageName:v41];

  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();

  v46 = objc_opt_self();
  v47 = [v46 actionWithIdentifier:v44 title:v45 options:5 icon:v43];

  *(v38 + 32) = v47;
  String.LocalizationValue.init(stringLiteral:)();
  v48 = *&v74[v39];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v49 = String._bridgeToObjectiveC()();
  v50 = [v42 iconWithSystemImageName:v49];

  v51 = String._bridgeToObjectiveC()();
  v52 = String._bridgeToObjectiveC()();

  v53 = [v46 actionWithIdentifier:v51 title:v52 options:1 icon:v50];

  *(v38 + 40) = v53;
  v54 = String._bridgeToObjectiveC()();
  v55 = Array._bridgeToObjectiveC()().super.isa;

  v56 = Array._bridgeToObjectiveC()().super.isa;
  v57 = [v66 categoryWithIdentifier:v54 actions:v55 intentIdentifiers:v56 options:0];

  v58 = v65;
  *(v65 + 40) = v57;
  sub_100007F3C(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1000065A8(0, &qword_100AE1DA8);
  sub_10000824C();
  v59 = Set._bridgeToObjectiveC()().super.isa;

  v60 = v69;
  [v69 setNotificationCategories:v59];

  v61 = v74;
  [*&v70[v71] setDelegate:v74];

  return v61;
}

char *sub_100007574()
{
  ObjectType = swift_getObjectType();
  v2 = qword_100AEC680;
  sub_1000F24EC(&qword_100AEC798);
  sub_100007628();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  [*&v3[qword_100AEC680] setCountLimit:500];
  return v3;
}

unint64_t sub_100007628()
{
  result = qword_100AD13A0;
  if (!qword_100AD13A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD13A0);
  }

  return result;
}

void sub_1000076C4(id a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_setRegion_;
  v4 = [v2 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 integerForKey:v5];

  if (v6 < a1)
  {
    sub_1004AAE14();
    if (qword_100ACFCC0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100ADFC48);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      v16 = a1;
      v11 = [v2 standardUserDefaults];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 integerForKey:v12];

      v3 = &selRef_setRegion_;
      *(v10 + 4) = v13;

      *(v10 + 12) = 2048;
      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Image cache cleared, old version was: %ld, new version set: %ld", v10, 0x16u);
    }

    else
    {
    }

    v14 = [v2 v3[68]];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v17 = String._bridgeToObjectiveC()();
    [v14 setValue:isa forKey:v17];
  }
}

void sub_100007F60(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_1000F24EC(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1000065A8(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_1000065A8(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_10000824C()
{
  result = qword_100AE1DB0;
  if (!qword_100AE1DB0)
  {
    sub_1000065A8(255, &qword_100AE1DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1DB0);
  }

  return result;
}

uint64_t sub_1000082B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F24EC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for StreakSummary()
{
  result = qword_100AF6078;
  if (!qword_100AF6078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008394()
{
  sub_100008F84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000840C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100008458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008FEC(v11, 0, 0, 1, a1, a2);
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
    sub_10000BA20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BA7C(v11);
  return v7;
}

void *sub_100008524(uint64_t a1, uint64_t a2)
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

  sub_1000F24EC(&qword_100AF4128);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008598(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008524(v5, 0);
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
        v7 = sub_100008524(v10, 0);
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

uint64_t sub_1000086CC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100051870(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1000087B8()
{
  *&v0[OBJC_IVAR____TtC7Journal13SceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___accessManager] = 0;
  *&v0[OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___navigationCoordinator] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertWindow] = 0;
  v1 = &v0[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertDialogLastDate];
  *v1 = 0;
  v1[8] = 1;
  v0[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertDialogLastTypeShowed] = 3;
  *&v0[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertSecondsBetweenDialogs] = 0x4014000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t type metadata accessor for AppLaunchAction()
{
  result = qword_100AEDA18;
  if (!qword_100AEDA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000894C()
{
  if (!qword_100AEDA38)
  {
    sub_1000F2A18(&unk_100AE4870);
    sub_1000F2A18(&qword_100AD57F0);
    sub_1000F2A18(&qword_100AD8478);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100AEDA38);
    }
  }
}

uint64_t type metadata accessor for CanvasContentInputType()
{
  result = qword_100AD8090;
  if (!qword_100AD8090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_100008D4C(a1, v4);
}

void sub_100008B00(double a1)
{
  if (qword_100ACFE20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE5A40);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136315394;

    sub_1000F24EC(&unk_100AE5BB0);
    v5 = String.init<A>(describing:)();
    v7 = sub_100008458(v5, v6, &v14);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    sub_1000F24EC(&unk_100AD5B10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = Current - a1;
    v10 = String.init(format:_:)();
    v12 = sub_100008458(v10, v11, &v14);

    *(v4 + 14) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Finished with didFinishLaunchingWithOptions: %s in %s seconds", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100008D4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100090620;

  return v6(a1);
}

uint64_t sub_100008E44()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE5A40);
  v1 = sub_10000617C(v0, qword_100AE5A40);
  if (qword_100AD0168 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100008F0C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100006118(v3, a2);
  sub_10000617C(v3, a2);
  return Logger.init(subsystem:category:)();
}

void sub_100008F84()
{
  if (!qword_100AD59F0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD59F0);
    }
  }
}

unint64_t sub_100008FEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000090F8(a5, a6);
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

char *sub_1000090F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008598(a1, a2);
  sub_1000086CC(&off_100A55B08);
  return v3;
}

void sub_100009144(void *a1, void *a2, char *a3)
{
  v85 = a3;
  v6 = type metadata accessor for JournalFeatureFlags();
  v87 = *(v6 - 8);
  __chkstk_darwin(v6);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppLaunchAction();
  isa = v8[-1].isa;
  v91 = v8;
  __chkstk_darwin(v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AE46A0);
  v12 = __chkstk_darwin(v11 - 8);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v89 = &v79 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v79 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v79 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v79 - v23;
  __chkstk_darwin(v22);
  v26 = &v79 - v25;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v81 = a2;
    v82 = v6;
    v28 = v27;
    v29 = objc_allocWithZone(UIWindow);
    v88 = a1;
    v84 = v28;
    v30 = v28;
    v31 = v3;
    v32 = [v29 initWithWindowScene:v30];
    v33 = *(v3 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
    v80 = OBJC_IVAR____TtC7Journal13SceneDelegate_window;
    *(v3 + OBJC_IVAR____TtC7Journal13SceneDelegate_window) = v32;

    sub_10000A63C(v85, v26);
    v34 = v26;
    if (qword_100ACFF50 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000617C(v35, qword_100AE8FB0);
    sub_10000AA6C(v26, v24);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v85 = v34;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v92 = v40;
      *v39 = 136315138;
      sub_10000AA6C(v24, v21);
      if ((*(isa + 48))(v21, 1, v91) == 1)
      {
        sub_100004F84(v21, &qword_100AE46A0);
        v41 = 0xE300000000000000;
        v42 = 7104878;
      }

      else
      {
        sub_10054BEF0(v21, v10);
        v42 = String.init<A>(describing:)();
        v41 = v47;
        sub_10054C06C(v21, type metadata accessor for AppLaunchAction);
      }

      sub_100004F84(v24, &qword_100AE46A0);
      v48 = sub_100008458(v42, v41, &v92);

      *(v39 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "scene(:willConnectTo:options:) w/ launchAction=%s", v39, 0xCu);
      sub_10000BA7C(v40);

      v34 = v85;
    }

    else
    {

      sub_100004F84(v24, &qword_100AE46A0);
    }

    sub_10000AA6C(v34, v18);
    v49 = v91;
    v50 = *(isa + 48);
    if (v50(v18, 1, v91) == 1)
    {
      sub_100004F84(v18, &qword_100AE46A0);
    }

    else
    {
      v51 = sub_1001F0EA0();
      sub_10054C06C(v18, type metadata accessor for AppLaunchAction);
      if (v51)
      {
        goto LABEL_22;
      }
    }

    v52 = sub_10000AADC();
    if (v52)
    {
      goto LABEL_23;
    }

    v53 = objc_allocWithZone(NSUserActivity);
    v54 = String._bridgeToObjectiveC()();
    v51 = [v53 initWithActivityType:v54];

LABEL_22:
    v52 = v51;
LABEL_23:
    v81 = v52;
    sub_10000BD0C(v52);
    [*(v31 + v80) makeKeyAndVisible];
    sub_1000144C8();
    v55 = v84;
    sub_1000258DC(v84);

    sub_100026AF8(v55);
    v56 = v89;
    sub_10000AA6C(v34, v89);
    if (v50(v56, 1, v49) == 1)
    {
      sub_100004F84(v56, &qword_100AE46A0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_1001F33B4(*v56);
LABEL_33:
        v58 = objc_opt_self();
        v59 = [v58 defaultCenter];
        if (qword_100ACFF88 != -1)
        {
          swift_once();
        }

        [v59 addObserver:v31 selector:? name:? object:?];

        v60 = [v58 defaultCenter];
        if (qword_100ACFFA0 != -1)
        {
          swift_once();
        }

        [v60 addObserver:v31 selector:? name:? object:?];

        v61 = [v58 defaultCenter];
        if (qword_100ACF9E8 != -1)
        {
          swift_once();
        }

        [v61 addObserver:v31 selector:? name:? object:?];

        v62 = [v58 defaultCenter];
        if (qword_100ACF9E0 != -1)
        {
          swift_once();
        }

        [v62 addObserver:v31 selector:? name:? object:?];

        v83 = [objc_opt_self() sharedApplication];
        v63 = 0;
        v91 = "rnal entry app shortcut action";
        v92 = &_swiftEmptyArrayStorage;
        v89 = "photo.on.rectangle";
        isa = 0x80000001008DD010;
        while (1)
        {
          if (*(&off_100A5A410 + v63 + 32) > 1u)
          {
            if (*(&off_100A5A410 + v63 + 32) == 2)
            {
              if (qword_100AD07A8 == -1)
              {
                goto LABEL_55;
              }

LABEL_59:
              swift_once();
              goto LABEL_55;
            }

            if (qword_100AD0798 != -1)
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (!*(&off_100A5A410 + v63 + 32))
            {
              if (qword_100AD07A0 != -1)
              {
                swift_once();
              }

              v64 = objc_allocWithZone(SBSApplicationShortcutSystemPrivateIcon);

              v65 = String._bridgeToObjectiveC()();
              v66 = [v64 initWithSystemImageName:v65];

              v67 = [objc_allocWithZone(UIApplicationShortcutIcon) initWithSBSApplicationShortcutIcon:v66];
              goto LABEL_56;
            }

            if (qword_100AD07B0 != -1)
            {
              goto LABEL_59;
            }
          }

LABEL_55:

          v66 = String._bridgeToObjectiveC()();
          v67 = [objc_opt_self() iconWithSystemImageName:v66];
LABEL_56:

          v68 = objc_allocWithZone(UIApplicationShortcutItem);
          v69 = String._bridgeToObjectiveC()();

          v70 = String._bridgeToObjectiveC()();

          v71 = [v68 initWithType:v69 localizedTitle:v70 localizedSubtitle:0 icon:v67 userInfo:0];

          if (v71)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          if (++v63 == 4)
          {
            sub_1000065A8(0, &unk_100AE9030);
            v72 = Array._bridgeToObjectiveC()().super.isa;

            v73 = v83;
            [v83 setShortcutItems:v72];

            v74 = v86;
            v75 = v87;
            v76 = v82;
            (*(v87 + 104))(v86, enum case for JournalFeatureFlags.suggestionsAPI(_:), v82);
            LOBYTE(v73) = JournalFeatureFlags.isEnabled.getter();
            (*(v75 + 8))(v74, v76);
            if (v73)
            {
              sub_100004F84(v85, &qword_100AE46A0);
            }

            else
            {
              v77 = v85;
              v78 = v88;
              if (qword_100ACFD50 != -1)
              {
                swift_once();
              }

              sub_1003EBF70(v84);

              sub_100004F84(v77, &qword_100AE46A0);
            }

            return;
          }
        }
      }

      sub_10054C06C(v56, type metadata accessor for AppLaunchAction);
    }

    v57 = v83;
    sub_10000AA6C(v34, v83);
    if (v50(v57, 1, v49) == 1)
    {
      sub_100004F84(v57, &qword_100AE46A0);
    }

    else if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1001F0A58(*v57);
    }

    else
    {
      sub_10054C06C(v57, type metadata accessor for AppLaunchAction);
    }

    goto LABEL_33;
  }

  if (qword_100ACFF50 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000617C(v43, qword_100AE8FB0);
  v91 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v91, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v91, v44, "UIScene != UIWindowScene!", v45, 2u);
  }

  v46 = v91;
}

void sub_10000A048()
{
  sub_10000A234(319, &qword_100AEDA28, &qword_100AD2EE8, &type metadata accessor for URL, sub_10000A340);
  if (v0 <= 0x3F)
  {
    sub_10000A234(319, &qword_100AEDA30, &qword_100AD5A70, &type metadata for String, sub_10000A394);
    if (v1 <= 0x3F)
    {
      sub_10000A234(319, &qword_100AD80A0, &qword_100ADE4E0, &type metadata accessor for UUID, sub_10000A340);
      if (v2 <= 0x3F)
      {
        sub_10000894C();
        if (v3 <= 0x3F)
        {
          sub_10000A49C(319, &qword_100AD5CC8, &type metadata accessor for UUID);
          if (v4 <= 0x3F)
          {
            sub_10000A4E8();
            if (v5 <= 0x3F)
            {
              sub_10000A234(319, &qword_100AEDA48, &unk_100AEDA50, &type metadata for SettingsTab, sub_10000A394);
              if (v6 <= 0x3F)
              {
                sub_10000A49C(319, &qword_100AEDA58, sub_10000A518);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000A234(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10000A288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000A2EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000A340(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000A394(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10000A3E0()
{
  sub_10000A454();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10000A454()
{
  if (!qword_100AD80A0)
  {
    sub_10006D1E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD80A0);
    }
  }
}

void sub_10000A49C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_10000A4E8()
{
  result = qword_100AEDA40;
  if (!qword_100AEDA40)
  {
    result = &type metadata for PermissionType;
    atomic_store(&type metadata for PermissionType, &qword_100AEDA40);
  }

  return result;
}

void sub_10000A518()
{
  if (!qword_100AEDA60)
  {
    type metadata accessor for URL();
    sub_10000A5F4(&qword_100ADB7E8, &type metadata accessor for URL);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEDA60);
    }
  }
}

uint64_t sub_10000A5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A5F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000A63C(void *a1@<X0>, char *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v4 = [a1 URLContexts];
  sub_1000065A8(0, &qword_100AE9080);
  sub_10000A908(&qword_100AE4690, &qword_100AE9080);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_4:
      sub_1006CC4F4(v5, a2);

      return;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_4;
  }

  v6 = [a1 userActivities];
  sub_1000065A8(0, &qword_100AEB680);
  sub_10000A908(&qword_100AED990, &qword_100AEB680);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10000A958(v7);

  if (v8)
  {
    v18 = v8;
    sub_1006CC6F8(v8, a2);

    return;
  }

  v9 = [a1 shortcutItem];
  if (v9 && (v10 = v9, v11 = [v10 type], v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v14 = v13, v11, v20._countAndFlagsBits = v12, v20._object = v14, v15 = sub_1005004EC(v20), v10, v10, v10, v15 != 4))
  {

    sub_1005002D0(v15, a2);
  }

  else
  {
LABEL_14:
    v16 = type metadata accessor for AppLaunchAction();
    v17 = *(*(v16 - 8) + 56);

    v17(a2, 1, 1, v16);
  }
}

uint64_t sub_10000A908(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000065A8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A96C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000A978()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE8FB0);
  v1 = sub_10000617C(v0, qword_100AE8FB0);
  if (qword_100AD01D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000AA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE46A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10000AADC()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - v2;
  v4 = type metadata accessor for JournalTimelineViewController.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE9040);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for CanvasViewController.State(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v0 stateRestorationActivity];
  if (v17)
  {
    v49 = v6;
    v50 = v3;
    v47 = v9;
    type metadata accessor for CanvasViewController(0);
    v18 = sub_10000EA18(&qword_100AE9048, type metadata accessor for CanvasViewController);
    v19 = v17;

    v48 = v18;
    static RestorableController.getRestorableState(from:key:)();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_100004F84(v12, &qword_100AE9040);
      return v17;
    }

    sub_10054BF54(v12, v16);
    type metadata accessor for JournalEntryMO();
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v20 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    sub_10000EA18(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
    v21 = v20;
    v22 = static Identifiable<>.fetch(id:context:)();
    v23 = v50;
    v26 = v22;

    if (v26)
    {
      v27 = v26;
      v28 = [v27 managedObjectContext];
      if (!v28)
      {
        v28 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      v29 = sub_100035ADC(v27, 0, 0, v28);
      if (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16))
      {

        v30 = objc_allocWithZone(NSUserActivity);
        v31 = v16;
        v32 = String._bridgeToObjectiveC()();
        v50 = v27;
        v33 = v32;
        v17 = [v30 initWithActivityType:v32];

        type metadata accessor for SceneSplitViewController(0);
        v34 = sub_1000F24EC(&qword_100AD47A0);
        v35 = v47;
        (*(*(v34 - 8) + 56))(v47, 2, 2, v34);
        v36 = sub_1000F24EC(&unk_100AD4BA0);
        (*(*(v36 - 8) + 56))(v35, 0, 2, v36);
        sub_10000EA18(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
        v37 = v17;
        static RestorableController.addRestorableState(_:to:key:)();
        sub_10054C06C(v35, type metadata accessor for SceneSplitViewController.State);
        type metadata accessor for JournalTimelineViewController(0);
        v38 = *(sub_1000F24EC(&unk_100AE9060) + 48);
        v39 = type metadata accessor for UUID();
        v40 = v49;
        (*(*(v39 - 8) + 16))(v49, v31, v39);
        v41 = type metadata accessor for CanvasContentInputType();
        swift_storeEnumTagMultiPayload();
        (*(*(v41 - 8) + 56))(v40 + v38, 0, 1, v41);
        v42 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
        sub_10000EA18(&qword_100AD8490, type metadata accessor for JournalTimelineViewController);
        static RestorableController.addRestorableState(_:to:key:)();
        sub_10054C06C(v40, type metadata accessor for JournalTimelineViewController.State);

        static RestorableController.addRestorableState(_:to:key:)();

        v24 = v31;
        goto LABEL_8;
      }

      v43 = type metadata accessor for TaskPriority();
      (*(*(v43 - 8) + 56))(v23, 1, 1, v43);
      type metadata accessor for MainActor();

      v44 = static MainActor.shared.getter();
      v45 = swift_allocObject();
      v45[2] = v44;
      v45[3] = &protocol witness table for MainActor;
      v45[4] = v29;
      sub_1003E9628(0, 0, v23, &unk_10095D540, v45);
    }

    v24 = v16;
LABEL_8:
    sub_10054C06C(v24, type metadata accessor for CanvasViewController.State);
  }

  return v17;
}

uint64_t sub_10000B394()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10000B3F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B42C()
{
  sub_10030D2F0(319, &qword_100ADE4E0, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10000B4BC()
{
  result = type metadata accessor for SceneSplitViewController.ContentType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000B528()
{
  sub_10000B5D4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10000B58C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000B5D4()
{
  if (!qword_100AD5CC8)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD5CC8);
    }
  }
}

void sub_10000B65C()
{
  sub_100666DAC(319, &qword_100AEBC10, type metadata accessor for CanvasViewController.CachedTip, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100666DAC(319, &qword_100AEBC18, type metadata accessor for CanvasBarItemCoordinator, &type metadata accessor for UIViewController.ViewLoading);
    if (v1 <= 0x3F)
    {
      sub_100666E10();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CanvasContentInputType();
        if (v3 <= 0x3F)
        {
          sub_100666DAC(319, &qword_100AEBC30, type metadata accessor for UserEngagement.StateSnapshot, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100666DAC(319, &qword_100AEBC38, _s15AutosaveManagerCMa, &type metadata accessor for UIViewController.ViewLoading);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for UserEngagement.StateSnapshot()
{
  result = qword_100AD7910;
  if (!qword_100AD7910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B9B4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000BA20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BA7C(uint64_t a1)
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

uint64_t sub_10000BB70()
{
  sub_10000BBC8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10000BBC8()
{
  if (!qword_100ADD400)
  {
    v0 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100ADD400);
    }
  }
}

void sub_10000BC30()
{
  if (!qword_100AD7920)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD7920);
    }
  }
}

uint64_t sub_10000BC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000BD0C(void *a1)
{
  v3 = type metadata accessor for JournalFeatureFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 windowScene];
    if (v9)
    {
      v10 = v9;
      (*(v4 + 104))(v6, enum case for JournalFeatureFlags.statefulNavigation(_:), v3);
      v11 = JournalFeatureFlags.isEnabled.getter();
      (*(v4 + 8))(v6, v3);
      if (v11)
      {
        [v10 setUserActivity:a1];
      }

      v12 = qword_100ACFCD0;
      v13 = v10;
      if (v12 != -1)
      {
        swift_once();
      }

      if ([v13 _sceneComponentForKey:qword_100AE1160])
      {
        type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
        if (swift_dynamicCastClass())
        {
          sub_1003ABAF8();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      v18 = objc_allocWithZone(type metadata accessor for SceneSplitViewController(0));
      v19 = sub_1002E7184(a1);
      v20 = sub_100014380();
      v21 = *(v20 + 24);
      *(v20 + 24) = v19;
      v22 = v19;

      [v8 setRootViewController:v22];
      return;
    }
  }

  if (qword_100ACFF50 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000617C(v14, qword_100AE8FB0);
  v24 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v24, v15, "Attempt to configure an unprepared window.", v16, 2u);
  }

  v17 = v24;
}

void sub_10000C054()
{
  type metadata accessor for SceneSplitViewController.ContentType(319);
  if (v0 <= 0x3F)
  {
    sub_10000EB00();
    if (v1 <= 0x3F)
    {
      sub_10000EFD4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000C298()
{
  if (!qword_100AEECA0)
  {
    sub_1000065A8(255, &qword_100AD43B0);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEECA0);
    }
  }
}

id sub_10000C300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsPopoverController] = 0;
  *&v3[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask] = 0;
  *&v3[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000F24EC(&qword_100AD48A0);
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  v8 = &v3[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v8 = String.init(localized:table:bundle:locale:comment:)();
  v8[1] = v9;
  type metadata accessor for AppNavigationSidebarController.Item(0);
  swift_storeEnumTagMultiPayload();
  UIViewController.ViewLoading.init()();
  *&v3[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage] = 1;
  v10 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
  v11 = type metadata accessor for AppNavigationSidebarController.DragState(0);
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

uint64_t sub_10000C59C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CanvasDateTitleBarButton()
{
  result = qword_100AF4FC0;
  if (!qword_100AF4FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C720()
{
  if (!qword_100AEE520)
  {
    type metadata accessor for UIView.Invalidations.Configuration();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE520);
    }
  }
}

uint64_t sub_10000C7A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100ADD448);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_10000F4A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_10000C59C(&qword_100ADD458, type metadata accessor for SceneSplitViewController.ContentType);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_10001DB98(v13, v11, type metadata accessor for SceneSplitViewController.ContentType);
    sub_10001DB98(v11, v12, type metadata accessor for SceneSplitViewController.State);
  }

  return sub_10000BA7C(a1);
}

void *sub_10000CA14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for JournalMembershipListViewController.Section(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10000CAF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1000F24EC(&qword_100ADD470);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3);
  v51 = &v45 - v5;
  v48 = sub_1000F24EC(&qword_100ADD478);
  v55 = *(v48 - 8);
  __chkstk_darwin(v48);
  v54 = &v45 - v6;
  v47 = sub_1000F24EC(&qword_100ADD480);
  v53 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v45 - v7;
  v9 = sub_1000F24EC(&qword_100ADD488);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  sub_10000CA14(a1, v18);
  sub_10000F6EC();
  v19 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v21 = v53;
    v20 = v54;
    v45 = v15;
    v46 = v17;
    v22 = v55;
    v57 = 0;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v59 = v23;
    v60 = v23 + 32;
    v61 = 0;
    v62 = v24;
    v25 = sub_1007FDC7C();
    v26 = v11;
    if (v25 == 3 || v61 != v62 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      sub_1000F24EC(&qword_100AD8100);
      *v34 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
      swift_willThrow();
      (*(v56 + 8))(v26, v9);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_10000BA7C(v58);
    }

    if (v25)
    {
      v27 = v56;
      if (v25 == 1)
      {
        v63 = 1;
        sub_1002EC0E8();
        v28 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v28)
        {
          (*(v22 + 8))(v20, v48);
          (*(v27 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v29 = sub_1000F24EC(&unk_100AD4BA0);
          v30 = v46;
          (*(*(v29 - 8) + 56))(v46, 2, 2, v29);
          v31 = v52;
LABEL_17:
          sub_10001DB98(v30, v31, type metadata accessor for SceneSplitViewController.ContentType);
          return sub_10000BA7C(v58);
        }
      }

      else
      {
        v63 = 2;
        sub_10000F958();
        v38 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v38)
        {
          v39 = v52;
          type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
          sub_10000C59C(&qword_100ADD4A8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v40 = v45;
          v41 = v49;
          v42 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v50 + 8))(v42, v41);
          (*(v27 + 8))(v26, v9);
          swift_unknownObjectRelease();
          v44 = sub_1000F24EC(&unk_100AD4BA0);
          (*(*(v44 - 8) + 56))(v40, 0, 2, v44);
          v30 = v46;
          sub_10001DB98(v40, v46, type metadata accessor for SceneSplitViewController.ContentType);
          v31 = v39;
          goto LABEL_17;
        }
      }

      (*(v27 + 8))(v11, v9);
      goto LABEL_9;
    }

    v63 = 0;
    sub_1002EC13C();
    v36 = v57;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v56;
    if (!v36)
    {
      (*(v21 + 8))(v8, v47);
      (*(v37 + 8))(v11, v9);
      swift_unknownObjectRelease();
      v43 = sub_1000F24EC(&unk_100AD4BA0);
      v30 = v46;
      (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
      v31 = v52;
      goto LABEL_17;
    }

    (*(v56 + 8))(v11, v9);
    swift_unknownObjectRelease();
  }

  return sub_10000BA7C(v58);
}

unint64_t sub_10000D2E8()
{
  result = qword_100ADD678;
  if (!qword_100ADD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD678);
  }

  return result;
}

unint64_t sub_10000D33C()
{
  result = qword_100ADD680;
  if (!qword_100ADD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD680);
  }

  return result;
}

unint64_t sub_10000D3A8()
{
  result = qword_100ADD658;
  if (!qword_100ADD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JournalMembershipListViewController.Section(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_10000D450()
{
  result = qword_100AE8048;
  if (!qword_100AE8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8048);
  }

  return result;
}

uint64_t sub_10000D4A4()
{
  v1 = 0x6972746E456C6C61;
  if (*v0 != 1)
  {
    v1 = 0x756F4A64656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C746E65636572;
  }
}

uint64_t storeEnumTagSinglePayload for JournalAjaxSession.JournalSentiment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000D5C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000D628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000D688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000D6E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for EntryListType()
{
  result = qword_100AD5CB8;
  if (!qword_100AD5CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10000D79C(uint64_t a1, int a2)
{
  v5 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for EntryListType();
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D6E8(a1, v22, type metadata accessor for SceneSplitViewController.ContentType);
  v23 = sub_1000F24EC(&unk_100AD4BA0);
  v24 = (*(*(v23 - 8) + 48))(v22, 2, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = objc_allocWithZone(_s14HostControllerCMa());
      return sub_100746FD0(8);
    }

    else
    {
      v35 = [v2 userActivity];
      v36 = objc_allocWithZone(type metadata accessor for EntryMapViewController());
      return sub_100714F28(v35);
    }
  }

  else
  {
    v45 = v10;
    v46 = a2;
    v27 = sub_1000F24EC(&qword_100AD47A0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v22, 2, v27) == 1)
    {
      v30 = [v2 userActivity];
      v31 = objc_allocWithZone(type metadata accessor for RecentlyDeletedEntriesViewController());
      v32 = sub_10079598C(v30, v46 & 1);
      (*(v28 + 56))(v19, 1, 2, v27);
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v33 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
      type metadata accessor for EntryListViewModel(0);
      swift_allocObject();
      v34 = sub_100010AF4(v19, v33);
      v26 = v32;
      [v26 loadViewIfNeeded];
      v26[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus] = 1;
      sub_1003032B4(v34, 0, 0);
    }

    else
    {
      v37 = v45;
      sub_10001DB98(v22, v45, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D6E8(v37, v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v38 = v29(v8, 2, v27);
      if (!v38)
      {
        v39 = type metadata accessor for UUID();
        (*(*(v39 - 8) + 32))(v14, v8, v39);
      }

      (*(v28 + 56))(v14, v38, 2, v27);
      sub_10001DB98(v14, v17, type metadata accessor for EntryListType);
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v40 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
      type metadata accessor for EntryListViewModel(0);
      swift_allocObject();
      v41 = sub_100010AF4(v17, v40);
      v42 = [v2 userActivity];
      v43 = objc_allocWithZone(type metadata accessor for JournalTimelineViewController(0));
      v26 = sub_10041FBF4(v41, v42, v46 & 1);

      sub_10000D628(v45, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    }
  }

  return v26;
}

void *sub_10000DD5C()
{
  v0 = type metadata accessor for DataStackConfiguration();
  v1 = __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD02A0 != -1)
  {
    v6 = v1;
    swift_once();
    v1 = v6;
  }

  v4 = sub_10000617C(v1, qword_100B30278);
  sub_100353D84(v4, v3);
  type metadata accessor for DataStack();
  swift_allocObject();
  result = sub_1003468A4(v3);
  qword_100B2F840 = result;
  return result;
}

uint64_t sub_10000DE3C()
{
  v0 = type metadata accessor for Runtime.Environment();
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DataStackConfiguration();
  sub_100006118(v3, qword_100B30278);
  v4 = sub_10000617C(v3, qword_100B30278);
  static Runtime.Environment.current.getter();
  return sub_100726BF4(v2, NSFileProtectionCompleteUnlessOpen, v4);
}

uint64_t type metadata accessor for DataStack()
{
  result = qword_100ADF8C0;
  if (!qword_100ADF8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10000DF48()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000F24EC(&qword_100AE5DD0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000DF78()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10000E044()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v2);
  v7 = &v30[-v6];
  v8 = __chkstk_darwin(v5);
  v10 = &v30[-v9];
  __chkstk_darwin(v8);
  v12 = &v30[-v11];
  type metadata accessor for AssetsFileManager();
  sub_10001DE18(v12);
  sub_10001DE18(v10);
  if (qword_100ACFA70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000617C(v13, qword_100AD7700);
  v14 = *(v1 + 16);
  v14(v7, v12, v0);
  v14(v4, v10, v0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v10;
    v18 = v17;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v18 = 136315394;
    sub_10001E4C0(&qword_100ADEFD0, &type metadata accessor for URL);
    v34 = v12;
    v32 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v16;
    v21 = v20;
    v22 = *(v1 + 8);
    v22(v7, v0);
    v23 = sub_100008458(v19, v21, &v36);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v12 = v34;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v22(v4, v0);
    v27 = sub_100008458(v24, v26, &v36);

    *(v18 + 14) = v27;
    v28 = v32;
    _os_log_impl(&_mh_execute_header, v32, v31, "Initializing CKAssetDownloadStagingManager directories\ndown: %s\nup: %s", v18, 0x16u);
    swift_arrayDestroy();

    v10 = v35;
  }

  else
  {

    v22 = *(v1 + 8);
    v22(v4, v0);
    v22(v7, v0);
  }

  sub_10001E550(1);
  sub_10001E550(0);
  v22(v10, v0);
  return (v22)(v12, v0);
}

uint64_t sub_10000E440()
{
  v0 = type metadata accessor for FileStoreConfiguration();
  sub_100006118(v0, qword_100B2FC48);
  sub_10000617C(v0, qword_100B2FC48);
  return static FileStoreConfiguration.shared.getter();
}

uint64_t sub_10000E48C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B2FFC8);
  sub_10000617C(v0, qword_100B2FFC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000E514()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AD7718);
  sub_10000617C(v0, qword_100AD7718);
  return UUID.init()();
}

id sub_10000E560(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for SettingsKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  SettingsKey.rawValue.getter();
  (*(v6 + 8))(v8, v5);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 BOOLForKey:v10];

  return v11;
}

uint64_t type metadata accessor for CoreDataStack()
{
  result = qword_100AE50F0;
  if (!qword_100AE50F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E6F0()
{
  sub_10000C720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E788(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1000065A8(255, a3);
    v4 = type metadata accessor for UIViewController.ViewLoading();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000E7E0()
{
  if (!qword_100AE2018)
  {
    type metadata accessor for CanvasContentInputType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE2018);
    }
  }
}

void sub_10000E838()
{
  sub_10000E7E0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000E984()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10000BC30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000EA18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_10000EB00()
{
  if (!qword_100ADD1E8)
  {
    sub_1000F2A18(&qword_100ADD1F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADD1E8);
    }
  }
}

uint64_t type metadata accessor for EntryViewModel()
{
  result = qword_100AF0C70;
  if (!qword_100AF0C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EBB0()
{
  sub_10000EF80(319, &qword_100ADE4E0, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_10000EF80(319, &qword_100AF0C80, &type metadata accessor for MergeableEntryAttributes);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_10000EF80(319, &qword_100AF0C88, &type metadata accessor for EntryDateSource);
          if (v4 <= 0x3F)
          {
            sub_10000EF80(319, &qword_100AD59F0, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10000EE64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000EEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000EF1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000EF80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000EFD4()
{
  if (!qword_100ADD1F8)
  {
    type metadata accessor for SceneSplitViewController.State(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADD1F8);
    }
  }
}

uint64_t sub_10000F040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000F0B0()
{
  sub_10000F21C();
  if (v0 <= 0x3F)
  {
    sub_10000C298();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppNavigationSidebarController.Item(319);
      if (v2 <= 0x3F)
      {
        sub_100145E64();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10000F21C()
{
  if (!qword_100AD4898)
  {
    sub_1000F2A18(&qword_100AD48A0);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4898);
    }
  }
}

uint64_t sub_10000F2B0()
{
  result = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SidebarPreferences.Brick();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000F32C()
{
  result = qword_100AD4B10;
  if (!qword_100AD4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4B10);
  }

  return result;
}

unint64_t sub_10000F3F4()
{
  result = qword_100ADD698;
  if (!qword_100ADD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD698);
  }

  return result;
}

unint64_t sub_10000F448()
{
  result = qword_100ADD6A0;
  if (!qword_100ADD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD6A0);
  }

  return result;
}

unint64_t sub_10000F4A0()
{
  result = qword_100ADD450;
  if (!qword_100ADD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD450);
  }

  return result;
}

unint64_t sub_10000F518()
{
  result = qword_100ADD668;
  if (!qword_100ADD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD668);
  }

  return result;
}

unint64_t sub_10000F56C()
{
  result = qword_100ADD670;
  if (!qword_100ADD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD670);
  }

  return result;
}

unint64_t sub_10000F5D8()
{
  result = qword_100ADD660;
  if (!qword_100ADD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD660);
  }

  return result;
}

unint64_t sub_10000F63C()
{
  result = qword_100ADD688;
  if (!qword_100ADD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD688);
  }

  return result;
}

unint64_t sub_10000F698()
{
  result = qword_100ADD690;
  if (!qword_100ADD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD690);
  }

  return result;
}

unint64_t sub_10000F6EC()
{
  result = qword_100ADD490;
  if (!qword_100ADD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD490);
  }

  return result;
}

uint64_t sub_10000F740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374686769736E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736563616C70 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547972746E65 && a2 == 0xED0000656E696C65)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10000F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000F740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000F924()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000F958()
{
  result = qword_100ADD4A0;
  if (!qword_100ADD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD4A0);
  }

  return result;
}

uint64_t sub_10000F9AC()
{
  v1 = 0x736563616C70;
  if (*v0 != 1)
  {
    v1 = 0x6D69547972746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7374686769736E69;
  }
}

uint64_t storeEnumTagSinglePayload for RecordingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000FAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1000F24EC(&qword_100AE8028);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3);
  v51 = &v45 - v5;
  v48 = sub_1000F24EC(&qword_100AE8030);
  v55 = *(v48 - 8);
  __chkstk_darwin(v48);
  v54 = &v45 - v6;
  v47 = sub_1000F24EC(&qword_100AE8038);
  v53 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v45 - v7;
  v9 = sub_1000F24EC(&qword_100AE8040);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  sub_10000CA14(a1, v18);
  sub_10000D450();
  v19 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v21 = v53;
    v20 = v54;
    v45 = v15;
    v46 = v17;
    v22 = v55;
    v57 = 0;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v59 = v23;
    v60 = v23 + 32;
    v61 = 0;
    v62 = v24;
    v25 = sub_1007FDC7C();
    v26 = v11;
    if (v25 == 3 || v61 != v62 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      sub_1000F24EC(&qword_100AD8100);
      *v34 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
      swift_willThrow();
      (*(v56 + 8))(v26, v9);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_10000BA7C(v58);
    }

    if (v25)
    {
      v27 = v56;
      if (v25 == 1)
      {
        v63 = 1;
        sub_10001DA40();
        v28 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v28)
        {
          (*(v22 + 8))(v20, v48);
          (*(v27 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v29 = sub_1000F24EC(&qword_100AD47A0);
          v30 = v46;
          (*(*(v29 - 8) + 56))(v46, 2, 2, v29);
          v31 = v52;
LABEL_17:
          sub_10001DB30(v30, v31, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          return sub_10000BA7C(v58);
        }
      }

      else
      {
        v63 = 2;
        sub_100524F14();
        v38 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v38)
        {
          v39 = v52;
          type metadata accessor for UUID();
          sub_1005239D8(&qword_100AD81F0, &type metadata accessor for UUID);
          v40 = v45;
          v41 = v49;
          v42 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v50 + 8))(v42, v41);
          (*(v27 + 8))(v26, v9);
          swift_unknownObjectRelease();
          v44 = sub_1000F24EC(&qword_100AD47A0);
          (*(*(v44 - 8) + 56))(v40, 0, 2, v44);
          v30 = v46;
          sub_10001DB30(v40, v46, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v31 = v39;
          goto LABEL_17;
        }
      }

      (*(v27 + 8))(v11, v9);
      goto LABEL_9;
    }

    v63 = 0;
    sub_100524F68();
    v36 = v57;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v56;
    if (!v36)
    {
      (*(v21 + 8))(v8, v47);
      (*(v37 + 8))(v11, v9);
      swift_unknownObjectRelease();
      v43 = sub_1000F24EC(&qword_100AD47A0);
      v30 = v46;
      (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
      v31 = v52;
      goto LABEL_17;
    }

    (*(v56 + 8))(v11, v9);
    swift_unknownObjectRelease();
  }

  return sub_10000BA7C(v58);
}

unint64_t sub_1000102DC()
{
  result = qword_100AE80C0;
  if (!qword_100AE80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80C0);
  }

  return result;
}

unint64_t sub_100010330()
{
  result = qword_100AE80C8;
  if (!qword_100AE80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80C8);
  }

  return result;
}

unint64_t sub_10001039C()
{
  result = qword_100AE80B0;
  if (!qword_100AE80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80B0);
  }

  return result;
}

unint64_t sub_1000103F4()
{
  result = qword_100AE80B8;
  if (!qword_100AE80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80B8);
  }

  return result;
}

unint64_t sub_10001045C()
{
  result = qword_100AE80A0;
  if (!qword_100AE80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80A0);
  }

  return result;
}

unint64_t sub_1000104B4()
{
  result = qword_100AE80A8;
  if (!qword_100AE80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80A8);
  }

  return result;
}

unint64_t sub_10001051C()
{
  result = qword_100AE80D0;
  if (!qword_100AE80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80D0);
  }

  return result;
}

unint64_t sub_100010570()
{
  result = qword_100AE80D8;
  if (!qword_100AE80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80D8);
  }

  return result;
}

uint64_t sub_1000105C4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000065A8(0, &qword_100AD6210);
  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B2F620 = result;
  return result;
}

uint64_t sub_100010784()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000065A8(0, &qword_100AD6210);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B2F630 = result;
  return result;
}

uint64_t sub_100010944()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005508();
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B30F88 = result;
  return result;
}

uint64_t sub_100010AF4(uint64_t a1, char **a2)
{
  v3 = v2;
  v39 = a1;
  v5 = type metadata accessor for EntryListType();
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7Journal18EntryListViewModel_logger;
  if (qword_100AD0230 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v13 = sub_10000617C(v8, qword_100B30130);
    v14 = *(v9 + 16);
    v14(v3 + v12, v13, v8);
    *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController) = 0;
    *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_currentFilters) = 0;
    static EntriesSortOrder.timeline.getter();
    *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_assetIDs) = 0;
    *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_entryIDs) = 0;
    v15 = OBJC_IVAR____TtC7Journal18EntryListViewModel_dateInterval;
    v16 = type metadata accessor for DateInterval();
    (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
    v14(v11, v3 + v12, v8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "EntryListViewModel init", v19, 2u);
    }

    (*(v9 + 8))(v11, v8);
    *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context) = a2;
    v12 = v39;
    sub_100022B50(v39, v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_listType);
    sub_100022B50(v12, v7);
    type metadata accessor for ObservableEntryListViewModel(0);
    v20 = swift_allocObject();
    a2 = a2;
    sub_10001113C(v7);
    *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_observableListViewModel) = v20;
    sub_100022BB4();
    v21 = [objc_opt_self() defaultCenter];

    v22 = [a2 persistentStoreCoordinator];
    [v21 addObserver:v3 selector:"persistentStoresDidChange:" name:NSPersistentStoreCoordinatorStoresDidChangeNotification object:v22];

    v23 = *(v3 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
    if (!v23)
    {
LABEL_19:
      sub_100011478(v12);

      return v3;
    }

    v24 = v23;
    v25 = [v24 sections];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    sub_1000F24EC(&qword_100ADE7A0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v24;
    v38 = a2;
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = 0;
    v9 = 0;
    v7 = (v11 & 0xC000000000000001);
    a2 = &selRef_setRegion_;
    while (1)
    {
      if (v8 == v27)
      {

        a2 = v38;
        v12 = v39;
        v24 = v37;
        goto LABEL_22;
      }

      if (v7)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v27, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      if (v27 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v28 = *(v11 + 8 * v27 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_18;
      }

LABEL_13:
      v29 = [v28 numberOfObjects];
      swift_unknownObjectRelease();
      ++v27;
      v30 = __OFADD__(v9, v29);
      v9 += v29;
      if (v30)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v9 = 0;
LABEL_22:
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v31, v32, "EntryListViewModel - initial entry count (including tips): %ld", v33, 0xCu);

    v34 = a2;
  }

  else
  {
    v34 = v31;
    v31 = a2;
  }

  sub_100011478(v12);
  return v3;
}

uint64_t sub_100011068()
{
  result = type metadata accessor for EntryListType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001113C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EntryListType();
  __chkstk_darwin(v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  *(v2 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel__observableJournal) = 0;
  ObservationRegistrar.init()();
  sub_100022B50(a1, v2 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel_listType);
  sub_100022B50(a1, v6);
  v14 = sub_1000F24EC(&qword_100AD47A0);
  if ((*(*(v14 - 8) + 48))(v6, 2, v14))
  {
    sub_100011478(a1);
    sub_100011478(v6);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v15 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    type metadata accessor for ObservableJournal();
    swift_allocObject();
    v16 = v15;
    v17 = ObservableJournal.init(journalID:context:)();
    KeyPath = swift_getKeyPath();
    v20[1] = v20;
    __chkstk_darwin(KeyPath);
    v20[-2] = v2;
    v20[-1] = v17;
    v20[3] = v2;
    sub_10011939C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100011478(a1);
    (*(v8 + 8))(v13, v7);
  }

  return v2;
}

uint64_t sub_100011478(uint64_t a1)
{
  v2 = type metadata accessor for EntryListType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000114D4()
{
  v1 = v0;
  v2 = type metadata accessor for EntriesSortOrder();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EntryListType();
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  sub_100022B50(v1 + v12, v11);
  v13 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v13 - 8) + 56))(v9, 1, 2, v13);
  LOBYTE(v12) = sub_100023858(v11, v9);
  sub_100011478(v9);
  sub_100011478(v11);
  if (v12)
  {
    sub_1000F24EC(&unk_100AD4780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100941D50;
    sub_1000065A8(0, &qword_100AD5B00);
    swift_getKeyPath();
    *(v14 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v15 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v15, v2);
    v16 = EntriesSortOrder.getSortDescriptors()();
    (*(v3 + 8))(v5, v2);
    v21 = v14;
    sub_1006AD670(v16);
    return v21;
  }

  else
  {
    v18 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v18, v2);
    v19 = EntriesSortOrder.getSortDescriptors()();
    (*(v3 + 8))(v5, v2);
    return v19;
  }
}

uint64_t sub_1000117D0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14descr100A531E1V32SuggestionSheetPresentationStateOMa()
{
  result = qword_100AF69E0;
  if (!qword_100AF69E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000118C4()
{
  sub_10000EF1C(319, &unk_100AE3D00, type metadata accessor for JournalTimelineViewController.RestorableNavigation, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100011960()
{
  sub_100023DF0();
  if (v0 <= 0x3F)
  {
    sub_1000119E8();
    if (v1 <= 0x3F)
    {
      sub_10041EC04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000119E8()
{
  if (!qword_100AE3DB8)
  {
    sub_1000F2A18(&unk_100AE4870);
    sub_1000F2A18(&qword_100AD57F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AE3DB8);
    }
  }
}

uint64_t sub_100011B44()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UIButton.Configuration();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.Size.large(_:), v9);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
  UIButton.Configuration.cornerStyle.setter();
  if (qword_100AD0310 != -1)
  {
    swift_once();
  }

  v16 = qword_100B30308;
  UIButton.Configuration.baseBackgroundColor.setter();
  if (qword_100AD0318 != -1)
  {
    swift_once();
  }

  v17 = qword_100B30310;
  UIButton.Configuration.baseForegroundColor.setter();
  v18 = [objc_opt_self() configurationWithPointSize:7 weight:20.0];
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v18];

  UIButton.Configuration.image.setter();
  if (qword_100AD07F0 != -1)
  {
    swift_once();
  }

  v21 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v21];

  v22 = v26;
  (*(v13 + 16))(v4, v15, v26);
  (*(v13 + 56))(v4, 0, 1, v22);
  UIButton.configuration.setter();
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v23 forControlEvents:64];

  sub_1000123B4(v1);
  return (*(v13 + 8))(v15, v22);
}

uint64_t sub_100012028()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 systemIndigoColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(UIColor);
  v10[4] = sub_1000123A8;
  v10[5] = v3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100023FEC;
  v10[3] = &unk_100A7C428;
  v5 = _Block_copy(v10);
  v6 = v2;
  v7 = v1;
  v8 = [v4 initWithDynamicProvider:v5];

  _Block_release(v5);

  qword_100B30308 = v8;
  return result;
}

uint64_t sub_10001216C()
{

  return swift_deallocObject();
}

uint64_t sub_1000121B0()
{
  v0 = objc_opt_self();
  v1 = [v0 systemIndigoColor];
  v2 = [v0 whiteColor];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(UIColor);
  v10[4] = sub_1000123A8;
  v10[5] = v3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100023FEC;
  v10[3] = &unk_100A7C3D8;
  v5 = _Block_copy(v10);
  v6 = v2;
  v7 = v1;
  v8 = [v4 initWithDynamicProvider:v5];

  _Block_release(v5);

  qword_100B30310 = v8;
  return result;
}

void sub_1000122F8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009070E0;
  v1._countAndFlagsBits = 0x65736F706D6F43;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30BC0 = v3;
}

void sub_1000123B4(void *a1)
{
  v2 = [a1 layer];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [v2 setShadowColor:v4];
  v5 = [a1 layer];
  LODWORD(v6) = 1045220557;
  [v5 setShadowOpacity:v6];

  v7 = [a1 layer];
  [v7 setShadowOffset:{0.0, 8.0}];

  v8 = [a1 layer];
  [v8 setShadowRadius:12.0];

  v9 = [a1 layer];
  [v9 setCornerCurve:kCACornerCurveContinuous];

  v10 = [a1 layer];
  [v10 setShadowPathIsBounds:0];
}

id sub_1000125A8()
{
  v1 = OBJC_IVAR____TtC7Journal16VariableBlurView_blurFilter;
  *&v0[v1] = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
  *&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_maskSize] = vdupq_n_s64(0x4059000000000000uLL);
  v2 = OBJC_IVAR____TtC7Journal16VariableBlurView_alphaColorGradients;
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941D60;
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  v7 = [v6 CGColor];
  *(v3 + 32) = v7;
  v8 = [v4 whiteColor];
  v9 = [v8 CGColor];

  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_blurRadius] = 2;
  *(v3 + 40) = v9;
  v10 = &v0[OBJC_IVAR____TtC7Journal16VariableBlurView_inputMaskImage];
  strcpy(&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_inputMaskImage], "inputMaskImage");
  v10[15] = -18;
  v11 = &v0[OBJC_IVAR____TtC7Journal16VariableBlurView_inputNormalizeEdges];
  *v11 = 0xD000000000000013;
  *(v11 + 1) = 0x80000001008F0960;
  v12 = &v0[OBJC_IVAR____TtC7Journal16VariableBlurView_inputDither];
  *v12 = 0x7469447475706E69;
  *(v12 + 1) = 0xEB00000000726568;
  v13 = &v0[OBJC_IVAR____TtC7Journal16VariableBlurView_blurRadiusKey];
  *v13 = 0xD000000000000020;
  *(v13 + 1) = 0x80000001008F09C0;
  v14 = &v0[OBJC_IVAR____TtC7Journal16VariableBlurView_filterName];
  strcpy(&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_filterName], "variableBlur");
  v14[13] = 0;
  *(v14 + 7) = -5120;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for VariableBlurView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10001282C();

  return v15;
}

void sub_10001282C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_blurFilter];
  v2 = sub_100012B10();
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:v2 forKey:v3];

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v5];

  v6 = Bool._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v1 setValue:v6 forKey:v7];

  v8 = String._bridgeToObjectiveC()();
  [v1 setName:v8];

  v9 = [v0 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_1000F24EC(&unk_100AE88B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100940080;
  *(v11 + 56) = sub_1000065A8(0, &qword_100AE31E0);
  *(v11 + 32) = v1;
  v12 = v1;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setFilters:v13];

  v14 = [v0 layer];
  v15 = Int._bridgeToObjectiveC()().super.super.isa;
  v16 = String._bridgeToObjectiveC()();
  [v14 setValue:v15 forKeyPath:v16];

  v17 = [v0 layer];
  [v17 setAllowsHitTesting:0];

  v18 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v18];
}

uint64_t sub_100012B10()
{
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v1 setScale:1.0];
  [v1 setPreferredRange:2];
  v2 = *&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_maskSize];
  v3 = *&v0[OBJC_IVAR____TtC7Journal16VariableBlurView_maskSize + 8];
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v1 format:{0.0, 0.0, v2, v3}];
  v5 = swift_allocObject();
  v5[2] = 0.0;
  v5[3] = 0.0;
  v5[4] = v2;
  v5[5] = v3;
  *(v5 + 6) = v0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100024130;
  *(v6 + 24) = v5;
  v12[4] = sub_1000240E0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100012D78;
  v12[3] = &unk_100A6BC30;
  v7 = _Block_copy(v12);
  v8 = v0;

  v9 = [v4 imageWithActions:v7];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = [v9 CGImage];

    return v11;
  }

  return result;
}

uint64_t sub_100012D30()
{

  return swift_deallocObject();
}

void sub_100012D78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_100012DC4(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  [v10 setBounds:{a2, a3, a4, a5}];

  sub_100024140(v11);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setColors:isa];

  v13 = [a1 CGContext];
  [v10 renderInContext:v13];
}

char *sub_100012EF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&unk_100AE88B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100013018()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 heightAnchor];
  v3 = [v2 constraintEqualToConstant:100.0];

  [v3 setActive:1];
  v4 = *&v1[OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurView];
  [v1 addSubview:v4];
  sub_100013178(0.0);

  sub_10002433C();
  [v1 setAccessibilityContainerType:4];
  [v4 setHidden:UIAccessibilityIsReduceTransparencyEnabled()];
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v1 selector:"updateTransparencyEffects" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];
}

void *sub_100013178(double a1)
{
  v2 = v1;
  v4 = [v1 superview];
  if (v4)
  {
    v5 = v4;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v1 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:a1];
    if (v8)
    {
      v9 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v10 = [v2 superview];
  if (v10)
  {
    v11 = v10;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v2 trailingAnchor];
    v13 = [v11 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:-a1];
    if (v14)
    {
      [v14 setActive:1];

      v15 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v16 = [v2 superview];
  if (v16)
  {
    v17 = v16;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v2 topAnchor];
    v19 = [v17 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:a1];
    if (v20)
    {
      v21 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v22 = [v2 superview];
  if (v22)
  {
    v23 = v22;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v2 bottomAnchor];
    v25 = [v23 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:-a1];
    if (v26)
    {
      v27 = v26;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v28 = objc_opt_self();
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v28 activateConstraints:isa];

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10001366C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE3C90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_100013708(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&unk_100ADE540);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v10 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v3[v9] = v10;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions] = &off_100A56418;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds] = 0;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_originY] = 0;
  v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_shouldPlayVideoAfterDelay] = 1;
  v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations] = 0;
  v11 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(*(v12 - 8) + 56);
  v13(&v3[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellTime;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_isSearchActive] = 0;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher] = 0;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView] = 0;
  v16 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_fadeView;
  type metadata accessor for FadingView();
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = v10;
  *&v3[v16] = [v17 init];
  v19 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_timelineGradientView;
  type metadata accessor for TimelineGradientView();
  *&v3[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentSelectedCell] = 0;
  v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent] = 0;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialYOffset] = 0;
  v20 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_tip;
  v21 = type metadata accessor for AnyTip();
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  v22 = &v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_tipActionHandler];
  *v22 = DebugData.init(name:);
  v22[1] = 0;
  v13(&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection], 1, 1, v12);
  v23 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackShiftCommand;
  sub_1000065A8(0, &qword_100AE4350);
  v38 = 0u;
  v39 = 0u;
  sub_1000F24EC(&unk_100AD4780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100941D50;
  v25 = String._bridgeToObjectiveC()();
  v26 = [objc_opt_self() alternateWithTitle:v25 action:"focusCell:" modifierFlags:0x40000];

  *(v24 + 32) = v26;
  *&v3[v23] = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v27 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackCtrlCommand;
  v38 = 0u;
  v39 = 0u;
  *&v3[v27] = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v28 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_focusCommand;
  v38 = 0u;
  v39 = 0u;
  *&v3[v28] = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v29 = &v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest];
  *v29 = 0;
  v29[8] = 0;
  v30 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_stateToRestore;
  v31 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  v32 = *(*(v31 - 8) + 56);
  v32(&v3[v30], 1, 1, v31);
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask] = 0;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource] = 0;
  v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus] = 0;
  v33 = type metadata accessor for JournalEntryCollectionViewController(0);
  v37.receiver = v3;
  v37.super_class = v33;
  v34 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  [v34 setUserActivity:a1];
  if (a2)
  {
    sub_1000249D4(&qword_100AD8488, type metadata accessor for JournalEntryCollectionViewController);
    RestorableController.getRestorableStateFromUserActivity()();
  }

  else
  {

    v32(v8, 1, 1, v31);
  }

  v35 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(v8, v34 + v35, &unk_100ADE540);
  swift_endAccess();

  return v34;
}

uint64_t sub_100013E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AD1420);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

unint64_t sub_100013F70()
{
  result = qword_100ADE7B0;
  if (!qword_100ADE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE7B0);
  }

  return result;
}

unint64_t sub_100013FCC()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t storeEnumTagSinglePayload for AudioRecordingLiveActivityStopButton.Phase(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000140BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100014184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000141F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD1420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000142D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014318(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F24EC(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100014380()
{
  v1 = OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___navigationCoordinator;
  if (*(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___navigationCoordinator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___navigationCoordinator);
  }

  else
  {
    type metadata accessor for JournalNavigationCoordinator();
    v2 = swift_allocObject();
    *(v2 + 16) = [objc_allocWithZone(type metadata accessor for FullScreenAssetControllerCoordinator()) init];
    *(v2 + 24) = [objc_allocWithZone(UIViewController) init];
    swift_unknownObjectWeakInit();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000144C8()
{
  v1 = OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___accessManager;
  if (*(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___accessManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___accessManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for AppSecureAccessManager();
    swift_allocObject();
    v2 = sub_10018AAFC();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t type metadata accessor for AppSecureAccessManager()
{
  result = qword_100AD5D88;
  if (!qword_100AD5D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014590(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  sub_1000082B4(a1, v19 - v7, qword_100AF2AC0);
  if (sub_100014964() != 4)
  {
    v9 = [objc_allocWithZone(LAContext) init];
    if (![v9 canEvaluatePolicy:2 error:0])
    {
      sub_100014CF4(0xD00000000000002ELL, 0x80000001008E2360, v8, a2, a3);
      sub_100004F84(v8, qword_100AF2AC0);
      [v9 invalidate];

      return 0;
    }

    if (([v9 canEvaluatePolicy:1 error:0] & 1) == 0)
    {
      sub_100014CF4(0xD000000000000034, 0x80000001008E2390, v8, a2, a3);
      sub_100004F84(v8, qword_100AF2AC0);
      [v9 invalidate];

      return 0;
    }

    v10 = [v9 biometryType];
    if (v10 > 1)
    {
      if (v10 == 4)
      {
        v11 = 4;
        v12 = 0xE700000000000000;
        v13 = 0x49636974706FLL;
        goto LABEL_19;
      }

      v11 = v10;
      if (v10 == 2)
      {
        v12 = 0xE600000000000000;
        v15 = 0x444965636166;
LABEL_20:
        v20[0] = 0;
        v20[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v20[0] = 0x797274656D6F6962;
        v20[1] = 0xEF3D6B6365686320;
        v18._countAndFlagsBits = v15;
        v18._object = v12;
        String.append(_:)(v18);

        sub_100014CF4(v20[0], v20[1], v8, a2, a3);

        sub_100004F84(v8, qword_100AF2AC0);
        [v9 invalidate];

        return v11;
      }
    }

    else
    {
      if (!v10)
      {
        v11 = 0;
        v12 = 0xE400000000000000;
        v15 = 1701736302;
        goto LABEL_20;
      }

      v11 = v10;
      if (v10 == 1)
      {
        v12 = 0xE700000000000000;
        v13 = 0x496863756F74;
LABEL_19:
        v15 = v13 & 0xFFFFFFFFFFFFLL | 0x44000000000000;
        goto LABEL_20;
      }
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v20, "unrecognized(");
    HIWORD(v20[1]) = -4864;
    v19[1] = v11;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v15 = v20[0];
    v12 = v20[1];
    goto LABEL_20;
  }

  sub_100014CF4(0xD00000000000002ALL, 0x80000001008E2330, v8, a2, a3);
  sub_100004F84(v8, qword_100AF2AC0);
  return 0;
}

uint64_t sub_100014964()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v4 = static NSUserDefaults.shared.getter();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v19 = 0u;
    v20 = 0u;
    sub_1000261D4(&v19);
    (*(v1 + 104))(v3, enum case for SettingsKey.lockJournalState(_:), v0);
    SettingsKey.rawValue.getter();
    (*(v1 + 8))(v3, v0);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v4 objectForKey:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19 = v17;
    v20 = v18;
    if (!*(&v18 + 1))
    {

      sub_1000261D4(&v19);
      return 4;
    }

    if (swift_dynamicCast())
    {
      v13 = sub_100554B98(v16);

      result = v13;
      if (v13 != 5)
      {
        return result;
      }

      return 4;
    }

LABEL_12:

    return 4;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002432C(&v17, &v19);
  sub_1000261D4(&v19);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 BOOLForKey:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [v4 objectForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      switch(v16)
      {
        case 0:
          return 0;
        case 15:
          return 3;
        case 5:
          return 2;
      }
    }
  }

  else
  {
    sub_1000261D4(&v19);
  }

  return 1;
}

uint64_t sub_100014CF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = a1;
  v9 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a3, v11, qword_100AF2AC0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100004F84(v11, qword_100AF2AC0);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (a5)
  {
    v26 = a4;
    v27 = a5;

    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v19 = v26;
    v18 = v27;
  }

  else
  {
    v19 = 0;
    v18 = 0xE000000000000000;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_100008458(v19, v18, &v26);

    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100008458(v25, a2, &v26);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100015024(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000150B4()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppSecureAccessViewController();
  v31.receiver = v0;
  v31.super_class = v6;
  objc_msgSendSuper2(&v31, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() systemBackgroundColor];
    [v8 setBackgroundColor:v9];

    sub_1000F24EC(&unk_100AD4780);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100941D70;
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0D50 != -1)
    {
      swift_once();
    }

    v11 = sub_10000617C(v2, qword_100B31700);
    v12 = *(v3 + 16);
    v12(v5, v11, v2);
    *(v10 + 32) = UIColor.init(resource:)();
    if (qword_100AD0D48 != -1)
    {
      swift_once();
    }

    v13 = sub_10000617C(v2, qword_100B316E8);
    v12(v5, v13, v2);
    *(v10 + 40) = UIColor.init(resource:)();
    if (qword_100AD0D40 != -1)
    {
      swift_once();
    }

    v14 = sub_10000617C(v2, qword_100B316D0);
    v12(v5, v14, v2);
    *(v10 + 48) = UIColor.init(resource:)();
    static UnitPoint.top.getter();
    v16 = v15;
    v18 = v17;
    static UnitPoint.bottom.getter();
    v20 = v19;
    v22 = v21;
    v23 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v10;
    v24 = v23;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = 0;
    v25 = v24;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v16;
    v30 = v18;
    v26 = v25;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v20;
    v30 = v22;
    static UIView.Invalidating.subscript.setter();
    v27 = [objc_allocWithZone(UIWindowSceneDragInteraction) init];
    [v26 addInteraction:v27];

    result = [v1 view];
    if (result)
    {
      v28 = result;
      [result addSubview:v26];

      sub_100013178(0.0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100015550()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100AF7700 = result;
  return result;
}

uint64_t sub_1000155CC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B316D0);
  sub_10000617C(v0, qword_100B316D0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

void sub_100015674()
{
  sub_10080C8D4(319, &qword_100AF3A50, &qword_100AEB660, &unk_100960740, sub_100015838);
  if (v0 <= 0x3F)
  {
    sub_10080C8D4(319, &qword_100AF3A60, &qword_100AF3A68, &unk_10096C7C8, sub_1000264D0);
    if (v1 <= 0x3F)
    {
      sub_10080C96C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1000157D0()
{
  result = qword_100AD6020;
  if (!qword_100AD6020)
  {
    sub_1000065A8(255, &qword_100AD4C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6020);
  }

  return result;
}

void sub_100015868()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for JournalFeatureFlags();
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin(v1);
  v49 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = [v0 navigationItem];
  [v5 setBackButtonDisplayMode:2];

  v6 = [v0 navigationItem];
  [v6 setLeftItemsSupplementBackButton:1];

  v7 = [v0 navigationItem];
  [v7 setLargeTitleDisplayMode:1];

  v8 = [v0 navigationItem];
  [v8 setStyle:1];

  type metadata accessor for CloudSyncLoadingViewButton();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v9];

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v10;
  v11 = v0;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v12 = aBlock[0];
  [aBlock[0] setHidesSharedBackground:1];

  sub_1000065A8(0, &qword_100AD43B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  swift_unknownObjectRetain();
  v15 = UIBarButtonItem.init(title:image:target:action:menu:)();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v15;
  v16 = v11;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v17 = aBlock[0];
  [aBlock[0] setSharesBackground:0];

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004207C0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100657B94;
  aBlock[3] = &unk_100A6C6D0;
  v20 = _Block_copy(aBlock);

  v21 = [v18 elementWithUncachedProvider:v20];
  _Block_release(v20);
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v21;
  v22 = v16;
  static UIViewController.ViewLoading.subscript.setter();
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v54.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v54.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v54, v58).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = isa;
  v24 = v22;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v56.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28.value._countAndFlagsBits = v25;
  v28.value._object = v27;
  v56.value.super.isa = 0;
  v60.value.super.super.isa = 0;
  v29 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v28, v56, v60, v62).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v29;
  v30 = v24;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v57.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34.value._countAndFlagsBits = v31;
  v34.value._object = v33;
  v57.value.super.isa = 0;
  v61.value.super.super.isa = 0;
  v35 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v34, v57, v61, v63).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v35;
  v36 = v30;
  static UIViewController.ViewLoading.subscript.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v55.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v55.is_nil = 0;
  v37 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemSearch, v55, v59).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v37;
  v38 = v36;
  static UIViewController.ViewLoading.subscript.setter();
  v40 = v49;
  v39 = v50;
  v41 = v51;
  (*(v50 + 104))(v49, enum case for JournalFeatureFlags.search(_:), v51);
  LOBYTE(v37) = JournalFeatureFlags.isEnabled.getter();
  (*(v39 + 8))(v40, v41);
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v42 = aBlock[0];
    *(aBlock[0] + OBJC_IVAR____TtC7Journal25SuggestedSearchController_timelineDelegate + 8) = &off_100A6C410;
    swift_unknownObjectWeakAssign();

    v43 = [v38 traitCollection];
    v44 = [v43 userInterfaceIdiom];

    if (v44)
    {
      v45 = [v38 navigationItem];
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v46 = aBlock[0];
      [v45 setSearchController:aBlock[0]];

      v47 = [v38 navigationItem];
      [v47 setPreferredSearchBarPlacement:1];
    }
  }

  sub_100016804(0);
  sub_1000F24EC(&unk_100AEBEC0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100940080;
  *(v48 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v48 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_10041B368();
}

uint64_t type metadata accessor for JournalSyncEngineDelegate()
{
  result = qword_100AEA078;
  if (!qword_100AEA078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016680()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B30130);
  sub_10000617C(v0, qword_100B30130);
  return Logger.init(subsystem:category:)();
}

NSString sub_100016720()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FB78 = result;
  return result;
}

NSString sub_10001675C()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F488 = result;
  return result;
}

NSString sub_100016794()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FB80 = result;
  return result;
}

NSString sub_1000167CC()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FB88 = result;
  return result;
}

void sub_100016804(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5 || _UISolariumEnabled())
  {
    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      [v6 setToolbarHidden:sub_10041D03C() animated:a1 & 1];
    }

    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    v10 = [v2 traitCollection];
    v11 = [v10 horizontalSizeClass];

    v12 = [*&v2[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] isEditing];
    if (v9 == 5)
    {
      sub_1000F24EC(&unk_100AD4780);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100941D60;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v27 + 32) = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v27 + 40) = v64;
      v28 = [v2 navigationItem];
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      [v28 setSearchController:v64];

      v18 = [v2 navigationItem];
      [v18 setAdditionalOverflowItems:0];
LABEL_36:
      v15 = 0;
      goto LABEL_37;
    }

    v13 = v12;
    if (v9 != 1)
    {
      if (!v9)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        if (v13)
        {
          static UIViewController.ViewLoading.subscript.getter();

          [v64 setStyle:2];

          sub_1000F24EC(&unk_100AD4780);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_100941D60;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          *(v14 + 32) = v64;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          *(v14 + 40) = v64;
          v15 = swift_allocObject();
          *(v15 + 1) = xmmword_100941D50;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v15[4] = v64;
          v16 = [v2 navigationItem];
          [v16 setAdditionalOverflowItems:0];

          v17 = [v2 navigationItem];
          [v17 setHidesBackButton:1 animated:a1 & 1];

          v18 = [v2 navigationItem];
          [v18 setAdditionalOverflowItems:0];
LABEL_37:

          goto LABEL_38;
        }

        static UIViewController.ViewLoading.subscript.getter();

        [v64 setStyle:2];

        sub_10041CF18(a1 & 1);
        sub_1000F24EC(&unk_100AD4780);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_100941D60;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v37 + 32) = v64;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v37 + 40) = v64;
        v38 = sub_100303598();
        sub_10041C954(!v38);
        v39 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        [v39 setAdditionalOverflowItems:v64];

        v40 = [v2 navigationItem];
        [v40 setHidesBackButton:0 animated:a1 & 1];

        v41 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v18 = v64;
        [v41 setAdditionalOverflowItems:v64];
        goto LABEL_35;
      }

LABEL_16:
      v15 = _swiftEmptyArrayStorage;
LABEL_38:
      v56 = [v2 navigationItem];
      sub_1000065A8(0, &qword_100AD43B0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 setRightBarButtonItems:isa animated:a1 & 1];

      v58 = [v2 navigationItem];
      if (v15)
      {
        v34 = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v34 = 0;
      }

      [v58 setLeftBarButtonItems:v34 animated:a1 & 1];

      goto LABEL_42;
    }

    if (v11 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      if ((v13 & 1) == 0)
      {
        static UIViewController.ViewLoading.subscript.getter();

        [v64 setStyle:0];

        sub_1000F24EC(&unk_100AD4780);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_100941D60;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v59 + 32) = v64;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v59 + 40) = v64;
        v60 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        [v60 setAdditionalOverflowItems:v64];

        v61 = [v2 navigationItem];
        [v61 setHidesBackButton:0 animated:a1 & 1];

        v62 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        [v62 setAdditionalOverflowItems:v64];

        v63 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v18 = v64;
        [v63 setSearchController:v64];

        goto LABEL_36;
      }

      static UIViewController.ViewLoading.subscript.getter();

      [v64 setStyle:0];

      sub_1000F24EC(&unk_100AD4780);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100941830;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v42 + 32) = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v42 + 40) = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v42 + 48) = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v42 + 56) = v64;
      v15 = swift_allocObject();
      *(v15 + 1) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v15[4] = v64;
      v43 = [v2 navigationItem];
      [v43 setAdditionalOverflowItems:0];

      v44 = [v2 navigationItem];
      [v44 setHidesBackButton:0 animated:a1 & 1];

      v45 = [v2 navigationItem];
      [v45 setAdditionalOverflowItems:0];

      v26 = [v2 navigationItem];
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_16;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      if ((v13 & 1) == 0)
      {
        static UIViewController.ViewLoading.subscript.getter();

        [v64 setStyle:2];

        sub_10041CF18(a1 & 1);
        sub_1000F24EC(&unk_100AD4780);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100941D50;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v51 + 32) = v64;
        v52 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        [v52 setAdditionalOverflowItems:v64];

        v53 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        [v53 setAdditionalOverflowItems:v64];

        v54 = [v2 navigationItem];
        [v54 setHidesBackButton:0 animated:a1 & 1];

        v55 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        [v55 setSearchController:v64];

        v41 = [v2 navigationItem];
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v18 = v64;
        [v41 setAdditionalOverflowItems:v64];
LABEL_35:

        goto LABEL_36;
      }

      static UIViewController.ViewLoading.subscript.getter();

      [v64 setStyle:2];

      sub_1000F24EC(&unk_100AD4780);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100941D60;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v22 + 32) = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v22 + 40) = v64;
      v15 = swift_allocObject();
      *(v15 + 1) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v15[4] = v64;
      v23 = [v2 navigationItem];
      [v23 setAdditionalOverflowItems:0];

      v24 = [v2 navigationItem];
      [v24 setAdditionalOverflowItems:0];

      v25 = [v2 navigationItem];
      [v25 setHidesBackButton:1 animated:a1 & 1];

      v26 = [v2 navigationItem];
    }

    v18 = v26;
    [v18 setSearchController:0];
    goto LABEL_37;
  }

  if ([*&v2[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] isEditing])
  {
    v19 = [v2 traitCollection];
    v20 = [v19 userInterfaceIdiom];

    v21 = v20 != 5;
  }

  else
  {
    v21 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v29 = [v64 isActive];

  v30 = [v2 navigationItem];
  v31 = v30;
  v32 = a1 & 1;
  if (v29)
  {
    [v30 setHidesBackButton:1 animated:v32];

    v33 = [v2 navigationItem];
    [v33 setRightBarButtonItems:0 animated:a1 & 1];

    v34 = [v2 navigationItem];
    [(objc_class *)v34 setAdditionalOverflowItems:0];
  }

  else
  {
    [v30 setHidesBackButton:0 animated:v32];

    v35 = [v2 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v36 = swift_allocObject();
    if (v21)
    {
      *(v36 + 16) = xmmword_100941D60;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v36 + 32) = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v36 + 40) = v64;
    }

    else
    {
      *(v36 + 16) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v36 + 32) = v64;
    }

    sub_1000065A8(0, &qword_100AD43B0);
    v46 = Array._bridgeToObjectiveC()().super.isa;

    [v35 setRightBarButtonItems:v46 animated:a1 & 1];

    v47 = [v2 navigationItem];
    v48 = 0;
    if (v21)
    {
      sub_1000F24EC(&unk_100AD4780);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v49 + 32) = v64;
      v48 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v47 setLeftBarButtonItems:v48 animated:a1 & 1];

    v50 = [v2 navigationItem];
    if (v21)
    {
      v34 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v34 = v64;
    }

    [v50 setAdditionalOverflowItems:v34];
  }

LABEL_42:
}

uint64_t sub_100017FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SuggestedSearchController()
{
  result = qword_100AE4DB0;
  if (!qword_100AE4DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001808C(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_logger;
  if (qword_100AD0270 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000617C(v4, qword_100B301F0);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  v6 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
  *(v1 + v6) = [objc_opt_self() emptySuggestion];
  *(v1 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentResultsQuery) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentSuggestionAttributesQuery) = 0;
  v7 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_managedObjectContext;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  *(v1 + v7) = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  sub_100018228(a1, v1 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_entryListType, type metadata accessor for EntryListType);
  return v1;
}

uint64_t sub_100018228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100018290(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100ADFF80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000F24EC(&qword_100AF41F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000082B4(v9, v5, &unk_100ADFF80);
      result = sub_100361E08(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100018480(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100018480(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100018498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000184FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_10001854C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalEntryCollectionViewController(0);
  v42.receiver = v0;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D40 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v4, qword_100B316D0);
  v39[0] = *(v5 + 16);
  (v39[0])(v7, v12, v4);
  v39[1] = v11;
  v13 = UIColor.init(resource:)();
  [v10 setBackgroundColor:v13];

  v14 = (*((swift_isaMask & *v1) + 0x3D0))();
  v15 = [objc_allocWithZone(UICollectionView) initWithFrame:v14 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v16 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView) = v15;
  v17 = v15;

  if (v17)
  {
    v18 = v17;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v19 = String._bridgeToObjectiveC()();

    [v18 setAccessibilityLabel:v19];

    v20 = (*((swift_isaMask & *v1) + 0x3F8))();
    v21 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource) = v20;
    v22 = v20;

    [v18 setDataSource:v22];
    [v18 setDelegate:v1];
    [v18 setPrefetchDataSource:*(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher)];
    [v18 setBackgroundView:*(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_timelineGradientView)];
    v23 = v18;
    [v23 setDirectionalLayoutMargins:{0.0, 20.0, 0.0, 20.0}];
    [v23 setSelectionFollowsFocus:1];
    [v23 setAllowsMultipleSelectionDuringEditing:1];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      v26 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_fadeView);
      [v24 addSubview:v26];

      sub_100013178(0.0);

      sub_10001A264();
      [v26 addSubview:v23];
      if (qword_100AD0D50 != -1)
      {
        swift_once();
      }

      v27 = sub_10000617C(v4, qword_100B31700);
      (v39[0])(v7, v27, v4);
      v28 = UIColor.init(resource:)();
      [v23 setBackgroundColor:v28];

      sub_100013178(0.0);

      [v23 setAllowsFocus:1];
      v29 = objc_opt_self();
      v30 = [v29 defaultCenter];
      [v30 addObserver:v1 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v31 = [v29 defaultCenter];
      [v31 addObserver:v1 selector:"setUpBottomFade" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];

      [v23 setDragDelegate:v1];
      [v23 setDropDelegate:v1];
      v32 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_focusCommand);
      [v32 setWantsPriorityOverSystemBehavior:1];
      [v1 addKeyCommand:v32];
      v33 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackShiftCommand);
      v34 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackCtrlCommand);
      [v33 setWantsPriorityOverSystemBehavior:1];
      [v1 addKeyCommand:v33];
      [v34 setWantsPriorityOverSystemBehavior:1];
      [v1 addKeyCommand:v34];
      sub_1000065A8(0, &qword_100AE4350);
      v40 = 0u;
      v41 = 0u;
      v35 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v40 = 0u;
      v41 = 0u;
      v36 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      [v1 addKeyCommand:v35];
      v37 = [v1 traitCollection];
      v38 = [v37 userInterfaceIdiom];

      if (v38 == 5)
      {
        [v1 addKeyCommand:v36];
      }

      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t sub_100018D30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v94 = sub_1000F24EC(&qword_100ADE610);
  v99 = *(v94 - 8);
  v2 = __chkstk_darwin(v94);
  v98 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v96 = &v84 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v84 - v7;
  v97 = v9;
  __chkstk_darwin(v6);
  v112 = &v84 - v10;
  v11 = sub_1000F24EC(&qword_100ADE620);
  v127 = *(v11 - 8);
  v128 = v11;
  v12 = *(v127 + 64);
  v13 = __chkstk_darwin(v11);
  v109 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v116 = &v84 - v14;
  v15 = sub_1000F24EC(&qword_100AF1550);
  v125 = *(v15 - 8);
  v126 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v17;
  __chkstk_darwin(v16);
  v115 = &v84 - v19;
  v20 = sub_1000F24EC(&qword_100AE92E0);
  v123 = *(v20 - 8);
  v124 = v20;
  v21 = __chkstk_darwin(v20);
  v106 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v22;
  __chkstk_darwin(v21);
  v113 = &v84 - v23;
  v122 = sub_1000F24EC(&qword_100AE92E8);
  v114 = *(v122 - 8);
  v24 = *(v114 + 64);
  v25 = __chkstk_darwin(v122);
  v26 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v110 = &v84 - v27;
  v28 = sub_1000F24EC(&qword_100AE92F0);
  v120 = *(v28 - 8);
  v121 = v28;
  v29 = *(v120 + 64);
  v30 = __chkstk_darwin(v28);
  v107 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v118 = &v84 - v31;
  v119 = sub_1000F24EC(&qword_100AE92F8);
  v111 = *(v119 - 8);
  v32 = __chkstk_darwin(v119);
  v105 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v33;
  __chkstk_darwin(v32);
  v35 = &v84 - v34;
  v36 = sub_1000F24EC(&unk_100AE9300);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36);
  v39 = __chkstk_darwin(v38);
  v108 = v1;
  v42 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v42)
  {
    return 0;
  }

  v102 = v18;
  v43 = &v84 - v40;
  v117 = v39;
  v101 = v41;
  v44 = sub_1000065A8(0, &qword_100AD4D40);
  v86 = v24;
  v45 = v44;
  type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v103 = v8;
  v89 = v42;
  v87 = v12;
  v100 = v26;
  v46 = v43;
  v90 = v43;
  v88 = v45;
  UICollectionView.CellRegistration.init(handler:)();
  v104 = v35;
  UICollectionView.CellRegistration.init(handler:)();
  sub_1000065A8(0, &qword_100ADE560);
  UICollectionView.CellRegistration.init(handler:)();
  v47 = v110;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for UUID();
  v48 = v113;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for JournalEntryCollectionViewCell();
  sub_1000065A8(0, &qword_100AD43F0);
  v85 = v29;
  v49 = v115;
  UICollectionView.CellRegistration.init(handler:)();
  v50 = v116;
  UICollectionView.CellRegistration.init(handler:)();
  v51 = v101;
  (*(v101 + 16))(&v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v117);
  v52 = v111;
  (*(v111 + 16))(v105, v104, v119);
  v84 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v114;
  (*(v114 + 16))(v100, v47, v122);
  v54 = v123;
  (*(v123 + 16))(v106, v48, v124);
  v55 = v120;
  (*(v120 + 16))(v107, v118, v121);
  v56 = v125;
  (*(v125 + 16))(v102, v49, v126);
  v57 = v127;
  (*(v127 + 16))(v109, v50, v128);
  v58 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v59 = (v37 + *(v52 + 80) + v58) & ~*(v52 + 80);
  v60 = (v91 + *(v53 + 80) + v59) & ~*(v53 + 80);
  v61 = (v86 + *(v54 + 80) + v60) & ~*(v54 + 80);
  v62 = (v92 + *(v55 + 80) + v61) & ~*(v55 + 80);
  v92 = (v85 + *(v56 + 80) + v62) & ~*(v56 + 80);
  v93 = (v93 + *(v57 + 80) + v92) & ~*(v57 + 80);
  v63 = (v87 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v51 + 32))(v64 + v58, v84, v117);
  (*(v52 + 32))(v64 + v59, v105, v119);
  (*(v53 + 32))(v64 + v60, v100, v122);
  (*(v123 + 32))(v64 + v61, v106, v124);
  (*(v120 + 32))(v64 + v62, v107, v121);
  (*(v125 + 32))(v64 + v92, v102, v126);
  (*(v127 + 32))(v64 + v93, v109, v128);
  v65 = ObjectType;
  *(v64 + v63) = ObjectType;
  v66 = objc_allocWithZone(sub_1000F24EC(&unk_100AD7CC0));
  v109 = v89;
  v67 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v112;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = v65;
  v71 = v103;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v72 = v99;
  v73 = *(v99 + 16);
  v74 = v96;
  v75 = v94;
  v73(v96, v68, v94);
  v76 = v98;
  v73(v98, v71, v75);
  v77 = *(v72 + 80);
  v78 = (v77 + 16) & ~v77;
  v79 = (v97 + v77 + v78) & ~v77;
  v80 = swift_allocObject();
  v81 = *(v72 + 32);
  v81(v80 + v78, v74, v75);
  v81(v80 + v79, v76, v75);
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v82 = *(v72 + 8);
  v82(v103, v75);
  v82(v112, v75);
  (*(v127 + 8))(v116, v128);
  (*(v125 + 8))(v115, v126);
  (*(v123 + 8))(v113, v124);
  (*(v114 + 8))(v110, v122);
  (*(v120 + 8))(v118, v121);
  (*(v111 + 8))(v104, v119);
  (*(v101 + 8))(v90, v117);
  return v67;
}

uint64_t sub_100019BF0()
{
  v1 = sub_1000F24EC(&unk_100AE9300);
  v28 = *(v1 - 8);
  v29 = v1;
  v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v2 = *(v28 + 64);
  v27 = sub_1000F24EC(&qword_100AE92F8);
  v26 = *(v27 - 8);
  v3 = (v24 + v2 + *(v26 + 80)) & ~*(v26 + 80);
  v4 = *(v26 + 64);
  v25 = sub_1000F24EC(&qword_100AE92E8);
  v18 = *(v25 - 8);
  v21 = (v3 + v4 + *(v18 + 80)) & ~*(v18 + 80);
  v5 = *(v18 + 64);
  v23 = sub_1000F24EC(&qword_100AE92E0);
  v6 = *(v23 - 8);
  v19 = (v21 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v7 = *(v6 + 64);
  v22 = sub_1000F24EC(&qword_100AE92F0);
  v8 = *(v22 - 8);
  v16 = (v19 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v9 = *(v8 + 64);
  v20 = sub_1000F24EC(&qword_100AF1550);
  v10 = *(v20 - 8);
  v11 = (v16 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v17 = sub_1000F24EC(&qword_100ADE620);
  v13 = *(v17 - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  (*(v28 + 8))(v0 + v24, v29);
  (*(v26 + 8))(v0 + v3, v27);
  (*(v18 + 8))(v0 + v21, v25);
  (*(v6 + 8))(v0 + v19, v23);
  (*(v8 + 8))(v0 + v16, v22);
  (*(v10 + 8))(v0 + v11, v20);
  (*(v13 + 8))(v0 + v14, v17);

  return swift_deallocObject();
}

uint64_t sub_10001A054()
{

  return swift_deallocObject();
}

uint64_t sub_10001A08C()
{
  v1 = sub_1000F24EC(&qword_100ADE610);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_10001A174()
{
  result = sub_1000065A8(319, &qword_100AD43F0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10001A264()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_fadeView);
  sub_1000F24EC(&unk_100AE88B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941FE0;
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [v3 blackColor];
  v9 = [v8 CGColor];

  *(v2 + 88) = v7;
  *(v2 + 64) = v9;
  v10 = [v3 blackColor];
  v11 = [v10 colorWithAlphaComponent:0.45];

  v12 = [v11 CGColor];
  *(v2 + 120) = v7;
  *(v2 + 96) = v12;
  v13 = [v3 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.45];

  v15 = [v14 CGColor];
  *(v2 + 152) = v7;
  *(v2 + 128) = v15;
  *(v1 + OBJC_IVAR____TtC7Journal10FadingView_fadeColors) = v2;

  v16 = OBJC_IVAR____TtC7Journal10FadingView_contentFadeGradientLayer;
  v17 = *(v1 + OBJC_IVAR____TtC7Journal10FadingView_contentFadeGradientLayer);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setColors:isa];

  if (*(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask) == 1 && !UIAccessibilityIsReduceTransparencyEnabled())
  {
    v20 = objc_opt_self();
    v21 = [v20 mainScreen];
    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v49.origin.x = v23;
    v49.origin.y = v25;
    v49.size.width = v27;
    v49.size.height = v29;
    v30 = -160.0 / CGRectGetHeight(v49) + 1.0;
    v31 = [v20 mainScreen];
    [v31 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v50.origin.x = v33;
    v50.origin.y = v35;
    v50.size.width = v37;
    v50.size.height = v39;
    v40 = v30 + 80.0 / CGRectGetHeight(v50);
    sub_1000F24EC(&unk_100AD4780);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100941830;
    sub_1000065A8(0, &unk_100ADE730);
    *(v41 + 32) = NSNumber.init(integerLiteral:)(0);
    v42 = objc_allocWithZone(NSNumber);
    *&v33 = v30;
    LODWORD(v43) = LODWORD(v33);
    *(v41 + 40) = [v42 initWithFloat:v43];
    v44 = objc_allocWithZone(NSNumber);
    *&v33 = v40;
    LODWORD(v45) = LODWORD(v33);
    *(v41 + 48) = [v44 initWithFloat:v45];
    *(v41 + 56) = NSNumber.init(integerLiteral:)(1);
    *(v1 + OBJC_IVAR____TtC7Journal10FadingView_fadeLocations) = v41;

    v46 = *(v1 + v16);

    v47 = Array._bridgeToObjectiveC()().super.isa;

    [v46 setLocations:v47];
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7Journal10FadingView_fadeLocations) = _swiftEmptyArrayStorage;

    v19 = *(v1 + v16);
    sub_1000065A8(0, &unk_100ADE730);
    v47 = Array._bridgeToObjectiveC()().super.isa;
    [v19 setLocations:v47];
  }
}

unint64_t sub_10001A6F0()
{
  result = qword_100AD5D18;
  if (!qword_100AD5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D18);
  }

  return result;
}

uint64_t *sub_10001A770(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10001A7FC()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  v2 = [v1 parentViewController];
  if (!v2)
  {
    [v0 addChildViewController:v1];
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 setAlpha:0.0];

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        v7 = [v1 view];
        if (v7)
        {
          v8 = v7;
          v9 = v0;
          [v6 insertSubview:v7 belowSubview:*&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView]];

          v10 = [v1 view];
          if (v10)
          {
            v11 = v10;
            sub_100013178(0.0);

            v12 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
            v13 = v12;
            v28.value.super.super.super.isa = v12;
            UIViewController.setContentScrollView(_:)(v28);

            v14 = objc_opt_self();
            v15 = swift_allocObject();
            *(v15 + 16) = v9;
            v25 = sub_10001B6EC;
            v26 = v15;
            v21 = _NSConcreteStackBlock;
            v22 = 1107296256;
            v23 = sub_100006C7C;
            v24 = &unk_100A6C658;
            v16 = _Block_copy(&v21);
            v17 = v9;

            v18 = swift_allocObject();
            *(v18 + 16) = v17;
            v25 = sub_1000326A0;
            v26 = v18;
            v21 = _NSConcreteStackBlock;
            v22 = 1107296256;
            v23 = sub_10003264C;
            v24 = &unk_100A6C6A8;
            v19 = _Block_copy(&v21);
            v20 = v17;

            [v14 animateWithDuration:4 delay:v16 options:v19 animations:0.3 completion:0.0];
            _Block_release(v19);
            _Block_release(v16);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_10001AB44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1000F24EC(&qword_100ADE610);
  v68 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v69 = v4;
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v61 - v5;
  v7 = sub_1000F24EC(&qword_100ADE618);
  v83 = *(v7 - 8);
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v7);
  v76 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v61 - v10;
  v11 = sub_1000F24EC(&qword_100ADE620);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = v81[8];
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v77 = &v61 - v15;
  v16 = __chkstk_darwin(v14);
  v79 = &v61 - v17;
  __chkstk_darwin(v16);
  v78 = &v61 - v18;
  v19 = sub_1000F24EC(&qword_100AF1550);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v26 = v1;
  v27 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v27)
  {
    return 0;
  }

  v73 = v25;
  v74 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = &v61 - v22;
  v71 = v23;
  v72 = v24;
  swift_allocObject();
  v65 = v6;
  v62 = v8;
  swift_unknownObjectWeakInit();
  type metadata accessor for JournalEntryCollectionViewCell();
  v66 = v2;
  sub_1000065A8(0, &qword_100AD43F0);
  v61 = v7;
  v64 = v27;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  v63 = v26;
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100ADE560);
  v28 = v78;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MacLargeTitleCollectionViewCell();
  v29 = v80;
  UICollectionView.CellRegistration.init(handler:)();
  v30 = v79;
  UICollectionView.CellRegistration.init(handler:)();
  v31 = v83;
  (*(v83 + 16))(v76, v29, v7);
  v32 = v82;
  v33 = v81;
  v34 = v81[2];
  v34(v77, v28, v82);
  v35 = v72;
  v36 = v71;
  (*(v72 + 16))(v73, v75, v71);
  v34(v74, v30, v32);
  v37 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v38 = *(v33 + 80);
  v39 = v33;
  v40 = (v62 + v38 + v37) & ~v38;
  v41 = v12;
  v42 = v35;
  v43 = (v41 + *(v35 + 80) + v40) & ~*(v35 + 80);
  v44 = (v20 + v38 + v43) & ~v38;
  v62 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = *(v31 + 32);
  v47 = v61;
  v46(v45 + v37, v76, v61);
  v48 = v39[4];
  v49 = v82;
  v48(v45 + v40, v77, v82);
  (*(v42 + 32))(v45 + v43, v73, v36);
  v48(v45 + v44, v74, v49);
  *(v45 + v62) = ObjectType;
  v50 = objc_allocWithZone(sub_1000F24EC(&unk_100AD7CC0));
  v51 = v64;
  v52 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  v53 = v65;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v54 = v68;
  v55 = v70;
  v56 = v66;
  (*(v68 + 16))(v70, v53, v66);
  v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v58 = swift_allocObject();
  (*(v54 + 32))(v58 + v57, v55, v56);
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  (*(v54 + 8))(v53, v56);
  v59 = v81[1];
  v59(v79, v49);
  (*(v83 + 8))(v80, v47);
  v59(v78, v49);
  (*(v72 + 8))(v75, v71);
  return v52;
}

uint64_t sub_10001B3C4()
{
  v15 = sub_1000F24EC(&qword_100ADE618);
  v1 = *(v15 - 8);
  v13 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v14 = sub_1000F24EC(&qword_100ADE620);
  v3 = *(v14 - 8);
  v4 = *(v3 + 80);
  v5 = (v13 + v2 + v4) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_1000F24EC(&qword_100AF1550);
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v4 + v9) & ~v4;
  (*(v1 + 8))(v0 + v13, v15);
  v11 = *(v3 + 8);
  v11(v0 + v5, v14);
  (*(v8 + 8))(v0 + v9, v7);
  v11(v0 + v10, v14);

  return swift_deallocObject();
}

uint64_t sub_10001B5EC()
{
  v1 = sub_1000F24EC(&qword_100ADE610);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_10001B680(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController) view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:1.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10001B6F4()
{
  v0 = sub_1000F24EC(&qword_100AD4B88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v4 = v10;
  LOBYTE(v10) = 0;
  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v7 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    NSDiffableDataSourceSnapshot.reloadSections(_:)(&off_100A564E0);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v8 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v1 + 8))(v3, v0);
  }
}

void sub_10001B93C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v14[4] = sub_10002A6D4;
  v14[5] = v1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100029CCC;
  v14[3] = &unk_100A5E938;
  v3 = _Block_copy(v14);

  v4 = [v2 initWithSectionProvider:v3];
  _Block_release(v3);

  v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v0 setCollectionView:v5];
  v6 = [v0 collectionView];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setDelegate:v0];

  v8 = [v0 collectionView];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  [v8 setDragDelegate:v0];

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 setDropDelegate:v0];

  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setDragInteractionEnabled:1];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10001BB5C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_10001BB94()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AppNavigationSidebarController(0);
  v62.receiver = v0;
  v62.super_class = v6;
  objc_msgSendSuper2(&v62, "viewDidLoad");
  sub_1000065A8(0, &unk_100AD4D00);
  v58 = sub_1000348F0();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v66.value.super.isa = 0;
  v66.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v66, 0, 0xFFFFFFFFFFFFFFFFLL, v58, v59).super.super.isa;
  sub_1000065A8(0, &qword_100AD43B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  v14 = isa;
  v15.value._countAndFlagsBits = v9;
  v15.value._object = v11;
  v64.value.super.isa = v13;
  v64.is_nil = 0;
  v67.value.super.super.isa = isa;
  v16 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v15, v64, v67, v68).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v16;
  v17 = v1;
  v18 = v16;
  static UIViewController.ViewLoading.subscript.setter();

  sub_10001C920();
  v19 = [v17 navigationItem];
  [v19 setLargeTitleDisplayMode:2];

  v20 = [v17 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v60 = v4;
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();

  [v20 setBackButtonTitle:v21];

  v22 = [v17 navigationItem];
  [v22 setBackButtonDisplayMode:2];

  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v63.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v63.is_nil = 0;
  v23 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v63, v65).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v23;
  v24 = v17;
  static UIViewController.ViewLoading.subscript.setter();
  sub_10002CB34(0);
  v25 = [v24 collectionView];
  if (!v25)
  {
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  [v25 setAllowsMultipleSelection:0];

  v27 = [v24 collectionView];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  [v27 setSelectionFollowsFocus:1];

  v29 = [v24 collectionView];
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v29;
  v31 = [v24 traitCollection];
  v32 = [v31 userInterfaceIdiom];

  [v30 setAllowsSelectionDuringEditing:v32 != 5];
  v33 = [v24 collectionView];
  if (!v33)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = [v24 traitCollection];
  v36 = [v35 userInterfaceIdiom];

  [v34 setAllowsMultipleSelectionDuringEditing:v36 != 5];
  v37 = v24;
  v38 = [v37 parentViewController];

  if (v38)
  {
    type metadata accessor for SceneSplitViewController(0);
    while (1)
    {
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        break;
      }

      v40 = v38;
      v38 = [v40 parentViewController];

      if (!v38)
      {
        goto LABEL_9;
      }
    }

    v42 = [*(v39 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

    v41 = v42;
  }

  else
  {
LABEL_9:
    v41 = 1;
  }

  [v37 setClearsSelectionOnViewWillAppear:v41];
  v43 = objc_opt_self();
  v44 = [v43 defaultCenter];
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v45 = qword_100B2F9E0;
  [v44 addObserver:v37 selector:"updateAndApplyEntryCount:" name:? object:?];

  v46 = [v43 defaultCenter];
  [v46 addObserver:v37 selector:"updateAndApplyEntryCount:" name:NSManagedObjectContextObjectsDidChangeNotification object:*(*(v45 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain)];

  v47 = [v43 defaultCenter];
  [v47 addObserver:v37 selector:"updateAndApplyEntryCount:" name:NSManagedObjectContextDidMergeChangesObjectIDsNotification object:*(*(v45 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain)];

  v48 = [v43 defaultCenter];
  v49 = [*(*(v45 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain) persistentStoreCoordinator];
  [v48 addObserver:v37 selector:"updateAndApplyEntryCount:" name:NSPersistentStoreCoordinatorStoresDidChangeNotification object:v49];

  v50 = [v43 defaultCenter];
  if (qword_100ACF9F0 != -1)
  {
    swift_once();
  }

  [v50 addObserver:v37 selector:"hideTipsOnAppLock" name:qword_100B2F490 object:0];

  v51 = [v43 defaultCenter];
  [v51 addObserver:v37 selector:"hideTipsOnAppLock" name:UIApplicationDidEnterBackgroundNotification object:0];

  v52 = [v43 defaultCenter];
  if (qword_100ACF9E8 != -1)
  {
    swift_once();
  }

  [v52 addObserver:v37 selector:? name:? object:?];

  v53 = [v37 collectionView];
  if (!v53)
  {
    goto LABEL_26;
  }

  v54 = v53;
  v55 = [v37 traitCollection];
  v56 = [v55 userInterfaceIdiom];

  if (v56)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  [v54 setAccessibilityLabel:v57];
}

uint64_t type metadata accessor for OpenSensitiveURLAction.Destination()
{
  result = qword_100AF7288;
  if (!qword_100AF7288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001C67C()
{
  if (!qword_100AF7298)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF7298);
    }
  }
}

void sub_10001C6C4()
{
  sub_10001C67C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10001C724()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906F50;
  v1._countAndFlagsBits = 0x412068746C616548;
  v1._object = 0xED00007373656363;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000047;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30580 = v3;
}

void sub_10001C7E0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_100B30ED0 = v1;
}

uint64_t sub_10001C850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001C8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10001C920()
{
  v1 = sub_1000F24EC(&qword_100AD4B88);
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v73 = &v64 - v2;
  v3 = sub_1000F24EC(&qword_100AD4D28);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = __chkstk_darwin(v3);
  v80 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v79 = &v64 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v71 = v11;
  __chkstk_darwin(v8);
  v13 = &v64 - v12;
  v89 = sub_1000F24EC(&qword_100AD4D30);
  v85 = *(v89 - 8);
  v14 = __chkstk_darwin(v89);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v15;
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v88 = sub_1000F24EC(&qword_100AD4D38);
  v82 = *(v88 - 8);
  v18 = __chkstk_darwin(v88);
  v78 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v76 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v64 - v23;
  v69 = v25;
  __chkstk_darwin(v22);
  v27 = &v64 - v26;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  v28 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v81 = v27;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SidebarEditingCollectionViewCell();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for SidebarBrickCollectionViewListCell();
  v84 = v13;
  UICollectionView.CellRegistration.init(handler:)();
  v83 = v10;
  v72 = v28;
  UICollectionView.CellRegistration.init(handler:)();
  result = [v0 collectionView];
  v68 = result;
  if (result)
  {
    v30 = swift_allocObject();
    v65 = v0;
    swift_unknownObjectWeakInit();
    v31 = v82;
    v32 = *(v82 + 16);
    v66 = v24;
    v33 = v88;
    v32(v76, v24, v88);
    v34 = v85;
    v35 = *(v85 + 16);
    v67 = v17;
    v35(v77, v17, v89);
    v36 = v86;
    v37 = v87;
    v38 = *(v86 + 16);
    v38(v79, v84, v87);
    v38(v80, v83, v37);
    v32(v78, v81, v33);
    v39 = *(v31 + 80);
    v40 = (v39 + 24) & ~v39;
    v41 = (v69 + *(v34 + 80) + v40) & ~*(v34 + 80);
    v42 = *(v36 + 80);
    v43 = (v70 + v42 + v41) & ~v42;
    v70 = (v71 + v42 + v43) & ~v42;
    v71 = (v71 + v39 + v70) & ~v39;
    v44 = swift_allocObject();
    *(v44 + 16) = v30;
    v45 = *(v31 + 32);
    v46 = v88;
    v45(v44 + v40, v76, v88);
    (*(v34 + 32))(v44 + v41, v77, v89);
    v47 = *(v36 + 32);
    v47(v44 + v43, v79, v37);
    v47(v44 + v70, v80, v37);
    v45(v44 + v71, v78, v46);
    v48 = objc_allocWithZone(sub_1000F24EC(&qword_100AD48A0));
    v49 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v91[0] = v49;
    v65;
    static UIViewController.ViewLoading.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v50 = v91[0];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    sub_1000F24EC(&qword_100AD4D48);
    UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
    v51(v91, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v52 = v91[0];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    UICollectionViewDiffableDataSource.ReorderingHandlers.willReorder.setter();
    v53(v91, 0);

    sub_10001D788();
    sub_1001588B0(&qword_100AD4B80, type metadata accessor for AppNavigationSidebarController.Item);
    v54 = v73;
    NSDiffableDataSourceSnapshot.init()();
    v55 = v75;
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A56490);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v56 = v91[0];
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v74 + 8))(v54, v55);
    sub_10014EF04();
    sub_10002B13C(1);
    v57 = sub_10014F7B4();
    v58 = v88;
    if (v57)
    {
      if (qword_100ACFE00 != -1)
      {
        swift_once();
      }

      v59 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v59, qword_100B2F9A8);
      v90 = 1;
    }

    else
    {
      if (qword_100ACFDF8 != -1)
      {
        swift_once();
      }

      v60 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v60, qword_100B2F990);
      v90 = 0;
    }

    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    v61 = v87;
    v62 = *(v86 + 8);
    v62(v83, v87);
    v62(v84, v61);
    (*(v85 + 8))(v67, v89);
    v63 = *(v82 + 8);
    v63(v66, v58);
    return (v63)(v81, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D508()
{
  v18 = sub_1000F24EC(&qword_100AD4D38);
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v17 = *(v1 + 64);
  v16 = sub_1000F24EC(&qword_100AD4D30);
  v3 = *(v16 - 8);
  v4 = (((v2 + 24) & ~v2) + v17 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_1000F24EC(&qword_100AD4D28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v15 = (v10 + v2 + v11) & ~v2;

  v12 = *(v1 + 8);
  v12(v0 + ((v2 + 24) & ~v2), v18);
  (*(v3 + 8))(v0 + v4, v16);
  v13 = *(v7 + 8);
  v13(v0 + v9, v6);
  v13(v0 + v11, v6);
  v12(v0 + v15, v18);

  return swift_deallocObject();
}

unint64_t sub_10001D788()
{
  result = qword_100AD4D50;
  if (!qword_100AD4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4D50);
  }

  return result;
}

uint64_t sub_10001D7DC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD47F0);
  sub_10000617C(v0, qword_100AD47F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001D85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C746E65636572 && a2 == 0xEF646574656C6544;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6972746E456C6C61 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F4A64656D616ELL && a2 == 0xEC0000006C616E72)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}