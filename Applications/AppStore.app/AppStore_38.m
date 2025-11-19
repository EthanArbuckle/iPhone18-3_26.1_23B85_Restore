uint64_t sub_10043E820(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = sub_10002849C(&unk_100972A00);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  if (!*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_quickActionsController))
  {
    return a3(0, v7);
  }

  v10 = sub_1001BBB38(a2);

  if (!v10)
  {
    return a3(0, v7);
  }

  v11 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (!v11)
  {

    return a3(0, v7);
  }

  v12 = sub_10002849C(&unk_100974490);

  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {

    return sub_10002B894(v9, &unk_100972A00);
  }

  else
  {
    sub_1005F9AF4(v10, 1, v11, v9);

    return (*(v13 + 8))(v9, v12);
  }
}

void sub_10043EAB4()
{
  v0 = ASKBuildTypeGetCurrent();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    goto LABEL_15;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_6:

    goto LABEL_16;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
LABEL_15:

LABEL_16:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      sub_10043F4D8();
    }

    return;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v20 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v20, qword_1009D2A68);
  Preferences.subscript.getter();

  if (v21 != 2 && (v21 & 1) != 0)
  {
    goto LABEL_16;
  }
}

uint64_t sub_10043ED24()
{
  v1 = v0;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DC28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSLogger();
  sub_1000056A8(v6, qword_1009D0440);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph] = 0;

  v7 = &v0[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_100442854(v8);
  v9 = *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController];
  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController] = 0;

  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog] = 0;

  v10 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
  v0[OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished] = 0;
  v0[OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished] = 0;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_window];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100004B24();
    [v12 setRootViewController:v13];
  }

  *(swift_allocObject() + 16) = v1;
  v14 = enum case for BootstrapPhase.onboarding(_:);
  v20 = *(v3 + 104);
  v20(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v15 = v1;
  v19 = v10;
  v16 = v15;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v17 = *(v3 + 8);
  v17(v5, v2);
  *(swift_allocObject() + 16) = v16;
  v20(v5, v14, v2);
  v16;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v17(v5, v2);
  return sub_100007D1C(0);
}

uint64_t sub_10043F13C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph;
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {

    v4 = sub_100411AA4(v3);

    *(a1 + v1) = v4;
  }

  else
  {
    if (qword_10096DC28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for OSLogger();
    sub_1000056A8(v6, qword_1009D0440);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

void sub_10043F2D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    sub_10002849C(&unk_100989C70);

    BaseObjectGraph.optional<A>(_:)();

    if (v2)
    {
      v1 = [v2 fetchMediaToken];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10043F370()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished) == 1 && *(v0 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    sub_10002849C(&unk_100989C70);

    BaseObjectGraph.optional<A>(_:)();

    if (v2)
    {
      v1 = [v2 fetchMediaToken];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10043F4D8()
{
  v0 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = type metadata accessor for FlowOrigin();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FlowAnimationBehavior();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowPresentationContext();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = type metadata accessor for ReferrerData();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      static ActionMetrics.notInstrumented.getter();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v27 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v28 = sub_10002849C(&unk_100974490);
      v29 = v52;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10002B894(v29, &unk_100972A00);
      }

      else
      {
        sub_1005F9C8C(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v41 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v41, qword_1009D2A68);
  Preferences.subscript.getter();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10043FCF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for OSSignpostError();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OSSignpostID();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for OSSignposter();
  v16 = *(v34 - 8);
  __chkstk_darwin(v34);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph) = a4;

  v19 = *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController);
  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController) = a1;
  v20 = a1;

  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_quickActionsController) = a2;

  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog) = a3;

  v22 = OBJC_IVAR____TtC8AppStore11AppDelegate_didCreateState;
  if (*(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_didCreateState))
  {

    static Signposter.startup.getter();
    v23 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v24 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v31 = v24;

      checkForErrorAndConsumeState(state:)();

      v26 = v32;
      v25 = v33;
      if ((*(v32 + 88))(v12, v33) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 8))(v12, v25);
        v27 = "";
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v31, v29, "StoreBootstrap", v27, v28, 2u);
    }

    (*(v35 + 8))(v15, v36);
    (*(v16 + 8))(v18, v34);
    *(v5 + v22) = 0;
  }

  return result;
}

void sub_100440094(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v47 = &v35 - v3;
  v45 = type metadata accessor for FlowOrigin();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowAnimationBehavior();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FlowPresentationContext();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v10 - 8);
  v38 = &v35 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for FlowPage();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DA10 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    v25 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    if (v25)
    {
      type metadata accessor for ASKBagContract();
      type metadata accessor for BaseObjectGraph();

      inject<A, B>(_:from:)();
      sub_10061E708(v51, 0);
      sub_10002849C(&unk_10097A950);
      v26 = Array.isNotEmpty.getter();

      if (v26)
      {
        v27 = [objc_opt_self() sharedApplication];
        v28 = [v27 launchedToTest];

        if ((v28 & 1) == 0)
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          (*(v35 + 104))(v17, enum case for FlowPage.onboarding(_:), v15);
          v29 = type metadata accessor for URL();
          (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
          v30 = type metadata accessor for ReferrerData();
          (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
          v50 = &type metadata for OnboardingConfiguration;
          v49 = 0;
          static ActionMetrics.notInstrumented.getter();
          (*(v36 + 104))(v42, enum case for FlowPresentationContext.infer(_:), v37);
          (*(v40 + 104))(v44, enum case for FlowAnimationBehavior.infer(_:), v41);
          (*(v43 + 104))(v46, enum case for FlowOrigin.inapp(_:), v45);
          static FlowActionPresentation.stackPush.getter();
          type metadata accessor for FlowAction();
          swift_allocObject();
          v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
          v32 = sub_10002849C(&unk_100974490);
          v33 = v47;
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v34 = *(v32 - 8);
          if ((*(v34 + 48))(v33, 1, v32) == 1)
          {

            sub_10002B894(v33, &unk_100972A00);
          }

          else
          {
            sub_1005F9C8C(v31, 1, v25, v33);

            (*(v34 + 8))(v33, v32);
          }

          return;
        }
      }
    }

    sub_10044089C();
    return;
  }

  while (1)
  {
    v48 = Strong;
    v20 = [Strong viewIfLoaded];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 window];

      if (v22)
      {
        v23 = [v22 isHidden];

        if ((v23 & 1) == 0)
        {
          break;
        }
      }
    }

    v19 = [v48 presentedViewController];

    Strong = v19;
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  v24 = v48;
}

uint64_t sub_10044089C()
{
  v1 = v0;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.onboarding(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v14 = BootstrapPendingClosuresHandler.hasClosures(pending:)();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
  if (*(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_10096DC28 == -1)
    {
LABEL_5:
      v16 = type metadata accessor for OSLogger();
      v17[0] = sub_1000056A8(v16, qword_1009D0440);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100440C28()
{
  v0 = type metadata accessor for OSSignpostError();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v57 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for OSSignpostID();
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v56 - v8;
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for OSSignposter();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  static Signposter.startup.getter();
  static Signposter.startup.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v22 = *(v14 + 8);
  v65 = v14 + 8;
  v66 = v13;
  v64 = v22;
  v22(v18, v13);
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v26, "PresentContent", "", v25, 2u);
  }

  v27 = v63;
  v28 = v67;
  (*(v63 + 16))(v9, v12, v67);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v29 = *(v27 + 8);
  v29(v12, v28);
  v64(v21, v66);
  sub_100005744(0, &qword_1009729E0);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v30 = v62;
  v31 = *(v62 + OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController);
  if (!v31)
  {
    if (qword_10096DC28 == -1)
    {
LABEL_10:
      v47 = type metadata accessor for OSLogger();
      sub_1000056A8(v47, qword_1009D0440);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  if (!*(v62 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    v48 = qword_10096DC28;
    v49 = v31;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for OSLogger();
    sub_1000056A8(v50, qword_1009D0440);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  v32 = v31;

  sub_1001F3A9C(v33);
  v34 = objc_allocWithZone(type metadata accessor for MenuBarManager());
  v35 = v32;

  v37 = sub_100685788(v36, v35);
  v38 = *(v30 + OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager);
  *(v30 + OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager) = v37;

  sub_1004414EC();
  v39 = v60;
  static Signposter.startup.getter();
  v40 = OSSignposter.logHandle.getter();
  v41 = v61;
  OSSignpostIntervalState.signpostID.getter();
  v42 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v43 = v57;
    checkForErrorAndConsumeState(state:)();

    v45 = v58;
    v44 = v59;
    if ((*(v58 + 88))(v43, v59) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v46 = "[Error] Interval already ended";
    }

    else
    {
      (*(v45 + 8))(v43, v44);
      v46 = "";
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = v61;
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v42, v55, "PresentContent", v46, v53, 2u);

    v29(v54, v67);
    v52 = v60;
  }

  else
  {

    v29(v41, v67);
    v52 = v39;
  }

  return (v64)(v52, v66);
}

uint64_t sub_1004414EC()
{
  v1 = v0;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.presentingContent(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.presentingContent(_:), v2);
  v14 = BootstrapPendingClosuresHandler.hasClosures(pending:)();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished;
  if (*(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_10096DC28 == -1)
    {
LABEL_5:
      v16 = type metadata accessor for OSLogger();
      v17[0] = sub_1000056A8(v16, qword_1009D0440);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100441A34(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - v3;
  v4 = type metadata accessor for FlowOrigin();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FlowAnimationBehavior();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowPresentationContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - v18;
  v20 = type metadata accessor for FlowPage();
  __chkstk_darwin(v20);
  v23 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v23)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    (*(v22 + 104))(&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.notificationSettings(_:));
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
    v25 = type metadata accessor for ReferrerData();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v38 = 0u;
    v39 = 0u;

    static ActionMetrics.notInstrumented.getter();
    (*(v10 + 104))(v12, enum case for FlowPresentationContext.presentModalFormSheet(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v33);
    (*(v34 + 104))(v36, enum case for FlowOrigin.inapp(_:), v35);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v26 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v27 = sub_10002849C(&unk_100974490);
    v28 = v37;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v29 = *(v27 - 8);
    if ((*(v29 + 48))(v28, 1, v27) == 1)
    {

      return sub_10002B894(v28, &unk_100972A00);
    }

    else
    {
      sub_1005F9C8C(v26, 1, v23, v28);

      return (*(v29 + 8))(v28, v27);
    }
  }

  else
  {
    if (qword_10096DC28 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for OSLogger();
    sub_1000056A8(v31, qword_1009D0440);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

void sub_1004422E0(void *a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v9, "buildMenuWithBuilder:", a1);
  sub_100005744(0, &qword_100985B08);
  swift_getObjectType();
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    sub_1003DB6F4();
    v7 = *&v2[OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager];
    if (v7)
    {
      v8 = v7;
      sub_100684878(a1);
    }
  }
}

uint64_t sub_100442460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100685654();

    if (!v8)
    {
      return 1;
    }

    if (v8 == 1)
    {
      return 0;
    }
  }

  sub_10006C234(a2, v20);
  v10 = v21;
  if (v21)
  {
    v11 = sub_10002A400(v20, v21);
    v12 = *(v10 - 8);
    v13 = __chkstk_darwin(v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    sub_100007000(v20);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for AppDelegate();
  v19.receiver = v3;
  v19.super_class = v17;
  v18 = objc_msgSendSuper2(&v19, "canPerformAction:withSender:", a1, v16);
  swift_unknownObjectRelease();
  return v18;
}

id sub_1004426A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004427B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() sharedApplication];
  [v4 setNetworkActivityIndicatorVisible:a3 & 1];
}

void *sub_100442854(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10044290C()
{
  v1 = type metadata accessor for BootstrapPhase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] == 1 && *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog])
  {

    JSFreshnessWatchdog.willEnterForeground()();
  }

  *(swift_allocObject() + 16) = v0;
  v5 = *(v2 + 104);
  v5(v4, enum case for BootstrapPhase.initialBootstrap(_:), v1);
  v6 = v0;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v7 = *(v2 + 8);
  v7(v4, v1);
  *(swift_allocObject() + 16) = v6;
  v5(v4, enum case for BootstrapPhase.presentingContent(_:), v1);
  v8 = v6;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  return (v7)(v4, v1);
}

void sub_100442B6C()
{
  v1 = type metadata accessor for BootstrapPhase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  (*(v2 + 104))(v4, enum case for BootstrapPhase.presentingContent(_:), v1);
  v5 = v0;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v2 + 8))(v4, v1);
  if (v5[OBJC_IVAR____TtC8AppStore11AppDelegate_terminateWhenInBackground] == 1)
  {
    v6 = [objc_opt_self() sharedApplication];
    [v6 terminateWithSuccess];
  }

  v5[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] = 1;
}

uint64_t sub_100442D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v5 = type metadata accessor for BootstrapPhase();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReferrerData();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AppStoreDeepLink();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v44);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v45 = a1;
  v19 = URL.scheme.getter();
  if (!v20)
  {
    goto LABEL_19;
  }

  if (v19 == 1953719668 && v20 == 0xE400000000000000)
  {

    return 0;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v22 & 1) == 0)
  {
LABEL_19:
    if (v3[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] == 1 && *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog])
    {

      JSFreshnessWatchdog.willEnterForeground()();
    }

    (*(v11 + 16))(v13, v45, v10);

    AppStoreDeepLink.init(url:urlOptions:)();
    v23 = OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph;
    if (*&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph])
    {
      type metadata accessor for ASKBagContract();

      BaseObjectGraph.optional<A>(_:)();
    }

    static ResilientDeepLinkController.storeDeepLink(_:bag:)();

    if (v3[OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished] == 1 && *&v3[v23] && *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController])
    {
      type metadata accessor for MetricsActivity();
      static MetricsActivity.current.getter();
      v24 = v37;
      AppStoreDeepLink.referral.getter();
      dispatch thunk of MetricsActivity.setReferrerData(_:)();

      v25 = v39;
      v26 = *(v38 + 8);
      v26(v24, v39);
      AppStoreDeepLink.referral.getter();
      sub_10043D93C(v45, v24);
      v26(v24, v25);
      (*(v14 + 8))(v18, v44);
    }

    else
    {
      v27 = *(v14 + 16);
      v28 = v40;
      v29 = v18;
      v45 = v18;
      v30 = v44;
      v27(v40, v29, v44);
      v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      (*(v14 + 32))(v33 + v31, v28, v30);
      *(v33 + v32) = v3;
      v35 = v41;
      v34 = v42;
      (*(v41 + 104))(v7, enum case for BootstrapPhase.presentingContent(_:), v42);
      v36 = v3;
      BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

      (*(v35 + 8))(v7, v34);
      (*(v14 + 8))(v45, v30);
    }

    return 1;
  }

  return result;
}

uint64_t sub_100443298(void *a1)
{
  v3 = type metadata accessor for BootstrapPhase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100985B10);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AppStoreDeepLink();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  AppStoreDeepLink.init(userActivity:refApp:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &qword_100985B10);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (*&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph])
    {
      type metadata accessor for ASKBagContract();

      BaseObjectGraph.optional<A>(_:)();
    }

    static ResilientDeepLinkController.storeDeepLink(_:bag:)();

    (*(v11 + 8))(v13, v10);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v14;
  (*(v4 + 104))(v6, enum case for BootstrapPhase.presentingContent(_:), v3);
  v16 = v14;
  v17 = v1;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_1004435D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for BootstrapPhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] == 1 && *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog])
  {

    JSFreshnessWatchdog.willEnterForeground()();
  }

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  (*(v8 + 104))(v10, enum case for BootstrapPhase.presentingContent(_:), v7);
  v12 = v3;
  v13 = a1;

  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004437B4()
{
  type metadata accessor for AppStoreDeepLink();

  return sub_10043E15C();
}

void sub_100443848()
{
  type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v1 = *(v0 + 16);

  sub_10043D570(v1);
}

char *sub_10044390C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_separatorInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v10 = UIEdgeInsetsZero.top;
  v10[1] = left;
  v10[2] = bottom;
  v10[3] = right;
  v14 = OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView;
  v17 = *&v15[OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [v15 addSubview:*&v15[v16]];
  return v15;
}

void sub_100443B7C()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.subtracting(insets:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetMidY(v13);
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v10 setFrame:?];
}

char *sub_100443D5C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  type metadata accessor for HeaderButton();
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v10, qword_1009D0608);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton];
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_10002849C(&qword_10097B110);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B10D0;
  *(v34 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_1004442A4(uint64_t a1)
{
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100973860);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel];
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  v20 = *(v8 + 56);
  sub_1003DB684(v19, v10);
  v28 = a1;
  sub_1003DB684(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_1003DB684(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_1004463A8(&qword_100973878, &type metadata accessor for FontUseCase);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10002B894(v19, &qword_100972ED0);
      v25(v16, v3);
      sub_10002B894(v10, &qword_100972ED0);
      v22 = v28;
      if (v24)
      {
        return sub_10002B894(v22, &qword_100972ED0);
      }

      goto LABEL_7;
    }

    sub_10002B894(v19, &qword_100972ED0);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10002B894(v10, &qword_100973860);
    v22 = v28;
LABEL_7:
    sub_1003DB684(v22, v13);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    [v27 setNeedsLayout];
    return sub_10002B894(v22, &qword_100972ED0);
  }

  sub_10002B894(v19, &qword_100972ED0);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10002B894(v10, &qword_100972ED0);
  v22 = v28;
  return sub_10002B894(v22, &qword_100972ED0);
}

uint64_t sub_100444690()
{
  v1 = type metadata accessor for LayoutRect();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1000FDA3C(&v0[OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_100444FC4(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_10002A400(v10, v10[3]);
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v1);
  sub_100007000(v10);
  return sub_100446348(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1)
{
  sub_100444FC4(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1, a1, v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  return sub_100007000(v3);
}

double sub_100444960(void *a1)
{
  sub_1000FDA3C(v1 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics, v8);
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton);
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel);
  v10 = &protocol witness table for UIView;
  v11 = v3;
  v12 = &protocol witness table for UIView;
  sub_100444FC4(v9, &protocol witness table for UIView, v3, &protocol witness table for UIView, v8, a1, v7);
  sub_10002A400(v7, v7[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v5 = v4;
  sub_100007000(v7);
  sub_100446348(v8);
  return v5;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1)
{
  sub_100444FC4(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1, a1, v5);
  sub_10002A400(v5, v5[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v3 = v2;
  sub_100007000(v5);
  return v3;
}

double sub_100444BB0(void *a1, double a2, double a3, uint64_t a4, NSString a5)
{
  v8 = [a1 traitCollection];
  if (qword_10096D648 != -1)
  {
    swift_once();
  }

  v9 = qword_10097E830;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [v9 setTitle:a5 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a2, a3}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_100444D84(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void))
{
  v8 = *(a4 + 8);
  sub_1000FDA3C(a2, v13);
  v14 = a3;
  v15 = v8;
  v16 = a5;
  v17 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_100444FC4(a3, v8, a5, &protocol witness table for LayoutViewPlaceholder, v13, a1, v12);
  sub_10002A400(v12, v12[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v10 = v9;
  sub_100007000(v12);
  sub_100446348(v13);
  return v10;
}

id sub_100444F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100444FC4@<X0>(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v127 = a5;
  v125 = a4;
  v126 = a3;
  v119 = a2;
  v124 = a1;
  v128 = a7;
  v8 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy.Priority();
  v137 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy();
  v136 = *(v114 - 8);
  __chkstk_darwin(v114);
  v122 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = type metadata accessor for HorizontalAlignmentLayout.HorizontalGravity();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for HorizontalAlignmentLayout.ContainerDestinationOffset();
  v132 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for HorizontalAlignmentLayout.ChildSourceOffset();
  v130 = *(v115 - 8);
  __chkstk_darwin(v115);
  v107 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for HorizontalAlignmentLayout.VerticalAnchor();
  v133 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for HorizontalAlignmentLayout.Child();
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v95 - v17;
  v18 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v109 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v129 = *(v108 - 1);
  __chkstk_darwin(v108);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v29)
  {
    sub_10002849C(&qword_10096FC30);
    v30 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v135 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B1890;
    v136 = v32;
    v137 = v32 + v31;
    v33 = v124;
    ObjectType = swift_getObjectType();
    v146 = v119;
    v144 = v33;
    *(&v142 + 1) = &type metadata for CGFloat;
    v143 = &protocol witness table for CGFloat;
    *&v141 = 0;
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    v112 = v24;
    v34 = *(v24 + 13);
    v123 = (v24 + 104);
    v134 = v34;
    v106 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v133) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v129;
    v132 = *(v129 + 104);
    v36 = v108;
    (v132)(v22);
    v138 = _swiftEmptyArrayStorage;
    v131 = sub_1004463A8(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v130 = sub_10002849C(&unk_10098D830);
    v124 = sub_1000364CC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v122 = *(v109 + 8);
    v122(v20, v18);
    v121 = *(v35 + 8);
    v129 = v35 + 8;
    (v121)(v22, v36);
    v37 = *(v112 + 1);
    v112 += 8;
    v120 = v37;
    v38 = v18;
    v39 = v106;
    (v37)(v27, v106);
    sub_10002B894(v139, &qword_1009799E0);
    sub_100007000(&v141);
    sub_100007000(&v144);
    v40 = v126;
    ObjectType = swift_getObjectType();
    v146 = v125;
    v144 = v40;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    (v134)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v132)(v22, v133, v36);
    *&v139[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v122(v20, v38);
    (v121)(v22, v36);
    (v120)(v27, v39);
    sub_10002B894(&v141, &qword_1009799E0);
    sub_100007000(&v144);
    v41 = type metadata accessor for VerticalFlowLayout();
    v42 = v128;
    v128[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_1000056E0(v42);
    return VerticalFlowLayout.init(expandChildrenToFit:children:)();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v146 = &protocol witness table for CGFloat;
    v144 = 0;
    v44 = v130;
    v101 = *(v130 + 104);
    v129 = v130 + 104;
    v45 = v107;
    v46 = v115;
    v101(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v115);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = v110;
    *v110 = v47;
    v49 = v8;
    v50 = v132;
    v51 = *(v132 + 104);
    v109 = v132 + 104;
    v112 = v51;
    v52 = v116;
    (v51)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v116);
    static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
    v53 = *(v50 + 8);
    v132 = v50 + 8;
    v108 = v53;
    (v53)(v48, v52);
    v54 = *(v44 + 8);
    v130 = v44 + 8;
    v106 = v54;
    v54(v45, v46);
    *(&v142 + 1) = &type metadata for Double;
    v143 = &protocol witness table for Double;
    *&v141 = 0;
    v55 = v134;
    v56 = v134[13];
    v104 = (v134 + 13);
    v105 = v56;
    v57 = v117;
    v56(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v135);
    v58 = v136;
    v59 = v137;
    v60 = *(v137 + 104);
    v102 = v137 + 104;
    v103 = v60;
    v61 = v121;
    v96 = v49;
    v60(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v49);
    v62 = v122;
    static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
    v63 = *(v59 + 8);
    v137 = v59 + 8;
    v100 = v63;
    v63(v61, v49);
    v64 = v113;
    static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
    v65 = *(v58 + 8);
    v136 = v58 + 8;
    v124 = v65;
    v65(v62, v114);
    v66 = v55[1];
    v134 = v55 + 1;
    v119 = v66;
    v66(v57, v135);
    v67 = *(v133 + 8);
    v133 += 8;
    v99 = v67;
    v68 = v64;
    v67(v64, v118);
    sub_100007000(&v141);
    sub_100007000(&v144);
    v69 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v70 = v115;
    v71 = v101;
    v101(v45, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v115);
    v72 = sub_10002849C(&qword_100985BB8);
    v73 = swift_allocBox();
    v75 = v74;
    v76 = *(v72 + 48);
    v97 = v120[2];
    v98 = (v120 + 2);
    v97(v74, v131, v123);
    v71(v75 + v76, v69, v70);
    *v48 = v73;
    v77 = v116;
    (v112)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v116);
    static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
    (v108)(v48, v77);
    v106(v45, v70);
    v78 = v117;
    v79 = v135;
    v105(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v135);
    v80 = v121;
    v81 = v96;
    v103(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v96);
    v82 = v122;
    static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
    v100(v80, v81);
    v146 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v144 = 0;
    v83 = v111;
    static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
    v124(v82, v114);
    v119(v78, v79);
    v99(v68, v118);
    sub_100007000(&v144);
    sub_10002849C(&qword_100985BC0);
    v84 = v120;
    v85 = v120[9];
    v86 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007B1890;
    v88 = v87 + v86;
    v89 = v131;
    v90 = v123;
    v91 = v97;
    v97(v88, v131, v123);
    v91(v88 + v85, v83, v90);
    v92 = type metadata accessor for HorizontalAlignmentLayout();
    v93 = v128;
    v128[3] = v92;
    v93[4] = sub_1004463A8(&qword_100985BC8, &type metadata accessor for HorizontalAlignmentLayout);
    v93[5] = sub_1004463A8(&unk_100985BD0, &type metadata accessor for HorizontalAlignmentLayout);
    sub_1000056E0(v93);
    HorizontalAlignmentLayout.init(children:)();
    v94 = v84[1];
    v94(v83, v90);
    return (v94)(v89, v90);
  }
}

__n128 sub_1004461A8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1004461CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100446214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100446280(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10044629C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004462E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004463A8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004463F0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Shelf();
  sub_10044A2D0(&qword_100985D70, &type metadata accessor for Shelf);
  v2 = dispatch thunk of ShelfModel.items.getter();
  if (*(v2 + 16))
  {
    sub_10002C0AC(v2 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1004464AC()
{
  v15 = v0;
  sub_10044A2D0(&qword_100985D70, &type metadata accessor for Shelf);
  v1 = dispatch thunk of ShelfModel.items.getter();
  if (*(v1 + 16))
  {
    sub_10002C0AC(v1 + 32, v14);

    sub_10002A400(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    v3 = dispatch thunk of ShelfModel.items.getter();
    v4 = *(v3 + 16);
    v5 = v4 != 0;
    v6 = v4 - v5;
    if (v4 >= v5)
    {
      v7 = v4 - v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + 1;
    result = v3 + 40 * v5 + 32;
    while (1)
    {
      v10 = v6 == 0;
      if (!v6)
      {
LABEL_9:

        sub_100007000(v14);
        return v10;
      }

      if (!--v8)
      {
        break;
      }

      v11 = result + 40;
      --v6;
      sub_10002C0AC(result, v13);
      sub_10002A400(v13, v13[3]);
      v12 = swift_getDynamicType();
      sub_100007000(v13);
      result = v11;
      if (v12 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_10044664C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004464AC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10044667C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel;
  type metadata accessor for DynamicLabel();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  if (qword_10096DC30 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_1000056A8(v12, qword_1009D0458);
  sub_10044A1A8(v13, &v4[v11]);
  v34.receiver = v4;
  v34.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
  sub_10002849C(&qword_100973210);
  v20 = swift_allocObject();
  v33 = xmmword_1007B0B70;
  *(v20 + 16) = xmmword_1007B0B70;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B0B70;
  *(v22 + 32) = v21;
  sub_10002849C(&qword_1009711E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  v26 = sub_10071C0E4(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_1009711F0);
  result = swift_arrayDestroy();
  if (!(v26 >> 62))
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_1004483D8();
    sub_10002849C(&qword_10097B110);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B10D0;
    *(v32 + 32) = type metadata accessor for UITraitLegibilityWeight();
    *(v32 + 40) = &protocol witness table for UITraitLegibilityWeight;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v28 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v26 + 8 * i + 32);
      }

      v31 = v30;
      [v18 addSubview:{v30, v33}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_100446A44(double *a1)
{
  v2 = v1;
  v44 = type metadata accessor for DynamicTextAppearance();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  __chkstk_darwin(v8);
  v47 = &v39 - v9;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v43 = type metadata accessor for FontSource();
  v13 = *(v43 - 8);
  __chkstk_darwin(v43);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v39 - v20);
  v22 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10044A1A8(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (static FontUseCase.== infix(_:_:)() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_10044A270(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_10044A270(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v41 = *&v2[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_10044A1A8(&v2[v22], v18);
  v42 = v12;
  v29 = v44;
  v40 = v22;
  v30 = v16[6];
  v31 = type metadata accessor for FontUseCase();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v43;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v43);
  isa = FontSource.font(compatibleWith:)(v28).super.isa;
  (*(v13 + 8))(v15, v32);
  v34 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  ArtworkView.preferredSymbolConfiguration.setter();
  [v2 setNeedsLayout];
  sub_10044A1A8(&v2[v40], v18);
  v35 = v45;
  DynamicTextAppearance.init()();
  v36 = v46;
  DynamicTextAppearance.withFontUseCase(_:)();
  v37 = *(v4 + 8);
  v37(v35, v29);
  v38 = v47;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v37(v36, v29);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v37(v38, v29);
  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
  return [v2 setNeedsLayout];
}

uint64_t sub_100446F4C()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LayoutRect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel];
  v4[8] = type metadata accessor for DynamicLabel();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
  v4[3] = type metadata accessor for ArtworkView();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10044A1A8(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_100447138(v15, v16, v17, v18);
  sub_10044A270(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100447138(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v12 = v4 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v14 = *(v12 + *(v13 + 28));
  v15 = MinY + v14;
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Width = CGRectGetWidth(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v17 = CGRectGetHeight(v25) - v14 - *(v12 + *(v13 + 32));
  sub_100031660(v5, &v19, &qword_100975610);
  if (v20)
  {
    sub_100005A38(&v19, v21);
    sub_10002A400(v21, v22);
    Measurable.measuredSize(fitting:in:)();
    sub_10002A400(v21, v22);
    v26.origin.x = MinX;
    v26.origin.y = v15;
    v26.size.width = Width;
    v26.size.height = v17;
    CGRectGetMinX(v26);
    v27.origin.y = v15;
    v27.origin.x = MinX;
    v27.size.width = Width;
    v27.size.height = v17;
    CGRectGetMidY(v27);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v21);
  }

  else
  {
    sub_10002B894(&v19, &qword_100975610);
  }

  sub_10002A400((v5 + 40), *(v5 + 64));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400((v5 + 40), *(v5 + 64));
  v28.origin.y = v15;
  v28.origin.x = MinX;
  v28.size.width = Width;
  v28.size.height = v17;
  CGRectGetMidY(v28);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

double sub_100447490(void *a1, double a2)
{
  v5 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v12 = a2 + 0.0;
  sub_100031660(v2, &v22, &qword_100975610);
  if (v23)
  {
    sub_100005A38(&v22, v24);
    sub_10002A400(v24, v25);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v24);
  }

  else
  {
    sub_10002B894(&v22, &qword_100975610);
  }

  sub_10002A400((v2 + 40), *(v2 + 64));
  v13 = a1;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v14 = v21;
  sub_10044A1A8(v11, v21);
  v15 = *(v5 + 24);
  v16 = type metadata accessor for FontUseCase();
  (*(*(v16 - 8) + 32))(v10, v14 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17 = [v13 traitCollection];
  v25 = v7;
  v26 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v24);
  (*(v8 + 16))(v18, v10, v7);
  CGFloat.scalingLike(_:with:)();

  (*(v8 + 8))(v10, v7);
  sub_100007000(v24);
  return v12;
}

void sub_100447800(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_10044A1A8(v15, v13);
    v16 = *(v10 + 24);
    v17 = type metadata accessor for FontUseCase();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18 = v2;
    isa = FontSource.font(compatibleWith:)(v14).super.isa;
    (*(v7 + 8))(v9, v6);
    v20 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_10044A270(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();

    v21 = *&v18[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
    [v21 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v21 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_10044A2D0(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    v23.value.super.isa = 0;
    v23.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v23, v11);
  }
}

uint64_t sub_100447BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for FontSource();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v42)
  {
    sub_10002B894(v41, &unk_10097DBE0);
    goto LABEL_8;
  }

  sub_10002849C(&qword_100973D50);
  type metadata accessor for SearchAdAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v32 = 1;
    v31 = v40;
    goto LABEL_9;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17(v13, v10);
  if (v41[0] != 1 || (, v18 = Action.artwork.getter(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = ShelfLayoutContext.traitCollection.getter();
  v20 = type metadata accessor for ShelfLayoutContext();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v39;
  v23 = v19;
  sub_10044814C(v7, v39);
  sub_10002B894(v7, &qword_10097F480);
  v24 = *(v8 + 24);
  v25 = type metadata accessor for FontUseCase();
  v26 = v36;
  (*(*(v25 - 8) + 16))(v36, v22 + v24, v25);
  v28 = v37;
  v27 = v38;
  (*(v37 + 104))(v26, enum case for FontSource.useCase(_:), v38);
  isa = FontSource.font(compatibleWith:)(v23).super.isa;
  (*(v28 + 8))(v26, v27);
  v30 = [objc_opt_self() configurationWithFont:isa scale:1];

  dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();
  Artwork.contentMode.getter();
  v31 = v40;
  ComponentPrefetchSizing.init(size:contentMode:)();

  sub_10044A270(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v32 = 0;
LABEL_9:
  v33 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v33 - 8) + 56))(v31, v32, 1, v33);
}

uint64_t sub_10044814C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    sub_100031660(a1, v10, &qword_10097F480);
    v11 = type metadata accessor for ShelfLayoutContext();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10002B894(v10, &qword_10097F480);
LABEL_8:
      if (qword_10096DC30 != -1)
      {
        swift_once();
      }

      v15 = qword_1009D0458;
      goto LABEL_11;
    }

    ShelfLayoutContext.contentPageGrid.getter();
    (*(v12 + 8))(v10, v11);
    PageGrid.columnCount.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_10096DC38 != -1)
  {
    swift_once();
  }

  v15 = qword_1009D0470;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_1000056A8(v16, v15);
  return sub_10044A1A8(v17, a2);
}

uint64_t sub_1004483D8()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicTextAppearance();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v32 - v5;
  __chkstk_darwin(v6);
  v35 = &v32 - v7;
  __chkstk_darwin(v8);
  v36 = &v32 - v9;
  v10 = type metadata accessor for FontSource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  ArtworkView.shouldSymbolImageSelfSize.setter();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10044A1A8(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = type metadata accessor for FontUseCase();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  isa = FontSource.font(compatibleWith:)(v19).super.isa;
  (*(v11 + 8))(v13, v10);
  v24 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  ArtworkView.preferredSymbolConfiguration.setter();
  [v1 setNeedsLayout];
  sub_10044A1A8(v1 + v20, v18);
  v25 = v33;
  DynamicTextAppearance.init()();
  v26 = v34;
  DynamicTextAppearance.withFontUseCase(_:)();
  v27 = *(v37 + 8);
  v28 = v25;
  v29 = v38;
  v27(v28, v38);
  v30 = v35;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v27(v26, v29);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v27(v30, v29);
  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
}

id sub_1004487FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004488C0()
{
  result = type metadata accessor for SearchActionContentView.Layout.Metrics(319);
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

void sub_1004489C8()
{
  sub_100448A64();
  if (v0 <= 0x3F)
  {
    sub_100448AC8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchActionContentView.Layout.Metrics(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100448A64()
{
  if (!qword_10098A3E0)
  {
    sub_10002D1A8(&unk_10097E960);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098A3E0);
    }
  }
}

unint64_t sub_100448AC8()
{
  result = qword_10097E940;
  if (!qword_10097E940)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10097E940);
  }

  return result;
}

void sub_100448B54()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FontUseCase();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_100448C3C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_100005644(v7, a2);
  v8 = sub_1000056A8(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, a4);
  (*(*(v9 - 8) + 16))(v8 + v7[6], v10, v9);
  __asm { FMOV            V0.2D, #21.0 }

  *v8 = result;
  v8[1].n128_u64[0] = 0x4024000000000000;
  *(v8->n128_u64 + v7[7]) = 0x401C000000000000;
  *(v8->n128_u64 + v7[8]) = 0x4018000000000000;
  *(v8->n128_u64 + v7[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_100448D58(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((static FontUseCase.== infix(_:_:)() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_100448E18(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v81 = *(v2 - 8);
  __chkstk_darwin(v2);
  v80 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v79);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTextAppearance();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v69 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = v62 - v9;
  __chkstk_darwin(v10);
  v72 = v62 - v11;
  __chkstk_darwin(v12);
  v73 = v62 - v13;
  v14 = type metadata accessor for LabelPlaceholder();
  v74 = *(v14 - 8);
  v75 = v14;
  __chkstk_darwin(v14);
  v71 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FontSource();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v62 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v76 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAdAction();
  sub_10044A2D0(&unk_100983980, &type metadata accessor for SearchAdAction);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v83[0])
  {
    return 0.0;
  }

  v29 = Action.title.getter();
  if (v30)
  {
    v62[0] = v30;
    v62[1] = v29;
    v63 = v2;
    v64 = v5;
    v31 = type metadata accessor for ItemLayoutContext();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v65 = a1;
    ItemLayoutContext.subscript.getter();

    v33 = v83[0];
    sub_100031660(v26, v23, &unk_1009731E0);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10002B894(v23, &unk_1009731E0);
      v34 = 1;
    }

    else
    {
      ItemLayoutContext.parentShelfLayoutContext.getter();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = type metadata accessor for ShelfLayoutContext();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v76;
    sub_10044814C(v20, v76);

    sub_10002B894(v20, &qword_10097F480);
    sub_10002B894(v26, &unk_1009731E0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v38 = v83[0];
    v39 = *(v27 + 24);
    v40 = type metadata accessor for FontUseCase();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v66;
    v42 = v67;
    (*(v66 + 104))(v17, enum case for FontSource.useCase(_:), v67);
    isa = FontSource.font(compatibleWith:)(v38).super.isa;
    (*(v41 + 8))(v17, v42);
    v44 = [objc_opt_self() configurationWithFont:isa scale:1];

    v45 = Action.artwork.getter();

    v68 = v44;
    if (v45)
    {
      v46 = v44;
      dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();
    }

    v47 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v48 = LayoutViewPlaceholder.init(representing:)();
    v49 = v69;
    DynamicTextAppearance.init()();
    v50 = v70;
    DynamicTextAppearance.withFontUseCase(_:)();
    v51 = *(v77 + 8);
    v52 = v37;
    v53 = v78;
    v51(v49, v78);
    v54 = v72;
    DynamicTextAppearance.withNumberOfLines(_:)();
    v51(v50, v53);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v51(v54, v53);
    LabelPlaceholder.Options.init(rawValue:)();
    v55 = v71;
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.layoutTextView.getter();
    (*(v74 + 8))(v55, v75);
    v56 = v64;
    sub_10002C0AC(v83, (v64 + 5));
    v56[3] = v47;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    *v56 = v48;
    sub_10044A1A8(v52, v56 + *(v79 + 24));
    swift_getKeyPath();

    v57 = v80;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v59 = v58;
    (*(v81 + 8))(v57, v63);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_100447490(v82, v59);
    v35 = v60;

    swift_unknownObjectRelease();
    sub_10044A270(v56, type metadata accessor for SearchActionContentView.Layout);
    sub_100007000(v83);
    sub_10044A270(v52, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

uint64_t sub_100449860(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAdAction();
  sub_10044A2D0(&unk_100983980, &type metadata accessor for SearchAdAction);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v27)
  {

    v18 = Action.artwork.getter();

    if (v18)
    {
      v26[0] = v18;
      v26[1] = v2;
      v26[2] = a2;
      v19 = type metadata accessor for ItemLayoutContext();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v13, a1, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v21 = v27;
      sub_100031660(v13, v10, &unk_1009731E0);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_10002B894(v10, &unk_1009731E0);
        v22 = 1;
      }

      else
      {
        ItemLayoutContext.parentShelfLayoutContext.getter();
        (*(v20 + 8))(v10, v19);
        v22 = 0;
      }

      v23 = type metadata accessor for ShelfLayoutContext();
      (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
      sub_10044814C(v7, v16);

      sub_10002B894(v7, &qword_10097F480);
      sub_10002B894(v13, &unk_1009731E0);
      v24 = Artwork.config(using:)();
      sub_10002849C(&qword_100973210);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007B0B70;
      *(v25 + 32) = v24;

      ArtworkLoader.prefetchArtwork(using:)(v25);

      return sub_10044A270(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100449CA8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  type metadata accessor for SearchAdAction();
  sub_10044A2D0(&unk_100983980, &type metadata accessor for SearchAdAction);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel];

    Action.title.getter();
    if (v22)
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = Action.presentationStyle.getter();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_100028BB8();
      v25 = static UIColor.primaryText.getter();
      [v21 setTextColor:v25];
    }

    v26 = type metadata accessor for ItemLayoutContext();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_100031660(v13, v10, &unk_1009731E0);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10002B894(v10, &unk_1009731E0);
      v29 = 1;
    }

    else
    {
      ItemLayoutContext.parentShelfLayoutContext.getter();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = type metadata accessor for ShelfLayoutContext();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_10044814C(v7, v19);

    sub_10002B894(v7, &qword_10097F480);
    sub_10002B894(v13, &unk_1009731E0);
    v31 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_10044A1A8(v2 + v31, v36);
    swift_beginAccess();
    sub_10044A20C(v19, v2 + v31);
    swift_endAccess();
    sub_100446A44(v32);
    sub_10044A270(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10044A270(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10044A1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044A2D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10044A318()
{
  v1 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel;
  type metadata accessor for DynamicLabel();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  if (qword_10096DC30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_1000056A8(v4, qword_1009D0458);
  sub_10044A1A8(v5, v0 + v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10044A424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v76 = type metadata accessor for PageGrid.Direction();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for PageGrid();
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v16 - 8);
  v81 = sub_10002849C(&qword_1009812D8);
  v17 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v69 - v18;
  type metadata accessor for Uber();
  sub_10044B678(&qword_1009812E0, &type metadata accessor for Uber);
  v83 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v20 = v85[0];
  if (v85[0])
  {
    v73 = v17;
    v74 = v15;
    v78 = v10;
    v21 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v22 = *(v3 + v21);
    v79 = v20;
    if (!v22 || (v23 = *(v22 + OBJC_IVAR____TtC8AppStore14UberHeaderView_uber), , v85[0] = v20, !v23) || (v85[5] = v23, sub_10044B678(&qword_100973B40, &type metadata accessor for Uber), , v24 = dispatch thunk of static Equatable.== infix(_:_:)(), , , (v24 & 1) == 0))
    {
      v25 = *(v3 + v21);
      v26 = type metadata accessor for ArtworkLoader();
      v27 = type metadata accessor for BaseObjectGraph();
      v28 = v25;
      v72 = v26;
      v71 = v27;
      inject<A, B>(_:from:)();
      if (v25)
      {
        v84 = v28;
        type metadata accessor for UberHeaderView();
        sub_10044B678(&qword_100970F28, type metadata accessor for UberHeaderView);
        v29 = v28;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

        sub_10003D614(v85);
      }

      else
      {
      }

      ItemLayoutContext.state.getter();
      StateLens.init(_:)();
      swift_getKeyPath();
      sub_1001F1774();
      v30 = v79;

      StateLens<A>.subscript.getter();

      v31 = v85[0];
      v32 = objc_allocWithZone(type metadata accessor for UberHeaderView());
      v33 = v82;

      v34 = sub_100112C00(v30, (v31 & 1) == 0, v33);
      v35 = *(v3 + v21);
      *(v3 + v21) = v34;
      v36 = v34;
      sub_1005E2138(v35);

      v70 = v21;
      v69 = v3;
      v37 = *(v3 + v21);
      if (v37)
      {
        v38 = v37;
        v39 = Uber.title.getter();
        sub_1001136B0(v39, v40);
      }

      v41 = v5;
      v42 = *(v5 + 104);
      v43 = v76;
      v42(v9, enum case for PageGrid.Direction.vertical(_:), v76);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v44 = *(v77 + 8);
      v45 = v78;
      v44(v12, v78);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.safeAreaInsets.getter();
      v46 = v45;
      v47 = v44;
      v44(v12, v46);
      (*(v41 + 16))(v75, v9, v43);
      sub_10069F96C(0.0);
      v48 = v74;
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v41 + 8))(v9, v43);
      v49 = v70;
      v50 = v69;
      v51 = *(v69 + v70);
      if (v51)
      {
        v52 = v51;
        PageGrid.horizontalMargins.getter();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
        [*&v52[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
        if (v54 == v65 && v56 == v62 && v58 == v63 && v60 == v64 || ([*&v52[v61] setLayoutMargins:{v54, v56, v58, v60, v69, v70}], objc_msgSend(v52, "invalidateIntrinsicContentSize"), (v66 = *&v52[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) == 0))
        {
        }

        else
        {

          v66(v67);

          sub_10001F63C(v66);
        }
      }

      inject<A, B>(_:from:)();
      sub_10044AD38(v79, v83, v85[0]);

      swift_beginAccess();
      v68 = *(v50 + v49);
      if (v68)
      {
        swift_endAccess();
        [v68 setNeedsLayout];

        v47(v48, v78);
        return (*(v73 + 8))(v80, v81);
      }

      v47(v48, v78);
      (*(v73 + 8))(v80, v81);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_10044AD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v5 = type metadata accessor for AspectRatio();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Uber.Style();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  v14 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v14 - 8);
  v53 = sub_10002849C(&qword_1009812D8);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v15;
  v16 = type metadata accessor for Uber.AssetType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.assetType.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v20 == enum case for Uber.AssetType.video(_:))
    {
      result = Uber.video.getter();
      if (!result)
      {
        return result;
      }

      Video.preview.getter();
    }

    else
    {
      if (v20 != enum case for Uber.AssetType.icon(_:))
      {
        return (*(v17 + 8))(v19, v16);
      }

      result = Uber.iconArtwork.getter();
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v21 = v59;
  v22 = UITraitCollection.isSizeClassCompact.getter();

  if (v22)
  {
    result = Uber.compactArtwork.getter();
    if (!result)
    {
      return result;
    }

LABEL_12:

    v24 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (!v25)
    {
    }

    v41 = v25;
    ItemLayoutContext.state.getter();
    StateLens.init(_:)();
    v26 = v47;
    Uber.style.getter();
    swift_getKeyPath();
    sub_1001F1774();
    StateLens<A>.subscript.getter();

    v27 = v56;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v29 = v28;
    v30 = *(v46 + 8);
    v30(v9, v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v32 = v31;
    v30(v9, v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v33 = v58;
    sub_1001158BC(v58, v26, (v27 & 1) == 0, v32, v29, 0);
    v34 = UITraitCollection.isSizeClassCompact.getter();
    v36 = v49;
    v35 = v50;
    if (v34)
    {
      v37 = v42;
      (*(v49 + 104))(v42, enum case for Uber.Style.inline(_:), v50);
      sub_10044B678(&qword_100973B50, &type metadata accessor for Uber.Style);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v56 == v54 && v57 == v55)
      {
        (*(v36 + 8))(v37, v35);

LABEL_21:
        Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v36 + 8))(v26, v35);
        type metadata accessor for UberHeaderView();
        sub_10044B678(&qword_100973B48, type metadata accessor for UberHeaderView);
        v40 = v41;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        return (*(v48 + 8))(v52, v53);
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v36 + 8))(v37, v35);

      if (v38)
      {
        goto LABEL_21;
      }
    }

    Artwork.size.getter();
    v39 = v43;
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    (*(v44 + 8))(v39, v45);
    goto LABEL_21;
  }

  result = Uber.artwork.getter();
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10044B550@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10044B5AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10044B678(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10044B6D4()
{
  result = qword_100985D78;
  if (!qword_100985D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985D78);
  }

  return result;
}

unint64_t sub_10044B72C()
{
  result = qword_100985D80;
  if (!qword_100985D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985D80);
  }

  return result;
}

void sub_10044B780(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_10044B830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v6 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout;
  *(v2 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout) = 0;
  v7 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 50) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_presenter) = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_artworkLoader) = v25;
  sub_10002849C(&qword_100985EF8);
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_shelfDataSource) = sub_1003C940C(v9);
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
  v12 = v10;

  if (v12)
  {

    v13 = sub_1000659FC(v12, a2);

    swift_unknownObjectWeakAssign();
    sub_1004501DC(&qword_100985F00, v14, type metadata accessor for PurchasesViewController);
    v15 = v13;
    PurchasesContentPresenter.view.setter();
    v16 = v15;
    PurchasesContentPresenter.pageTitle.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setTitle:v17];

    *(v16 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 0;
    v18 = [v16 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = sub_1004501DC(&qword_100985F08, 255, &type metadata accessor for PurchasesContentPresenter);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = v19;

    v22 = v16;
    v23 = sub_10045003C(a1, v22, sub_1002EA09C, v21, a2);

    v24 = *&v22[OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing];
    *&v22[OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing] = v23;
  }

  else
  {
    __break(1u);
  }
}

void sub_10044BC28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PurchasesContentMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v99 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v99 - v12;
  v113.receiver = v1;
  v113.super_class = ObjectType;
  objc_msgSendSuper2(&v113, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_100005744(0, &qword_100970180);
  v17 = static UIColor.defaultBackground.getter();
  [v15 setBackgroundColor:v17];

  v18 = [v1 collectionView];
  if (!v18)
  {
    return;
  }

  v106 = v13;
  v107 = v9;
  v103 = v6;
  v104 = v3;
  v109 = v4;
  v110 = v16;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_shelfDataSource];
  v108 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v112.receiver = v24;
  v112.super_class = v23;

  v26 = objc_msgSendSuper2(&v112, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v105 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v111.receiver = v32;
  v111.super_class = v31;
  v35 = objc_msgSendSuper2(&v111, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler];
  *v40 = sub_100450240;
  v40[1] = v39;

  sub_10001F63C(v41);

  v42 = *&v1[v36];
  v43 = v42;
  sub_1000632CC(v42);
  v44 = *&v1[v27];
  v45 = v44;
  sub_1000632E0(v44);
  v46 = v108;
  v47 = v108;
  v48 = static UIColor.defaultBackground.getter();
  [v47 setBackgroundColor:v48];

  [v47 setAlwaysBounceVertical:1];
  v49 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout;
  v50 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout];
  if (!v50)
  {
    goto LABEL_18;
  }

  [v50 setSeparatorInset:{0.0, 92.0, 0.0, 20.0}];
  v51 = *&v1[v49];
  v52 = v104;
  if (!v51)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v51 _setShowsAdditionalSeparators:0];
  sub_10002849C(&qword_100985F38);
  v53 = type metadata accessor for Shelf.ContentType();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1007B10D0;
  (*(v54 + 104))(v56 + v55, enum case for Shelf.ContentType.purchasesLockup(_:), v53);
  v57 = sub_1000833C4(v56);
  swift_setDeallocating();
  (*(v54 + 8))(v56 + v55, v53);
  swift_deallocClassInstance();
  v58 = v47;
  sub_100450248(v57, v46);

  sub_100450658(v46);

  PurchasesContentPresenter.didLoad()();
  v59 = v106;
  PurchasesContentPresenter.mode.getter();
  v60 = v109;
  v61 = v107;
  (*(v109 + 104))(v107, enum case for PurchasesContentMode.hidden(_:), v52);
  sub_1004501DC(&qword_100985F28, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v60 + 8);
  v62 = v60 + 8;
  v63 = v64;
  v64(v61, v52);
  v64(v59, v52);
  if ((v56 & 1) == 0)
  {
    v101 = v58;
    v102 = v63;
    v65 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v65 setLayoutMargins:?];
    sub_10044C7EC();
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl;
    v67 = *&v65[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl];

    [v67 removeTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v68 = &v65[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler];
    v69 = *&v65[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler];
    *v68 = sub_100450894;
    v68[1] = v66;
    swift_retain_n();
    sub_10001F63C(v69);

    v70 = v67;
    v71 = v65;
    [v70 addTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v72 = PurchasesContentPresenter.purchasesContentModes.getter();
    v73 = *(v72 + 16);
    if (v73)
    {
      v99 = v1;
      v100 = v72;
      v74 = *(v109 + 16);
      v75 = v72 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v107 = *(v109 + 72);
      v108 = v74;
      v109 = v62;
      v77 = v102;
      v76 = v103;
      do
      {
        (v108)(v76, v75, v52);
        v78 = v71;
        v79 = *&v71[v110];
        PurchasesContentMode.displayTitle.getter();
        v80 = String._bridgeToObjectiveC()();

        v81 = PurchasesContentMode.segmentIndex.getter();
        v77(v76, v52);
        [v79 insertSegmentWithTitle:v80 atIndex:v81 animated:0];

        v71 = v78;
        v75 += v107;
        --v73;
      }

      while (v73);

      v1 = v99;
    }

    else
    {
    }

    v82 = *&v71[v110];
    v83 = v106;
    PurchasesContentPresenter.mode.getter();
    v84 = PurchasesContentMode.segmentIndex.getter();
    v102(v83, v52);
    [v82 setSelectedSegmentIndex:v84];

    v58 = v101;
  }

  v85 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar];
  v86._countAndFlagsBits = 0x484352414553;
  v86._object = 0xE600000000000000;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  localizedString(_:comment:)(v86, v87);
  v88 = String._bridgeToObjectiveC()();

  [v85 setPlaceholder:v88];

  [v85 setHidden:1];
  [v85 setDelegate:v1];
  v89 = [objc_allocWithZone(UIImage) init];
  [v85 setBackgroundImage:v89];

  v90 = [v1 view];
  if (!v90)
  {
    goto LABEL_20;
  }

  v91 = v90;
  [v90 addSubview:v85];

  v92 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing];
  if (v92)
  {
    v93 = objc_allocWithZone(UIContextMenuInteraction);
    v94 = v92;
    v95 = [v93 initWithDelegate:v94];
    [v58 addInteraction:v95];
  }

  v96 = [v1 navigationItem];
  v97 = [v96 rightBarButtonItem];

  v98 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem] = v97;
}

void sub_10044C6FC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];
    if (v4)
    {
      v5 = v4;
      [v4 endEditing:1];

      v6 = *&v3[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar];
      [a1 contentOffset];
      [v6 frame];
      CGRectGetHeight(v7);
      [v6 frame];
      [v6 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10044C7EC()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_1006E358C(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView];
  v50[3] = type metadata accessor for SegmentedControlView();
  v50[4] = &protocol witness table for UIView;
  v50[0] = v10;
  sub_10002C0AC(v50, v49);
  sub_10002C0AC(v49, v48);
  v11 = swift_allocObject();
  sub_100177264(v49, v11 + 16);
  v12 = v10;
  sub_100007000(v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_100007000(v48);
    return;
  }

  v14 = Strong;
  v15 = *(v8 + 24);
  if (v15)
  {
    [v15 setHidden:1];
  }

  v16 = v12;
  [v16 setHidden:0];
  v17 = [v16 superview];
  v18 = [v14 contentView];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_100005744(0, &qword_100972EB0);
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = v17;
  }

  else if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v21 = [v14 contentView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v16 setFrame:{v23, v25, v27, v29}];
  [v16 setAutoresizingMask:18];
  v30 = [v14 contentView];
  [v30 addSubview:v16];

LABEL_18:
  v31 = *(v8 + 24);
  *(v8 + 24) = v10;
  v32 = v16;

  if (*(v8 + 65))
  {
    v33 = [v14 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v51.origin.x = v35;
    v51.origin.y = v37;
    v51.size.width = v39;
    v51.size.height = v41;
    CGRectGetWidth(v51);
    v42 = [v14 contentView];
    sub_10002A400(v48, v48[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  *(v8 + 32) = sub_100403924;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_10040392C(v45, v46, v47);

  sub_100007000(v48);
}

void sub_10044CC24(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10044CC80(a1);
  }
}

id sub_10044CC80(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for PurchasesContentMode();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  [result endEditing:1];

  v11 = [a1 selectedSegmentIndex];
  v12 = enum case for PurchasesContentMode.all(_:);
  v13 = *(v5 + 104);
  v13(v8, enum case for PurchasesContentMode.all(_:), v4);
  v14 = PurchasesContentMode.segmentIndex.getter();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = PurchasesContentMode.segmentIndex.getter(), v15(v8, v4), v16 == v11))
  {
    sub_10044B780(0);
LABEL_5:
    v13(v8, v12, v4);
    return PurchasesContentPresenter.mode.setter();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = PurchasesContentMode.segmentIndex.getter();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v18._object = 0x8000000100813E90;
    v18._countAndFlagsBits = 0xD000000000000014;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    localizedString(_:comment:)(v18, v19);
    v38 = ObjectType;
    v37[0] = v2;
    ObjectType = v2;
    v20 = String._bridgeToObjectiveC()();

    v21 = v38;
    if (v38)
    {
      v22 = sub_10002A400(v37, v38);
      v34[1] = v34;
      v35 = v20;
      v23 = *(v21 - 8);
      v24 = __chkstk_darwin(v22);
      v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v23 + 8))(v26, v21);
      v20 = v35;
      sub_100007000(v37);
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v20 style:0 target:v27 action:"unhideAll"];

    swift_unknownObjectRelease();
    v29 = ObjectType;
    sub_10044B780(v28);
    v30 = [v29 navigationItem];
    v31 = *&v29[OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton];
    [v30 setRightBarButtonItem:v31];

    v32 = [v29 navigationItem];
    v33 = [v32 rightBarButtonItem];

    [v33 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_10044D168(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  ArtworkLoader.isOccluded.setter();
}

void sub_10044D1F0(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  ArtworkLoader.isOccluded.setter();
}

void sub_10044D260()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v1 sizeThatFits:{v15, v17}];
  [v1 frame];
  [v1 setFrame:?];
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    [v1 frame];
    Height = CGRectGetHeight(v51);
    [v19 contentInset];
    [v19 setContentInset:Height];
  }

  v21 = *&v0[OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView];
  if (v21)
  {
    v22 = v21;
    v23 = [v0 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 safeAreaLayoutGuide];

      [v25 layoutFrame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v0 pageMarginInsets];
      v36 = sub_1000CC354(v27, v29, v31, v33, v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [v1 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v36;
      v53.origin.y = v38;
      v53.size.width = v40;
      v53.size.height = v42;
      v44 = CGRectGetHeight(v53);
      [v1 frame];
      v45 = v44 - CGRectGetMaxY(v54);
      v46 = v22;
      [v0 pageMarginInsets];
      v48 = v47;
      v55.origin.x = v36;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      [v46 setFrame:{v48, MaxY, CGRectGetWidth(v55), v45}];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_10044D5A8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_setRequiresColorStatistics_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &StringUserDefaultsDebugSetting;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_10002849C(&unk_100980500);
    sub_100056080();
    v15 = &StringUserDefaultsDebugSetting;
    StateStore.performTransaction<A>(_:)();
    v10 = &selRef_setRequiresColorStatistics_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[35]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[40].base_prots);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_10002849C(&unk_100980500);
    sub_100056080();
    StateStore.performTransaction<A>(_:)();
  }

  else
  {
  }
}

void sub_10044D9F8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for PurchasesContentMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  PurchasesContentPresenter.mode.getter();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_1004501DC(&qword_100985F28, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &StringUserDefaultsDebugSetting;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource];
  v22 = [v20 snapshotPageTraitEnvironment];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v19 reloadData];
  if (v19)
  {
    v34[1] = v34;
    v35 = *(v21 + 24);
    __chkstk_darwin(v23);
    v34[-2] = v19;
    v34[-1] = v21;
    v24 = v19;

    sub_10002849C(&unk_100980500);
    sub_100056080();
    v17 = &StringUserDefaultsDebugSetting;
    StateStore.performTransaction<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[54].base_prots];
  v28 = [v2 collectionView];
  v29 = [v27 v17[54].base_prots];
  *&v26[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[54].base_prots];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = [v28 reloadData];
  if (v28)
  {
    v35 = *(v30 + 24);
    __chkstk_darwin(v32);
    v34[-2] = v28;
    v34[-1] = v30;
    v33 = v28;

    sub_10002849C(&unk_100980500);
    sub_100056080();
    StateStore.performTransaction<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_10044E254()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  if (PurchasesContentPresenter.sectionCount.getter())
  {
    v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }

    __break(1u);
  }

  else
  {
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v8 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v9 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }
  }

  __break(1u);
}

void sub_10044E454()
{
  v1 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      static ViewControllerContainment.remove(_:)();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        static ViewControllerContainment.add(_:to:frame:)();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10044E53C()
{
  v1 = v0;
  type metadata accessor for JUContentUnavailableViewController();
  sub_1004501DC(&qword_100985F20, 255, &type metadata accessor for PurchasesContentPresenter);
  swift_errorRetain();

  v2 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10044E6BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  sub_1006E3954();
  [*&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1004501D4;
  *(v9 + 24) = v8;
  v12[4] = sub_10006F258;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000489A8;
  v12[3] = &unk_1008C36F0;
  v10 = _Block_copy(v12);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_10044E8B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (!v2)
    {
      __break(1u);
      return;
    }

    [v2 reloadData];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionView];

    if (v5)
    {
      [v5 layoutIfNeeded];
    }
  }
}

void sub_10044E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC8AppStore23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_1006E3954();
  }

  else
  {
    v17 = *(v16 + 24);
    if (v17)
    {
      if (*(v16 + 65) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v17 setHidden:1];
          [v19 setMinimumHeight:0.0];
          [v19 setPreferredHeight:0.0];

          *(v16 + 65) = 0;
        }
      }
    }
  }

  [*&v7[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView());

  v21 = sub_1003D8D40(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v7[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v7[v22] = v21;
  v25 = v21;

  [v25 setUserInteractionEnabled:0];
  v26 = [v7 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setNeedsLayout];
}

void sub_10044EBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v3;
    (*(v8 + 32))(&v13[v12], aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10045016C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10006F094;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008C3678;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_10044EDD4(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_10002849C(&qword_10096FCE8);
    v8 = type metadata accessor for IndexPath();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007B10D0;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_10044EF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v103, &unk_1009711D0);
  if (v104)
  {
    sub_100005744(0, &qword_100972EB0);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100005744(0, &qword_1009729E0);
      *v20 = static OS_dispatch_queue.main.getter();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = _dispatchPreconditionTest(_:)();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100975F50;
        v88 = xmmword_100975F60;
        v89 = xmmword_100975F70;
        v85 = xmmword_100975F30;
        v86 = xmmword_100975F40;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100975F30;
        v98 = xmmword_100975F40;
        v100 = xmmword_100975F60;
        v101 = xmmword_100975F70;
        v90 = qword_100975F80;
        v96 = v84;
        v102 = qword_100975F80;
        v99 = xmmword_100975F50;
        sub_100031660(&v85, &v73, &unk_10097F520);
        xmmword_100975F50 = v93;
        xmmword_100975F60 = v94;
        xmmword_100975F70 = v95;
        qword_100975F80 = v96;
        xmmword_100975F30 = v91;
        xmmword_100975F40 = v92;
        sub_10002B894(&v97, &unk_10097F520);
        v32 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
        v33 = sub_10002849C(&unk_100974490);
        sub_10019DADC(&v79, &v73);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10002B894(v16, &unk_100972A00);
        }

        else
        {
          sub_1005F9AF4(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100975F50;
        v76 = xmmword_100975F60;
        v77 = xmmword_100975F70;
        v78 = qword_100975F80;
        v73 = xmmword_100975F30;
        v74 = xmmword_100975F40;
        xmmword_100975F30 = v85;
        xmmword_100975F40 = v86;
        xmmword_100975F50 = v87;
        xmmword_100975F60 = v88;
        xmmword_100975F70 = v89;
        qword_100975F80 = v90;
        sub_10002B894(&v73, &unk_10097F520);
        sub_10019DB38(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10002B894(v103, &unk_1009711D0);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v62 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10002B894(v11, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100005744(0, &qword_1009729E0);
  *v20 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100975F50;
  v88 = xmmword_100975F60;
  v89 = xmmword_100975F70;
  v85 = xmmword_100975F30;
  v86 = xmmword_100975F40;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100975F30;
  v98 = xmmword_100975F40;
  v100 = xmmword_100975F60;
  v101 = xmmword_100975F70;
  v90 = qword_100975F80;
  v96 = v84;
  v102 = qword_100975F80;
  v99 = xmmword_100975F50;
  sub_100031660(&v85, &v73, &unk_10097F520);
  xmmword_100975F50 = v93;
  xmmword_100975F60 = v94;
  xmmword_100975F70 = v95;
  qword_100975F80 = v96;
  xmmword_100975F30 = v91;
  xmmword_100975F40 = v92;
  sub_10002B894(&v97, &unk_10097F520);
  v55 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v56 = sub_10002849C(&unk_100974490);
  sub_10019DADC(&v79, &v73);
  v57 = v67;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10002B894(v57, &unk_100972A00);
  }

  else
  {
    sub_1005F9AF4(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100975F50;
  v76 = xmmword_100975F60;
  v77 = xmmword_100975F70;
  v78 = qword_100975F80;
  v73 = xmmword_100975F30;
  v74 = xmmword_100975F40;
  xmmword_100975F30 = v85;
  xmmword_100975F40 = v86;
  xmmword_100975F50 = v87;
  xmmword_100975F60 = v88;
  xmmword_100975F70 = v89;
  qword_100975F80 = v90;
  sub_10002B894(&v73, &unk_10097F520);
  sub_10019DB38(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_10044F9A0()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing);
}

void sub_10044FCA4(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10002849C(&qword_100985F30);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = type metadata accessor for IndexPath();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100005744(0, &qword_100978E10);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = IndexPath.section.getter();
        AnyHashable.init<A>(_:)();
        v23 = v34;
        StatePath.init(component:)();
        TransientStateStore.removeState(at:recursively:)();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

id sub_10045003C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1004501DC(&qword_100985F08, 255, &type metadata accessor for PurchasesContentPresenter);
  v9 = sub_10002849C(&unk_100985F10);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_10045016C()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_10044EDD4(v2, v3, v4, v5);
}

uint64_t sub_1004501DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100450248(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v40 = &v33[-v10];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100005744(0, &qword_1009729E0);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_10072411C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v38 = v4 + 32;
  v39 = v4 + 16;
  v37 = v4 + 88;
  v36 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v34 = enum case for Shelf.ContentType.informationRibbon(_:);
  v41 = a1;
  v42 = (v4 + 8);

  v24 = 0;
  v35 = v4;
  while (v21)
  {
LABEL_10:
    v26 = v40;
    v27 = *(v4 + 16);
    v27(v40, *(v41 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v3);
    (*(v4 + 32))(v17, v26, v3);
    v28 = v43;
    v27(v43, v17, v3);
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == v36)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v29 == v34)
    {
      type metadata accessor for InformationRibbonCollectionViewCell();
    }

    else
    {
      (*v42)(v43, v3);
      if (!sub_1005D8420())
      {
        goto LABEL_4;
      }
    }

    if (v44)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      Shelf.ContentType.string.getter();
      v31 = v17;
      v32 = String._bridgeToObjectiveC()();

      [v44 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v32];

      v17 = v31;
      v4 = v35;
    }

LABEL_4:
    v21 &= v21 - 1;
    result = (*v42)(v17, v3);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_100450658(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v4 = String._bridgeToObjectiveC()();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView();
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v7 = String._bridgeToObjectiveC()();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v10 = String._bridgeToObjectiveC()();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_100005744(0, &qword_10097F580);
    v11 = swift_getObjCClassFromMetadata();
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_1004508BC()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10002849C(&qword_100970EF0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v43 = v17 + v16;
  v49 = 0x4000000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  v41 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v14;
  v42 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 2 * v27 + v45;
  v49 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v29(v4, v46, v28);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100985F40 = v37;
  return result;
}

uint64_t sub_10045128C()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10002849C(&qword_100970EF0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v43 = v17 + v16;
  v49 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  v41 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v14;
  v42 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 2 * v27 + v45;
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v29(v4, v46, v28);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 4 * v45;
  v49 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100985F48 = v37;
  return result;
}

id sub_100451C5C(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_amsImpressionItems] = &_swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_isCompactSheet] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = v4;
  [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v8 setClipsToBounds:1];

  return v8;
}

uint64_t sub_100451DA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UpsellGridLayout();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UpsellGridLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v30[-v15];
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v14);
  [v1 bounds];
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!(v21 >> 62))
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v33 = v3;
      v22 = objc_opt_self();
      v31 = [v22 areAnimationsEnabled];
      v32 = v22;
      [v22 setAnimationsEnabled:0];
      v23 = [v1 traitCollection];
      v24 = UITraitCollection.isSizeClassCompact.getter();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          CGRectGetWidth(v39);
        }
      }

      UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
      v27 = static UpsellGridLayout.iconCount(fitting:using:in:)();
      v28 = *&v1[v20];
      if (v28 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == v27)
        {
          goto LABEL_10;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) == v27)
      {
LABEL_10:
        (*(v10 + 16))(v12, v16, v9);

        sub_1002A51C0(v29);

        UpsellGridLayout.init(metrics:icons:)();
        UpsellGridLayout.placeChildren(relativeTo:in:)();
        (*(v36 + 8))(v5, v33);
        (*(v34 + 8))(v8, v35);
        (*(v10 + 8))(v16, v9);
        return [v32 setAnimationsEnabled:v31];
      }

      sub_10045222C(width, height);
      goto LABEL_10;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_10045222C(double a1, double a2)
{
  v4 = v2;
  v7 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v7 - 8);
  v75 = &v65 - v8;
  v9 = type metadata accessor for UpsellGridLayout.Metrics();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  result = *&v2[OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader];
  if (!result)
  {
    return result;
  }

  v70 = v12;
  v73 = result;

  v16 = &selRef_setRequiresColorStatistics_;
  v17 = [v2 traitCollection];
  v18 = UITraitCollection.isSizeClassCompact.getter();

  v19 = &StringUserDefaultsDebugSetting;
  if (v18)
  {
    v20 = [v4 window];
    if (v20)
    {
      v21 = v20;
      [v20 frame];
      CGRectGetWidth(v82);
    }
  }

  UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
  static UpsellGridLayout.largeIconSize(fitting:using:in:)();
  v22 = *(v10 + 8);
  v68 = v10 + 8;
  v67 = v22;
  v22(v14, v9);
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews;
  swift_beginAccess();
  v24 = *&v23[v4];
  if (v24 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_100453274();
    goto LABEL_10;
  }

  type metadata accessor for ArtworkView();
  v25 = static ArtworkView.iconArtworkView.getter();
LABEL_10:
  v26 = v25;
  swift_endAccess();
  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_93:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v71 = v27;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v77 = v79;
  v78 = v23;
  if (!*(v4 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon))
  {
    v29 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  swift_retain_n();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v74 = v81;
  v28 = v75;
  ImpressionableArtwork.impressionMetrics.getter();
  v3 = sub_100453A14(v28);
  sub_100453E30(v28);
  if (!v3)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v23 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v3 impressionMetrics:{0.0, 0.0, a1, a2}];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v29 = v80;
LABEL_19:
    ImpressionableArtwork.art.getter();
    Artwork.config(using:)();

    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v23 = v78;
LABEL_20:
    [v4 bounds];
    v30 = [v4 *(v16 + 280)];
    v31 = UITraitCollection.isSizeClassCompact.getter();

    if (v31)
    {
      v32 = [v4 *&v19[43].ivar_base_size];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        CGRectGetWidth(v83);
      }
    }

    v16 = v70;
    UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
    v34 = static UpsellGridLayout.iconSizes(fitting:using:in:)();
    v35 = *(v34 + 16);
    v19 = v73;
    v69 = v34;
    if (v35 >= 2)
    {
      break;
    }

LABEL_76:
    sub_10045334C(v74);

    *(v4 + OBJC_IVAR____TtC8AppStore14UpsellGridView_amsImpressionItems) = v29;

    v51 = v77;
    if (v77 >> 62)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v77;
      v52 = v58;
      if (!v58)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v52 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    if (v52 < 1)
    {
      __break(1u);
      goto LABEL_109;
    }

    v53 = 0;
    v3 = v51 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v55 = v56;
      v57 = [v56 superview];
      if (v57)
      {
        v54 = v57;

        v55 = v54;
      }

      else
      {
        [v4 addSubview:v55];
      }

      ++v53;

      v51 = v77;
    }

    while (v52 != v53);
LABEL_95:
    v23 = v78;
    v59 = *&v78[v4];
    if (v59 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v77;
      v60 = v64;
      v19 = v73;
      if (!v64)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v73;
      if (!v60)
      {
        goto LABEL_104;
      }
    }

    if (v60 >= 1)
    {

      for (i = 0; i != v60; ++i)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v62 = *(v59 + 8 * i + 32);
        }

        v63 = v62;
        [v62 removeFromSuperview];
      }

      v51 = v77;
      v23 = v78;
LABEL_104:
      *&v23[v4] = v51;

      [v4 setNeedsLayout];

      return v67(v16, v9);
    }

LABEL_109:
    __break(1u);
LABEL_110:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v72 = v29;
  v66 = v9;
  v36 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
  v27 = v34;

  swift_beginAccess();
  v16 = 0;
  v76 = v35 - 1;
  v9 = v27 + 7;
  while (1)
  {
    v37 = *(v9 - 1);
    v38 = *v9;
    swift_beginAccess();
    v3 = *&v23[v4];
    v23 = (v3 >> 62);
    if (v3 >> 62)
    {
      break;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_52:
    type metadata accessor for ArtworkView();
    v27 = static ArtworkView.iconArtworkView.getter();
    v23 = v78;
LABEL_53:
    swift_endAccess();
    v3 = v27;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v77 = v79;
    v43 = *(v4 + v36);
    if (v43 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v44 = *(v4 + v36);
    if (v44 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    v46 = v16 % v45;
    swift_beginAccess();
    v47 = *(v4 + v36);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v46 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v27 = *(v47 + 8 * v46 + 32);
    }

    swift_endAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v74 = v81;
    v48 = v75;
    ImpressionableArtwork.impressionMetrics.getter();
    v49 = sub_100453A14(v48);
    sub_100453E30(v48);
    if (v49)
    {
      v50 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v49 impressionMetrics:{0.0, 0.0, v37, v38}];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v72 = v80;
      v19 = v73;
    }

    ImpressionableArtwork.art.getter();
    Artwork.config(using:)();

    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v23 = v78;
LABEL_26:
    ++v16;
    v9 += 2;
    if (v76 == v16)
    {

      v9 = v66;
      v16 = v70;
      v29 = v72;
      goto LABEL_76;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_52;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_29:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v39 = *(v3 + 32);
    }

    v27 = v39;
    if (v23)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_91;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_92;
      }

      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_91;
      }
    }

    v41 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v78[v4] = v3;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v23)
      {
        if (v41 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = v78;
LABEL_47:
          sub_1004A700C(0, 1, 0);
          *&v23[v4] = v3;
          goto LABEL_53;
        }

LABEL_44:
        v23 = v78;
LABEL_46:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        *&v23[v4] = v3;
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
      goto LABEL_44;
    }

    _CocoaArrayWrapper.endIndex.getter();
    v23 = v78;
    goto LABEL_46;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

double sub_100452ECC()
{
  v1 = v0;
  v2 = type metadata accessor for UpsellGridLayout.Metrics();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for UpsellGridLayout();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v8 = [v0 traitCollection];
  v9 = UITraitCollection.isSizeClassCompact.getter();

  if (v9)
  {
    v10 = [v1 window];
    if (v10)
    {
      v11 = v10;
      [v10 frame];
      CGRectGetWidth(v17);
    }
  }

  UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
  swift_beginAccess();

  sub_1002A51C0(v12);

  UpsellGridLayout.init(metrics:icons:)();
  UpsellGridLayout.measurements(fitting:in:)();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  return v14;
}

uint64_t sub_1004531B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader) = a3;

  return sub_10045222C(a4, a5);
}

void sub_100453274()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_1004A710C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_10045334C(unint64_t a1)
{
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for ImpressionMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v17 = a1 & 0xC000000000000001;
      v11 = (v7 + 48);
      v15 = (v7 + 32);
      v12 = (v7 + 8);

      for (i = 0; i != v10; ++i)
      {
        if (v17)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        ImpressionableArtwork.impressionMetrics.getter();
        if ((*v11)(v5, 1, v6) == 1)
        {

          sub_100453E30(v5);
        }

        else
        {
          (*v15)(v9, v5, v6);
          ImpressionsCalculator.addElement(_:at:)();

          (*v12)(v9, v6);
        }
      }
    }
  }
}

unint64_t sub_10045371C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002849C(&qword_100982840);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_1000073E8(*(a1 + 56) + 32 * v12, v27);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v16 = v26;
        sub_100056164(v25, &v22);

        sub_10002849C(&unk_100986010);
        swift_dynamicCast();
        v17 = v23;
        result = sub_1000072B8(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          *(v2[7] + 8 * v9) = v17;
          result = swift_unknownObjectRelease();
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          *(v2[7] + 8 * result) = v17;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_100453968()
{
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_amsImpressionItems) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100453A14(uint64_t a1)
{
  v2 = type metadata accessor for ImpressionMetrics.ID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = type metadata accessor for ImpressionMetrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100453E98(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100453E30(v14);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    ImpressionMetrics.id.getter();
    v34[1] = ImpressionMetrics.ID.parent.getter();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    ImpressionMetrics.id.getter();
    v34[2] = ImpressionMetrics.ID.element.getter();
    v23(v8, v2);
    ImpressionMetrics.id.getter();
    v24 = ImpressionMetrics.ID.index.getter();
    v23(v5, v2);
    if (v22)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(AMSUIDynamicImpressionMetricsIdentifier);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = ImpressionMetrics.fields.getter();
    sub_10045371C(v29);

    sub_100399214(_swiftEmptyArrayStorage);
    v30 = objc_allocWithZone(AMSUIDynamicImpressionMetrics);
    sub_10002849C(&unk_100986010);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = [v30 initWithIdentifier:v28 fields:isa custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

uint64_t sub_100453E30(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100453E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100453F08()
{
  result = qword_100986020;
  if (!qword_100986020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100986020);
  }

  return result;
}

uint64_t sub_100453F64(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v8 = sub_10003569C(&xmmword_1009D2DA0, a6, a1);
  v9 = [objc_opt_self() absoluteDimension:v8];
  v10 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v10;
}

uint64_t sub_1004540C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100454110()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName);
  GameCenterPlayer.displayName.getter();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias);
  GameCenterPlayer.alias.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}

uint64_t sub_100454304()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0560);
  v1 = sub_1000056A8(v0, qword_1009D0560);
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x8000000100814370;
  *(v1 + 16) = sub_1004543CC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100454794()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_100986078);
  v1 = sub_1000056A8(v0, qword_100986078);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4045000000000000;
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x8000000100814400;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightBold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004548FC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0980);
  v1 = sub_1000056A8(v0, qword_1009D0980);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001008141C0;
  *(v1 + 16) = sub_1004549B8;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1004549B8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.prefersSmallerText.getter();
  (*(v1 + 8))(v3, v0);
  v5 = &UIFontTextStyleTitle2;
  if (v4)
  {
    v5 = &UIFontTextStyleTitle3;
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_100454ADC()
{
  v0 = type metadata accessor for Paragraph.Style();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, qword_1009D09C8);
  v8 = sub_1000056A8(v7, qword_1009D09C8);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.standard(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0x7061726761726170;
  *(v8 + 8) = 0xE900000000000068;
  *(v8 + 16) = sub_100459A24;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_100454CF8()
{
  v0 = type metadata accessor for Paragraph.Style();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, qword_1009D0A10);
  v8 = sub_1000056A8(v7, qword_1009D0A10);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.article(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0xD000000000000010;
  *(v8 + 8) = 0x80000001008142B0;
  *(v8 + 16) = sub_100459C70;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_100454F70()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0AA0);
  v1 = sub_1000056A8(v0, qword_1009D0AA0);
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x8000000100814180;
  *(v1 + 16) = sub_100455038;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100455040()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0AB8);
  v1 = sub_1000056A8(v0, qword_1009D0AB8);
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000001008142F0;
  *(v1 + 16) = sub_100455108;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100455318()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0CB0);
  v1 = sub_1000056A8(v0, qword_1009D0CB0);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x8000000100813FA0;
  *(v1 + 16) = sub_1004553E0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004553EC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0CC8);
  v1 = sub_1000056A8(v0, qword_1009D0CC8);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x8000000100813F70;
  *(v1 + 16) = sub_1004554B4;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1004556BC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0ED8);
  v1 = sub_1000056A8(v0, qword_1009D0ED8);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x8000000100813FD0;
  *(v1 + 16) = sub_100459A30;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004557D4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0EF0);
  v1 = sub_1000056A8(v0, qword_1009D0EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4024000000000000;
  *v1 = 0xD000000000000017;
  *(v1 + 8) = 0x8000000100814010;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004558EC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F08);
  v1 = sub_1000056A8(v0, qword_1009D0F08);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002CLL;
  *(v1 + 8) = 0x8000000100814030;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_100455A04()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F20);
  v1 = sub_1000056A8(v0, qword_1009D0F20);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD00000000000002DLL;
  *(v1 + 8) = 0x8000000100814060;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_100455B1C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F38);
  v1 = sub_1000056A8(v0, qword_1009D0F38);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002BLL;
  *(v1 + 8) = 0x8000000100814090;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

uint64_t sub_100455C34()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F50);
  v1 = sub_1000056A8(v0, qword_1009D0F50);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x8000000100813FF0;
  *(v1 + 16) = sub_100459A3C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

UIFontTextStyle sub_100455D28()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F68);
  v1 = sub_1000056A8(v0, qword_1009D0F68);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x8000000100814200;
  *(v1 + 16) = sub_100459A44;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

UIFontTextStyle sub_100455E40()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F80);
  v1 = sub_1000056A8(v0, qword_1009D0F80);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4026000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x8000000100814440;
  *(v1 + 16) = sub_100459C80;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

uint64_t sub_100455F58()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F98);
  v1 = sub_1000056A8(v0, qword_1009D0F98);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000031;
  *(v1 + 8) = 0x80000001008140C0;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_10045604C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0FB0);
  v1 = sub_1000056A8(v0, qword_1009D0FB0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4020000000000000;
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x8000000100814100;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_100456140()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0FC8);
  v1 = sub_1000056A8(v0, qword_1009D0FC8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000030;
  *(v1 + 8) = 0x8000000100814140;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004564B0()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1250);
  v1 = sub_1000056A8(v0, qword_1009D1250);
  v2 = sub_10045658C(13.0, 16.0, 18.0, 32.0);
  *v1 = 0x747542726566666FLL;
  *(v1 + 8) = 0xEB000000006E6F74;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_10045658C(double a1, double a2, double a3, double a4))()
{
  v8 = type metadata accessor for TimingCurve();
  v42 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982E40);
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  sub_10002849C(&qword_100986090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007CC5F0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v40[1] = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v45 = a1;
  v44 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v40[0] = *(v9 + 104);
  (v40[0])(v11, enum case for TimingCurve.linear(_:), v8);
  v17 = UIContentSizeCategoryExtraSmall;
  v18 = UIContentSizeCategorySmall;
  Interpolator.init(fromValue:toValue:curve:)();
  v41 = v12;
  Interpolator.value(forInput:)();
  v20 = v43 + 8;
  v19 = *(v43 + 8);
  v19(v14, v12);
  v43 = v20;
  *(inited + 56) = round(v45);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v45 = a1;
  v44 = a2;
  v21 = v16;
  v22 = v16;
  v23 = v42;
  v24 = v40[0];
  (v40[0])(v11, v21, v42);
  v25 = UIContentSizeCategoryMedium;
  Interpolator.init(fromValue:toValue:curve:)();
  v26 = v41;
  Interpolator.value(forInput:)();
  v19(v14, v26);
  *(inited + 72) = round(v45);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v23);
  v27 = UIContentSizeCategoryLarge;
  v28 = UIContentSizeCategoryExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  v29 = v41;
  Interpolator.value(forInput:)();
  v19(v14, v29);
  *(inited + 104) = round(v45);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v42);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v19(v14, v29);
  *(inited + 120) = round(v45);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  *(inited + 152) = a4;
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  *(inited + 168) = a4;
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(inited + 184) = a4;
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(inited + 200) = a4;
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  v33 = UIContentSizeCategoryAccessibilityLarge;
  v34 = UIContentSizeCategoryAccessibilityExtraLarge;
  v35 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v36 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v37 = sub_100396F60(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100986098);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a2;
  return sub_100459C78;
}

uint64_t sub_100456B34()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1268);
  v1 = sub_1000056A8(v0, qword_1009D1268);
  v2 = sub_10045658C(12.0, 13.0, 16.0, 26.0);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100814330;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_100456C10()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1280);
  v1 = sub_1000056A8(v0, qword_1009D1280);
  v2 = sub_10045658C(14.0, 17.0, 19.0, 33.0);
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x8000000100814310;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_100456CF4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1298);
  v1 = sub_1000056A8(v0, qword_1009D1298);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007CDB60;
  strcpy(v1, "inAppPurchase");
  *(v1 + 14) = -4864;
  *(v1 + 16) = sub_100459A28;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightRegular;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_100456E04()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D12C8);
  v1 = sub_1000056A8(v0, qword_1009D12C8);
  v2 = sub_100456EE0(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x8000000100814250;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_100456EE0(double a1, double a2, double a3, double a4))()
{
  v8 = type metadata accessor for TimingCurve();
  v48 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982E40);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  sub_10002849C(&qword_100986090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007CC5F0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v46 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v54 = a1;
  v53 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v17 = *(v9 + 104);
  v51 = enum case for TimingCurve.linear(_:);
  v17(v11, enum case for TimingCurve.linear(_:), v8);
  v18 = UIContentSizeCategoryExtraSmall;
  v19 = UIContentSizeCategorySmall;
  Interpolator.init(fromValue:toValue:curve:)();
  v47 = v12;
  Interpolator.value(forInput:)();
  v21 = v49 + 8;
  v20 = *(v49 + 8);
  v20(v14, v12);
  *(inited + 56) = round(v54);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v54 = a1;
  v53 = a2;
  v22 = v16;
  v23 = v48;
  v50 = v9 + 104;
  v17(v11, v22, v48);
  v52 = v17;
  v24 = UIContentSizeCategoryMedium;
  Interpolator.init(fromValue:toValue:curve:)();
  v25 = v47;
  Interpolator.value(forInput:)();
  v20(v14, v25);
  *(inited + 72) = round(v54);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v54 = a2;
  v53 = a3;
  v17(v11, v51, v23);
  v26 = UIContentSizeCategoryLarge;
  v27 = UIContentSizeCategoryExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  v28 = v47;
  Interpolator.value(forInput:)();
  v49 = v21;
  v45 = v20;
  v20(v14, v28);
  *(inited + 104) = round(v54);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v54 = a2;
  v53 = a3;
  v29 = v51;
  v52(v11, v51, v23);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v20(v14, v28);
  *(inited + 120) = round(v54);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v54 = a3;
  v53 = a4;
  v52(v11, v29, v23);
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v33 = v45;
  v45(v14, v28);
  *(inited + 152) = round(v54);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v54 = a3;
  v53 = a4;
  v34 = v48;
  v52(v11, v29, v48);
  v35 = UIContentSizeCategoryAccessibilityLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v36 = v33;
  v33(v14, v28);
  *(inited + 168) = round(v54);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v54 = a3;
  v53 = a4;
  v37 = v52;
  v52(v11, v29, v34);
  v38 = UIContentSizeCategoryAccessibilityExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v36(v14, v28);
  *(inited + 184) = round(v54);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v54 = a3;
  v53 = a4;
  v37(v11, v51, v34);
  v39 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v36(v14, v28);
  *(inited + 200) = round(v54);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v40 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v41 = sub_100396F60(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100986098);
  swift_arrayDestroy();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a2;
  return sub_100459A50;
}

uint64_t sub_100457710()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D12F8);
  v1 = sub_1000056A8(v0, qword_1009D12F8);
  v2 = sub_100456EE0(13.0, 15.0, 18.0, 18.0);
  *v1 = 0xD000000000000029;
  *(v1 + 8) = 0x8000000100814220;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_100457894()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D13B8);
  v1 = sub_1000056A8(v0, qword_1009D13B8);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x8000000100814270;
  *(v1 + 16) = sub_10045795C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_10045795C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 13.0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 13.0;
    if ((v5 & 1) == 0)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {

        return 15.0;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 15.0;
        if ((v12 & 1) == 0)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
          if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
          {

            return 18.0;
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = 10.0;
            if (v17)
            {
              return 18.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100457B94()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1460);
  v1 = sub_1000056A8(v0, qword_1009D1460);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001008142D0;
  *(v1 + 16) = sub_100457C5C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightMedium;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_100457C5C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 16.0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 16.0;
    if ((v5 & 1) == 0)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {

        return 18.0;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 18.0;
        if ((v12 & 1) == 0)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
          if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
          {

            return 20.0;
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = 14.0;
            if (v17)
            {
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100457E04()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1478);
  v1 = sub_1000056A8(v0, qword_1009D1478);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x8000000100814390;
  *(v1 + 16) = sub_100457ECC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_100457ECC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 11.0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 11.0;
    if ((v5 & 1) == 0)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {

        return 13.0;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 13.0;
        if ((v12 & 1) == 0)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
          if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
          {

            return 15.0;
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = 9.0;
            if (v17)
            {
              return 15.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100458074()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1490);
  v1 = sub_1000056A8(v0, qword_1009D1490);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100814350;
  *(v1 + 16) = sub_100455038;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_10045813C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D14A8);
  v1 = sub_1000056A8(v0, qword_1009D14A8);
  strcpy(v1, "todayCardTitle");
  *(v1 + 15) = -18;
  *(v1 + 16) = sub_10045820C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_10045820C()
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if (Main == 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_100458234()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D14C0);
  v1 = sub_1000056A8(v0, qword_1009D14C0);
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x8000000100814420;
  *(v1 + 16) = sub_1004582FC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004582FC()
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if ((Main - 1) <= 3)
  {
    return dbl_1007CDB80[Main - 1];
  }

  return result;
}

uint64_t sub_10045834C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D14F0);
  v1 = sub_1000056A8(v0, qword_1009D14F0);
  *v1 = 0xD000000000000021;
  *(v1 + 8) = 0x80000001008143B0;
  *(v1 + 16) = sub_100458414;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_10045844C(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v7 = type metadata accessor for Paragraph.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontUseCase();
  sub_100005644(v11, a2);
  v12 = sub_1000056A8(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13 = Paragraph.Style.textStyle.getter();
  (*(v8 + 8))(v10, v7);
  *v12 = v13;
  *(v12 + 8) = a4;
  return (*(*(v11 - 8) + 104))(v12, enum case for FontUseCase.preferredFont(_:), v11);
}

uint64_t sub_100458674()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D15F8);
  v1 = sub_1000056A8(v0, qword_1009D15F8);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000001008141A0;
  *(v1 + 16) = sub_10045873C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightHeavy;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458858()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1718);
  v1 = sub_1000056A8(v0, qword_1009D1718);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100814290;
  *(v1 + 16) = sub_1001B37E8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458A38()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1838);
  v1 = sub_1000056A8(v0, qword_1009D1838);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000001008143E0;
  *(v1 + 16) = sub_1004543CC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458CB4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D19D0);
  v1 = sub_1000056A8(v0, qword_1009D19D0);
  *v1 = 0x756F436C6C616D73;
  *(v1 + 8) = 0xEF6567646142746ELL;
  *(v1 + 16) = sub_100458D84;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458D8C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D19E8);
  v1 = sub_1000056A8(v0, qword_1009D19E8);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001008141E0;
  *(v1 + 16) = sub_100458414;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_100459130(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, a2);
  v8 = sub_1000056A8(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

id sub_100459200(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, a2);
  v8 = sub_1000056A8(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_1004592B8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.prefersSmallerText.getter();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return Paragraph.Style.smallerTextStyle.getter();
  }

  else
  {
    return Paragraph.Style.textStyle.getter();
  }
}

double sub_1004593A0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
  [v5 scaledValueForValue:v6 compatibleWithTraitCollection:a3];
  v8 = v7;

  return v8;
}

double sub_100459440(uint64_t a1, uint64_t a2, double a3)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return a3;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return a3;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    return a3;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return a3;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
    goto LABEL_13;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    return a3;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
    goto LABEL_13;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    return a3;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
LABEL_13:

    return a3;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0)
  {
    v44 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
    v45 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v48.is_nil = UIContentSizeCategoryAccessibilityExtraLarge;
    v48.value._rawValue = 0;
    isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v48, v49).super.isa;

    [v44 scaledValueForValue:isa compatibleWithTraitCollection:a3];
    a3 = v47;
  }

  return a3;
}

double sub_1004597D4(double a1, double a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_13;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return a1;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
    goto LABEL_13;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return a1;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
    goto LABEL_13;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    return a1;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_13;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    return a1;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
LABEL_13:

    return a1;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return a1;
}

double sub_100459A54()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = sub_1003D8ACC();
    if (v5)
    {
      return *(*(v2 + 56) + 8 * v4);
    }
  }

  return v3;
}

uint64_t sub_100459AA0()
{
  type metadata accessor for Paragraph.Style();

  return sub_1004592B8();
}

UIContentSizeCategory sub_100459B00(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {
LABEL_13:

        return a1;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        return UIContentSizeCategoryMedium;
      }
    }
  }

  return a1;
}

unint64_t sub_100459C88()
{
  result = qword_100974BB0;
  if (!qword_100974BB0)
  {
    type metadata accessor for InformationRibbonCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BB0);
  }

  return result;
}

uint64_t sub_100459CF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_1009731F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  ReadOnlyLens.value.getter();
  (*(v4 + 8))(v6, v3);
  ItemLayoutContext.sectionIndex.getter();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v7 = v11;
  v8 = sub_100079F24();
  v9 = sub_10060906C();
  if (v9)
  {
    sub_100607A08(v9, v7, a2, v8);
  }

  return swift_unknownObjectRelease();
}

void sub_100459F1C(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_10045A0B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_1009860C8 + 32);
  result = *(v1 + qword_1009860C8);
  v4 = *(v1 + qword_1009860C8 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_10045A0E8@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_1009860C8 + 32);
  v5 = *(v1 + qword_1009860C8 + 16);
  v12[0] = *(v1 + qword_1009860C8);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_1009860D8);
  swift_unknownObjectRetain();
  sub_100459F1C(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

id sub_10045A1E0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_10045AE10(v8);

  return v12;
}

id sub_10045A26C()
{
  sub_10045AEB8();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_10045A2CC(uint64_t a1)
{
  *(v1 + qword_1009860D8) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_1009860E8))
  {
    sub_10045A0E8(v5);
    type metadata accessor for FullScreenTransitionContext();
  }

  else
  {
    *&v2 = sub_10045A0E8(v5).n128_u64[0];
    if (v5[0])
    {
      [v5[8] completeTransition:{0, v2}];
    }

    type metadata accessor for FullScreenTransitionContext();
  }

  v3 = type metadata accessor for Optional();
  return (*(*(v3 - 8) + 8))(v5, v3);
}

void sub_10045A404(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_10045A2CC(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10045A4A4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_1009860F0;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_10045A4C0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == 1)
  {
    v9 = (v1 + qword_1009860F0);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_1009860E8) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_1009860F0);
  if ((*(v1 + qword_1009860F0 + 16) & 1) == 0 && *(v1 + qword_1009860D8))
  {
    v13 = *v12;
    v59 = v12[1];
    v14 = [swift_unknownObjectRetain() containerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v67.origin.x = v16;
    v67.origin.y = v18;
    v67.size.width = v20;
    v67.size.height = v22;
    MidX = CGRectGetMidX(v67);
    v68.origin.x = v16;
    v68.origin.y = v18;
    v68.size.width = v20;
    v68.size.height = v22;
    MidY = CGRectGetMidY(v68);
    v25 = v8 - v59;
    v26 = v6 - v13 + MidX;
    v27 = v25 + MidY;
    v28 = [a1 state];
    if (v28 != 3)
    {
      if (v28 == 2)
      {
        hypot(MidX - v26, MidY - v27);
        v29 = swift_unknownObjectUnownedLoadStrong();
        [v29 setCenter:{v26, v27}];

        sub_10002849C(&qword_1009701B0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1007B10D0;
        aBlock = Double.description.getter();
        v61 = v31;
        v32._countAndFlagsBits = 0x656C706D6F632025;
        v32._object = 0xEA00000000006574;
        String.append(_:)(v32);
        v33 = aBlock;
        v34 = v61;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v33;
        *(v30 + 40) = v34;
        print(_:separator:terminator:)();
      }

      type metadata accessor for FullScreenTransitionContext();
      v35 = type metadata accessor for Optional();
      (*(*(v35 - 8) + 8))(v66, v35);
      swift_unknownObjectRelease();
      return;
    }

    v36 = [a1 view];
    [a1 velocityInView:v36];
    v38 = v37;
    v40 = v39;

    v41 = hypot(v38, v40) / 500.0;
    v42 = fabs(v38);
    v43 = fabs(v40);
    v44 = v42 * v41;
    v45 = v43 * v41;
    if (v44 > v45)
    {
      v45 = v44;
    }

    if (v45 > 50.0)
    {
      v45 = 50.0;
    }

    if (v38 == 0.0 && v40 == 0.0)
    {
      v46 = 0.0;
      if (v43 >= v42)
      {
LABEL_17:
        v47 = v45;
        v45 = v45 * v46;
LABEL_26:
        if (v45 > v47)
        {
          v50 = v45;
        }

        else
        {
          v50 = v47;
        }

        v51 = v50 / 50.0 * 0.2;
        v52 = v26 + v45;
        v53 = v27 + v47;
        v54 = objc_opt_self();
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        *(v56 + 16) = *(v3 + 80);
        *(v56 + 24) = *(v3 + 88);
        *(v56 + 32) = v55;
        *(v56 + 40) = v52;
        *(v56 + 48) = v53;
        v64 = sub_10045AE00;
        v65 = v56;
        aBlock = _NSConcreteStackBlock;
        v61 = 1107296256;
        v62 = sub_100007A08;
        v63 = &unk_1008C3BE8;
        v57 = _Block_copy(&aBlock);

        [v54 animateWithDuration:0x20000 delay:v57 options:0 animations:v51 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v57);
        type metadata accessor for FullScreenTransitionContext();
        v58 = type metadata accessor for Optional();
        (*(*(v58 - 8) + 8))(v66, v58);
        return;
      }
    }

    else
    {
      if (v42 > v43)
      {
        v48 = v42;
      }

      else
      {
        v48 = v43;
      }

      v49 = v43 < v42;
      if (v43 < v42)
      {
        v42 = v43;
      }

      v46 = v42 / v48;
      if (!v49)
      {
        goto LABEL_17;
      }
    }

    v47 = v45 * v46;
    goto LABEL_26;
  }
}

void sub_10045AA30(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectUnownedLoadStrong();

    [v6 setCenter:{a1, a2}];
  }
}

void sub_10045AAC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10045A4C0(v4);
}

id sub_10045AB68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenTransitionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10045ABD8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  return swift_unknownObjectRelease();
}

unint64_t sub_10045AC90()
{
  result = qword_1009861D8[0];
  if (!qword_1009861D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1009861D8);
  }

  return result;
}

void sub_10045ACE4(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_1009860D0))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_10045AD9C()
{
  sub_10045ACE4(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_10045ACE4(&selRef_addGestureRecognizer_);
}

uint64_t sub_10045AE10(void *a1)
{
  if (!swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  swift_unknownObjectWeakAssign();
  v3 = a1;
  sub_10045AD9C();

  *(v1 + qword_1009860B8) = 1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10045AEB8()
{
  result = v0;
  *(v0 + qword_1009860B8) = 0;
  return result;
}

uint64_t sub_10045AF0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10045AF48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10045AF90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10045B064(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100814630;
  v8._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v14 = &type metadata for String;
  v12 = a1;
  v13 = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&v12);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v10 = [a3 _launchTestName];
  v11 = String._bridgeToObjectiveC()();
  [a3 failedTest:v10 withFailure:v11];
}

id sub_10045B2A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for PageGrid();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    PageGrid.horizontalDirectionalMargins.getter();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    PageGrid.horizontalDirectionalMargins.getter();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10045B608()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10045B668(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.indexPath.getter();
  v9 = IndexPath.section.getter();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_1009D01D8];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_10045B96C()
{
  v0 = sub_10002849C(&qword_100986438);
  sub_100005644(v0, qword_1009863A8);
  sub_1000056A8(v0, qword_1009863A8);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_10045BA20()
{
  ObjectType = swift_getObjectType();
  v26 = type metadata accessor for AutomationSemantics();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *&v0[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews] = _swiftEmptyArrayStorage;
  *&v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v8 = type metadata accessor for ProductRatingsHistogramProgressBar();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v0[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews] = v31;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = ObjectType;
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews];
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v28 = v9;
    v25 = v10;

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v26;
    v29 = v25 & 0xC000000000000001;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v14 = v25 + 32;
    v15 = (v2 + 8);
    while (!__OFSUB__(v11--, 1))
    {
      if (v29)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v9 = *&v14[8 * v11];
      }

      v2 = v9;
      v10 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
      sub_10003D444(v30);
      sub_10003D444(&v31);
      *&v31 = v12 + 1;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = v17;
      *(&v31 + 1) = v18;
      AutomationSemantics.attribute(key:value:)();
      v19 = *v15;
      (*v15)(v4, v13);
      sub_10003D444(&v31);
      v10 = v2;
      UIView.setAutomationSemantics(_:)();
      v19(v7, v13);
      [v28 addSubview:v2];

      ++v12;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v9;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v23;
  }

LABEL_14:

  v20 = v28;
  sub_10045BF00();
  sub_10002849C(&qword_10097B110);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B10D0;
  *(v21 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(swift_allocObject() + 16) = v24;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v20;
}

id sub_10045BF00()
{
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100005744(0, &qword_100970180);
  if (qword_10096E480 != -1)
  {
    swift_once();
  }

  v0 = 0;
  do
  {
    v69 = v0;
    v3 = *(&off_1008B00B0 + v0 + 32);
    v4 = sub_10002849C(&qword_100986438);
    sub_1000056A8(v4, qword_1009863A8);
    v71 = v67;
    v5 = v67;
    Conditional.evaluate(with:)();
    v65 = v5;

    v6 = v72;
    v7 = type metadata accessor for RatingView();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
    v9 = &v8[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
    *v9 = 0;
    v9[8] = 1;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = v3;
    if (qword_10096DAE8 != -1)
    {
      swift_once();
    }

    v10 = qword_100982C88;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
    v8[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = v6;
    *v9 = 0;
    v9[8] = 1;
    v8[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
    objc_allocWithZone(type metadata accessor for StarRow());
    v11 = v10;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(v3, 1, v6, 0, 1, 0, 1);
    v8[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = 0;
    v70.receiver = v8;
    v70.super_class = v7;
    v12 = objc_msgSendSuper2(&v70, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
    v68 = OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView;
    if (!v14)
    {
      v17 = v12;
      goto LABEL_19;
    }

    v15 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
    if (v15)
    {
      v16 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
    }

    else
    {
      v16 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
    }

    v18 = *(v14 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v14 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v16;
    if (!v18)
    {
      v24 = v15;
      v25 = v16;
      v26 = v13;
      v21 = 0;
LABEL_17:
      sub_1003A450C();

      goto LABEL_18;
    }

    v19 = v15;
    v20 = v16;
    v21 = v18;
    v22 = v13;
    v23 = static NSObject.== infix(_:_:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
LABEL_19:
    v27 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
    v28 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
    v29 = OBJC_IVAR____TtC8AppStore10RatingView_starColor;
    v30 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
    v31 = *(v28 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v28 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v30;
    if (!v31)
    {
      v35 = v30;
      v33 = 0;
LABEL_23:
      sub_1003A450C();
      v32 = v30;
      goto LABEL_24;
    }

    v32 = v30;
    v33 = v31;
    v34 = static NSObject.== infix(_:_:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:

    v36 = *&v13[v27];
    v37 = OBJC_IVAR____TtC8AppStore10RatingView_rating;
    v38 = *&v36[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
    *&v36[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_rating];
    v39 = v36;
    sub_1003A3A64(v38);

    if (*&v13[v68])
    {
      [v13 addSubview:?];
    }

    [v13 addSubview:{*&v13[v27], v65}];

    v40 = v3;
    v41 = *&v13[v37];
    *&v13[v37] = v3;
    if (v41 != v3)
    {
      if (v3 < 0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars];
        if (v42 >= v40)
        {
          goto LABEL_32;
        }
      }

      *&v13[v37] = v42;
      v40 = v42;
LABEL_32:
      v43 = *&v13[v27];
      v44 = *(v43 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating);
      *(v43 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating) = v40;
      sub_1003A3A64(v44);
    }

    v45 = static UIColor.primaryText.getter();
    v46 = *&v13[v29];
    *&v13[v29] = v45;
    v2 = v45;
    if (static NSObject.== infix(_:_:)())
    {
      v1 = v2;
      v2 = v46;
      goto LABEL_5;
    }

    v47 = *&v13[v68];
    if (v47)
    {
      v48 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
      if (v48)
      {
        v49 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
      }

      else
      {
        v49 = *&v13[v29];
      }

      v50 = *(v47 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
      *(v47 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v49;
      if (v50)
      {
        v51 = v48;
        v52 = v49;
        v50 = v50;
        v53 = static NSObject.== infix(_:_:)();

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v54 = v48;
        v55 = v49;
      }

      sub_1003A450C();
      v52 = v49;
LABEL_43:
    }

    v56 = *&v13[v27];
    v57 = *&v13[v29];
    v58 = *(v56 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v56 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v57;
    if (v58)
    {
      v59 = v57;
      v1 = v58;
      v60 = static NSObject.== infix(_:_:)();

      if (v60)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v57;
      v1 = 0;
    }

    sub_1003A450C();
    v59 = v57;
LABEL_49:

LABEL_5:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v0 = v69 + 8;
  }

  while (v69 != 32);
  v62 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v63 = *&v66[v62];
  *&v66[v62] = _swiftEmptyArrayStorage;
  sub_10045C630(v63);

  return [v66 setNeedsLayout];
}

void sub_10045C544(void *a1)
{
  v2 = UITraitCollection.isSizeClassCompact.getter() & 1;
  v3 = [a1 traitCollection];
  v4 = UITraitCollection.isSizeClassCompact.getter() & 1;

  if (v2 != v4)
  {
    sub_10045BF00();
  }
}

unint64_t sub_10045C630(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  result = swift_beginAccess();
  v7 = *&v13[v6];
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (qword_10096E488 != -1)
    {
      swift_once();
    }

    ++v9;
    v12 = qword_1009863C0;
    [v11 setMinimumContentSizeCategory:qword_1009863C0];
    [v11 setMaximumContentSizeCategory:v12];
    [v13 addSubview:v11];
  }

  while (v8 != v9);
}

uint64_t sub_10045C824(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B0B70;
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v10 measurementsWithFitting:v13 in:{a2, a3}];

  if (qword_10096E468 != -1)
  {
    swift_once();
  }

  v14 = sub_10002849C(&qword_100979010);
  sub_1000056A8(v14, qword_100986360);
  Conditional.evaluate<>(in:)();
  if (qword_10096E470 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v14, qword_100986378);
  return Conditional.evaluate<>(in:)();
}

void sub_10045CA70(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v11 = *&v6[v10];
  if (v11 >> 62)
  {
LABEL_24:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007B0B70;
      *(v13 + 32) = a1;
      v14 = a1;
      v15 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      [v12 measurementsWithFitting:v15 in:{a4, a5}];
      v17 = v16;

      [v6 setFrame:{a2, a3, a4, a5}];
      if (qword_10096E468 != -1)
      {
        swift_once();
      }

      v18 = sub_10002849C(&qword_100979010);
      sub_1000056A8(v18, qword_100986360);
      Conditional.evaluate<>(in:)();
      if (qword_10096E470 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v18, qword_100986378);
      Conditional.evaluate<>(in:)();
      if (qword_10096E478 != -1)
      {
        swift_once();
      }

      a1 = sub_1000056A8(v18, qword_100986390);
      Conditional.evaluate<>(in:)();
      v19 = *&v6[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews];
      if ((v19 & 0xC000000000000001) != 0 || *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
      {
        v20 = v17 - v33;
        v21 = v33 + v33;
        v11 = 4;
        v22 = 0.0;
        while (1)
        {
          swift_beginAccess();
          v25 = *&v6[v10];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 - 4 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v25 + 8 * v11);
          }

          v27 = v26;
          swift_endAccess();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007B0B70;
          *(v28 + 32) = v14;
          v29 = v14;
          v30 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
          [v27 measurementsWithFitting:v30 in:{a4, a5}];

          a1 = v27;
          [v6 bounds];
          CGRect.withLayoutDirection(using:relativeTo:)();
          [a1 setFrame:?];

          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v19 + 8 * v11);
          }

          v22 = v21 + v22;
          v24 = v23;
          v34.origin.x = a2;
          v34.origin.y = a3;
          v34.size.width = a4;
          v34.size.height = a5;
          CGRectGetWidth(v34);
          [v6 bounds];
          CGRect.withLayoutDirection(using:relativeTo:)();
          [v24 setFrame:?];

          v20 = v21 + v20;
          if (++v11 == 9)
          {
            return;
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}