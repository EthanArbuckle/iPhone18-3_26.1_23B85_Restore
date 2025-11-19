int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppStoreApplication();
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

id sub_100003530()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_window] = 0;
  v0[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_didCreateState] = 0;
  v2 = OBJC_IVAR____TtC8AppStore11AppDelegate_eventWatchdoge;
  type metadata accessor for AppEnterExitEventWatchdoge();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v1[v2] = v3;
  *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_quickActionsController] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph] = 0;
  v4 = OBJC_IVAR____TtC8AppStore11AppDelegate_bootstrapPendingClosuresHandler;
  type metadata accessor for BootstrapPendingClosuresHandler();
  swift_allocObject();
  *&v1[v4] = BootstrapPendingClosuresHandler.init()();
  v5 = &v1[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog] = 0;
  v1[OBJC_IVAR____TtC8AppStore11AppDelegate_terminateWhenInBackground] = 0;
  v1[OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished] = 0;
  v1[OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1000036A0()
{
  v1 = v0;
  v122 = type metadata accessor for DispatchWorkItemFlags();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchQoS();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BootstrapPhase();
  v132 = *(v4 - 8);
  v133 = v4;
  __chkstk_darwin(v4);
  v116 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for OSSignpostError();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for OSSignpostID();
  v7 = *(v131 - 8);
  __chkstk_darwin(v131);
  v114 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v110 - v10;
  __chkstk_darwin(v12);
  v127 = &v110 - v13;
  __chkstk_darwin(v14);
  v16 = &v110 - v15;
  v130 = type metadata accessor for OSSignposter();
  v124 = *(v130 - 1);
  __chkstk_darwin(v130);
  v129 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v126 = &v110 - v19;
  __chkstk_darwin(v20);
  v22 = &v110 - v21;
  type metadata accessor for PageRenderMetricsPresenter();
  static PageRenderMetricsPresenter.enableExtendedLaunchSupport()();
  [objc_opt_self() as_activatePresentationHack];
  v23 = [objc_opt_self() mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [objc_allocWithZone(UIWindow) initWithFrame:{v25, v27, v29, v31}];
  v33 = *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_window];
  v115 = v1;
  v128 = OBJC_IVAR____TtC8AppStore11AppDelegate_window;
  *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_window] = v32;

  static Signposter.startup.getter();
  static OSSignpostID.exclusive.getter();
  v34 = OSSignposter.logHandle.getter();
  v35 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "RootView", "", v36, 2u);
  }

  v38 = *(v7 + 16);
  v39 = v131;
  v38(v127, v16, v131);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v40 = OSSignpostIntervalState.init(id:isOpen:)();
  v125 = *(v7 + 8);
  v125(v16, v39);
  v124 = *(v124 + 8);
  (v124)(v22, v130);
  static Signposter.startup.getter();
  static OSSignpostID.exclusive.getter();
  v41 = OSSignposter.logHandle.getter();
  v42 = static os_signpost_type_t.begin.getter();
  v43 = OS_os_log.signpostsEnabled.getter();
  v123 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, v42, v45, "StoreBootstrap", "", v44, 2u);
  }

  v46 = v131;
  v38(v127, v11, v131);
  swift_allocObject();
  v47 = OSSignpostIntervalState.init(id:isOpen:)();
  v125(v11, v46);
  (v124)(v126, v130);
  v48 = v115;
  *&v115[OBJC_IVAR____TtC8AppStore11AppDelegate_didCreateState] = v47;

  v49 = *&v48[v128];
  if (v49)
  {
    v50 = v49;
    v51 = sub_100004B24();
    [v50 setRootViewController:v51];
  }

  static Signposter.startup.getter();
  v52 = OSSignposter.logHandle.getter();
  v53 = v114;
  OSSignpostIntervalState.signpostID.getter();
  v54 = static os_signpost_type_t.end.getter();
  v55 = OS_os_log.signpostsEnabled.getter();
  v56 = v113;
  if (v55)
  {

    checkForErrorAndConsumeState(state:)();

    v57 = v111;
    v58 = v112;
    if ((*(v111 + 88))(v56, v112) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v59 = "[Error] Interval already ended";
    }

    else
    {
      (*(v57 + 8))(v56, v58);
      v59 = "";
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, v54, v61, "RootView", v59, v60, 2u);
  }

  v125(v53, v131);
  (v124)(v129, v130);
  v62 = v128;
  [*&v48[v128] makeKeyAndVisible];
  v63 = *&v48[v62];
  if (v63)
  {
    v64 = [v63 windowScene];
    if (v64)
    {
      v65 = v64;
      v66 = [objc_opt_self() mainBundle];
      sub_100007164();
      v68 = v67;

      if (v68)
      {
        v69 = String._bridgeToObjectiveC()();
      }

      else
      {
        v69 = 0;
      }

      [v65 setTitle:v69];
    }
  }

  if (qword_10096D518 != -1)
  {
    swift_once();
  }

  qword_10097CD58 = &off_1008C3008;
  swift_unknownObjectWeakAssign();
  v70 = ASKBuildTypeGetCurrent();
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;
  if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
  {
    goto LABEL_22;
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v75)
  {

    goto LABEL_25;
  }

  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;
  if (v105 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v107 == v108)
  {
LABEL_22:

LABEL_25:
    static MetricsVisualizer.setupMetricsEventVisualizer()();
    goto LABEL_26;
  }

  v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v109)
  {
    goto LABEL_25;
  }

LABEL_26:
  v76 = [objc_opt_self() currentNotificationCenter];
  [v76 setDelegate:v48];

  if (qword_10096DA08 != -1)
  {
    swift_once();
  }

  qword_1009CFCC8 = &off_1008C2FF8;
  swift_unknownObjectWeakAssign();
  v77 = objc_opt_self();
  [v77 setFlushTimerEnabled:0];
  [v77 setDisableBackgroundMetrics:1];
  *(swift_allocObject() + 16) = v48;
  v78 = *&v48[OBJC_IVAR____TtC8AppStore11AppDelegate_bootstrapPendingClosuresHandler];
  v79 = enum case for BootstrapPhase.onboarding(_:);
  v80 = v132;
  v130 = *(v132 + 104);
  v131 = v132 + 104;
  v81 = v116;
  LODWORD(v126) = enum case for BootstrapPhase.onboarding(_:);
  (v130)(v116, enum case for BootstrapPhase.onboarding(_:), v133);
  v129 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
  v82 = v48;
  v128 = v78;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v83 = *(v80 + 8);
  v132 = v80 + 8;
  v84 = v133;
  v83(v81, v133);
  v127 = v83;
  *(swift_allocObject() + 16) = v82;
  v85 = v130;
  (v130)(v81, v79, v84);
  v86 = v82;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v87 = v133;
  v83(v81, v133);
  *(swift_allocObject() + 16) = v86;
  v88 = v87;
  v85(v81, v126, v87);
  v89 = v86;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v90 = v127;
  (v127)(v81, v87);
  v91 = [objc_opt_self() defaultCenter];
  type metadata accessor for PersonalizedMediaTokenService();
  v92 = static PersonalizedMediaTokenService.mediaTokenAccountDidChangeNotification.getter();
  [v91 addObserver:v89 selector:"mediaTokenAccountDidChange" name:v92 object:0];

  *(swift_allocObject() + 16) = v89;
  (v130)(v81, enum case for BootstrapPhase.presentingContent(_:), v88);
  v93 = v89;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v90(v81, v88);
  v94 = [objc_opt_self() sharedCoordinator];
  v95 = swift_allocObject();
  *(v95 + 16) = v93;
  v139 = sub_1004438D4;
  v140 = v95;
  aBlock = _NSConcreteStackBlock;
  v136 = 1107296256;
  v137 = sub_100007A08;
  v138 = &unk_1008C33B0;
  v96 = _Block_copy(&aBlock);
  v93;

  [v94 registerAppBootstrapHandler:v96];
  _Block_release(v96);

  if (qword_10096E568 != -1)
  {
    swift_once();
  }

  v97 = swift_allocObject();
  v97[2] = 0;
  v97[3] = 0;
  v97[4] = AVAudioSessionCategoryPlayback;
  v97[5] = AVAudioSessionModeDefault;
  v97[6] = 1;
  v139 = sub_100007D08;
  v140 = v97;
  aBlock = _NSConcreteStackBlock;
  v136 = 1107296256;
  v137 = sub_100007A08;
  v138 = &unk_1008C3400;
  v98 = _Block_copy(&aBlock);
  v99 = AVAudioSessionCategoryPlayback;
  v100 = AVAudioSessionModeDefault;
  v101 = v117;
  static DispatchQoS.unspecified.getter();
  v134 = &_swiftEmptyArrayStorage;
  sub_100005E5C(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  v102 = v119;
  v103 = v122;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v98);
  (*(v121 + 8))(v102, v103);
  (*(v118 + 8))(v101, v120);

  type metadata accessor for ASDInAppPurchaseDatabase();
  dispatch thunk of static ASDInAppPurchaseDatabase.refresh()();
  type metadata accessor for AppStoreModule();
  static AppStoreModule.preWarm()();
  sub_100007D1C(1);

  return 1;
}

uint64_t sub_100004878()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100004A28(uint64_t a1)
{
  InstanceMethod = class_getInstanceMethod(*(a1 + 32), "presentViewController:animated:completion:");
  v3 = class_getInstanceMethod(*(a1 + 32), "as_presentViewController:animated:completion:");
  v4 = *(a1 + 32);
  MethodImplementation = class_getMethodImplementation(v4, "presentViewController:animated:completion:");
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  class_addMethod(v4, "presentViewController:animated:completion:", MethodImplementation, TypeEncoding);
  v7 = *(a1 + 32);
  v8 = class_getMethodImplementation(v7, "as_presentViewController:animated:completion:");
  v9 = method_getTypeEncoding(v3);
  class_addMethod(v7, "as_presentViewController:animated:completion:", v8, v9);
  v10 = class_getInstanceMethod(*(a1 + 32), "presentViewController:animated:completion:");
  v11 = class_getInstanceMethod(*(a1 + 32), "as_presentViewController:animated:completion:");

  method_exchangeImplementations(v10, v11);
}

id sub_100004B24()
{
  v1 = v0;
  type metadata accessor for AppStoreBootstrap();
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController;
  *(v2 + v3) = [objc_allocWithZone(type metadata accessor for StoreTabBarController()) init];
  *(v2 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_debugMetricsEventRecorder) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_delegate + 8) = &off_1008C3020;
  swift_unknownObjectUnownedInit();
  v4 = sub_100005300();
  *(v4 + 24) = sub_100005E5C(&qword_100985B00, v5, type metadata accessor for AppDelegate);
  swift_unknownObjectWeakAssign();
  v6 = ASKBuildTypeGetCurrent();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    goto LABEL_9;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_6:

LABEL_10:
    v37 = type metadata accessor for AppDelegate();
    v36[0] = v1;
    v17 = v1;
    sub_1006D4F30(v36, "handleDebugActivationFrom:");
    sub_100007000(v36);
    type metadata accessor for DebugMetricsEventRecorder();
    swift_allocObject();
    *(v4 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_debugMetricsEventRecorder) = DebugMetricsEventRecorder.init(historySize:)();

    goto LABEL_11;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
LABEL_9:

    goto LABEL_10;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_6;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v35 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v35, qword_1009D2A68);
  Preferences.subscript.getter();

  if (LOBYTE(v36[0]) != 2 && (v36[0] & 1) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v18 = *&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_window];
  if (v18)
  {
    v19 = [v18 windowScene];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 statusBarManager];

      if (v21)
      {
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v38 = sub_1004428A4;
        v39 = v22;
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 1107296256;
        v36[2] = sub_100007A08;
        v37 = &unk_1008C3108;
        v23 = _Block_copy(v36);

        [v21 setDebugMenuHandler:v23];
        _Block_release(v23);
      }
    }
  }

  v24 = objc_opt_self();
  v25 = [v24 sharedURLCache];
  [v25 setDiskCapacity:104857600];

  v26 = [v24 sharedURLCache];
  [v26 setMemoryCapacity:20971520];

  v27 = sub_100006C54();

  return v27;
}

uint64_t sub_100005014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for AppStoreBootstrap()
{
  result = qword_1009925F8;
  if (!qword_1009925F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for BaseBootstrap()
{
  result = qword_100995238;
  if (!qword_100995238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005140()
{
  result = type metadata accessor for CompoundLogger();
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

id sub_100005230(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore21StoreTabBarController_tabChangeDelegate] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v7, a3);

  v9 = v8;
  [v9 _uip_setTabBarHidden:1];

  return v9;
}

uint64_t sub_100005300()
{
  v1 = v0;
  v2 = type metadata accessor for OSLogger.Subsystem();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompoundLogger();
  v6 = *(v18 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_pendingMetricsLogger;
  v10 = type metadata accessor for ReplayLogger();
  swift_allocObject();
  *(v0 + v9) = ReplayLogger.init()();
  v11 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_diagnosticsRecorder;
  type metadata accessor for RenderPipelineDiagnostics.Recorder();
  swift_allocObject();
  *(v0 + v11) = RenderPipelineDiagnostics.Recorder.init()();
  *(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_pendingEvents) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_inAppMessagesMetricsEventRecorder) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) = 0;
  sub_10002849C(&qword_100995428);
  v12 = swift_allocObject();
  v13 = *(v1 + v9);
  *(v12 + 16) = xmmword_1007B1890;
  *(v12 + 56) = v10;
  *(v12 + 64) = &protocol witness table for ReplayLogger;
  *(v12 + 32) = v13;
  v14 = qword_10096D108;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v2, qword_1009CE1D0);
  (*(v3 + 16))(v5, v15, v2);
  *(v12 + 96) = type metadata accessor for OSLogger();
  *(v12 + 104) = &protocol witness table for OSLogger;
  sub_1000056E0((v12 + 72));
  OSLogger.init(subsystem:category:)();
  CompoundLogger.init(loggers:)();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_logger, v8, v18);
  return v1;
}

uint64_t sub_1000055E0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  sub_100005644(v0, qword_1009CE1D0);
  sub_1000056A8(v0, qword_1009CE1D0);
  return OSLogger.Subsystem.init(rawValue:)();
}

uint64_t *sub_100005644(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000056A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000056E0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100005744(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000578C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ASKBootstrapV2();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100005A50(v6);
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_debugMetricsEventRecorder);
  if (!v7)
  {
    return (*(v4 + 32))(a1, v6, v3);
  }

  ASKBootstrapV2.metricsRecorder.getter();
  if (v14)
  {
    sub_100005A38(&v13, v12);
    sub_10002849C(&qword_100992A10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007B1890;
    sub_10002C0AC(v12, v8 + 32);
    *(v8 + 96) = type metadata accessor for DebugMetricsEventRecorder();
    *(v8 + 104) = sub_1006D7E8C(&qword_100992A08, &type metadata accessor for DebugMetricsEventRecorder);
    *(v8 + 72) = v7;
    v9 = type metadata accessor for CompoundMetricsEventRecorder();
    swift_allocObject();

    v10 = CompoundMetricsEventRecorder.init(recorders:)();
    v14 = v9;
    v15 = &protocol witness table for CompoundMetricsEventRecorder;
    *&v13 = v10;
    sub_100007000(v12);
  }

  else
  {
    sub_10002B894(&v13, &qword_100992A00);
    v14 = type metadata accessor for DebugMetricsEventRecorder();
    v15 = sub_1006D7E8C(&qword_100992A08, &type metadata accessor for DebugMetricsEventRecorder);
    *&v13 = v7;
  }

  sub_10002C0AC(&v13, v12);
  ASKBootstrapV2.withMetricsEventRecorder(_:)();

  sub_10002B894(v12, &qword_100992A00);
  (*(v4 + 8))(v6, v3);
  return sub_100007000(&v13);
}

uint64_t sub_100005A38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100005A50@<X0>(uint64_t a1@<X8>)
{
  v18[2] = a1;
  v1 = type metadata accessor for ASKBootstrapV2.TargetType();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009953E8);
  __chkstk_darwin();
  v6 = v18 - v5;
  v7 = type metadata accessor for Bag.Profile();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ASKBootstrapV2();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E500 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v7, qword_1009D1EE8);
  (*(v8 + 16))(v10, v15, v7);
  v16 = type metadata accessor for BagOfflinePolicy();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v18[6] = &type metadata for ModernAppStateControllerFactory;
  v18[7] = sub_100006FAC();
  (*(v2 + 104))(v4, enum case for ASKBootstrapV2.TargetType.app(_:), v1);
  ASKBootstrapV2.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:)();
  swift_allocObject();
  swift_weakInit();

  ASKBootstrapV2.withMetricsEventRecorderProducer(_:)();

  (*(v12 + 8))(v14, v11);
}

uint64_t sub_100005DB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005E5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100005EC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100005F04(uint64_t a1, uint64_t a2)
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

uint64_t sub_100005FE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100006014(uint64_t a1, uint64_t a2)
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

uint64_t sub_100006084(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000060B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000060C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000060D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000060E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000060F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000061F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006254(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006294(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000062A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000062B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000062C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000062D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000062E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000062F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000063A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000063B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000063C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000063D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000063E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000063F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000066A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000066B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000066C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000066D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000066E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000066F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006774(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000067A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000067B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000067C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000067D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000067E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000067F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C54()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) = 1;
    sub_100006E04();
    sub_10000578C(v5);
    ASKBootstrapV2.start()();
    v6 = sub_100005744(0, &qword_1009729E0);
    swift_retain_n();
    v7 = static OS_dispatch_queue.main.getter();
    v10[3] = v6;
    v10[4] = &protocol witness table for OS_dispatch_queue;
    v10[0] = v7;
    Promise.then(perform:orCatchError:on:)();

    sub_100007000(v10);
    type metadata accessor for ASDInAppPurchaseDatabase();
    dispatch thunk of static ASDInAppPurchaseDatabase.refresh()();
    (*(v3 + 8))(v5, v2);
  }

  return *(v1 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
}

void sub_100006E04()
{
  v1 = v0;
  type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v2 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v3 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  sub_10002849C(&qword_100973210);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B0B70;
  *(v5 + 32) = v3;
  sub_100005744(0, &qword_1009711C0);
  v6 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setViewControllers:isa];
}

uint64_t sub_100006F40()
{
  v0 = type metadata accessor for Bag.Profile();
  sub_100005644(v0, qword_1009D1EE8);
  sub_1000056A8(v0, qword_1009D1EE8);
  return Bag.Profile.init(name:version:)();
}

unint64_t sub_100006FAC()
{
  result = qword_1009953F0;
  if (!qword_1009953F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009953F0);
  }

  return result;
}

uint64_t sub_100007000(uint64_t a1)
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

id sub_100007164()
{
  result = [v0 localizedInfoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {
      v4 = sub_1000072B8(0xD000000000000013, 0x8000000100820320);
      if (v5)
      {
        sub_1000073E8(*(v3 + 56) + 32 * v4, v9);
        if (swift_dynamicCast())
        {

          return v8;
        }
      }
    }

    if (*(v3 + 16) && (v6 = sub_1000072B8(0x656C646E75424643, 0xEC000000656D614ELL), (v7 & 1) != 0))
    {
      sub_1000073E8(*(v3 + 56) + 32 * v6, v9);

      if (swift_dynamicCast())
      {
        return v8;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

unint64_t sub_1000072B8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100007330(a1, a2, v4);
}

unint64_t sub_100007330(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000073E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007470()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000076C0();
  static DispatchQoS.userInitiated.getter();
  v8 = &_swiftEmptyArrayStorage;
  sub_10000779C(&qword_100975440, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10002849C(&qword_100975448);
  sub_10000794C(&qword_100975450, &qword_100975448);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1009880E0 = result;
  return result;
}

unint64_t sub_1000076C0()
{
  result = qword_1009729E0;
  if (!qword_1009729E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009729E0);
  }

  return result;
}

uint64_t sub_10000770C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007754(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000779C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000077E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000782C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000078BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100007904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000794C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000079A4()
{
  result = qword_100976F60;
  if (!qword_100976F60)
  {
    sub_10002D1A8(&unk_1009729F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976F60);
  }

  return result;
}

uint64_t sub_100007A08(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100007A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v17[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v17];

  if (a4)
  {
    v11 = v17[0];
  }

  else
  {
    v12 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for OSLogger();
    sub_1000056A8(v13, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v17[3] = v16;
    v14 = sub_1000056E0(v17);
    (*(*(v16 - 1) + 16))(v14);
    static LogMessage.sensitive(_:)();
    sub_10003D444(v17);
    Logger.error(_:)();
  }

  return sub_100007FAC(a1, a2, &unk_1008C5688, sub_1000089D8, &unk_1008C56A0);
}

uint64_t sub_100007D1C(int a1)
{
  v11[3] = a1;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v1;
  v6 = *(v3 + 104);
  v6(v5, enum case for BootstrapPhase.initialBootstrap(_:), v2);
  v7 = v1;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v8 = *(v3 + 8);
  v8(v5, v2);
  *(swift_allocObject() + 16) = v7;
  v6(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v9 = v7;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  return (v8)(v5, v2);
}

uint64_t sub_100007F70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_10000827C(a1);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000779C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_10000794C(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_10000827C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000089DC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100008A0C()
{
  sub_100007000(v0 + 112);
  if (*(v0 + 176))
  {
    sub_100007000(v0 + 152);
  }

  if (*(v0 + 240))
  {
    sub_100007000(v0 + 216);
  }

  return _swift_deallocObject(v0, 256, 7);
}

uint64_t sub_100008A64()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008AEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008B34()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100008B7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008BBC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008C14()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008C5C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007000(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100008D34()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008DF8()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100008E94()
{
  sub_100007000(v0 + 32);

  sub_100007000(v0 + 88);
  sub_100007000(v0 + 128);
  sub_100007000(v0 + 168);
  sub_100007000(v0 + 208);
  sub_100007000(v0 + 248);
  sub_100007000(v0 + 312);
  if (*(v0 + 400))
  {
    sub_100007000(v0 + 376);
  }

  if (*(v0 + 440))
  {
    sub_100007000(v0 + 416);
  }

  if (*(v0 + 480))
  {
    sub_100007000(v0 + 456);
  }

  sub_100007000(v0 + 496);
  if (*(v0 + 560))
  {
    sub_100007000(v0 + 536);
  }

  if (*(v0 + 600))
  {
    sub_100007000(v0 + 576);
  }

  if (*(v0 + 640))
  {
    sub_100007000(v0 + 616);
  }

  if (*(v0 + 680))
  {
    sub_100007000(v0 + 656);
  }

  if (*(v0 + 720))
  {
    sub_100007000(v0 + 696);
  }

  if (*(v0 + 760))
  {
    sub_100007000(v0 + 736);
  }

  return _swift_deallocObject(v0, 792, 7);
}

uint64_t sub_100008FA4()
{
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 64);
  sub_100007000(v0 + 104);
  sub_100007000(v0 + 144);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_100008FF4()
{
  v1 = type metadata accessor for JSIncident();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000907C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000090C4(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100009120(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10000916C()
{
  v1 = type metadata accessor for Paragraph.Style();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000091F4()
{
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 56);
  sub_100007000(v0 + 96);
  sub_100007000(v0 + 144);
  sub_100007000(v0 + 184);
  sub_100007000(v0 + 224);

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_100009254()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000092DC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000931C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009364()
{
  sub_100007000(v0 + 56);
  sub_100007000(v0 + 96);
  sub_100007000(v0 + 136);
  sub_100007000(v0 + 176);
  sub_100007000(v0 + 216);
  sub_100007000(v0 + 256);
  sub_100007000(v0 + 296);
  sub_100007000(v0 + 336);
  sub_100007000(v0 + 376);
  sub_100007000(v0 + 416);
  sub_100007000(v0 + 456);
  sub_100007000(v0 + 496);
  sub_100007000(v0 + 536);
  sub_100007000(v0 + 576);
  sub_100007000(v0 + 616);
  sub_100007000(v0 + 656);
  sub_100007000(v0 + 696);
  sub_100007000(v0 + 736);
  sub_100007000(v0 + 776);
  if (*(v0 + 840))
  {
    sub_100007000(v0 + 816);
  }

  if (*(v0 + 880))
  {
    sub_100007000(v0 + 856);
  }

  if (*(v0 + 920))
  {
    sub_100007000(v0 + 896);
  }

  if (*(v0 + 960))
  {
    sub_100007000(v0 + 936);
  }

  return _swift_deallocObject(v0, 992, 7);
}

uint64_t sub_100009474()
{
  v19 = type metadata accessor for ShelfHeaderLayout(0);
  v22 = *(*(v19 - 1) + 80);
  v20 = *(*(v19 - 1) + 64);
  v21 = (v22 + 16) & ~v22;
  v23 = v0;
  v1 = v0 + v21;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v19[5];
  if (*(v11 + 24))
  {
    sub_100007000(v11);
  }

  v12 = v1 + v19[6];
  if (*(v12 + 24))
  {
    sub_100007000(v12);
  }

  v13 = v1 + v19[7];
  if (*(v13 + 24))
  {
    sub_100007000(v13);
  }

  sub_100007000(v1 + v19[8]);
  v14 = v1 + v19[9];
  if (*(v14 + 24))
  {
    sub_100007000(v14);
  }

  v15 = v1 + v19[10];
  if (*(v15 + 24))
  {
    sub_100007000(v15);
  }

  v16 = v1 + v19[11];
  if (*(v16 + 24))
  {
    sub_100007000(v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v23, v17 + 8, v22 | 7);
}

uint64_t sub_100009734()
{
  v1 = sub_10002849C(&qword_100994A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009828()
{
  v1 = type metadata accessor for BootstrapPhase();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v27 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v11 = __chkstk_darwin(v9);
  v12 = &v23[-v10];
  v26 = v0;
  v13 = *(v4 + 104);
  if (*(v0 + OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground) == 1)
  {
    (v13)(&v23[-v10], enum case for AppEnterMetricsEvent.EnterKind.taskSwitch(_:), v3, v11);
    v14 = enum case for AppEnterMetricsEvent.EnterKind.launch(_:);
  }

  else
  {
    v14 = enum case for AppEnterMetricsEvent.EnterKind.launch(_:);
    (v13)(&v23[-v10], enum case for AppEnterMetricsEvent.EnterKind.launch(_:), v3, v11);
  }

  v13(v8, v14, v3);
  sub_100005E5C(&qword_100985B28, 255, &type metadata accessor for AppEnterMetricsEvent.EnterKind);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
    v24 = 1;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v25 = *(v4 + 8);
  v25(v8, v3);

  (*(v4 + 16))(&v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12, v3);
  v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = v26;
  *(v16 + 16) = v26;
  (*(v4 + 32))(v16 + v15, &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v19 = v27;
  v18 = v28;
  v20 = v29;
  (*(v28 + 104))(v27, enum case for BootstrapPhase.presentingContent(_:), v29);
  v21 = v17;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v18 + 8))(v19, v20);
  return (v25)(v12, v3);
}

uint64_t sub_100009C2C()
{
  v1 = type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009CF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100009D10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TodayCardMeshTransforms.MeshPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardMeshTransforms.MeshPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_100009D98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100009DF8(void *a1, uint64_t *a2)
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

void *sub_100009E28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100009E54@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100009F68@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100009FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100027154(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000A044()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A07C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A0C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A100()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A138()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A170()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A1B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A1F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A230()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A268()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A2A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A2D8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000A310()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000A348()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A3DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A414()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A454()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A48C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A524()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A55C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A594()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A5D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A610()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A660()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A77C@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.items.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000A7AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A7E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A81C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10000A8E8()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000A930()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A970()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A9A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A9F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AA40()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100007000(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000AA90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AACC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000AB04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AB3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AB74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ABB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AC24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AC5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AC94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ACCC()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000AD14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AD4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AD8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ADC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AE1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AE54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AE8C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000AEC4()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000B024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B05C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000B120()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B158()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B1B8()
{
  v1 = type metadata accessor for PageFacets.Facet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000B284()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B2BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B2FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B34C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B384()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B3EC@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.isHorizontal.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000B41C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B454()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B49C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B4DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B558()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B5C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B600()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B658()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B690()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B6F0@<X0>(uint64_t *a1@<X8>)
{
  result = ShelfLayoutContext.traitEnvironment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000B720()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B758()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B7A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B7F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B830()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B868()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B8A8()
{
  v1 = type metadata accessor for ArcadeStateChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000B954()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B994()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BA20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BA58()
{
  v1 = type metadata accessor for OfferButtonMetrics();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000BB2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BB64()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000BB9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BBD4()
{
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10000BC34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BC6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BCA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BCDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BD24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BD64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BD9C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000BDFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BE34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BE84()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BF04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BF44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BF98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BFD0()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C0A8()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000C100()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C138()
{
  v1 = type metadata accessor for AdPlacementType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C208()
{
  v1 = type metadata accessor for AdPlacementType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C2EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C34C()
{
  sub_100007000(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000C3A4()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000C3FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C434()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C474()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetadataRibbonTextStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000C568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MetadataRibbonTextStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000C620()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C678()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C6B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C6F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C750()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000C868()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C8A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C8E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C91C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C95C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C994()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C9CC()
{
  v1 = type metadata accessor for AdamId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000CA8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10000CB0C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000CB4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for FontUseCase();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_10002849C(&qword_100972ED0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10000CC88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for FontUseCase();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10002849C(&qword_100972ED0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000CE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000CECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppEventCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AspectRatio();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AspectRatio();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000D0D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D118()
{
  v1 = type metadata accessor for ArcadeDebugSubscriptionState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D1F8()
{
  v1 = type metadata accessor for Bag();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectUnownedDestroy();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000D2F4@<X0>(uint64_t *a1@<X8>)
{
  result = ShelfLayoutContext.traitCollection.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D320()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D358()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D390()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D410@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D468@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000D4CC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100976B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D534()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for DebugMetricsEvent();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000D644()
{
  sub_10002D1A8(&qword_100976B50);
  sub_10002D1A8(&qword_100976B48);
  type metadata accessor for EnabledTextSelectability();
  sub_10002D1A8(&qword_100976B40);
  sub_10002D1A8(&qword_100976B70);
  sub_1001708B4();
  sub_10002D1A8(&qword_100976B90);
  sub_100097060(&qword_100976B98, &qword_100976B90);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000D7E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D81C()
{

  if (*(v0 + 56))
  {
    sub_100007000(v0 + 32);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000D86C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D8AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D8F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D978@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000D9F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DA2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DA6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DAB4()
{
  sub_100007000(v0 + 24);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10000DB00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DB40()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DB80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DBCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DC0C()
{
  v1 = type metadata accessor for MetricsPipeline();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MetricsData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_10000DD80()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000DDC0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DE10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DE48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DE88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DF0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DF4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000DF84()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DFD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E014()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E05C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E0A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E0E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E11C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E154()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E18C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E20C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E244()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E2B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E300()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000E35C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000E39C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E3D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E41C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E46C()
{

  sub_100007000(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E4AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E510()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E548()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E580()
{
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10000E5E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E628@<X0>(uint64_t *a1@<X8>)
{
  result = LockupCollectionSearchResult.items.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000E654()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E690()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E6C8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E7B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E7E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E820()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E858()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000E8E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E91C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E970()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E9DC()
{
  swift_getObjectType();

  return swift_dynamicCastClass();
}

uint64_t sub_10000EA1C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000EAC8()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100007000(v0 + 24);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000EBA0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000EBDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EC20()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  sub_100007000(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000ECE4()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000EDB8()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000EE8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EF04()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EF3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EFB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EFF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F030()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_10000F1A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F1DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F25C@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.header.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F288()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100007000(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10000F390()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F3D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F418@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.eyebrowArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F444@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.eyebrow.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F470@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.titleArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F4A4@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.subtitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F4D0@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.seeAllAction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F4FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F538()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F5B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F5F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F640()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F67C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F6BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F708()
{
  v1 = type metadata accessor for UnifiedMessagingPlacement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000F7AC()
{
  v1 = type metadata accessor for UnifiedMessagingPlacement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000F8A4()
{
  v1 = type metadata accessor for UnifiedMessagingPlacement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000F99C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000F9EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FA2C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000FA84()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000FAE8()
{
  v1 = type metadata accessor for PrivacyCategoryLayout();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000FB74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FBAC()
{

  return _swift_deallocObject(v0, 59, 7);
}

uint64_t sub_10000FBEC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000FC34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FC6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FCB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FCEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FD34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FD74()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000FDCC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FE10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FE48()
{
  v1 = type metadata accessor for StaticDimension();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_10000FF2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

id sub_10000FF68@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 userInterfaceLevel];
  *a2 = result == 1;
  return result;
}

uint64_t sub_10000FFA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FFE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001002C()
{
  if (*(v0 + 40))
  {
    sub_100007000(v0 + 16);
  }

  sub_100007000(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10001007C()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000100CC@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.footerTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100010128()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010170@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.accessoryAction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001019C@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.trailingArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010210()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010248()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010288()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000102C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010334()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001036C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000103AC()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000103FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001043C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010478()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000104BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001050C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010544()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010584()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000105D0@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100010644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001067C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000106B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000106FC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100010748()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001078C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000107D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010808()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010848()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010888()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000108FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010934()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001096C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000109B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000109EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfBackground();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100010ADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ShelfBackground();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100010BD8@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.rowsPerColumn.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010C20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010C5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010CB4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100010D18(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100010D38()
{
  sub_100007000(v0 + 80);

  sub_100007000(v0 + 136);
  sub_100007000(v0 + 176);
  sub_100007000(v0 + 216);
  sub_100007000(v0 + 256);
  sub_100007000(v0 + 296);
  sub_100007000(v0 + 360);
  if (*(v0 + 448))
  {
    sub_100007000(v0 + 424);
  }

  if (*(v0 + 488))
  {
    sub_100007000(v0 + 464);
  }

  if (*(v0 + 528))
  {
    sub_100007000(v0 + 504);
  }

  sub_100007000(v0 + 544);
  if (*(v0 + 608))
  {
    sub_100007000(v0 + 584);
  }

  if (*(v0 + 648))
  {
    sub_100007000(v0 + 624);
  }

  if (*(v0 + 688))
  {
    sub_100007000(v0 + 664);
  }

  if (*(v0 + 728))
  {
    sub_100007000(v0 + 704);
  }

  if (*(v0 + 768))
  {
    sub_100007000(v0 + 744);
  }

  if (*(v0 + 808))
  {
    sub_100007000(v0 + 784);
  }

  return _swift_deallocObject(v0, 840, 7);
}

uint64_t sub_100010E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010F14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100010FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002849C(&qword_100979010);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100011074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002849C(&qword_100979010);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100011124()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001115C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011194()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000111CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011204()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001123C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001127C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000112FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011334()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001136C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000113AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000113EC()
{
  v1 = (type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 8))(v0 + v3 + v5, AllButtonStyle);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000114DC()
{
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v2 = *(AllButtonStyle - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, AllButtonStyle);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100011570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000115B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000115F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
    v9 = *(*(AllButtonStyle - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, AllButtonStyle);
  }
}

void *sub_1000116A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
    v8 = *(*(AllButtonStyle - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, AllButtonStyle);
  }

  return result;
}

uint64_t sub_10001174C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000117A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000117DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011814()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001185C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000118B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000118EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001192C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011964()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000119AC()
{

  v1 = *(v0 + 24);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1000C0220(v1, *(v0 + 32));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011A0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011A5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011A9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011B0C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011B74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011BAC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011C70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011CA8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100011D6C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100011E5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011EA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011EE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011F18()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100011FF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012030()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012070()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000120B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000120F0()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012140(uint64_t a1)
{
  result = sub_100343708(&qword_100980BB8, type metadata accessor for ListTodayCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000121A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000121D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012210()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_1000123B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000123E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012420()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100012480()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000124B8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012508()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012558()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000125C8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100012620()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012660()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000126A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000126D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012750()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000127B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000127EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000128BC()
{
  v1 = type metadata accessor for VerticalFlexStackLayout();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100012968()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000129A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100012A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexPath();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_100012B20()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012B68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012BA0()
{
  v1 = type metadata accessor for FlowPresentationContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012C6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012CAC()
{
  v1 = type metadata accessor for FlowPreviewOfferPresenter();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100012D48()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100007000(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100012D98()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012DE0()
{
  v1 = type metadata accessor for FlowPreview();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012E68()
{
  v1 = type metadata accessor for PrivacyCategoryLayout();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012EF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012F28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012F74()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100013060()
{

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000130B8()
{
  v1 = type metadata accessor for AdamId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100013184()
{
  v1 = type metadata accessor for AdamId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100013260()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013298()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000132E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013318()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013350()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000133A8()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001345C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013494()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000134CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001350C()
{

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_100013548()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000136A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000136DC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001371C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013754()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000137CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013804()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001383C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001387C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000138B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013900()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013990()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000139D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013A10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013A8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013AC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013B04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013B3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013B88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013BC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013C3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013C74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013D14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013D4C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013D94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10002849C(&qword_1009794E8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v15 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100013F3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10002849C(&qword_1009794E8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000140E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FontUseCase();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for StaticDimension();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100014204(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for FontUseCase();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for StaticDimension();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100014340()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014380()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000143B8()
{
  v1 = type metadata accessor for GuidedSearchTokenCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014484()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000144BC()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000144F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001452C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014564()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000145B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000145F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014840()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014878()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000148B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000148E8()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_100014920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014990()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014A90()
{
  v1 = *(sub_10002849C(&qword_100985418) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ComponentSeparator.Position();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100014BA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014C00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014C38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014C78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014CB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014CEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014D2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014D7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014DC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014E00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014E38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014E80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014EC0()
{
  v1 = type metadata accessor for AppStoreDeepLink();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100014F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100015034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000150D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100015150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for FontUseCase();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10001521C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004464AC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001525C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015294()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000152D4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000153A8()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001540C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015444()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001547C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000154E4()
{
  LinkPresentationProvider.deinit();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_10001551C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015554()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000155A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015600()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100015670@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10001567C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000156B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000156EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015724()
{

  sub_10046FCB8();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100015778()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000157B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000157F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001583C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015884()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000158C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001590C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000159F8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_100015A04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015A3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015A7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015AC4()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100015B04()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100015B50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FontUseCase();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100015C38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FontUseCase();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100015CE0()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_100007000(v0 + v3);
  sub_100007000(v0 + v3 + 40);

  sub_100007000(v0 + v3 + 96);
  v5 = v1[12];
  v6 = type metadata accessor for FontUseCase();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100015E04()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_100007000(v0 + v3);
  sub_100007000(v0 + v3 + 40);

  sub_100007000(v0 + v3 + 96);
  v5 = v1[12];
  v6 = type metadata accessor for FontUseCase();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100015F88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015FC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015FF8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100016040()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000160A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000160F8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_1004AB4D0(v8, &v7);
}

uint64_t sub_10001614C()
{
  sub_10002D1A8(&qword_100987480);
  sub_100097060(&qword_1009874A0, &qword_100987480);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001627C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000162B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001630C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001634C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016384()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000163BC()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100016404()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016440()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016488(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IndexPath();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100016534(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000165D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016630()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001666C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000166BC()
{

  sub_100007000(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000166FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016734()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001680C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016844()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100016884()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000168C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000168F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100016940()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016978()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000169C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000169F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016A34()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016A6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100016AA4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100016B0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016B98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016BD0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100016C30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016C68()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100016D0C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100016D64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016D9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016DD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016E14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100016E68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016EA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016EE4()
{
  if (*(v0 + 40))
  {
    sub_100007000(v0 + 16);
  }

  sub_100007000(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100016F34()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100017034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000170F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100017138()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017178()
{
  v1 = type metadata accessor for Bag();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100017268()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000172B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000172EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for Shadow();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for FontUseCase();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_1000174A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Shadow();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for FontUseCase();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100017664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100017720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FontUseCase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000177D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CornerStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000178CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CornerStyle();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1000179CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017A04()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100017A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100017AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100017B44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017B7C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100017BB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017BEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017C24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017C64()
{
  v1 = sub_10002849C(&qword_10098A2E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100017D48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100017D90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100017DE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100017E34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100017E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100017F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100017FF8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10002849C(&qword_100979010);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_10002849C(&unk_100980410);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_10002849C(&unk_100973B30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[19];

  return v16(v17, a2, v15);
}

uint64_t sub_1000181D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
    return result;
  }

  v8 = sub_10002849C(&qword_100979010);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10002849C(&unk_100980410);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_10002849C(&unk_100973B30);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[19];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000183A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002849C(&unk_100980410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100018464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002849C(&unk_100980410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100018514()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001854C()
{
  v1 = type metadata accessor for AdamId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100018624()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018660()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000186C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018700()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018738()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018780()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000187D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100018828()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018870(uint64_t result)
{
  *(result + 344) = 0x4053000000000000;
  *(result + 352) = 0;
  return result;
}

uint64_t sub_10001888C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000188C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000188FC()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100018948()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018988()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000189E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018A20()
{
  sub_100007000(v0 + 80);
  if (*(v0 + 144))
  {
    sub_100007000(v0 + 120);
  }

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_100018A88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100018AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018B28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018B64()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100018BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018BF8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100018C38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100018C70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018CB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018CEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018D24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018D60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018DA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018E04()
{
  sub_100007000(v0 + 64);
  sub_100007000(v0 + 104);
  sub_100007000(v0 + 144);
  sub_100007000(v0 + 184);
  sub_100007000(v0 + 224);
  sub_100007000(v0 + 264);
  sub_100007000(v0 + 304);
  sub_100007000(v0 + 344);
  sub_100007000(v0 + 384);
  sub_100007000(v0 + 424);
  sub_100007000(v0 + 464);
  sub_100007000(v0 + 504);
  sub_100007000(v0 + 544);
  sub_100007000(v0 + 584);
  sub_100007000(v0 + 624);
  sub_100007000(v0 + 664);
  sub_100007000(v0 + 704);
  sub_100007000(v0 + 744);
  sub_100007000(v0 + 784);
  if (*(v0 + 848))
  {
    sub_100007000(v0 + 824);
  }

  if (*(v0 + 888))
  {
    sub_100007000(v0 + 864);
  }

  if (*(v0 + 928))
  {
    sub_100007000(v0 + 904);
  }

  if (*(v0 + 968))
  {
    sub_100007000(v0 + 944);
  }

  return _swift_deallocObject(v0, 1000, 7);
}

uint64_t sub_100018F14()
{
  sub_100007000((v0 + 7));
  sub_100007000((v0 + 12));
  sub_100007000((v0 + 17));
  sub_100007000((v0 + 22));
  sub_100007000((v0 + 27));
  sub_100007000((v0 + 32));
  sub_100007000((v0 + 37));
  sub_100007000((v0 + 42));
  sub_100007000((v0 + 47));
  sub_100007000((v0 + 52));
  sub_100007000((v0 + 57));
  sub_100007000((v0 + 62));
  sub_100007000((v0 + 67));
  sub_100007000((v0 + 72));
  sub_100007000((v0 + 77));
  sub_100007000((v0 + 82));
  sub_100007000((v0 + 87));
  sub_100007000((v0 + 92));
  sub_100007000((v0 + 97));
  if (v0[105])
  {
    sub_100007000((v0 + 102));
  }

  if (v0[110])
  {
    sub_100007000((v0 + 107));
  }

  if (v0[115])
  {
    sub_100007000((v0 + 112));
  }

  if (v0[120])
  {
    sub_100007000((v0 + 117));
  }

  return _swift_deallocObject(v0, 978, 7);
}

uint64_t sub_100019084@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000190B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100019170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001922C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AspectRatio();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000192D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AspectRatio();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001937C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000193B4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000193F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019468()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000194B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000194E8()
{
  v1 = sub_10002849C(&qword_100972CF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100019594()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000195CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019604()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001963C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019674()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100019720()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019790()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100019874()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000198BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019904()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001993C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001997C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000199D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019A0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019AA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019ADC()
{
  sub_100007000(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019B48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019B88()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100019BD0@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019C34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019C6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019CA4()
{

  sub_100007000(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100019CFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019D34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019D80()
{
  sub_100007000(v0 + 88);
  sub_100007000(v0 + 128);
  sub_100007000(v0 + 168);
  sub_100007000(v0 + 208);

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_100019DD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019E28()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100019E8C@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.isHidden.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100019EBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019EF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019F2C()
{
  v1 = type metadata accessor for NavigationTab();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001A0A0()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001A128()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A160()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001A254()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A28C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A2C4()
{

  sub_100007000(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001A30C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A348()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A388()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001A3E0()
{
  v1 = type metadata accessor for AdamId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001A4A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A508()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007000(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001A5E0()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  sub_100007000(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001A6A4()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001A774()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A7CC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001A7F8()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001A848()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A89C()
{
  v1 = type metadata accessor for SearchHintLayout();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001A924()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A95C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A9A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A9D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AA18()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001AA70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AAB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AAEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AB24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AB64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ABA0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ABE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AC18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AC50()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001ACA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ACE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AD1C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001AD74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ADB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001ADE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AspectRatio();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001AEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AspectRatio();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001AF84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AFE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B048()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B080()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001B144()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B18C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001B1C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B1FC()
{

  return _swift_deallocObject(v0, 40, 7);
}