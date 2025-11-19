int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

id sub_10000299C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC9StocksApp11AppDelegate_mainScene] = 0;
  *&v0[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager] = 0;
  *&v0[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container] = 0;
  v2 = &v0[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___resolver];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100002AF4(uint64_t a1)
{
  v47 = a1;
  ObjectType = swift_getObjectType();
  v50 = type metadata accessor for StartupTaskExecutionPhase();
  v49 = *(v50 - 8);
  v2 = *(v49 + 64);
  __chkstk_darwin(v50);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for EventTriggerBehavior();
  v56 = *(v60 - 8);
  v57 = v60 - 8;
  v58 = v56;
  v4 = *(v56 + 64);
  __chkstk_darwin(v60 - 8);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Container.Environment();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10003EDF0;
  v51 = v1;
  sub_100003FC8();
  ContainerManager.containerEnvironment.getter();

  sub_10000402C(&qword_10004F0A8, 255, &type metadata accessor for Container.Environment);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  (*(v15 + 8))(v18, v14);
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000056B0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  type metadata accessor for Logging();
  static Settings.NewsFeedModule.Layout.enableLogDebugging.getter();
  sub_10000402C(&qword_10004EF58, v24, type metadata accessor for AppDelegate);
  Configurable.setting<A>(_:)();

  static Logging.debuggingEnabled.setter();
  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.global(qualityOfService:)();
  v64 = sub_10000604C;
  v65 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C54;
  v63 = &unk_10004AD38;
  v26 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v61[0] = &_swiftEmptyArrayStorage;
  sub_10000402C(&qword_10004F0B8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000057AC(0, &qword_10004F0C0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100005810(&qword_10004F0C8, &qword_10004F0C0, &type metadata accessor for DispatchWorkItemFlags);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v55 + 8))(v9, v6);
  (*(v53 + 8))(v13, v54);
  v27 = v51;
  sub_100005874();
  [objc_opt_self() pushHighPriorityTaskInFlight];
  type metadata accessor for Tracker();
  static Tracker.appEventManager.getter();
  sub_1000057AC(0, &qword_10004F0D0, &type metadata accessor for AppEvent, &type metadata accessor for _ContiguousArrayStorage);
  v28 = type metadata accessor for AppEvent();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10003EE00;
  v33 = v32 + v31;
  v34 = *(v29 + 104);
  v34(v33, enum case for AppEvent.stockListDidLoad(_:), v28);
  v34(v33 + v30, enum case for AppEvent.forYouFeedDidLoad(_:), v28);
  sub_100005C98(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000057AC(0, &qword_10004F0D8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for _ContiguousArrayStorage);
  v35 = *(v56 + 72);
  v36 = v58;
  v37 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10003EE10;
  static EventTriggerBehavior.onlyOnce.getter();
  static EventTriggerBehavior.eager.getter();
  static EventTriggerBehavior.all.getter();
  aBlock[0] = v38;
  sub_10000402C(&qword_10004F0E0, 255, &type metadata accessor for EventTriggerBehavior);
  sub_1000057AC(0, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for Array);
  sub_100005810(&qword_10004F0F0, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior);
  v40 = v59;
  v39 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(swift_allocObject() + 16) = v27;
  v27;
  dispatch thunk of EventManager.trigger(on:behavior:block:)();

  (*(v36 + 8))(v40, v39);
  sub_100006098(aBlock);
  sub_1000045D8(aBlock, v63);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10000461C(aBlock);
  AppSessionManager.startAppSession()();
  sub_100006098(aBlock);
  sub_1000045D8(aBlock, v63);
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_10000461C(aBlock);
  if (v47)
  {
    Dictionary<>.applicationStateLaunchOptions.getter();
  }

  v42 = v49;
  v43 = v48;
  v44 = v50;
  (*(v49 + 104))(v48, enum case for StartupTaskExecutionPhase.willFinishLaunching(_:), v50);
  StartupTaskManager.startAllTasks(launchOptions:phase:)();

  (*(v42 + 8))(v43, v44);
  sub_100006098(aBlock);
  sub_1000045D8(aBlock, v63);
  sub_1000036DC(0, &qword_10004F0F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v61[3])
  {
    sub_100006248(v61, &qword_10004F100, &qword_10004F0F8, &protocol descriptor for ComputeServiceUnloaderServiceType);
    sub_10000461C(aBlock);
    sub_10000557C(0, &qword_10004F108, UINavigationBar_ptr);
    v45 = [swift_getObjCClassFromMetadata() appearance];
    v46 = [objc_allocWithZone(UIImage) init];
    [v45 setShadowImage:v46];

    return 1;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100003670(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000036DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000036DC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003738()
{
  sub_100003670(0, &qword_10004EF60, &qword_10004EF68, &protocol descriptor for BundleAssemblyType, &type metadata accessor for _ContiguousArrayStorage);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003EDD0;
  v1 = type metadata accessor for FrameworkAssembly();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = FrameworkAssembly.init()();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_10000402C(&qword_10004EF70, 255, &type metadata accessor for FrameworkAssembly);
  *(v0 + 32) = v4;
  v5 = type metadata accessor for FrameworkAssembly();
  v6 = [objc_allocWithZone(v5) init];
  *(v0 + 96) = v5;
  *(v0 + 104) = &protocol witness table for FrameworkAssembly;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for FrameworkAssembly();
  v8 = [objc_allocWithZone(v7) init];
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_10000402C(&qword_10004EF78, 255, &type metadata accessor for FrameworkAssembly);
  *(v0 + 112) = v8;
  [objc_allocWithZone(SXSwiftFrameWorkAssembly) init];
  v9 = type metadata accessor for BridgedBundleAssembly();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = BridgedBundleAssembly.init(_:)();
  *(v0 + 176) = v9;
  *(v0 + 184) = &protocol witness table for BridgedBundleAssembly;
  *(v0 + 152) = v12;
  [objc_allocWithZone(NUSwiftApplicationFrameworkAssembly) init];
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  v15 = BridgedBundleAssembly.init(_:)();
  *(v0 + 216) = v9;
  *(v0 + 224) = &protocol witness table for BridgedBundleAssembly;
  *(v0 + 192) = v15;
  [objc_allocWithZone(SNAssembly) init];
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  swift_allocObject();
  v18 = BridgedBundleAssembly.init(_:)();
  *(v0 + 256) = v9;
  *(v0 + 264) = &protocol witness table for BridgedBundleAssembly;
  *(v0 + 232) = v18;
  v19 = type metadata accessor for Assembly();
  v20 = [objc_allocWithZone(v19) init];
  *(v0 + 296) = v19;
  *(v0 + 304) = sub_10000402C(&qword_10004EF80, 255, &type metadata accessor for Assembly);
  *(v0 + 272) = v20;
  v21 = type metadata accessor for Assembly();
  v22 = [objc_allocWithZone(v21) init];
  *(v0 + 336) = v21;
  *(v0 + 344) = sub_10000402C(&qword_10004EF88, 255, &type metadata accessor for Assembly);
  *(v0 + 312) = v22;
  v23 = type metadata accessor for Assembly();
  v24 = [objc_allocWithZone(v23) init];
  *(v0 + 376) = v23;
  *(v0 + 384) = sub_10000402C(&qword_10004EF90, 255, &type metadata accessor for Assembly);
  *(v0 + 352) = v24;
  v25 = type metadata accessor for Assembly();
  v26 = [objc_allocWithZone(v25) init];
  *(v0 + 416) = v25;
  *(v0 + 424) = sub_10000402C(&qword_10004EF98, 255, &type metadata accessor for Assembly);
  *(v0 + 392) = v26;
  v27 = type metadata accessor for Assembly();
  v28 = [objc_allocWithZone(v27) init];
  *(v0 + 456) = v27;
  *(v0 + 464) = sub_10000402C(&qword_10004EFA0, 255, &type metadata accessor for Assembly);
  *(v0 + 432) = v28;
  v29 = type metadata accessor for Assembly();
  v30 = [objc_allocWithZone(v29) init];
  *(v0 + 496) = v29;
  *(v0 + 504) = sub_10000402C(&qword_10004EFA8, 255, &type metadata accessor for Assembly);
  *(v0 + 472) = v30;
  v31 = type metadata accessor for Assembly();
  v32 = [objc_allocWithZone(v31) init];
  *(v0 + 536) = v31;
  *(v0 + 544) = sub_10000402C(&qword_10004EFB0, 255, &type metadata accessor for Assembly);
  *(v0 + 512) = v32;
  v33 = type metadata accessor for Assembly();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = Assembly.init()();
  *(v0 + 576) = v33;
  *(v0 + 584) = sub_10000402C(&qword_10004EFB8, 255, &type metadata accessor for Assembly);
  *(v0 + 552) = v36;
  v37 = type metadata accessor for Assembly();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = Assembly.init()();
  *(v0 + 616) = v37;
  *(v0 + 624) = sub_10000402C(&qword_10004EFC0, 255, &type metadata accessor for Assembly);
  *(v0 + 592) = v40;
  v41 = type metadata accessor for Assembly();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = Assembly.init()();
  *(v0 + 656) = v41;
  *(v0 + 664) = sub_10000402C(&qword_10004EFC8, 255, &type metadata accessor for Assembly);
  *(v0 + 632) = v44;
  v45 = type metadata accessor for Assembly();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = Assembly.init()();
  *(v0 + 696) = v45;
  *(v0 + 704) = sub_10000402C(&qword_10004EFD0, 255, &type metadata accessor for Assembly);
  *(v0 + 672) = v48;
  sub_100003670(0, &qword_10004EFD8, &qword_10004EFE0, &protocol descriptor for AssemblyType, &type metadata accessor for _ContiguousArrayStorage);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10003EDE0;
  v50 = type metadata accessor for ActivityAssembly();
  v51 = swift_allocObject();
  *(v49 + 56) = v50;
  *(v49 + 64) = sub_10000402C(&qword_10004EFE8, 255, type metadata accessor for ActivityAssembly);
  *(v49 + 32) = v51;
  v52 = type metadata accessor for DebugAssembly();
  v53 = swift_allocObject();
  *(v49 + 96) = v52;
  *(v49 + 104) = sub_10000402C(&qword_10004EFF0, 255, type metadata accessor for DebugAssembly);
  *(v49 + 72) = v53;
  v54 = type metadata accessor for ManagerAssembly();
  v55 = swift_allocObject();
  *(v49 + 136) = v54;
  *(v49 + 144) = sub_10000402C(&qword_10004EFF8, 255, type metadata accessor for ManagerAssembly);
  *(v49 + 112) = v55;
  v56 = type metadata accessor for SettingsAssembly();
  v57 = swift_allocObject();
  *(v49 + 176) = v56;
  *(v49 + 184) = sub_10000402C(&unk_10004F000, 255, type metadata accessor for SettingsAssembly);
  *(v49 + 152) = v57;
  v58 = type metadata accessor for SingletonPool();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  SingletonPool.init()();
  v61 = type metadata accessor for ContainerManager();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  return ContainerManager.init(singletonPool:bundleAssemblies:assemblies:)();
}

uint64_t sub_100003FC8()
{
  v1 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager;
  if (*(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager);
  }

  else
  {
    v2 = sub_100003738();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10000402C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100004104()
{
  v0 = type metadata accessor for CallbackScope();
  v16 = *(v0 - 8);
  v17 = v0;
  v1 = *(v16 + 64);
  __chkstk_darwin(v0);
  v15 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Scope();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_100004488(0, &qword_10004F6D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  v8 = enum case for Scope.singleton(_:);
  v9 = v4[13];
  v9(v7, enum case for Scope.singleton(_:), v3);
  Definition.inScope(_:)();

  v10 = v4[1];
  v10(v7, v3);
  ProxyContainer.public.getter();
  sub_100004488(0, &qword_10004F6E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  v9(v7, v8, v3);
  Definition.inScope(_:)();

  v10(v7, v3);
  ProxyContainer.private.getter();
  type metadata accessor for AppIntentsDependencyStartupTask();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.callback.getter();
  sub_1000045D8(v18, v18[3]);
  type metadata accessor for StartupTaskManager();
  v12 = v15;
  v11 = v16;
  v13 = v17;
  (*(v16 + 104))(v15, enum case for CallbackScope.any(_:), v17);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  (*(v11 + 8))(v12, v13);
  return sub_10000461C(v18);
}

uint64_t sub_100004488(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for AppIntentsDependencyStartupTask()
{
  result = qword_10004F3A8;
  if (!qword_10004F3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004530()
{
  result = type metadata accessor for StartupTaskExecutionPhase();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1000045D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000461C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004668()
{
  v1 = type metadata accessor for CallbackScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  ProxyContainer.callback.getter();
  sub_1000045D8(v9, v9[3]);
  type metadata accessor for DebugDataSource();
  (*(v2 + 104))(v5, enum case for CallbackScope.any(_:), v1);

  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();

  (*(v2 + 8))(v5, v1);
  return sub_10000461C(v9);
}

uint64_t sub_1000047D8(uint64_t a1)
{
  v42 = a1;
  v1 = type metadata accessor for Container.TestSuite();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v39 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Scope();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v34 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CallbackScope();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.callback.getter();
  sub_1000045D8(v44, v45);
  sub_1000036DC(0, &qword_10004F9A8);
  v12 = enum case for CallbackScope.any(_:);
  v36 = v8[13];
  LODWORD(v35) = enum case for CallbackScope.any(_:);
  v36(v11, enum case for CallbackScope.any(_:), v7);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v13 = v8[1];
  v43 = (v8 + 1);
  v13(v11, v7);
  sub_10000461C(v44);
  ProxyContainer.callback.getter();
  sub_1000045D8(v44, v45);
  sub_1000036DC(0, &qword_10004F9B0);
  v14 = v12;
  v15 = v36;
  v36(v11, v14, v7);
  v33[2] = v8 + 13;
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v13(v11, v7);
  sub_10000461C(v44);
  ProxyContainer.callback.getter();
  v33[1] = v46;
  sub_1000045D8(v44, v45);
  sub_1000036DC(0, &qword_10004F9B8);
  v16 = v35;
  v15(v11, v35, v7);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v13(v11, v7);
  sub_10000461C(v44);
  ProxyContainer.callback.getter();
  sub_1000045D8(v44, v45);
  sub_1000052EC(0, &qword_10004F9C0, &protocolRef_TSAppMonitorType);
  v15(v11, v16, v7);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v13(v11, v7);
  sub_10000461C(v44);
  ProxyContainer.public.getter();
  sub_1000036DC(0, &qword_10004F9C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_1000036DC(0, &qword_10004F9D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  v17 = enum case for Scope.containerSingleton(_:);
  v19 = v37;
  v18 = v38;
  v20 = (v37 + 104);
  v21 = *(v37 + 104);
  v22 = v34;
  v21(v34, enum case for Scope.containerSingleton(_:), v38);
  Definition.inScope(_:)();

  v43 = *(v19 + 8);
  v43(v22, v18);
  ProxyContainer.public.getter();
  type metadata accessor for Database.CacheSize();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_1000052EC(0, &qword_10004F9D8, &protocolRef_TUStateRestoreControllerType);
  RegistrationContainer.register<A>(_:name:factory:)();

  v21(v22, v17, v18);
  Definition.inScope(_:)();

  v23 = v43;
  v43(v22, v18);
  ProxyContainer.public.getter();
  type metadata accessor for SceneStateManagerBridge();
  RegistrationContainer.register<A>(_:name:factory:)();

  v24 = enum case for Scope.singleton(_:);
  v21(v22, enum case for Scope.singleton(_:), v18);
  v35 = v21;
  v36 = v20;
  Definition.inScope(_:)();

  v23(v22, v18);
  ProxyContainer.public.getter();
  type metadata accessor for PrivateDataPollingManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  v21(v22, v24, v18);
  Definition.inScope(_:)();

  v23(v22, v18);
  ProxyContainer.public.getter();
  sub_1000036DC(0, &unk_10004F020);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  type metadata accessor for AppActivationURLHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  sub_1000036DC(0, &qword_10004F9E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  v26 = v39;
  v25 = v40;
  v27 = v41;
  (*(v40 + 104))(v39, enum case for Container.TestSuite.performance(_:), v41);
  Definition.whenTesting(_:_:)();

  (*(v25 + 8))(v26, v27);
  v28 = v18;
  v29 = v18;
  v30 = v35;
  v35(v22, v24, v29);
  Definition.inScope(_:)();

  v31 = v43;
  v43(v22, v28);
  ProxyContainer.private.getter();
  type metadata accessor for WidgetContentInvalidationManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  v30(v22, v24, v28);
  Definition.inScope(_:)();

  v31(v22, v28);
  ProxyContainer.private.getter();
  type metadata accessor for StocksTodayAgent();
  RegistrationContainer.register<A>(_:name:factory:)();

  v30(v22, v24, v28);
  Definition.inScope(_:)();

  v31(v22, v28);
  ProxyContainer.private.getter();
  sub_10000557C(0, &qword_10004F9F0, FCFileCoordinatedTodayDropbox_ptr);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1000052EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for WidgetContentInvalidationManager()
{
  result = qword_10004FBF0;
  if (!qword_10004FBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000053BC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for StocksTodayAgent()
{
  result = qword_1000506B8;
  if (!qword_1000506B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000054B8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000557C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000055C4()
{
  ProxyContainer.public.getter();
  sub_100005650(0, &qword_100050468, &type metadata accessor for Array);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void sub_100005650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Group();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000056B0()
{
  result = qword_100050030;
  if (!qword_100050030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050030);
  }

  return result;
}

uint64_t sub_100005704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:)(a1, a2, ObjectType, a6);
}

uint64_t sub_10000576C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000577C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000578C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000579C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000057AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100005810(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000057AC(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100005874()
{
  swift_getObjectType();
  type metadata accessor for Capabilities();
  if (static Capabilities.isInternalBuild()())
  {
    if (qword_10004EA68 != -1)
    {
      swift_once();
    }

    sub_10000402C(&qword_10004EF58, v0, type metadata accessor for AppDelegate);
    Configurable.setting<A>(_:)();
    if (LOBYTE(v4[0]) == 1)
    {
      LOBYTE(v4[0]) = 0;
      sub_10000402C(&qword_10004F128, v1, type metadata accessor for AppDelegate);
      Updatable.save<A>(setting:value:)();
      sub_100006098(v4);
      sub_1000045D8(v4, v4[3]);
      type metadata accessor for DebugCacheRegistry();
      if (dispatch thunk of ResolverType.resolve<A>(_:)())
      {
        DebugCacheRegistry.clearCache()();

        sub_10000461C(v4);
        v2 = [objc_opt_self() defaultCenter];
        v3 = static NSNotificationName.stocksDidClearSharedCache.getter();
        [v2 postNotificationName:v3 object:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100005A48()
{
  v0 = type metadata accessor for Access();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(*(type metadata accessor for Domain() - 8) + 64);
  __chkstk_darwin();
  (*(v7 + 104))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for Domain.standard(_:));
  (*(v1 + 104))(v4, enum case for Access.public(_:), v0);
  v12[15] = 0;
  sub_100005BFC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  static Settings.Debug.clearCacheOnNextLaunch = result;
  return result;
}

void sub_100005BFC()
{
  if (!qword_10004F518[0])
  {
    v0 = type metadata accessor for Setting();
    if (!v1)
    {
      atomic_store(v0, qword_10004F518);
    }
  }
}

uint64_t sub_100005C54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_100005C98(uint64_t a1)
{
  v2 = type metadata accessor for AppEvent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100005FB4();
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10000402C(&qword_10004F118, 255, &type metadata accessor for AppEvent);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10000402C(&qword_10004F120, 255, &type metadata accessor for AppEvent);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100005FB4()
{
  if (!qword_10004F110)
  {
    type metadata accessor for AppEvent();
    sub_10000402C(&qword_10004F118, 255, &type metadata accessor for AppEvent);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F110);
    }
  }
}

uint64_t sub_10000604C()
{
  static Account.storefrontID.getter();
}

uint64_t sub_100006098@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___resolver;
  swift_beginAccess();
  sub_1000061B8(v1 + v3, &v5);
  if (v6)
  {
    return sub_1000061A0(&v5, a1);
  }

  sub_100006248(&v5, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  sub_100006328();
  Container.resolver.getter();

  sub_100006580(a1, &v5);
  swift_beginAccess();
  sub_100006478(&v5, v1 + v3, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  return swift_endAccess();
}

uint64_t sub_1000061A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000061B8(uint64_t a1, uint64_t a2)
{
  sub_100003670(0, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006248(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_100003670(0, a2, a3, a4, &type metadata accessor for Optional);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1000062B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_10000B348(0, a2, a3, a4, &type metadata accessor for Optional);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_100006328()
{
  v1 = type metadata accessor for ContainerScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container;
  if (*(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container))
  {
    v7 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container);
  }

  else
  {
    v8 = v0;
    sub_100003FC8();
    (*(v2 + 104))(v5, enum case for ContainerScope.application(_:), v1);
    v7 = ContainerManager.container(for:)();

    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100006478(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_100003670(0, a3, a4, a5, &type metadata accessor for Optional);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t sub_1000064FC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_10000B348(0, a3, a4, a5, &type metadata accessor for Optional);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t sub_100006580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000065E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SceneProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = SceneProvider.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for SceneProvider;
  *a1 = result;
  return result;
}

uint64_t sub_10000663C(void *a1, void *a2)
{
  v3 = a1[4];
  sub_1000045D8(a1, a1[3]);
  v4 = a2[4];
  sub_1000045D8(a2, a2[3]);
  sub_1000036DC(0, &qword_10004F9E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v6 = *(v9 + 8);
    dispatch thunk of WatchlistManagerType.addObserver(_:)();
    swift_unknownObjectRelease();
    v7 = a2[4];
    sub_1000045D8(a2, a2[3]);
    type metadata accessor for WidgetContentInvalidationManager();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      sub_100006820(&qword_10004FB98, type metadata accessor for WidgetContentInvalidationManager);
      dispatch thunk of WatchlistManagerType.addObserver(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000678C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StubGizmoSyncManager();
  v2 = swift_allocObject();
  result = sub_100006820(&qword_10004FAC8, type metadata accessor for StubGizmoSyncManager);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_100006820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006868(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000068B0(uint64_t a1, uint64_t a2)
{
  result = sub_100006868(&qword_100050300, a2, type metadata accessor for StubGizmoSyncManager);
  *(a1 + 8) = result;
  return result;
}

void *sub_100006908(void *a1)
{
  v2 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_100006A3C();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004F9A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = a1[4];
  sub_1000045D8(a1, a1[3]);
  type metadata accessor for StocksTodayAgent();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_didWriteTodayDataSubject);

    v9 = type metadata accessor for WidgetContentInvalidationManager();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    return sub_1000071EC(v4, v12, v8);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100006A3C()
{
  if (!qword_10004FA10)
  {
    type metadata accessor for AppEvent();
    sub_100006820(&qword_10004F118, &type metadata accessor for AppEvent);
    v0 = type metadata accessor for EventManager();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA10);
    }
  }
}

uint64_t sub_100006AD0(uint64_t a1)
{
  type metadata accessor for MainActor();
  v3[2] = a1;
  return sub_100006B44(sub_100006EE4, v3, "StocksApp/ManagerAssembly.swift", 31);
}

uint64_t sub_100006B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_100006D0C(v15);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v12._object = 0x800000010003CC00;
  v12._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100006D0C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_100006D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &unk_10004F9F8, FCPurchaseController_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000052EC(0, &qword_10004F490, &protocolRef_FCBundleSubscriptionManagerType);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  v9 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &qword_10004FA08, FCSubscriptionController_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v11 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &qword_10004F9F0, FCFileCoordinatedTodayDropbox_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v12 = result;
    v13 = objc_allocWithZone(type metadata accessor for StocksTodayAgent());
    result = sub_100006F00(v6, v8, v10, v12);
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_100006F00(void *a1, void *a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_didWriteTodayDataSubject;
  sub_100007184(0, &qword_10004FA28, &type metadata for () + 8, &type metadata accessor for PassthroughSubject);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v4[v10] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler] = 0;
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_purchaseController] = a1;
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_bundleSubscriptionManager] = a2;
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_dropbox] = a4;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v14 = a1;
  swift_unknownObjectRetain();
  v15 = a4;
  v16 = objc_msgSendSuper2(&v29, "init");
  v17 = objc_allocWithZone(FCBoostableOperationThrottler);
  v18 = v16;
  v19 = [v17 initWithDelegate:{v18, v29.receiver, v29.super_class}];
  v20 = OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler;
  v21 = *&v18[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler];
  *&v18[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler] = v19;

  v22 = [objc_opt_self() defaultCenter];
  [v22 addObserver:v18 selector:"markPurchaseDirty" name:FCPurchaseListChangedNotificationName object:0];

  result = [a2 addObserver:v18];
  v24 = *&v18[v20];
  if (v24)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 sharedApplication];
    v28 = [v27 applicationState];

    [v26 setSuspended:v28 == 0];
    swift_unknownObjectRelease();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100007184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void *, void *))
{
  if (!*a2)
  {
    v5 = a4(0, a3, &type metadata for Never, &protocol witness table for Never);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1000071EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v81 = a3;
  v104 = a1;
  v89 = *v4;
  v103 = type metadata accessor for EventTriggerBehavior();
  v99 = *(v103 - 8);
  v100 = v103 - 8;
  v101 = v99;
  v7 = *(v99 + 64);
  __chkstk_darwin(v103 - 8);
  v102 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppEvent();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  __chkstk_darwin(v9);
  v96 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsEnvironment();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  __chkstk_darwin(v12);
  v93 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NewsProvider();
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = *(v91 + 64);
  __chkstk_darwin(v15);
  v88 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FeatureState();
  v86 = *(v87 - 8);
  v18 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F0();
  v83 = v20;
  v84 = *(v20 - 8);
  v21 = *(v84 + 64);
  __chkstk_darwin(v20);
  v82 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008398(0, &qword_10004FA48, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v77 = &v70 - v25;
  sub_1000084F8();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000858C();
  v73 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008638();
  v75 = v37;
  v76 = *(v37 - 8);
  v38 = v76[8];
  __chkstk_darwin(v37);
  v40 = &v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000086CC();
  v79 = v41;
  v80 = *(v41 - 8);
  v42 = *(v80 + 64);
  __chkstk_darwin(v41);
  v74 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a3;
  static Logger.widgetRefresh.getter();
  *(v4 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_hasCompletedColdLaunch) = 0;
  *(v4 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation) = 2;
  v78 = OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_cancellables;
  *(v4 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_cancellables) = &_swiftEmptySetSingleton;
  v90 = a2;
  v44 = a2[4];
  sub_1000045D8(a2, a2[3]);
  WatchlistManagerType.activeWatchlistChanges.getter();
  swift_getKeyPath();
  sub_100006820(&qword_10004FA80, sub_1000084F8);
  Publisher.map<A>(_:)();

  (*(v28 + 8))(v31, v27);
  sub_100006820(&qword_10004FA90, sub_10000858C);
  sub_100006820(&qword_10004FAA8, &type metadata accessor for PriceChangeDisplay);
  v45 = v73;
  Publisher<>.removeDuplicates()();
  (*(v33 + 8))(v36, v45);
  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v46 = static OS_dispatch_queue.main.getter();
  v105 = v46;
  v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v48 = *(v47 - 8);
  v71 = *(v48 + 56);
  v72 = v48 + 56;
  v49 = v77;
  v71(v77, 1, 1, v47);
  sub_100006820(&qword_10004FAA0, sub_100008638);
  v73 = sub_100008354(&qword_10004FA40, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v50 = v74;
  v51 = v75;
  Publisher.receive<A>(on:options:)();
  v52 = v49;
  sub_1000087CC(v49);
  (v76[1])(v40, v51);

  swift_allocObject();
  swift_weakInit();
  v76 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100006820(&qword_10004FAB0, sub_1000086CC);

  v53 = v79;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v50, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v54 = static OS_dispatch_queue.main.getter();
  v105 = v54;
  v71(v52, 1, 1, v47);
  sub_1000082F0();
  sub_100006820(&qword_10004FA38, sub_1000082F0);
  v55 = v82;
  Publisher.receive<A>(on:options:)();
  sub_1000087CC(v52);

  swift_allocObject();
  swift_weakInit();
  sub_100006820(&qword_10004FAB8, sub_1000081F0);
  v56 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v84 + 8))(v55, v56);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  static Settings.UserPreferences.showCurrency.getter();
  swift_allocObject();
  swift_weakInit();
  sub_100006820(&qword_10004FAC0, type metadata accessor for WidgetContentInvalidationManager);
  Configurable.setting<A>(_:_:)();

  static Settings.Features.showYahooNewsAttribution.getter();
  swift_allocObject();
  swift_weakInit();
  v57 = v85;
  Configurable.setting<A>(_:_:)();

  (*(v86 + 8))(v57, v87);
  static Settings.News.newsProvider.getter();
  swift_allocObject();
  swift_weakInit();
  v58 = v88;
  Configurable.setting<A>(_:_:)();

  (*(v91 + 8))(v58, v92);
  static Settings.News.appleNewsEnvironment.getter();
  swift_allocObject();
  swift_weakInit();
  v59 = v93;
  Configurable.setting<A>(_:_:)();

  (*(v94 + 8))(v59, v95);
  v61 = v96;
  v60 = v97;
  v62 = v98;
  (*(v97 + 104))(v96, enum case for AppEvent.stockListDidLoad(_:), v98);
  sub_100008398(0, &qword_10004F0D8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for _ContiguousArrayStorage);
  v63 = *(v99 + 72);
  v64 = v101;
  v65 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10003EE00;
  static EventTriggerBehavior.eager.getter();
  static EventTriggerBehavior.onlyOnce.getter();
  v105 = v66;
  sub_100006820(&qword_10004F0E0, &type metadata accessor for EventTriggerBehavior);
  sub_100008398(0, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for Array);
  sub_1000088E8();
  v68 = v102;
  v67 = v103;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of EventManager.trigger(on:behavior:block:)();

  (*(v64 + 8))(v68, v67);
  (*(v60 + 8))(v61, v62);

  sub_10000461C(v90);
  return v4;
}

uint64_t sub_1000081B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000081F0()
{
  if (!qword_10004FA20)
  {
    sub_1000082F0();
    sub_10000557C(255, &qword_10004F0B0, OS_dispatch_queue_ptr);
    sub_100006820(&qword_10004FA38, sub_1000082F0);
    sub_100008354(&qword_10004FA40, &qword_10004F0B0, OS_dispatch_queue_ptr);
    v0 = type metadata accessor for Publishers.ReceiveOn();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA20);
    }
  }
}

void sub_1000082F0()
{
  if (!qword_10004FA28)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA28);
    }
  }
}

uint64_t sub_100008354(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000557C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100008398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000083FC()
{
  if (!qword_10004FA58)
  {
    sub_100008490();
    sub_100006820(&qword_10004FA68, sub_100008490);
    v0 = type metadata accessor for Publishers.Drop();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA58);
    }
  }
}

void sub_100008490()
{
  if (!qword_10004FA60)
  {
    type metadata accessor for Watchlist();
    v0 = type metadata accessor for CurrentValueSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA60);
    }
  }
}

void sub_1000084F8()
{
  if (!qword_10004FA50)
  {
    sub_1000083FC();
    sub_100006820(&qword_10004FA70, sub_1000083FC);
    v0 = type metadata accessor for Publishers.RemoveDuplicates();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA50);
    }
  }
}

void sub_10000858C()
{
  if (!qword_10004FA78)
  {
    sub_1000084F8();
    type metadata accessor for PriceChangeDisplay();
    sub_100006820(&qword_10004FA80, sub_1000084F8);
    v0 = type metadata accessor for Publishers.MapKeyPath();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA78);
    }
  }
}

void sub_100008638()
{
  if (!qword_10004FA88)
  {
    sub_10000858C();
    sub_100006820(&qword_10004FA90, sub_10000858C);
    v0 = type metadata accessor for Publishers.RemoveDuplicates();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA88);
    }
  }
}

void sub_1000086CC()
{
  if (!qword_10004FA98)
  {
    sub_100008638();
    sub_10000557C(255, &qword_10004F0B0, OS_dispatch_queue_ptr);
    sub_100006820(&qword_10004FAA0, sub_100008638);
    sub_100008354(&qword_10004FA40, &qword_10004F0B0, OS_dispatch_queue_ptr);
    v0 = type metadata accessor for Publishers.ReceiveOn();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA98);
    }
  }
}

uint64_t sub_1000087CC(uint64_t a1)
{
  sub_100008398(0, &qword_10004FA48, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000088E8()
{
  result = qword_10004F0F0;
  if (!qword_10004F0F0)
  {
    sub_100008398(255, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F0F0);
  }

  return result;
}

uint64_t sub_100008970@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppIntentExecutionTypeProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_100006820(&qword_10004FB68, type metadata accessor for AppIntentExecutionTypeProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100008A18(void *a1, void *a2)
{
  v3 = a1[4];
  sub_1000045D8(a1, a1[3]);
  v4 = a2[4];
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for WidgetContentInvalidationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_100006820(&qword_10004FB90, type metadata accessor for WidgetContentInvalidationManager);
    dispatch thunk of StockPriceDataManagerType.addWidgetObserver(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008AF0(void *a1)
{
  v1 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000052EC(0, &qword_10004FAF8, &protocolRef_FCAppActivityReceiver);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = type metadata accessor for SceneStateManagerBridge();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return SceneStateManagerBridge.init(activityReceiver:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008B78(void *a1, void *a2)
{
  v3 = a1[4];
  sub_1000045D8(a1, a1[3]);
  v4 = a2[4];
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for PrivateDataPollingManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_100006820(&qword_10004FB78, type metadata accessor for PrivateDataPollingManager);
  dispatch thunk of SceneStateManagerType.add(monitor:)();

  sub_10000461C(v9);
  v6 = a2[4];
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for WidgetContentInvalidationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100006820(&qword_10004FB80, type metadata accessor for WidgetContentInvalidationManager);
  dispatch thunk of SceneStateManagerType.add(monitor:)();

  sub_10000461C(v9);
  v7 = a2[4];
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for StocksTodayAgent();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v8 = result;
    sub_100006820(&qword_10004FB88, type metadata accessor for StocksTodayAgent);
    dispatch thunk of SceneStateManagerType.add(monitor:)();

    return sub_10000461C(v9);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100008D8C(void *a1)
{
  v1 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004FAF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    type metadata accessor for PrivateDataPollingManager();
    v3 = swift_allocObject();
    sub_1000061A0(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008E2C(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_1000045D8(a2, a2[3]);
  v3 = type metadata accessor for AppIntentsDependencyStartupTask();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    v6[3] = v3;
    v6[4] = sub_100008FD8(&qword_10004F6E8, type metadata accessor for AppIntentsDependencyStartupTask);
    v6[0] = v5;
    StartupTaskManager.onStartup(run:)();
    return sub_10000461C(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008EF4(uint64_t a1)
{
  type metadata accessor for AppDependencyManager();
  v2 = static AppDependencyManager.shared.getter();
  sub_100006580(a1, v11);
  v3 = type metadata accessor for AppIntentsDependencyStartupTask();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_executionPhase;
  v8 = enum case for StartupTaskExecutionPhase.didFinishLaunching(_:);
  v9 = type metadata accessor for StartupTaskExecutionPhase();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *(v6 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_appDependencyManager) = v2;
  sub_100008FD4(v11, v6 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver);
  return v6;
}

uint64_t sub_100008FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009020@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_executionPhase;
  v5 = type metadata accessor for StartupTaskExecutionPhase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10000916C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for StartupTaskExecutionPhase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10003EDF0;
  v12 = [a1 applicationState];
  if (!v12)
  {
    v13 = 0xE600000000000000;
    v14 = 0x657669746361;
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v13 = 0xE800000000000000;
    v14 = 0x6576697463616E69;
    goto LABEL_7;
  }

  if (v12 == 2)
  {
    v13 = 0xEA0000000000646ELL;
    v14 = 0x756F72676B636162;
LABEL_7:
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000056B0();
    *(v11 + 32) = v14;
    *(v11 + 40) = v13;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100006098(v29);
    sub_1000045D8(v29, v30);
    type metadata accessor for StartupTaskManager();
    if (dispatch thunk of ResolverType.resolve<A>(_:)())
    {
      sub_10000461C(v29);
      if (a2)
      {
        Dictionary<>.applicationStateLaunchOptions.getter();
      }

      (*(v7 + 104))(v10, enum case for StartupTaskExecutionPhase.didFinishLaunching(_:), v6);
      StartupTaskManager.startAllTasks(launchOptions:phase:)();

      (*(v7 + 8))(v10, v6);
      sub_100006098(v29);
      sub_1000045D8(v29, v30);
      type metadata accessor for RemoteNotificationManager();
      if (dispatch thunk of ResolverType.resolve<A>(_:)())
      {
        sub_10000461C(v29);
        *(swift_allocObject() + 16) = a1;
        v16 = a1;
        RemoteNotificationManager.whenActive(block:)();

        sub_100006098(&v27);
        sub_1000045D8(&v27, v28);
        sub_1000036DC(0, &qword_10004F088);
        dispatch thunk of ResolverType.resolve<A>(_:)();
        if (v26)
        {
          sub_1000061A0(&v25, v29);
          sub_10000461C(&v27);
          sub_1000045D8(v29, v30);
          if (a2)
          {
            Dictionary<>.applicationStateLaunchOptions.getter();
          }

          dispatch thunk of ApplicationStateManagerType.applicationDidFinishLaunching(withOptions:)();

          sub_100006098(&v27);
          sub_1000045D8(&v27, v28);
          sub_10000A270();
          v17 = dispatch thunk of ResolverType.resolve<A>(_:)();
          if (v17)
          {
            v18 = v17;
            sub_10000461C(&v27);
            [v18 prepareForUseWithApplicationDelegate:v3];
            v19 = [objc_opt_self() sharedApplication];
            type metadata accessor for Application();
            v20 = swift_dynamicCastClass();
            if (!v20)
            {
              swift_unknownObjectRelease();

              goto LABEL_19;
            }

            sub_100006098(&v25);
            sub_1000045D8(&v25, v26);
            sub_1000036DC(0, &qword_10004FE20);
            dispatch thunk of ResolverType.resolve<A>(_:)();
            if (v24)
            {
              swift_unknownObjectRelease();

              sub_1000061A0(&v23, &v27);
              sub_10000461C(&v25);
              sub_1000061A0(&v27, &v25);
              v21 = OBJC_IVAR____TtC9StocksApp11Application_keyboardInputMonitor;
              swift_beginAccess();
              sub_100006478(&v25, v20 + v21, &qword_10004F0A0, &qword_10004FE20, &protocol descriptor for KeyboardInputMonitorType);
              swift_endAccess();
LABEL_19:

              sub_10000461C(v29);
              return v20 != 0;
            }

            goto LABEL_24;
          }

LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100009760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009798()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_appDependencyManager);

  AppDependencyManager.addStocksDependencies(using:)();

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1000036DC(0, &qword_10004F440);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1000036DC(0, &qword_10004F450);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1000036DC(0, &qword_10004F458);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1000036DC(0, &qword_10004F460);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1000036DC(0, &qword_10004F468);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_100009EE8(0, &unk_10004F470, &type metadata accessor for AnyNavigator);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1000036DC(0, &qword_10004F480);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  type metadata accessor for Tracker();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  AnyHashable.init<A>(_:)();
  sub_1000036DC(0, &qword_10004F488);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v10);
  v3 = *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 32);
  sub_1000045D8((v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_100009FCC();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    *(swift_allocObject() + 16) = v5;
    swift_unknownObjectRetain();
    AppDependencyManager.add<A>(key:dependency:)();

    sub_100009E18(&v10);
    sub_100009E98(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = Promise.init(value:)();
    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100009DBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009E18(uint64_t a1)
{
  sub_100009E98(0, &qword_10004F448, &type metadata for AnyHashable, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100009EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksActivity();
    v7 = sub_100009F84(&unk_100050090, &type metadata accessor for StocksActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100009F84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100009FCC()
{
  result = qword_10004F490;
  if (!qword_10004F490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F490);
  }

  return result;
}

uint64_t sub_10000A088@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = swift_allocObject();
  a4[3] = v7;
  result = sub_100008FD8(a2, a3);
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_10000A124(uint64_t a1, void *a2)
{
  type metadata accessor for AppMonitor();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = a2[4];
    sub_1000045D8(a2, a2[3]);
    sub_1000036DC(0, &qword_10004F9B8);
    swift_unknownObjectRetain();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      sub_1000061A0(&v5, v7);
      sub_1000045D8(v7, v7[3]);
      sub_100006820(&qword_10004FB70, &type metadata accessor for AppMonitor);
      swift_unknownObjectRetain();
      dispatch thunk of SceneStateManagerType.add(monitor:)();
      swift_unknownObjectRelease_n();
      sub_10000461C(&v5);
      return sub_10000461C(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10000A270()
{
  result = qword_10004F090;
  if (!qword_10004F090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F090);
  }

  return result;
}

uint64_t type metadata accessor for SceneDelegate()
{
  result = qword_10004FEE0;
  if (!qword_10004FEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A320()
{
  sub_10000A458(319, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_10000A458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000A4BC()
{
  if (!qword_10004FF80[0])
  {
    type metadata accessor for URL();
    sub_10000A554(255, &qword_1000503B0, &type metadata for String, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_10004FF80);
    }
  }
}

void sub_10000A554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_10000A5A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[qword_10004FE30] = 0;
  v3 = &v0[qword_10004FE38];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v0[qword_10004FE40] = 0;
  *&v0[qword_10004FE48] = 0;
  *&v0[qword_10004FE50] = 0;
  *&v0[qword_10004FE58] = 0;
  v4 = &v0[qword_10004FE60];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v0[qword_10004FE68] = 0;
  v5 = &v0[qword_10004FE70];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v0[qword_10004FE78] = 0;
  *&v0[qword_10004FE80] = 0;
  *&v0[qword_10004FE88] = 0;
  v6 = &v0[qword_10004FE90];
  *v6 = 0;
  v6[1] = 0;
  v7 = qword_10004FE98;
  sub_10000A4BC();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = qword_10004FEA0;
  v20 = 0;
  sub_10000A818();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = StateMachine.init(state:)();
  v1[qword_10004FEA8] = 0;
  v13 = &v1[qword_10004FEB0];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v1[qword_10004FEB8];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v1[qword_10004FEC0];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[qword_10004FEC8];
  *v16 = 0;
  v16[1] = 0;
  *&v1[qword_10004FED0] = 0;
  v17 = qword_10004FED8;
  *&v1[v17] = sub_10000A87C(&_swiftEmptyArrayStorage);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

unint64_t sub_10000A7C4()
{
  result = qword_100050058;
  if (!qword_100050058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050058);
  }

  return result;
}

void sub_10000A818()
{
  if (!qword_100050050)
  {
    sub_10000A7C4();
    v0 = type metadata accessor for StateMachine();
    if (!v1)
    {
      atomic_store(v0, &qword_100050050);
    }
  }
}

unint64_t sub_10000A87C(uint64_t a1)
{
  sub_10000AA40();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100024E08();
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_10002B7C4(v11, v7, sub_10000AA40);
      v13 = *v7;
      v14 = v7[1];
      result = sub_100029810(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      sub_10000A4BC();
      result = sub_100024738(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void sub_10000AA40()
{
  if (!qword_1000503A0)
  {
    sub_10000A4BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000503A0);
    }
  }
}

void sub_10000AAA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_10000AB40(v8, v9, v10);
}

void sub_10000AB40(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for SceneConnectionOptions();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  if (v13)
  {
    v80 = v9;
    v81 = v8;
    v79 = v14;
    v15 = swift_allocObject();
    v76 = xmmword_10003EDF0;
    *(v15 + 16) = xmmword_10003EDF0;
    v78 = a1;
    v16 = [a2 persistentIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 56) = &type metadata for String;
    v77 = sub_1000056B0();
    *(v15 + 64) = v77;
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v20 = sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v21 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v22 = [a2 persistentIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = &v4[qword_10004FE90];
    v27 = *&v4[qword_10004FE90 + 8];
    *v26 = v23;
    v26[1] = v25;

    v28 = [objc_opt_self() sharedApplication];
    LODWORD(v23) = [v28 isRunningPerformanceTest];

    if (v23)
    {
      sub_10000B3B4(v83);
      sub_1000045D8(v83, v84);
      sub_10000557C(0, &qword_10004F038, SNTestRunner_ptr);
      v29 = dispatch thunk of ResolverType.resolve<A>(_:)();
      if (!v29)
      {
        goto LABEL_18;
      }

      v30 = v29;
      [v29 runExtendedLaunchTest];

      sub_10000461C(v83);
    }

    v75 = v20;
    v73 = v13;
    v31 = *&v4[qword_10004FE80];
    *&v4[qword_10004FE80] = a3;

    v32 = *&v4[qword_10004FE88];
    *&v4[qword_10004FE88] = a2;
    v74 = a3;
    v33 = a3;

    v34 = a2;
    sub_10000B720(v83);
    sub_1000045D8(v83, v84);
    UISceneConnectionOptions.connectionOptions.getter();
    dispatch thunk of SceneStateManagerType.sceneWillConnectToSession(withOptions:)();
    (*(v80 + 8))(v12, v81);
    sub_10000461C(v83);
    v35 = sub_10000BA84(a2);
    if (!v35)
    {
LABEL_8:
      v38 = v78;
      v39 = [v78 activationState];
      if (v39 < 2)
      {
        v40 = swift_allocObject();
        *(v40 + 16) = v76;
        v41 = [v34 persistentIdentifier];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v77;
        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = v45;
        *(v40 + 32) = v42;
        *(v40 + 40) = v44;
        v46 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_10000D728(v73, v74);
LABEL_16:
        __chkstk_darwin(v47);
        firstly<A>(closure:)();
        v67 = swift_allocObject();
        v67[2] = v33;
        v67[3] = v4;
        v67[4] = v38;
        v68 = v38;
        v69 = v33;
        v70 = v4;
        v71 = zalgo.getter();
        Promise.then<A>(on:closure:)();

        return;
      }

      if (v39 == -1 || v39 == 2)
      {
        v60 = swift_allocObject();
        *(v60 + 16) = v76;
        v61 = [v34 persistentIdentifier];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = v77;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = v65;
        *(v60 + 32) = v62;
        *(v60 + 40) = v64;
        v66 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v36 = v35;
    sub_10000B3B4(v83);
    sub_1000045D8(v83, v84);
    sub_1000036DC(0, &unk_100050100);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v82)
    {
      sub_10000461C(v83);
      swift_getObjectType();
      v37 = v36;
      dispatch thunk of ScrollRestorationManagerType.userActivity.setter();

      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10003EE00;
  v49 = [a2 persistentIdentifier];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v48 + 56) = &type metadata for String;
  v53 = sub_1000056B0();
  *(v48 + 64) = v53;
  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  v54 = a1;
  v55 = [v54 description];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  *(v48 + 96) = &type metadata for String;
  *(v48 + 104) = v53;
  *(v48 + 72) = v56;
  *(v48 + 80) = v58;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v81 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v59 = v81;
}

void sub_10000B348(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000036DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10000B3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FE38;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v5, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  if (v6)
  {
    return sub_1000061A0(&v5, a1);
  }

  sub_1000062B8(&v5, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  sub_10000B558();
  Container.resolver.getter();

  sub_100006580(a1, &v5);
  swift_beginAccess();
  sub_1000064FC(&v5, v1 + v3, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  return swift_endAccess();
}

uint64_t sub_10000B4D4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_10000B348(0, a3, a4, a5, &type metadata accessor for Optional);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_10000B558()
{
  v1 = type metadata accessor for ContainerScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_10004FE30;
  if (*(v0 + qword_10004FE30))
  {
    v8 = *(v0 + qword_10004FE30);
LABEL_5:

    return;
  }

  v9 = v4;
  v10 = v0;
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 delegate];

  if (v12)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    sub_100003FC8();
    (*(v2 + 104))(v6, enum case for ContainerScope.scene(_:), v9);
    v13 = ContainerManager.container(for:)();
    swift_unknownObjectRelease();

    (*(v2 + 8))(v6, v9);
    v14 = *(v10 + v7);
    *(v10 + v7) = v13;

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_10000B720@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FEB8;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v7, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  if (v8)
  {
    return sub_1000061A0(&v7, a1);
  }

  sub_1000062B8(&v7, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  sub_10000B3B4(&v7);
  sub_1000045D8(&v7, v8);
  sub_1000036DC(0, &qword_10004F9B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_1000061A0(&v5, a1);
    sub_10000461C(&v7);
    sub_100006580(a1, &v7);
    swift_beginAccess();
    sub_1000064FC(&v7, v1 + v3, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B8C0(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return SceneStateMonitor.sceneWillConnectToSession(withOptions:)(a1, ObjectType);
}

uint64_t sub_10000B910@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FE70;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v7, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);
  if (v8)
  {
    return sub_1000061A0(&v7, a1);
  }

  sub_1000062B8(&v7, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);
  sub_10000B3B4(&v7);
  sub_1000045D8(&v7, v8);
  sub_1000036DC(0, &qword_1000500F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_1000061A0(&v5, a1);
    sub_10000461C(&v7);
    sub_100006580(a1, &v7);
    swift_beginAccess();
    sub_1000064FC(&v7, v1 + v3, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000BA84(void *a1)
{
  v2 = v1;
  sub_10000B910(&v13);
  sub_1000045D8(&v13, v14);
  v4 = dispatch thunk of WelcomeFlowProviderType.shouldShowWelcome()();
  sub_10000461C(&v13);
  if (v4)
  {
    return 0;
  }

  v5 = [sub_100020850() isStateRestorationFeatureEnabled];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  if (![*(v2 + qword_10004FE58) isStateRestorationAllowed] || a1 == 0)
  {
    return 0;
  }

  v7 = a1;
  v8 = [v7 stateRestorationActivity];
  v9 = v8;
  sub_10002090C(&v13);
  sub_1000254D4(&v13, v14);
  dispatch thunk of StateRestorationActivityProvider.stateRestorationActivity.setter();

  sub_1000061A0(&v13, v12);
  v10 = qword_10004FE60;
  swift_beginAccess();
  sub_1000064FC(v12, v2 + v10, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  swift_endAccess();
  return v8;
}

uint64_t sub_10000BBFC(void *a1)
{
  v2 = v1;
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = *&v1[qword_10004FE88];
  v12 = v11;
  v13 = sub_10000BA84(v11);

  if (v13)
  {
    sub_100020790(&qword_10004FE48, &type metadata accessor for StocksV2UserActivityDeserializer);
    StocksV2UserActivityDeserializer.deserialize(userActivity:)();

    v14 = CACurrentMediaTime();
    v15 = *&v2[qword_10004FEA0];
    v53 = 1;
    sub_100025148();
    v49 = v5;
    v17 = v16;
    v18 = *(v16 + 48);
    v19 = *(v16 + 52);
    swift_allocObject();
    StateMachineTransition.init(state:)();
    v20 = swift_allocObject();
    *(v20 + 16) = v13;
    *(v20 + 24) = a1;
    v50 = v13;
    v21 = a1;
    StateMachineTransition.didEnter(block:)();

    StateMachine.add(transition:)();

    v52 = 1;
    v22 = *(v17 + 48);
    v23 = *(v17 + 52);
    v24 = v10;
    swift_allocObject();
    StateMachineTransition.init(state:)();
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    *(v25 + 24) = v21;
    v26 = v21;
    StateMachineTransition.willExit(block:)();

    StateMachine.add(transition:)();

    sub_100020790(&qword_10004FE50, sub_10001C090);
    sub_100025240(v10, v8, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);
    v27 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v28 = swift_allocObject();
    sub_1000252B4(v8, v28 + v27);
    *(v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v29 = v2;
    dispatch thunk of StackNavigator.onNavigationStart(closure:)();

    v51 = 0;
    v30 = StateMachine.fire(event:)();
    __chkstk_darwin(v30);
    *(&v49 - 2) = v29;
    sub_10000A554(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    Promise.init(resolver:)();
    v34 = swift_allocObject();
    v35 = v50;
    *(v34 + 16) = v29;
    *(v34 + 24) = v35;
    v36 = v35;
    v37 = v29;
    v38 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    firstly<A>(closure:)();
    *(swift_allocObject() + 16) = v37;
    v39 = v37;
    v40 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
    v41 = static OS_dispatch_queue.main.getter();
    *(swift_allocObject() + 16) = v39;
    v42 = v39;
    v43 = Promise.error(on:closure:)();

    sub_10000F018(v24, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);
    return v43;
  }

  else
  {
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v45 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_10000A554(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    return Promise.init(value:)();
  }
}

uint64_t sub_10000C2E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C324()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C35C()
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for StocksActivity();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_10000C4BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_10000BBFC(v1);
}

void sub_10000C4EC(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v70 = a4;
  v7 = type metadata accessor for SidebarConfiguration();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  __chkstk_darwin(v7);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v64 - v12;
  v14 = type metadata accessor for URL();
  v77 = *(v14 - 1);
  v15 = *(v77 + 64);
  v16 = __chkstk_darwin(v14);
  v71 = v17;
  v72 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v76 = a2;
  v20 = [a2 URLContexts];
  sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
  sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr);
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_10000CC2C(v21);

  if (!v22)
  {
    goto LABEL_7;
  }

  v68 = a3;
  v69 = v4;
  v23 = [v22 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [v70 session];
  v25 = [v24 persistentIdentifier];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v27;
  v65 = v26;

  sub_10000A4BC();
  v29 = v28;
  v30 = &v13[*(v28 + 48)];
  v31 = *(v77 + 16);
  v67 = v19;
  v32 = v19;
  v70 = v14;
  v33 = v31;
  v31(v13, v32, v14);
  v66 = v22;
  v34 = [v22 options];
  v35 = [v34 sourceApplication];

  if (!v35)
  {
    v36 = [v76 sourceApplication];
    if (!v36)
    {
      v38 = 0;
      v40 = 0;
      v37 = v77;
      goto LABEL_6;
    }

    v35 = v36;
  }

  v37 = v77;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

LABEL_6:
  *v30 = v38;
  v30[1] = v40;
  (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
  v41 = v68;
  swift_beginAccess();
  sub_100020560(v13, v65, v64);
  swift_endAccess();
  v42 = v72;
  v43 = v67;
  v44 = v70;
  v45 = v33;
  v33(v72, v67, v70);
  v46 = v73;
  SidebarConfiguration.init(_:)();
  v47 = SidebarConfiguration.shouldCollapseSidebar.getter();
  (*(v74 + 8))(v46, v75);
  v41[qword_10004FEA8] = v47 & 1;
  v45(v42, v43, v44);
  a3 = v41;
  v48 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v49 = (v71 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = v37;
  v51 = swift_allocObject();
  *(v51 + 16) = a3;
  (*(v50 + 32))(v51 + v48, v42, v44);
  v52 = v66;
  *(v51 + v49) = v66;
  v53 = a3;
  v54 = v52;
  v55 = sub_10000EE84();
  v56 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();

  (*(v50 + 8))(v43, v44);
LABEL_7:
  v57 = [v76 shortcutItem];
  if (v57)
  {
    v58 = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = a3;
    *(v59 + 24) = v58;
    v60 = a3;
    v61 = v58;
    v62 = sub_10000EE84();
    v63 = zalgoIfMain.getter();
    Bootstrapper.afterBootstrap(on:run:)();
  }
}

uint64_t sub_10000CAE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CBDC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000557C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CC40(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000CD74(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10000CD74(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001ECA4(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_10000CD74(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_10000CD74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000CD80()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000CDD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10000CE40(v4);
}

uint64_t sub_10000CE40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StocksActivity();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v69 = &v59 - v10;
  v11 = type metadata accessor for Date();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UUID();
  v15 = *(v64 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v64);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Session.Kind();
  v19 = *(v65 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v65);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + qword_10004FE78);
  v60 = v7;
  v70 = a1;
  if (v23 || (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) == 0))
  {
    LODWORD(v66) = 0;
  }

  else
  {
    v66 = v24;
    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 16) = xmmword_10003EDF0;
    v27 = v2;
    if (*(v2 + qword_10004FE90 + 8))
    {
      v28 = *(v2 + qword_10004FE90);
      v29 = *(v2 + qword_10004FE90 + 8);
    }

    else
    {
      v29 = 0xE300000000000000;
      v28 = 7104878;
    }

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_1000056B0();
    *(v26 + 32) = v28;
    *(v26 + 40) = v29;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

    v30 = v70;
    v31 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v2 = v27;
    v32 = *(v27 + qword_10004FE80);
    v33 = v32;
    sub_10000D728(v66, v32);

    LODWORD(v66) = 1;
  }

  sub_10000B3B4(v71);
  sub_1000045D8(v71, v72);
  type metadata accessor for IdentificationResetManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v35 = result;
  sub_10000461C(v71);
  v63 = v35;
  IdentificationResetManager.resetIdentifierIfNeeded()();
  sub_10000B3B4(v71);
  v36 = v2;
  sub_1000045D8(v71, v72);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_10000461C(v71);
  v37 = v65;
  (*(v19 + 104))(v22, enum case for Session.Kind.userEvents(_:), v65);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v15 + 8))(v18, v64);
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (*(v67 + 8))(v14, v68);
  (*(v19 + 8))(v22, v37);
  sub_10000B720(v71);
  sub_1000045D8(v71, v72);
  dispatch thunk of SceneStateManagerType.willEnterForeground()();
  sub_10000461C(v71);
  v38 = v70;
  v39 = [v70 session];
  v40 = [v39 persistentIdentifier];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = qword_10004FED8;
  swift_beginAccess();
  v45 = *(v36 + v44);
  if (*(v45 + 16))
  {
    v46 = sub_100029810(v41, v43);
    v48 = v47;

    if (v48)
    {
      v49 = *(v45 + 56);
      sub_10000A4BC();
      v51 = v50;
      v52 = *(v50 - 8);
      v53 = v49 + *(v52 + 72) * v46;
      v54 = v69;
      sub_100024E70(v53, v69);
      (*(v52 + 56))(v54, 0, 1, v51);
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_10000A4BC();
  v54 = v69;
  (*(*(v55 - 8) + 56))(v69, 1, 1, v55);
LABEL_15:
  swift_endAccess();
  if ((v66 & 1) == 0 && [v38 activationState] == 2 && (v56 = objc_msgSend(sub_100020850(), "isStateRestorationFeatureEnabled"), swift_unknownObjectRelease(), v56) && (objc_msgSend(*(v36 + qword_10004FE58), "isStateRestorationAllowed") & 1) == 0 && (sub_10000A4BC(), (*(*(v57 - 8) + 48))(v54, 1, v57) == 1))
  {
    v71[0] = sub_100020790(&qword_10004FE50, sub_10001C090);
    v58 = v60;
    static StocksActivity.main.getter();
    sub_10001C090(0);
    sub_10000EDC4(&unk_10004F4D0, sub_10001C090);
    Navigator.navigateWithoutAnimation(to:)();

    (*(v61 + 8))(v58, v62);
  }

  else
  {
  }

  return sub_10000F018(v54, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
}

void sub_10000D728(void *a1, void *a2)
{
  v147 = a2;
  v149 = a1;
  v144 = type metadata accessor for URL();
  v143 = *(v144 - 8);
  v3 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v148 = &v128 - v7;
  v8 = type metadata accessor for Container.TestSuite();
  v145 = *(v8 - 8);
  v9 = *(v145 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v128 - v13;
  v15 = type metadata accessor for Container.Environment();
  v146 = *(v15 - 8);
  v16 = *(v146 + 64);
  __chkstk_darwin(v15);
  v18 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SidebarConfiguration();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ThemingStyle();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v29 = v2;
  if (*(v2 + qword_10004FE78))
  {
    static os_log_type_t.error.getter();
    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10003EDF0;
    if (*(v2 + qword_10004FE90 + 8))
    {
      v31 = *(v2 + qword_10004FE90);
      v32 = *(v29 + qword_10004FE90 + 8);
    }

    else
    {
      v32 = 0xE300000000000000;
      v31 = 7104878;
    }

    *(v30 + 56) = &type metadata for String;
    v45 = v30;
    *(v30 + 64) = sub_1000056B0();
    *(v45 + 32) = v31;
    *(v45 + 40) = v32;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

    v149 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v46 = v149;

    return;
  }

  v139 = qword_10004FE78;
  v134 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v28;
  v136 = v26;
  v129 = v23;
  v130 = v20;
  v131 = v19;
  v137 = v15;
  v138 = v12;
  v140 = v18;
  v141 = v14;
  sub_10000B3B4(&v160);
  sub_1000045D8(&v160, v161);
  sub_1000036DC(0, &qword_1000500A0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v157)
  {
    __break(1u);
    goto LABEL_60;
  }

  v33 = v2;
  swift_unknownObjectRelease();
  sub_10000461C(&v160);
  sub_10000B3B4(&v160);
  sub_1000045D8(&v160, v161);
  type metadata accessor for DebugWindow();
  v34 = swift_allocObject();
  v35 = v149;
  *(v34 + 16) = v149;
  v36 = v35;
  v37 = dispatch thunk of ResolverType.resolve<A>(_:with:)();

  if (!v37)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_10000461C(&v160);
  sub_10000EDC4(&unk_1000500A8, type metadata accessor for SceneDelegate);
  swift_unknownObjectRetain();
  DebugWindow.debugDelegate.setter();
  v38 = *(v2 + v139);
  *(v29 + v139) = v37;
  v132 = v37;
  v149 = v37;

  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v133 = v39;
  v40 = swift_allocObject();
  v41 = v40;
  v128 = xmmword_10003EDF0;
  *(v40 + 16) = xmmword_10003EDF0;
  v42 = (v29 + qword_10004FE90);
  if (*(v29 + qword_10004FE90 + 8))
  {
    v43 = *v42;
    v44 = *(v29 + qword_10004FE90 + 8);
  }

  else
  {
    v44 = 0xE300000000000000;
    v43 = 7104878;
  }

  *(v40 + 56) = &type metadata for String;
  v47 = sub_1000056B0();
  v41[8] = v47;
  v41[4] = v43;
  v41[5] = v44;
  v48 = sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

  v49 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000B3B4(&v157);
  sub_1000045D8(&v157, v158);
  sub_1000036DC(0, &qword_10004F9D0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v156)
  {
    goto LABEL_61;
  }

  sub_1000061A0(&v155, &v160);
  sub_10000461C(&v157);
  sub_1000045D8(&v160, v161);
  dispatch thunk of SceneProviderType.register(_:)();
  v50 = [objc_opt_self() currentDevice];
  v51 = [v50 userInterfaceIdiom];

  if (!v51)
  {
    v52 = *(v33 + v139);
    if (v52)
    {
      [v52 setOverrideUserInterfaceStyle:2];
    }
  }

  v139 = v47;
  sub_10000B3B4(&v155);
  sub_1000045D8(&v155, v156);
  sub_1000036DC(0, &qword_1000500B8);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v53 = v153;
  if (!v153)
  {
    goto LABEL_62;
  }

  v54 = v154;
  sub_1000045D8(&v152, v153);
  v55 = v149;
  v56 = [v55 traitCollection];
  v158 = v53;
  v159 = v54;
  sub_10000EE0C(&v157);
  v57 = *(v54 + 8);
  dispatch thunk of DynamicStylerType.dynamic(for:)();

  sub_10000461C(&v152);
  sub_10000461C(&v155);
  v149 = v55;
  dispatch thunk of BaseStylerType.style(window:)();
  dispatch thunk of BaseStylerType.theme.getter();
  sub_1000045D8(&v155, v156);
  v58 = v134;
  dispatch thunk of Theming.style.getter();
  v59 = (*(v135 + 88))(v58, v136);
  if (v59 == enum case for ThemingStyle.light(_:))
  {
    v60 = 1;
    v61 = v149;
    v62 = v8;
    v63 = v141;
  }

  else
  {
    v63 = v141;
    if (v59 != enum case for ThemingStyle.dark(_:))
    {
LABEL_65:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v62 = v8;
    v60 = 2;
    v61 = v149;
  }

  v136 = v48;
  [v61 setTs_accessibilityInterfaceStyleIntent:{v60, v128}];

  sub_10000461C(&v155);
  v64 = v147;
  if (v147 && (v65 = [v147 userActivities], sub_10000557C(0, &qword_10004FBA0, NSUserActivity_ptr), sub_10000CBDC(&qword_1000500D8, &qword_10004FBA0, NSUserActivity_ptr), v66 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v65, v67 = sub_10000EE70(v66), , v67))
  {
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v67;

    v70 = v67;
    v71 = sub_10000EE84();
    v72 = zalgoIfMain.getter();
    Bootstrapper.afterBootstrap(on:run:)();

    v63 = v141;
    sub_100020790(&qword_10004FE48, &type metadata accessor for StocksV2UserActivityDeserializer);
    v73 = v70;
    v74 = v129;
    SidebarConfiguration.init(_:userActivity:)();
    LODWORD(v135) = SidebarConfiguration.shouldCollapseSidebar.getter();

    (*(v130 + 8))(v74, v131);
  }

  else
  {
    LODWORD(v135) = 0;
  }

  v75 = type metadata accessor for ContainerEnviromentProvider();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  ContainerEnviromentProvider.init()();
  v78 = [objc_opt_self() sharedApplication];
  v79 = [objc_opt_self() processInfo];
  v80 = v140;
  ContainerEnviromentProvider.enviroment(for:processInfo:)();
  v81 = v80;

  v82 = v146;
  v83 = v137;
  v84 = (*(v146 + 88))(v81, v137);
  if (v84 != enum case for Container.Environment.testing(_:))
  {
    if (v84 == enum case for Container.Environment.normal(_:))
    {
      goto LABEL_36;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_31;
  }

  (*(v82 + 96))(v81, v83);
  v79 = v145;
  (*(v145 + 16))(v63, v81, v62);
  (v79[13])(v138, enum case for Container.TestSuite.performance(_:), v62);
  sub_10000EDC4(&unk_1000500C8, &type metadata accessor for Container.TestSuite);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v155 != v152)
  {
LABEL_31:
    v85 = v33;
    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v85 = v33;
  v86 = 1;
LABEL_32:
  v87 = v79[1];
  v87(v138, v62);

  if (v86)
  {
    v88 = swift_allocObject();
    *(v88 + 16) = v128;
    if (v42[1])
    {
      v89 = *v42;
      v90 = v42[1];
    }

    else
    {
      v90 = 0xE300000000000000;
      v89 = 7104878;
    }

    v98 = v141;
    *(v88 + 56) = &type metadata for String;
    *(v88 + 64) = v139;
    *(v88 + 32) = v89;
    *(v88 + 40) = v90;

    v99 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v100 = sub_10000EE84();
    Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:)(v61, 0, v135 & 1);

    v87(v98, v62);
    v87(v140, v62);
    v33 = v85;
    goto LABEL_42;
  }

  v87(v141, v62);
  v87(v140, v62);
  v33 = v85;
LABEL_36:
  sub_10000B910(&v155);
  sub_1000045D8(&v155, v156);
  v91 = dispatch thunk of WelcomeFlowProviderType.shouldShowWelcome()();
  sub_10000461C(&v155);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_10003EE00;
  *(v92 + 56) = &type metadata for Bool;
  *(v92 + 64) = &protocol witness table for Bool;
  *(v92 + 32) = v91 & 1;
  v93 = v139;
  if (v42[1])
  {
    v94 = *v42;
    v95 = v42[1];
  }

  else
  {
    v95 = 0xE300000000000000;
    v94 = 7104878;
  }

  *(v92 + 96) = &type metadata for String;
  *(v92 + 104) = v93;
  *(v92 + 72) = v94;
  *(v92 + 80) = v95;

  v96 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v97 = sub_10000EE84();
  static MainMetrics.defaultWindowWindowSize.getter();
  v163.is_nil = LOBYTE(v163.value.width);
  Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:defaultWindowSize:)(v61, v91 & 1, v135 & 1, v163);

LABEL_42:
  v101 = sub_10000EE84();
  if (v42[1])
  {
    v102 = *v42;
    v103 = v42[1];
  }

  else
  {
    v103 = 0xE300000000000000;
    v102 = 7104878;
  }

  v104 = v148;
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = swift_allocObject();
  v106[2] = v102;
  v106[3] = v103;
  v106[4] = v105;

  v107 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();

  sub_10000B3B4(&v152);
  sub_1000045D8(&v152, v153);
  sub_1000036DC(0, &qword_1000500C0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v151)
  {
    goto LABEL_63;
  }

  sub_1000061A0(&v150, &v155);
  sub_10000461C(&v152);
  sub_1000045D8(&v155, v156);
  if (dispatch thunk of AgreedToTermsAndConditionsProvider.agreedToTermsAndConditions()())
  {
    type metadata accessor for TrackingConsent();
    v108 = static TrackingConsent.shared.getter();
    TrackingConsent.allow()();
  }

  sub_10000B3B4(&v152);
  sub_1000045D8(&v152, v153);
  type metadata accessor for SessionObserver();
  v109 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v109)
  {
    goto LABEL_64;
  }

  v110 = v109;
  sub_10000461C(&v152);
  SessionObserver.window.setter();
  if (v64 && (v111 = [v64 URLContexts], sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr), sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr), v112 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v111, v113 = sub_10000CC2C(v112), , v113))
  {
    sub_10000A4BC();
    v115 = v114;
    v116 = (v104 + *(v114 + 48));
    v117 = [v113 URL];
    v118 = v142;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v143 + 32))(v104, v118, v144);
    v119 = [v113 options];
    v120 = [v119 sourceApplication];

    if (v120)
    {
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;
    }

    else
    {
      v124 = [v64 sourceApplication];
      if (v124)
      {
        v125 = v124;
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v126;
      }

      else
      {

        v121 = 0;
        v123 = 0;
      }
    }

    *v116 = v121;
    v116[1] = v123;
    (*(*(v115 - 8) + 56))(v104, 0, 1, v115);
    v127 = qword_10004FE98;
    swift_beginAccess();
    sub_100025014(v104, v33 + v127);
    swift_endAccess();
  }

  else
  {
  }

  sub_10000461C(&v155);
  sub_10000461C(&v157);
  sub_10000461C(&v160);
}

uint64_t sub_10000EC60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ECD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ED10()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED5C(void *a1)
{
  v1 = a1[4];
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &qword_1000500F8, UIWindowScene_ptr);
  return dispatch thunk of ContextType.useWeak<A>(_:for:)();
}

uint64_t sub_10000EDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10000EE0C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000EE84()
{
  v1 = qword_10004FE40;
  v2 = *(v0 + qword_10004FE40);
  if (v2)
  {
    v3 = *(v0 + qword_10004FE40);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  sub_10000B3B4(v9);
  sub_1000045D8(v9, v9[3]);
  type metadata accessor for Bootstrapper();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    sub_10000461C(v9);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_10000EFD4()
{
  swift_getObjectType();

  SceneStateMonitor.sceneWillEnterForeground()();
}

uint64_t sub_10000F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000F0C0(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v5 + 16))(v8, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v4);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F298(0);
  }

  return result;
}

void sub_10000F298(char a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating widget content onlyIfActive=%{BOOL}d", v6, 8u);
  }

  if (*(v2 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_hasCompletedColdLaunch) != 1)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Enqueueing invalidation because stock list hasn't loaded yet";
      goto LABEL_10;
    }

LABEL_11:

    v15 = *(v2 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation);
    v16 = v15 == 2;
    v17 = v15 & a1;
    if (v16)
    {
      v17 = a1;
    }

    *(v2 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation) = v17 & 1;
    return;
  }

  v7 = [objc_opt_self() sharedApplication];
  sub_1000101A0();
  v9 = v8;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  if (v9 & 1) == 0 && (a1)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Enqueueing invalidation due to not being the active app";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v14, v13, 2u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Reloading widget timelines", v18, 2u);
  }

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

uint64_t sub_10000F538()
{

  asyncMain(block:)();
}

void sub_10000F584(uint64_t a1, const char *a2, char a3)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  sub_10000F298(a3 & 1);
}

void sub_10000F664(uint64_t a1, uint64_t a2)
{
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10003EE10;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_1000056B0();
  *(v4 + 64) = v5;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10000A458(0, &qword_1000500E0, &type metadata accessor for DebugWindow, &type metadata accessor for Optional);

  v6 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 isKeyWindow];
  }

  else
  {
    v10 = 0;
  }

  *(v4 + 136) = &type metadata for Bool;
  *(v4 + 144) = &protocol witness table for Bool;
  *(v4 + 112) = v10;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  type metadata accessor for TrackingConsent();
  v12 = static TrackingConsent.shared.getter();
  TrackingConsent.allow()();
}

void sub_10000F864(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10000F9C0();
}

uint64_t sub_10000F96C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F9C0()
{
  v1 = v0;
  sub_10000A458(0, &qword_100050078, &type metadata accessor for URL, &type metadata accessor for Optional);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v40 = v36 - v4;
  v5 = type metadata accessor for Date();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Session.Kind();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3B4(v42);
  sub_1000045D8(v42, v43);
  type metadata accessor for IdentificationResetManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = result;
  sub_10000461C(v42);
  v36[1] = v19;
  IdentificationResetManager.resetIdentifierIfNeeded()();
  sub_10000B3B4(v42);
  sub_1000045D8(v42, v43);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = result;
  sub_10000461C(v42);
  (*(v14 + 104))(v17, enum case for Session.Kind.userEvents(_:), v13);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v9 + 8))(v12, v37);
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (*(v38 + 8))(v8, v39);
  (*(v14 + 8))(v17, v13);
  v36[0] = v20;
  SessionManager.tracker.getter();
  type metadata accessor for AppSessionResumeEvent();
  sub_10000EDC4(&unk_100050080, &type metadata accessor for AppSessionResumeEvent);
  Tracker.submit<A>(_:onlyIfTimed:completion:)();

  sub_10000B720(v42);
  sub_1000045D8(v42, v43);
  dispatch thunk of SceneStateManagerType.didBecomeActive()();
  sub_10000461C(v42);
  sub_10000B720(v42);
  v37 = v44;
  v21 = sub_1000045D8(v42, v43);
  v38 = v1;
  v39 = v21;
  v22 = v1 + qword_10004FE98;
  swift_beginAccess();
  sub_10000A4BC();
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = 1;
  v27 = v25(v22, 1, v23);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = v40;
  if (!v27)
  {
    (*(*(v28 - 8) + 16))(v40, v22, v28);
    v26 = 0;
  }

  (*(v29 + 56))(v30, v26, 1, v28);
  if (!v25(v22, 1, v24))
  {
    v31 = (v22 + *(v24 + 48));
    v33 = *v31;
    v32 = v31[1];
  }

  if (*(v38 + qword_10004FE90 + 8))
  {
    v34 = *(v38 + qword_10004FE90);
    v35 = *(v38 + qword_10004FE90 + 8);
  }

  dispatch thunk of SceneStateManagerType.didBecomeActive(with:sourceApplication:sceneID:)();

  sub_10000F018(v30, &qword_100050078, &type metadata accessor for URL, &type metadata accessor for Optional, sub_10000A458);
  sub_10000461C(v42);
  sub_10000B3B4(v42);
  sub_1000045D8(v42, v43);
  sub_1000036DC(0, &qword_10004F440);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v41)
  {

    swift_unknownObjectRelease();
    return sub_10000461C(v42);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100010050()
{
  v1 = v0[6];
  sub_1000045D8(v0 + 2, v0[5]);
  dispatch thunk of PrivateDataPollingServiceType.pollForChangesIfNeeded()();
}

void sub_1000100A4()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1000101A0();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "sceneDidBecomeActive isLikelyEligible: %{BOOL}d", v5, 8u);
  }

  sub_100010438();
}

void sub_1000101A0()
{
  v1 = [v0 connectedScenes];
  sub_10000557C(0, &qword_10004FAE0, UIScene_ptr);
  sub_1000103C8();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v17;
    v3 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v12 = v16) == 0))
    {
LABEL_18:
      sub_100010430();

      return;
    }

LABEL_9:
    v13 = [v12 activationState];

    if (!v13)
    {
      goto LABEL_18;
    }
  }

  v14 = v6;
  v15 = v7;
  if (v7)
  {
LABEL_8:
    v7 = (v15 - 1) & v15;
    v12 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v15 = *(v3 + 8 * v6);
    ++v14;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1000103C8()
{
  result = qword_10004FAE8;
  if (!qword_10004FAE8)
  {
    sub_10000557C(255, &qword_10004FAE0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FAE8);
  }

  return result;
}

void sub_100010438()
{
  v1 = v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation);
    *v4 = 136446210;
    v7 = 1702195828;
    if ((v6 & 1) == 0)
    {
      v7 = 0x65736C6166;
    }

    v8 = 0xE500000000000000;
    if (v6)
    {
      v8 = 0xE400000000000000;
    }

    if (v6 == 2)
    {
      v9 = 7104878;
    }

    else
    {
      v9 = v7;
    }

    if (v6 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_1000105E4(v9, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing queued invalidation, queued=%{public}s", v4, 0xCu);
    sub_10000461C(v5);
  }

  v12 = *(v1 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation);
  if (v12 != 2)
  {
    *(v1 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation) = 2;

    sub_10000F298(v12 & 1);
  }
}

uint64_t sub_1000105E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000108E4(v11, 0, 0, 1, a1, a2);
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
    sub_100010AE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000461C(v11);
  return v7;
}

void sub_1000106B0()
{
  if (!qword_10004FC90)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FC90);
    }
  }
}

void *sub_100010700(uint64_t a1, uint64_t a2)
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

  sub_1000106B0();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010768(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000107B4(a1, a2);
  sub_1000109F4(&off_10004AAD0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000107B4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100010700(v5, 0);
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
        v7 = sub_100010700(v10, 0);
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

unint64_t sub_1000108E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100010768(a5, a6);
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

uint64_t sub_1000109F4(uint64_t result)
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

  result = sub_10001F430(result, v12, 1, v3);
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

uint64_t sub_100010AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100010B3C()
{
  result = *(v0 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (result)
  {
    [result tickleWithQualityOfService:9 data:1 completion:0];
    v2 = type metadata accessor for MainActor();
    __chkstk_darwin(v2);
    v3[2] = v0;
    return sub_100010BF8(sub_100010E50, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010BF8(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_100010E28();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x800000010003CC00;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100010D84(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedApplication];
    v5 = [v4 applicationState];

    [v3 setSuspended:v5 == 0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100010E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100010E6C()
{
  swift_getObjectType();

  SceneStateMonitor.sceneDidBecomeActive()();
}

uint64_t sub_100010F48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100010F80(uint64_t a1, uint64_t a2)
{
  sub_100011158();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v2[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler];
  if (result)
  {
    v10 = [result mergedData];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v2;

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    v14[5] = v10;
    v14[6] = a1;
    v14[7] = a2;
    sub_100037A7C(0, 0, v8, &unk_10003FBC0, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000110E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100011158()
{
  if (!qword_100050790)
  {
    type metadata accessor for TaskPriority();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100050790);
    }
  }
}

uint64_t sub_1000111B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return SceneStateMonitor.sceneDidBecomeActive(with:sourceApplication:sceneID:)(a1, a2, a3, a4, a5, ObjectType);
}

uint64_t sub_100011230(uint64_t a1)
{
  sub_100011158();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001128C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C0B0;

  return sub_100011344(a1, v5);
}

uint64_t sub_100011344(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012940;

  return v7(a1);
}

uint64_t sub_10001143C(uint64_t a1)
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
  v10[1] = sub_100012308;

  return sub_100011510(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100011510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = type metadata accessor for MainActor();
  v7[5] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1000378D4;

  return sub_1000115D0(a5);
}

uint64_t sub_1000115D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_10001166C, v4, v3);
}

uint64_t sub_10001166C()
{
  v43 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v0[13] = OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_logger;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v42 = v6;
    *v5 = 136446210;
    if (v2)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_1000105E4(v7, v8, &v42);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Running operation. isDirty: %{public}s", v5, 0xCu);
    sub_10000461C(v6);
  }

  if (v2)
  {
    v10 = v0[7];
    sub_100011C4C();
    v11 = swift_allocObject();
    v0[14] = v11;
    *(v11 + 20) = 0;
    *(v11 + 16) = 0;
    v12 = swift_allocObject();
    v0[15] = v12;
    *(v12 + 16) = &_swiftEmptyArrayStorage;
    if (v10)
    {
      v13 = [*(v0[8] + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_purchaseController) allPurchasedTagIDs];
      if (v13)
      {
        v14 = v13;
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v15 = 0;
      }

      v19 = [*(v0[8] + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_bundleSubscriptionManager) cachedSubscription];
      [v19 copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100011D0C();
      swift_dynamicCast();
      v20 = v0[6];

      v21 = v20;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v24;
        *v24 = 134218496;
        if (v15)
        {
          v26 = *(v15 + 16);
        }

        else
        {
          v26 = 0;
        }

        *(v24 + 4) = v26;

        *(v25 + 12) = 2048;
        v27 = [v21 bundleChannelIDs];
        v28 = [v27 count];

        *(v25 + 14) = v28;
        *(v25 + 22) = 2048;
        *(v25 + 24) = [v21 subscriptionState];

        _os_log_impl(&_mh_execute_header, v22, v23, "Preparing to update purchases. purchased: %ld, bundle channels: %ld, subscriptionState: %lu", v25, 0x20u);
      }

      else
      {

        v22 = v21;
      }

      v29 = swift_allocObject();
      v29[2] = v15;
      v29[3] = v11;
      v29[4] = v21;
      v30 = *(v12 + 16);
      v31 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 16) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_100011D58(0, v30[2] + 1, 1, v30);
        *(v12 + 16) = v30;
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_100011D58((v33 > 1), v34 + 1, 1, v30);
      }

      v30[2] = v34 + 1;
      v35 = &v30[2 * v34];
      v35[4] = sub_100012D70;
      v35[5] = v29;
      *(v12 + 16) = v30;
    }

    v37 = v0[8];
    v36 = v0[9];
    v38 = static MainActor.shared.getter();
    v0[16] = v38;
    v39 = swift_task_alloc();
    v0[17] = v39;
    *(v39 + 16) = v37;
    *(v39 + 24) = v12;
    v40 = *(&async function pointer to withCheckedContinuation<A>(isolation:function:_:) + 1);
    v41 = swift_task_alloc();
    v0[18] = v41;
    *v41 = v0;
    v41[1] = sub_100013020;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 19, v38, &protocol witness table for MainActor, 0xD000000000000017, 0x800000010003EAD0, sub_100012300, v39, &type metadata for Bool);
  }

  else
  {
    v16 = v0[10];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100011BCC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011C04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100011C4C()
{
  if (!qword_100050798)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = type metadata accessor for ManagedBuffer();
    if (!v1)
    {
      atomic_store(v0, &qword_100050798);
    }
  }
}

void sub_100011CAC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100011D0C()
{
  result = qword_1000507A8;
  if (!qword_1000507A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000507A8);
  }

  return result;
}

void *sub_100011D58(void *result, int64_t a2, char a3, void *a4)
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
    sub_100011E90(0, &qword_10004F7D8, sub_100011EE4);
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
    sub_100011FA8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100011E90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100011EE4()
{
  result = qword_10004F7E0;
  if (!qword_10004F7E0)
  {
    sub_100011F44();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_10004F7E0);
  }

  return result;
}

unint64_t sub_100011F44()
{
  result = qword_10004F7E8;
  if (!qword_10004F7E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F7E8);
  }

  return result;
}

unint64_t sub_100011FA8()
{
  result = qword_10004F850;
  if (!qword_10004F850)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10004F850);
  }

  return result;
}

void sub_100011FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100007184(0, &unk_1000507B0, &type metadata for Bool, &type metadata accessor for CheckedContinuation);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v17 - v10;
  v12 = *(a2 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_dropbox);
  v23 = sub_100012BD8;
  v24 = a3;
  v18 = v12;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100012AD8;
  v22 = &unk_10004B608;
  v13 = _Block_copy(&aBlock);

  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  v23 = sub_100012F88;
  v24 = v15;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100012F34;
  v22 = &unk_10004B658;
  v16 = _Block_copy(&aBlock);

  [v18 depositWithAccessor:v13 completion:v16];
  _Block_release(v16);
  _Block_release(v13);
}

uint64_t sub_100012254()
{
  sub_100007184(0, &unk_1000507B0, &type metadata for Bool, &type metadata accessor for CheckedContinuation);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012308()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000123FC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = v2;
    (*(v17 + 16))(v20, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v16);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = v15;
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Attempting widget update for stock list loading", v24, 2u);
      v15 = v31;
    }

    (*(v17 + 8))(v20, v16);
    v2 = v32;
  }

  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v26 = *(v9 + 8);
  v32 = v9 + 8;
  v26(v13, v8);
  aBlock[4] = sub_10001F428;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C54;
  aBlock[3] = &unk_10004AFF8;
  v27 = _Block_copy(aBlock);

  v28 = v33;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100012A38(&qword_10004F0B8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100012A80();
  sub_100012A38(&qword_10004F0C8, sub_100012A80);
  v29 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v37 + 8))(v29, v2);
  (*(v34 + 8))(v28, v35);
  return (v26)(v15, v8);
}

uint64_t sub_100012940()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100012A38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100012A80()
{
  if (!qword_10004F0C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F0C0);
    }
  }
}

uint64_t sub_100012AD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100012B38(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);

    v8 = (v5 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = a1;

      v10(&v11);

      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_100012BE0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a1 purchasedTagIDs];
  if (!v8)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v9 = v8;
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a2)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    v12.super.isa = 0;
    goto LABEL_10;
  }

  if (!v10 || (v11 = sub_100012D7C(a2, v10), , (v11 & 1) == 0))
  {
LABEL_7:
    v12.super.isa = Set._bridgeToObjectiveC()().super.isa;
LABEL_10:
    [v7 setPurchasedTagIDs:v12.super.isa];

    os_unfair_lock_lock((a3 + 20));
    *(a3 + 16) = 1;
    os_unfair_lock_unlock((a3 + 20));
  }

LABEL_11:
  v13 = [v7 bundleSubscription];
  sub_100011D0C();
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    [v7 setBundleSubscription:a4];
    os_unfair_lock_lock((a3 + 20));
    *(a3 + 16) = 1;

    os_unfair_lock_unlock((a3 + 20));
  }
}

uint64_t sub_100012D7C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012F34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100012F88()
{
  sub_100007184(0, &unk_1000507B0, &type metadata for Bool, &type metadata accessor for CheckedContinuation);
  v1 = (*(*(v0 - 8) + 80) + 16) & ~*(*(v0 - 8) + 80);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100013020()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return _swift_task_switch(sub_100037658, v6, v5);
}

uint64_t sub_100013180()
{
  v0 = type metadata accessor for StartupTaskExecutionPhase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006098(v7);
  sub_1000045D8(v7, v7[3]);
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v7);
    (*(v1 + 104))(v4, enum case for StartupTaskExecutionPhase.afterLaunching(_:), v0);
    StartupTaskManager.startAllTasks(launchOptions:phase:)();
    (*(v1 + 8))(v4, v0);
    [objc_opt_self() popHighPriorityTaskInFlight];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000132E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100013314()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001334C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013394(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100013440(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000134E8()
{
  sub_10000461C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013520()
{
  v1 = type metadata accessor for BannerAdImpressionInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000135A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000135E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013628()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013660()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000136D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001370C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100013744()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013784()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000137EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013828()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100013864()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000138B8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100013934(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000139AC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100013A2C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100013A70(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100013AF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100013B40(uint64_t a1)
{
  v2 = sub_100013CC0(&qword_10004F080);
  v3 = sub_100013CC0(&unk_10004EB30);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100013C10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013C30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100013CC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013D40()
{
  v1 = v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager;
  v2 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager);
LABEL_5:
    v7 = v2;
    return v4;
  }

  sub_100006098(v10);
  sub_1000045D8(v10, v10[3]);
  sub_1000036DC(0, &unk_10004F010);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v8)
  {
    sub_10000461C(v10);
    v6 = *v1;
    *v1 = v8;
    *(v1 + 8) = v9;
    v4 = v8;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100013E20()
{
  v1 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker;
  if (*(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker);
LABEL_5:

    return v2;
  }

  v3 = v0;
  sub_100006098(v6);
  sub_1000045D8(v6, v6[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_10000461C(v6);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id DiagnosticFileProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013FB8()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:)();
}

uint64_t sub_100014010()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:_:)();
}

uint64_t sub_100014080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_100014280(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for RemoteNotificationFetchResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for RemoteNotificationFetchResult.noData(_:))
  {
    v10 = 1;
    return a2(v10);
  }

  if (v9 == enum case for RemoteNotificationFetchResult.newData(_:))
  {
    v10 = 0;
    return a2(v10);
  }

  if (v9 == enum case for RemoteNotificationFetchResult.failed(_:))
  {
    v10 = 2;
    return a2(v10);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100014574(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for BackgroundFetchResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for BackgroundFetchResult.noData(_:))
  {
    v10 = 1;
    return a2(v10);
  }

  if (v9 == enum case for BackgroundFetchResult.newData(_:))
  {
    v10 = 0;
    return a2(v10);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100014864()
{
  swift_getObjectType();

  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_1000148BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return Updatable.reset<A>(setting:)(a1, ObjectType, a5);
}

uint64_t sub_10001490C()
{
  swift_getObjectType();

  return Updatable.apply(preset:)();
}

id sub_1000149D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  result = sub_100013D40();
  if (a1)
  {
    v7 = result;
    v8 = [result canPerformAction:a1 withSender:v2];

    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager];
      *(a2 + 24) = swift_getObjectType();
      *a2 = v9;

      return v9;
    }

    else
    {
      v12.receiver = v2;
      v12.super_class = ObjectType;
      result = objc_msgSendSuper2(&v12, "forwardingTargetForSelector:", a1);
      if (result)
      {
        _bridgeAnyObjectToAny(_:)();
        result = swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      *a2 = v10;
      *(a2 + 16) = v11;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014C24()
{
  sub_100006098(v4);
  sub_1000045D8(v4, v5);
  sub_1000036DC(0, &qword_10004F440);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    sub_10000461C(v4);
    v1 = sub_100013D40();
    swift_getObjectType();
    v2 = sub_100013E20();
    v5 = type metadata accessor for Tracker();
    v6 = sub_10000402C(&qword_10004F030, 255, &type metadata accessor for Tracker);
    v4[0] = v2;
    dispatch thunk of MenuManagerType.validate(_:with:tracker:)();
    swift_unknownObjectRelease();

    return sub_10000461C(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014DD4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100013D40();
  sub_1000151E8(a2, v25);
  v7 = v26;
  if (v26)
  {
    v8 = sub_1000045D8(v25, v26);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_10000461C(v25);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 canPerformAction:a1 withSender:v13];

  swift_unknownObjectRelease();
  if (v14)
  {
    return 1;
  }

  sub_1000151E8(a2, v25);
  v16 = v26;
  if (v26)
  {
    v17 = sub_1000045D8(v25, v26);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    __chkstk_darwin(v17);
    v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v16);
    sub_10000461C(v25);
  }

  else
  {
    v22 = 0;
  }

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v24, "canPerformAction:withSender:", a1, v22);
  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_100015138(uint64_t a1)
{
  sub_100015194();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100015194()
{
  if (!qword_100050370)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100050370);
    }
  }
}

uint64_t sub_1000151E8(uint64_t a1, uint64_t a2)
{
  sub_100015194();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001524C()
{
  v0 = type metadata accessor for EndReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ViewEndData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006098(v12);
  sub_1000045D8(v12, v13);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v12);
    SessionManager.tracker.getter();
    (*(v1 + 104))(v4, enum case for EndReason.forceQuit(_:), v0);
    ViewEndData.init(endReason:)();
    sub_10000402C(&qword_10004F078, 255, &type metadata accessor for ViewEndData);
    Tracker.push<A>(data:traits:file:line:)();

    (*(v6 + 8))(v9, v5);
    sub_100006098(v12);
    sub_1000045D8(v12, v13);
    type metadata accessor for AppSessionManager();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      sub_10000461C(v12);
      AppSessionManager.appSessionDidTerminate()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000154F4(void *a1)
{
  v2 = [a1 role];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_8:
    v11 = [a1 role];
    v10 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v11];

    type metadata accessor for SceneDelegate();
    [v10 setDelegateClass:swift_getObjCClassFromMetadata()];
    type metadata accessor for WindowScene();
    [v10 setSceneClass:swift_getObjCClassFromMetadata()];
    sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10003EDF0;
    v13 = [a1 persistentIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000056B0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_9;
  }

  v9 = [a1 role];
  v10 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v9];
LABEL_9:

  return v10;
}

void sub_100015768(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000557C(0, &qword_10004F068, UISceneSession_ptr);
    sub_1000160EC();
    Set.Iterator.init(_cocoa:)();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100010430();
      return;
    }

    while (1)
    {
      sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10003EDF0;
      v16 = [v14 persistentIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_1000056B0();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
      v20 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_10000557C(0, &qword_10004F068, UISceneSession_ptr);
        swift_dynamicCast();
        v14 = v21;
        v12 = v4;
        v13 = v5;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100015A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10003EDF0;
  v6 = Dictionary.description.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000056B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100006098(v14);
  sub_1000045D8(v14, v14[3]);
  type metadata accessor for RemoteNotificationManager();
  if (dispatch thunk of ResolverType.resolve<A>(_:)())
  {
    sub_10000461C(v14);
    RemoteNotificationManager.handleRemoteNotification(userInfo:)();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    v11 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;

    v13 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100015CB4()
{
  static os_log_type_t.error.getter();
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003EDF0;
  sub_1000036DC(0, &unk_10004F050);
  _print_unlocked<A, B>(_:_:)();
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_1000056B0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_100015DF8(uint64_t a1, uint64_t a2)
{
  sub_100006098(v10);
  sub_1000045D8(v10, v10[3]);
  type metadata accessor for BackgroundFetchManager();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    v5 = v4;
    sub_10000461C(v10);
    BackgroundFetchManager.performBackgroundFetch()();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;

    v7 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    v9 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100015F6C(uint64_t a1, uint64_t a2, Class isa)
{
  sub_100006098(v9);
  sub_1000045D8(v9, v9[3]);
  sub_10000557C(0, &qword_10004F038, SNTestRunner_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = sub_10000461C(v9);
  if (!a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v8 = [v6 runTest:v7 options:isa];

  return v8;
}

uint64_t sub_1000160C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(2);
}

unint64_t sub_1000160EC()
{
  result = qword_10004F070;
  if (!qword_10004F070)
  {
    sub_10000557C(255, &qword_10004F068, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F070);
  }

  return result;
}

uint64_t sub_100016164()
{
  v0 = type metadata accessor for SettingAction.PostInstruction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingAction();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  SettingAction.init(_:_:)();
  (*(v1 + 104))(v4, enum case for SettingAction.PostInstruction.killProcess(_:), v0);
  v8 = dispatch thunk of SettingAction.then(_:)();

  result = (*(v1 + 8))(v4, v0);
  qword_100051BE0 = v8;
  return result;
}

uint64_t sub_1000162BC()
{
  swift_getObjectType();
  if (qword_10004EA68 != -1)
  {
    swift_once();
  }

  return dispatch thunk of Updatable.save<A>(setting:value:)();
}

__n128 sub_100016378(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001638C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000163C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100016418(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100016450@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for Stock();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for SymbolEntity();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OpenSymbolIntent();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksActivity.StockFeed();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StocksActivity();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for StocksActivity.stockList(_:))
  {
    (*(v16 + 96))(v19, v15);
    sub_1000173E4(0, &qword_10004F280, &type metadata accessor for ScrollPosition, sub_10001746C);
    v22 = *&v19[*(v21 + 48) + 8];

    v23 = type metadata accessor for ScrollPosition();
LABEL_5:
    result = (*(*(v23 - 8) + 8))(v19, v23);
    goto LABEL_6;
  }

  if (v20 == enum case for StocksActivity.forYouFeed(_:))
  {
    (*(v16 + 96))(v19, v15);
    sub_1000173E4(0, &qword_10004F278, &type metadata accessor for ForYouSectionDescriptor, &type metadata accessor for CardViewPresentationState);
    v25 = *(v24 + 48);
    v26 = type metadata accessor for CardViewPresentationState();
    (*(*(v26 - 8) + 8))(&v19[v25], v26);
    v23 = type metadata accessor for ForYouSectionDescriptor();
    goto LABEL_5;
  }

  if (v20 == enum case for StocksActivity.symbolFeed(_:))
  {
    (*(v16 + 96))(v19, v15);
    v29 = v36;
    (*(v36 + 32))(v14, v19, v11);
    OpenSymbolIntent.init()();
    StocksActivity.StockFeed.stock.getter();
    SymbolEntity.init(from:)();
    OpenSymbolIntent.target.setter();
    v30 = v38;
    v38[3] = v7;
    v30[4] = sub_1000174BC();
    v31 = sub_10000EE0C(v30);
    (*(v37 + 32))(v31, v10, v7);
    return (*(v29 + 8))(v14, v11);
  }

  if (v20 == enum case for StocksActivity.symbolSearch(_:) || v20 == enum case for StocksActivity.article(_:))
  {
    goto LABEL_12;
  }

  if (v20 == enum case for StocksActivity.url(_:))
  {
    (*(v16 + 96))(v19, v15);
    v23 = type metadata accessor for URL();
    goto LABEL_5;
  }

  if (v20 == enum case for StocksActivity.alert(_:) || v20 == enum case for StocksActivity.campaignLandingPage(_:) || v20 == enum case for StocksActivity.tip(_:) || v20 == enum case for StocksActivity.onboarding(_:) || v20 == enum case for StocksActivity.watchlistCreation(_:))
  {
LABEL_12:
    result = (*(v16 + 8))(v19, v15);
    goto LABEL_6;
  }

  if (v20 != enum case for StocksActivity.manageWatchlists(_:))
  {
    simulateCrash(_:_:)();
    v34 = v38;
    v38[4] = 0;
    *v34 = 0u;
    *(v34 + 1) = 0u;
    return (*(v16 + 8))(v19, v15);
  }

  (*(v16 + 96))(v19, v15);
  sub_10001726C();
  v33 = *&v19[*(v32 + 48)];

  result = sub_10001736C(v19);
LABEL_6:
  v28 = v38;
  v38[4] = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  return result;
}

uint64_t sub_100016AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WatchlistEntity();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for OpenWatchlistIntent();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v57);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymbolEntity();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for OpenSymbolIntent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StocksIntentType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for StocksIntentType.addSymbolToWatchlist(_:) || v22 == enum case for StocksIntentType.deleteSymbolFromWatchlist(_:))
  {
    (*(v18 + 8))(v21, v17);
    v24 = type metadata accessor for StocksActivity();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  if (v22 == enum case for StocksIntentType.openSymbol(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    sub_1000173E4(0, &qword_10004F290, &type metadata accessor for Stock, &type metadata accessor for StocksActivity.Options);
    v27 = *(v26 + 48);
    OpenSymbolIntent.target.getter();
    Stock.init(from:)();
    static StocksActivity.Options.default.getter();
    (*(v13 + 8))(v16, v12);
    v28 = enum case for StocksActivity.StockFeed.individual(_:);
    v29 = type metadata accessor for StocksActivity.StockFeed();
    (*(*(v29 - 8) + 104))(a2, v28, v29);
    v30 = &enum case for StocksActivity.symbolFeed(_:);
  }

  else
  {
    if (v22 == enum case for StocksIntentType.openWatchlist(_:))
    {
      (*(v18 + 96))(v21, v17);
      v31 = v55;
      v32 = v57;
      (*(v55 + 32))(v9, v21, v57);
      sub_1000173E4(0, &qword_10004F280, &type metadata accessor for ScrollPosition, sub_10001746C);
      v34 = a2;
      v35 = (a2 + *(v33 + 48));
      v36 = enum case for ScrollPosition.top(_:);
      v37 = type metadata accessor for ScrollPosition();
      (*(*(v37 - 8) + 104))(a2, v36, v37);
      v38 = v56;
      OpenWatchlistIntent.target.getter();
      v39 = WatchlistEntity.id.getter();
      v41 = v40;
      (*(v58 + 8))(v38, v59);
      (*(v31 + 8))(v9, v32);
      *v35 = v39;
      v35[1] = v41;
      v42 = enum case for StocksActivity.stockList(_:);
      v43 = type metadata accessor for StocksActivity();
      v44 = *(v43 - 8);
      (*(v44 + 104))(v34, v42, v43);
      return (*(v44 + 56))(v34, 0, 1, v43);
    }

    if (v22 != enum case for StocksIntentType.openBusinessNews(_:))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    sub_1000173E4(0, &qword_10004F278, &type metadata accessor for ForYouSectionDescriptor, &type metadata accessor for CardViewPresentationState);
    v46 = *(v45 + 48);
    v47 = enum case for ForYouSectionDescriptor.topStories(_:);
    v48 = type metadata accessor for ForYouSectionDescriptor();
    (*(*(v48 - 8) + 104))(a2, v47, v48);
    v49 = enum case for CardViewPresentationState.expanded(_:);
    v50 = type metadata accessor for CardViewPresentationState();
    (*(*(v50 - 8) + 104))(a2 + v46, v49, v50);
    v30 = &enum case for StocksActivity.forYouFeed(_:);
  }

  v51 = *v30;
  v52 = type metadata accessor for StocksActivity();
  v53 = *(v52 - 8);
  (*(v53 + 104))(a2, v51, v52);
  return (*(v53 + 56))(a2, 0, 1, v52);
}

void sub_10001726C()
{
  if (!qword_10004F260)
  {
    sub_100017318(255, &qword_10004F268, &type metadata accessor for Stock);
    sub_100017318(255, &qword_10004F270, &type metadata accessor for CommandExecutionSource);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10004F260);
    }
  }
}

void sub_100017318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10001736C(uint64_t a1)
{
  sub_100017318(0, &qword_10004F268, &type metadata accessor for Stock);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000173E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10001746C()
{
  if (!qword_1000503B0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000503B0);
    }
  }
}

unint64_t sub_1000174BC()
{
  result = qword_10004F288;
  if (!qword_10004F288)
  {
    type metadata accessor for OpenSymbolIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F288);
  }

  return result;
}

uint64_t ArticleScorer.init(subscribedTags:config:currentDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  sub_1000061A0(a2, (a4 + 8));
  v6 = *(type metadata accessor for ArticleScorer() + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for ArticleScorer()
{
  result = qword_10004F2F0;
  if (!qword_10004F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ArticleScorer.score<A>(article:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  v31 = type metadata accessor for Date();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v11);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))();
  v17 = (*(a3 + 56))(a2, a3);
  v18 = (*(a3 + 40))(a2, a3);
  v19 = (*(a3 + 48))(a2, a3);
  v20 = sub_100018814(a1, v4, a2, a3);
  v21 = (*(a3 + 32))(a2, a3);
  v35 = v4;
  v22 = sub_100017A00(0, sub_100018BC0, &v34, v21);

  v23 = (*(a3 + 64))(a2, a3);
  v24 = (*(a3 + 72))(a2, a3);
  v25 = (*(a3 + 96))(a2, a3);
  (*(a3 + 80))(a2, a3);
  v26 = v4 + *(type metadata accessor for ArticleScorer() + 24);
  Date.timeIntervalSince(_:)();
  v28 = v27;
  (*(v9 + 8))(v13, v31);
  v29 = (*(a3 + 88))(a2, a3);
  *v37 = v17;
  *&v37[1] = v18;
  *&v37[2] = v19;
  *&v37[3] = v20;
  v37[4] = v22;
  *&v37[5] = v23;
  *&v37[6] = v24;
  v38 = v25 & 1;
  *v39 = v45[0];
  *&v39[3] = *(v45 + 3);
  v40 = v28 * 1000.0;
  v41 = v29;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  sub_100018CD4(v37, v5 + 1, v36);
  sub_10001CF1C(v32, v36, a2, v33);
}

uint64_t sub_100017990(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v4;
  v7[2] = v8;
  result = sub_100025528(sub_10001958C, v7, v5);
  if (__OFADD__(*a1, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a1 += result & 1;
  }

  return result;
}

uint64_t sub_100017A00(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArticleScorer.score<A>(articles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v3 = type metadata accessor for Array();
  v4 = type metadata accessor for ScoredArticle();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_100017CE4(sub_100019264, v8, v3, v4, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);
  type metadata accessor for Array();
  v11 = Dictionary.init()();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();

  v7 = Dictionary.mapValues<A>(_:)();

  v12 = v7;
  v11 = Array.init()();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
}

uint64_t sub_100017CE4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018104(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(a3, a4);
  v6 = *a1;
  v7 = type metadata accessor for ScoredArticle();
  type metadata accessor for Array();

  Dictionary.subscript.getter();

  if (!v13)
  {
    static Array._allocateUninitialized(_:)();
  }

  type metadata accessor for _ContiguousArrayStorage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v8 + 16))(v11, a2, v7);
  static Array.+ infix(_:_:)();

  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t sub_1000182EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = *a1;
  v24 = a3;
  v25 = a4;
  v8 = type metadata accessor for ScoredArticle();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.sorted(by:)();
  Sequence.enumerated()();

  v27 = v28;
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v16 = a3;
  v17 = a4;
  v18 = sub_1000194F8;
  v19 = &v20;
  v9 = type metadata accessor for EnumeratedSequence();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v12 = sub_100017CE4(sub_100019504, v15, v9, v8, &type metadata for Never, v10, &protocol witness table for Never, v11);

  *a5 = v12;
  return result;
}

void sub_1000184C0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v34 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + *(type metadata accessor for ScoredArticle() + 36));
  v15 = *(v14 + 4);
  v16 = *(v14 + 6);
  v31 = *(v14 + 5);
  v30 = *(v14 + 56);
  v17 = *(v14 + 8);
  v18 = *(v14 + 9);
  v19 = *(v14 + 13);
  v32 = *(v14 + 12);
  v20 = a3[4];
  v21 = a3[5];
  v22 = *v14;
  v29 = v14[1];
  v35 = v22;
  sub_1000045D8(a3 + 1, v20);
  v23 = (*(v21 + 160))(v20, v21);
  (*(v10 + 16))(v13, a2, a4);
  v24 = v23 * *&v35;
  v25 = a3[4];
  v26 = a3[5];
  sub_1000045D8(a3 + 1, v25);
  v27 = (*(v26 + 128))(v25, v26);
  v28 = pow(1.0 - v27, a1);
  v36[1] = v29;
  v36[0] = v35;
  v37 = v15;
  v38 = v31;
  v39 = v16;
  v40 = v30;
  v41 = v17;
  v42 = v18;
  v43 = a1;
  v44 = 0;
  v45 = v32;
  v46 = v19;
  v47 = v24 + (1.0 - v23) * (v19 * v28);
  sub_10001CF1C(v13, v36, a4, v34);
}

uint64_t sub_10001875C(void *a1)
{
  type metadata accessor for Capabilities();
  if ((static Capabilities.isInternalBuild()() & 1) == 0 || (type metadata accessor for SettingReader(), static SettingReader.shared.getter(), static Settings.ArticleScoring.useOnlyComputationalGraphScore.getter(), SettingReader.read<A>(_:)(), , result = , (v5 & 1) == 0))
  {
    v3 = a1[3];
    v4 = a1[4];
    sub_1000045D8(a1, v3);
    return (*(v4 + 160))(v3, v4);
  }

  return result;
}

double sub_100018814(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (*(a4 + 16))(v5, a4);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = v7;
    v38 = v5;
    v13 = *a2;
    v39 = v11;
    v14 = v11 + 32;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      sub_100006580(v14, v41);
      v17 = v42;
      v18 = v43;
      sub_1000045D8(v41, v42);
      v40[0] = (*(v18 + 8))(v17, v18);
      v40[1] = v19;
      __chkstk_darwin(v40[0]);
      *(&v36 - 2) = v40;
      LOBYTE(v17) = sub_100025528(sub_1000195AC, (&v36 - 4), v13);

      if (v17)
      {
        v20 = v42;
        v21 = v43;
        sub_1000045D8(v41, v42);
        if ((*(v21 + 24))(v20, v21) > 0.0)
        {
          v22 = v42;
          v23 = v43;
          sub_1000045D8(v41, v42);
          v24 = (*(v23 + 16))(v22, v23);
          v25 = v42;
          v26 = v43;
          sub_1000045D8(v41, v42);
          v15 = v15 + v24 / (*(v26 + 24))(v25, v26);
          v16 = v16 + 1.0;
        }
      }

      sub_10000461C(v41);
      v14 += 40;
      --v12;
    }

    while (v12);

    v7 = v37;
    v5 = v38;
    if (v16 != 0.0)
    {
      v27 = v15 / v16;
      goto LABEL_13;
    }
  }

  else
  {
  }

  (*(a4 + 8))(v41, v5, a4);
  v28 = v42;
  v29 = v43;
  sub_1000045D8(v41, v42);
  if ((*(v29 + 24))(v28, v29) <= 0.0)
  {
    sub_10000461C(v41);
    v27 = 0.0;
  }

  else
  {
    v30 = v42;
    v31 = v43;
    sub_1000045D8(v41, v42);
    v32 = (*(v31 + 16))(v30, v31);
    v33 = v42;
    v34 = v43;
    sub_1000045D8(v41, v42);
    v27 = v32 / (*(v34 + 24))(v33, v34);
    sub_10000461C(v41);
  }

LABEL_13:
  (*(v7 + 8))(v10, v5);
  return v27;
}

uint64_t sub_100018BDC(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    v5 = a2[3];
    v6 = a2[4];
    sub_1000045D8(a2, v5);
    return (*(v6 + 80))(v5, v6);
  }

  else if (a1 == 1)
  {
    v2 = a2[3];
    v3 = a2[4];
    sub_1000045D8(a2, v2);
    return (*(v3 + 72))(v2, v3);
  }

  else
  {
    v7 = a2[3];
    v8 = a2[4];
    sub_1000045D8(a2, v7);
    if (a1 >= 3)
    {
      return (*(v8 + 88))(v7, v8);
    }

    else
    {
      return (*(v8 + 64))(v7, v8);
    }
  }
}

long double sub_100018CD4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = a2[3];
  v9 = a2[4];
  sub_1000045D8(a2, v8);
  (*(v9 + 136))(v8, v9);
  v11 = v7 > 0.0 && v6 > 0.0;
  v12 = 1.0;
  v95 = v7;
  v96 = v6;
  v13 = v6 / v7;
  v101 = 1.0;
  if (v11)
  {
    v101 = exp2(-(v10 * v13));
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_1000045D8(a2, v14);
  (*(v15 + 48))(v14, v15);
  if (v11)
  {
    v12 = exp2(-(v16 * v13));
  }

  v93 = v12;
  v17 = a2[3];
  v18 = a2[4];
  sub_1000045D8(a2, v17);
  v91 = (*(v18 + 40))(v17, v18);
  v97 = *(a1 + 16);
  v19 = a2[3];
  v20 = a2[4];
  sub_1000045D8(a2, v19);
  v90 = (*(v20 + 24))(v19, v20);
  v21 = a2[3];
  v22 = a2[4];
  sub_1000045D8(a2, v21);
  v88 = (*(v22 + 32))(v21, v22);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  sub_100018BDC(v24, a2);
  v89 = v25;
  v99 = *(a1 + 40);
  v26 = a2[3];
  v27 = a2[4];
  sub_1000045D8(a2, v26);
  v87 = (*(v27 + 104))(v26, v27);
  v28 = a2[3];
  v29 = a2[4];
  sub_1000045D8(a2, v28);
  v86 = (*(v29 + 112))(v28, v29);
  v98 = *(a1 + 8);
  v100 = *(a1 + 48);
  v30 = a2[3];
  v31 = a2[4];
  sub_1000045D8(a2, v30);
  v32 = (*(v31 + 16))(v30, v31);
  v33 = a2[3];
  v34 = a2[4];
  sub_1000045D8(a2, v33);
  v35 = (*(v34 + 8))(v33, v34);
  v36 = a2[3];
  v37 = a2[4];
  sub_1000045D8(a2, v36);
  v38 = (*(v37 + 56))(v36, v37);
  v39 = a2[3];
  v40 = a2[4];
  sub_1000045D8(a2, v39);
  v41 = (*(v40 + 96))(v39, v40);
  v42 = a2[3];
  v43 = a2[4];
  sub_1000045D8(a2, v42);
  v44 = (*(v43 + 120))(v42, v43);
  v45 = *(a1 + 88);
  v46 = a2[3];
  v47 = a2[4];
  sub_1000045D8(a2, v46);
  v48 = (*(v47 + 152))(v46, v47);
  v49 = *(a1 + 56);
  v50 = 1.0;
  if (v49 == 1)
  {
    v51 = a2[3];
    v52 = a2[4];
    v53 = v48;
    sub_1000045D8(a2, v51);
    v54 = (*(v52 + 144))(v51, v52);
    v48 = v53;
    v50 = 1.0 - v54;
  }

  v55 = v35;
  v56 = v32 + v35 + v38 + v41 + v44;
  if (v56 <= 0.0)
  {
    v56 = 1.0;
  }

  v57 = v99 * v87 + v86;
  if (v57 <= 1.0)
  {
    v58 = v99 * v87 + v86;
  }

  else
  {
    v58 = 1.0;
  }

  v59 = v57 > 0.0;
  v60 = 0.0;
  if (!v59)
  {
    v58 = 0.0;
  }

  v61 = v91;
  v62 = v97 * v90 + v88;
  if (v62 <= 1.0)
  {
    v63 = v97 * v90 + v88;
  }

  else
  {
    v63 = 1.0;
  }

  if (v62 > 0.0)
  {
    v60 = v63;
  }

  v64 = (1.0 - v91) * v60;
  v92 = v93 * (v91 * v23) + v101 * v64;
  v94 = v23;
  v65 = v50 / v56;
  v66 = v98 * v55;
  v67 = v89 * v38;
  v68 = v58 * v41;
  v69 = v100 * v44;
  v70 = ((v61 * v23 + v64) * v32 + v98 * v55 + v67 + v68 + v69) * (v50 / v56);
  v71 = pow(1.0 - v48, v45);
  v72 = v70 * v71;
  v73 = (v92 * v32 + v101 * (v66 + v67 + v68 + v69)) * v65 * v71;
  v74 = *a1;
  sub_10001875C(a2);
  v75 = *(a1 + 80);
  v77 = v74 * v76;
  v78 = 1.0 - v76;
  v79 = v74 * v76 + v72 * (1.0 - v76);
  v80 = v74 * v76 + v73 * (1.0 - v76);
  v81 = a2[3];
  v82 = a2[4];
  sub_1000045D8(a2, v81);
  v83 = (*(v82 + 128))(v81, v82);
  v84 = pow(1.0 - v83, v75);
  *a3 = v74;
  *(a3 + 8) = v98;
  result = v77 + v78 * (v73 * v84);
  *(a3 + 16) = v97;
  *(a3 + 24) = v94;
  *(a3 + 32) = v24;
  *(a3 + 40) = v99;
  *(a3 + 48) = v100;
  *(a3 + 56) = v49;
  *(a3 + 64) = v96;
  *(a3 + 72) = v95;
  *(a3 + 80) = v75;
  *(a3 + 88) = v45;
  *(a3 + 96) = v79;
  *(a3 + 104) = v80;
  *(a3 + 112) = result;
  return result;
}

void sub_100019264(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  ArticleScorer.score<A>(article:)(a1, v3, v4, a2);
}

uint64_t sub_1000192D0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(a2 + 16);
  type metadata accessor for ScoredArticle();
  return static Array.+= infix(_:_:)();
}

void sub_10001934C()
{
  sub_1000193E8();
  if (v0 <= 0x3F)
  {
    sub_100019438();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000193E8()
{
  if (!qword_10004F300)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F300);
    }
  }
}

unint64_t sub_100019438()
{
  result = qword_10004F308;
  if (!qword_10004F308)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F308);
  }

  return result;
}

BOOL sub_10001949C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for ScoredArticle();
  return *(a2 + *(v7 + 36) + 104) < *(a1 + *(v7 + 36) + 104);
}

uint64_t sub_100019504(char *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *a1;
  type metadata accessor for ScoredArticle();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1000195C8(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = &_swiftEmptyArrayStorage;
  sub_100029940(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100029940((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *DiagnosticFileProvider.files()()
{
  v0 = sub_100019AC8();
  sub_100019D64();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EE10;
  *(inited + 32) = static Caches.Default.location.getter();
  *(inited + 40) = v2;
  *(inited + 48) = static Caches.Shared.location.getter();
  *(inited + 56) = v3;
  *(inited + 64) = static Caches.Charts.location.getter();
  *(inited + 72) = v4;
  sub_1000199D4(inited);
  return v0;
}

id DiagnosticFileProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticFileProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000198D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  URL.appendingPathComponent(_:)();
  v11 = URL.path.getter();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000199D4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001DB64(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

void *sub_100019AC8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v19[-v6];
  type metadata accessor for AppGroup();
  static AppGroup.stocks.getter();
  AppGroup.containerURL.getter();

  URL.appendingPathComponent(_:)();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  v20 = 0;
  v11 = [v9 contentsOfDirectoryAtPath:v10 error:&v20];

  v12 = v20;
  if (v11)
  {
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    __chkstk_darwin(v15);
    *&v19[-16] = v7;
    v16 = sub_1000195C8(sub_100019DD8, &v19[-32], v13);
  }

  else
  {
    v17 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v16 = &_swiftEmptyArrayStorage;
  }

  v8(v7, v0);
  return v16;
}

void sub_100019D64()
{
  if (!qword_1000503C0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000503C0);
    }
  }
}

uint64_t sub_100019DF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_100019E18, 0, 0);
}

uint64_t sub_100019E18()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100019EAC, v2, v1);
}

uint64_t sub_100019EAC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  v4 = *(v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 32);
  sub_1000045D8((v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = *(v0 + 56);
  if (*(v0 + 40))
  {
    sub_1000061A0((v0 + 16), v5);
  }

  else
  {
    sub_100006580(v3, v5);
    if (*(v0 + 40))
    {
      sub_10001BF74(v0 + 16);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100019FB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100019FD4, 0, 0);
}

uint64_t sub_100019FD4()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A068, v2, v1);
}

uint64_t sub_10001A068()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = sub_10001A108();
  v0[2] = v3;
  v0[3] = v4;
  v0[7] = v3;

  return _swift_task_switch(sub_10001A0DC, 0, 0);
}

uint64_t sub_10001A0DC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    *v3 = v1;
    v3[1] = v2;
    return (*(v0 + 8))();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A108()
{
  sub_1000036DC(0, &qword_10004F440);
  v1 = v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  v2 = *(v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 32);
  sub_1000045D8((v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v5)
  {
    sub_1000061A0(&v4, v6);
  }

  else
  {
    sub_100006580(v1, v6);
  }

  sub_1000045D8(v6, v6[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  sub_10000461C(v6);
  return v4;
}

uint64_t sub_10001A238(unint64_t *a1)
{
  sub_1000036DC(0, a1);
  v2 = v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  v3 = *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 32);
  sub_1000045D8((v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v6)
  {
    sub_1000061A0(&v5, v7);
  }

  else
  {
    sub_100006580(v2, v7);
  }

  sub_1000045D8(v7, v7[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  return sub_10000461C(v7);
}

uint64_t sub_10001A360(void (*a1)(void))
{
  a1(0);
  v2 = v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  v3 = *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 32);
  sub_1000045D8((v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v6)
  {
    sub_1000061A0(&v5, v7);
  }

  else
  {
    sub_100006580(v2, v7);
  }

  sub_1000045D8(v7, v7[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  sub_10000461C(v7);
  return v5;
}

uint64_t sub_10001A484(void (*a1)(void))
{
  a1(0);
  v2 = v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  v3 = *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 32);
  sub_1000045D8((v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v6)
  {
    sub_1000061A0(&v5, v7);
  }

  else
  {
    sub_100006580(v2, v7);
  }

  sub_1000045D8(v7, v7[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  return sub_10000461C(v7);
}

uint64_t sub_10001A5A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A5C8, 0, 0);
}

uint64_t sub_10001A5C8()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A65C, v2, v1);
}

uint64_t sub_10001A65C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_10001A238(&qword_10004F450);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001A6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A6FC, 0, 0);
}

uint64_t sub_10001A6FC()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A790, v2, v1);
}

uint64_t sub_10001A790()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_10001A238(&qword_10004F458);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001A810(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A830, 0, 0);
}

uint64_t sub_10001A830()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A8C4, v2, v1);
}

uint64_t sub_10001A8C4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_10001A238(&qword_10004F460);

  return _swift_task_switch(sub_10001A944, 0, 0);
}

uint64_t sub_10001A944()
{
  if (*(v0 + 40))
  {
    sub_1000061A0((v0 + 16), *(v0 + 56));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A9B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A9D8, 0, 0);
}

uint64_t sub_10001A9D8()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AA6C, v2, v1);
}

uint64_t sub_10001AA6C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_10001A238(&qword_10004F468);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001AAEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10001AB0C, 0, 0);
}

uint64_t sub_10001AB0C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001ABA0, v2, v1);
}

uint64_t sub_10001ABA0()
{
  v2 = v0[4];
  v1 = v0[5];

  v0[6] = sub_10001A360(sub_10001C090);

  return _swift_task_switch(sub_10001AC24, 0, 0);
}

uint64_t sub_10001AC24()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[3];
    v0[2] = v1;
    type metadata accessor for StocksActivity();
    sub_10001C090(0);
    sub_100009F84(&unk_10004F4D0, sub_10001C090);
    AnyNavigator.init<A>(base:)();
    v3 = v0[1];

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AD04(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001AD24, 0, 0);
}

uint64_t sub_10001AD24()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001ADB8, v2, v1);
}

uint64_t sub_10001ADB8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_10001A238(&qword_10004F480);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001AE38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10001AE58, 0, 0);
}

uint64_t sub_10001AE58()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AEEC, v2, v1);
}

uint64_t sub_10001AEEC()
{
  v2 = v0[3];
  v1 = v0[4];

  v0[5] = sub_10001A360(&type metadata accessor for Tracker);

  return _swift_task_switch(sub_10001AF70, 0, 0);
}

uint64_t sub_10001AF70()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    **(v0 + 16) = v1;
    return (*(v0 + 8))();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AF9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001C03C(0, &qword_10004F4B8, &type metadata accessor for ArticleTopStoriesOptionsProvider);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001B048, 0, 0);
}

uint64_t sub_10001B048()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B0DC, v2, v1);
}

uint64_t sub_10001B0DC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_10001A484(&type metadata accessor for ArticleTopStoriesOptionsProvider);

  return _swift_task_switch(sub_10001B164, 0, 0);
}

uint64_t sub_10001B164()
{
  v1 = v0[4];
  v2 = type metadata accessor for ArticleTopStoriesOptionsProvider();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v5[3] = v2;
    v5[4] = sub_100009F84(&qword_10004F4C0, &type metadata accessor for ArticleTopStoriesOptionsProvider);
    v6 = sub_10000EE0C(v5);
    (*(v3 + 32))(v6, v1, v2);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_10001B2AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001C03C(0, &qword_10004F4B8, &type metadata accessor for ArticleTopStoriesOptionsProvider);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001B358, 0, 0);
}

uint64_t sub_10001B358()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B3EC, v2, v1);
}

uint64_t sub_10001B3EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_10001A484(&type metadata accessor for ArticleTopStoriesOptionsProvider);

  return _swift_task_switch(sub_10001C0B4, 0, 0);
}

uint64_t sub_10001B474(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001C03C(0, &unk_10004F4A0, &type metadata accessor for SavedArticleOptionsProvider);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001B520, 0, 0);
}

uint64_t sub_10001B520()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B5B4, v2, v1);
}

uint64_t sub_10001B5B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_10001A484(&type metadata accessor for SavedArticleOptionsProvider);

  return _swift_task_switch(sub_10001B63C, 0, 0);
}

uint64_t sub_10001B63C()
{
  v1 = v0[4];
  v2 = type metadata accessor for SavedArticleOptionsProvider();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v5[3] = v2;
    v5[4] = &protocol witness table for SavedArticleOptionsProvider;
    v6 = sub_10000EE0C(v5);
    (*(v3 + 32))(v6, v1, v2);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_10001B750()
{
  v1 = OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_executionPhase;
  v2 = type metadata accessor for StartupTaskExecutionPhase();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_appDependencyManager);

  sub_10000461C((v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10001B818(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012308;

  return sub_100019DF8(a1, v1);
}

uint64_t sub_10001B8B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_100019FB4(a1, v1);
}

uint64_t sub_10001B950(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A5A8(a1, v1);
}

uint64_t sub_10001B9EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A6DC(a1, v1);
}

uint64_t sub_10001BA88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A810(a1, v1);
}

uint64_t sub_10001BB24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A9B8(a1, v1);
}

uint64_t sub_10001BBC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001AAEC(a1, v1);
}

uint64_t sub_10001BC5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001AD04(a1, v1);
}

uint64_t sub_10001BCF8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012308;

  return sub_10001AE38(a1, v1);
}

uint64_t sub_10001BD94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001AF9C(a1, v1);
}

uint64_t sub_10001BE30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001B2AC(a1, v1);
}

uint64_t sub_10001BECC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001B474(a1, v1);
}

uint64_t sub_10001BF74(uint64_t a1)
{
  sub_10001BFD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001BFD0()
{
  if (!qword_10004F4B0)
  {
    sub_1000036DC(255, &unk_10004F020);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F4B0);
    }
  }
}

void sub_10001C03C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t *Settings.Debug.clearCacheOnNextLaunch.unsafeMutableAddressor()
{
  if (qword_10004EA68 != -1)
  {
    swift_once();
  }

  return &static Settings.Debug.clearCacheOnNextLaunch;
}

unint64_t Storefront.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x313434333431;
    v7 = 0x343434333431;
    v8 = 0x353534333431;
    if (a1 != 3)
    {
      v8 = 0x303634333431;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x323534333431;
    v2 = 0x333434333431;
    if (a1 != 9)
    {
      v2 = 0x323434333431;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x353634333431;
    v4 = 0x323634333431;
    if (a1 != 6)
    {
      v4 = 0x313734333431;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001C240(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Storefront.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Storefront.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10001C2C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Storefront.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001C32C()
{
  Storefront.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10001C380()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Storefront.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001C3E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9StocksApp10StorefrontO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001C410@<X0>(unint64_t *a1@<X8>)
{
  result = Storefront.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001C43C(uint64_t a1)
{
  v2 = sub_10001CD18();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_10001C490(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CD18();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_10001C4EC(uint64_t a1)
{
  v2 = sub_10001CD18();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

uint64_t sub_10001C564()
{
  v0 = type metadata accessor for Access();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Domain();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001CD6C();
  v14[15] = 0;
  *v9 = 0xD000000000000012;
  v9[1] = 0x800000010003CA40;
  (*(v6 + 104))(v9, enum case for Domain.domain(_:), v5);
  (*(v1 + 104))(v4, enum case for Access.protected(_:), v0);
  sub_10001CE1C();
  sub_10001CE74();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_10003F1E0;
  v14[14] = 0;
  Option.init(label:value:description:)();
  v14[13] = 1;
  Option.init(label:value:description:)();
  v14[12] = 2;
  Option.init(label:value:description:)();
  v14[11] = 3;
  Option.init(label:value:description:)();
  v14[10] = 4;
  Option.init(label:value:description:)();
  v14[9] = 5;
  Option.init(label:value:description:)();
  v14[8] = 6;
  Option.init(label:value:description:)();
  v14[7] = 7;
  Option.init(label:value:description:)();
  v14[6] = 8;
  Option.init(label:value:description:)();
  v14[5] = 9;
  Option.init(label:value:description:)();
  v14[4] = 10;
  Option.init(label:value:description:)();
  sub_10001CEC4();
  result = Setting<>.init(_:defaultValue:domain:access:options:)();
  static Settings.Debug.storefront = result;
  return result;
}

uint64_t *Settings.Debug.storefront.unsafeMutableAddressor()
{
  if (qword_10004EA70 != -1)
  {
    swift_once();
  }

  return &static Settings.Debug.storefront;
}

uint64_t sub_10001CA9C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

unint64_t _s9StocksApp10StorefrontO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10004A9A8, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001CB48()
{
  result = qword_10004F4E0;
  if (!qword_10004F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Storefront(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Storefront(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CD18()
{
  result = qword_10004F4E8;
  if (!qword_10004F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F4E8);
  }

  return result;
}

void sub_10001CD6C()
{
  if (!qword_10004F4F0)
  {
    sub_10001CDC8();
    v0 = type metadata accessor for Setting();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F4F0);
    }
  }
}

unint64_t sub_10001CDC8()
{
  result = qword_10004F4F8;
  if (!qword_10004F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F4F8);
  }

  return result;
}

void sub_10001CE1C()
{
  if (!qword_10004F500)
  {
    sub_10001CE74();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F500);
    }
  }
}

void sub_10001CE74()
{
  if (!qword_10004F508)
  {
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F508);
    }
  }
}

unint64_t sub_10001CEC4()
{
  result = qword_10004F510;
  if (!qword_10004F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F510);
  }

  return result;
}

__n128 sub_10001CF1C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for ScoredArticle() + 36);
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v6 + 32) = result;
  *(v6 + 48) = v10;
  return result;
}

__n128 ScoredArticle.score.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_10001D030(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001D0A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}