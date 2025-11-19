uint64_t sub_1000209CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *&v39[8] = v5;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *v39 = v57;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v57 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__showDashboard);

  if (v6 == 1)
  {
    sub_100031E4C(v39);
  }

  else
  {
    *&v57 = v4;
    *(&v57 + 1) = v5;
    State.projectedValue.getter();
    v34 = *v39;
    v33 = *&v39[8];
    *&v39[8] = v5;
    State.wrappedValue.getter();
    swift_getKeyPath();
    *v39 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

    dispatch thunk of APAnimationController.highlightIndex.getter();

    v8 = type metadata accessor for AccessPointHighlightComponent.GestureHandler();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = AccessPointHighlightComponent.GestureHandler.init()();
    type metadata accessor for RemoteAlertAccessPointContext(0);
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    v32 = Environment.init<A>(_:)();
    v13 = v12;
    State.init(wrappedValue:)();
    v14 = v5;
    v31 = *v39;
    State.init(wrappedValue:)();
    v15 = v39[0];
    v16 = *&v39[8];
    *&v57 = v11;
    State.init(wrappedValue:)();
    v17 = *v39;
    LOBYTE(v37[0]) = v13 & 1;
    v18 = *a1;
    v19 = Namespace.wrappedValue.getter();
    v20 = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    *v39 = v32;
    v39[8] = v13 & 1;
    *&v39[24] = v33;
    *&v39[16] = v34;
    *&v39[40] = v31;
    *&v40 = v14;
    BYTE8(v40) = v15;
    *&v41 = v16;
    *(&v41 + 1) = v17;
    v42 = *(&v17 + 1);
    *&v43 = 0x7974696361706FLL;
    *(&v43 + 1) = 0xE700000000000000;
    *&v44 = v19;
    DWORD2(v44) = v20;
    *&v45 = v21;
    *(&v45 + 1) = v22;
    LOBYTE(v46) = 1;
    sub_100031E40(v39);
  }

  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v49 = *&v39[32];
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v47 = *v39;
  v48 = *&v39[16];
  sub_100002B38(&qword_10012DF20, &qword_1000EA2A0);
  sub_1000318DC();
  _ConditionalContent<>.init(storage:)();
  v53 = v63;
  v54 = v64;
  v23 = v64;
  v55 = v65;
  v49 = v59;
  v24 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v47 = v57;
  v48 = v58;
  v37[6] = v63;
  v37[7] = v64;
  v37[8] = v65;
  v37[2] = v59;
  v37[3] = v60;
  v37[4] = v61;
  v37[5] = v62;
  v37[0] = v57;
  v37[1] = v58;
  v43 = v63;
  v44 = v64;
  v45 = v65;
  *&v39[32] = v59;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v56 = v66;
  v38 = v66;
  LOWORD(v46) = v66;
  *v39 = v57;
  *&v39[16] = v58;
  v36[152] = 1;
  *(a2 + 96) = v63;
  *(a2 + 112) = v23;
  *(a2 + 128) = v45;
  v25 = v46;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  *(a2 + 32) = v24;
  *(a2 + 48) = v26;
  *(a2 + 64) = v27;
  *(a2 + 80) = v28;
  v29 = *&v39[16];
  *a2 = *v39;
  *(a2 + 16) = v29;
  *(a2 + 144) = v25;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_1000035B4(v37, v36, &qword_10012DF90, &unk_1000EA2C0);
  return sub_100005688(&v47, &qword_10012DF90, &unk_1000EA2C0);
}

uint64_t sub_100020E68(uint64_t a1)
{
  v50 = type metadata accessor for AnimationCompletionCriteria();
  v53 = *(v50 - 8);
  v2 = *(v53 + 64);
  __chkstk_darwin(v50);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AccessPointAnimationView(0);
  v47 = *(v54 - 8);
  v51 = *(v47 + 64);
  __chkstk_darwin(v54);
  v55 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageMetrics();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessPointContainer();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);

  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    v44 = v8;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    v8 = v44;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v15, v11);
    v16 = v59;
  }

  swift_getKeyPath();
  v59 = v16;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active);

  if ((v20 & 1) == 0)
  {
    sub_1000215B4();
  }

  v21 = (a1 + *(v54 + 28));
  v22 = *v21;
  v23 = v21[1];
  v59 = *v21;
  v60 = v23;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v24 = v57;
  v25 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v26 = v45;
  v27 = v46;
  (*(v46 + 16))(v45, v24 + v25, v8);

  v28 = v48;
  AccessPointContainer.pageMetrics.getter();
  (*(v27 + 8))(v26, v8);
  v29 = PageMetrics.pageFields.getter();
  (*(v49 + 8))(v28, v5);
  if (v29)
  {
    v57 = v22;
    v58 = v23;
    State.wrappedValue.getter();
    v30 = v56;
    swift_getKeyPath();
    v57 = v30;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
    v32 = *(v30 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);

    static AccessPointMetricsHelper.postPageEvent(hostApp:pageFields:)();
  }

  v33 = v55;
  v34 = *(a1 + *(v54 + 44));
  sub_10002D940(a1, v55, type metadata accessor for AccessPointAnimationView);
  v35 = *(v47 + 80);
  v36 = swift_allocObject();
  sub_10002D7B8(v33, v36 + ((v35 + 16) & ~v35), type metadata accessor for AccessPointAnimationView);
  v37 = dispatch thunk of GameOverlayDashboardVisibilityMonitor.start(handler:)();

  if (qword_10012CB50 != -1)
  {
    v38 = swift_once();
  }

  __chkstk_darwin(v38);
  *(&v44 - 2) = a1;
  *(&v44 - 8) = v37 & 1;
  v39 = a1;
  v40 = v55;
  sub_10002D940(v39, v55, type metadata accessor for AccessPointAnimationView);
  v41 = swift_allocObject();
  *(v41 + 16) = v37 & 1;
  sub_10002D7B8(v40, v41 + ((v35 + 17) & ~v35), type metadata accessor for AccessPointAnimationView);
  v42 = v52;
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v53 + 8))(v42, v50);
}

uint64_t sub_1000215B4()
{
  v1 = v0;
  v40 = type metadata accessor for AccessPointAnchoring();
  v39 = *(v40 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v40);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessPointUseCase();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointContainer();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100011F80(v12, qword_100135C88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Pre-empting highlights animations because the access point is being displayed after a recent deactivation.", v15, 2u);
  }

  v16 = (v1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v17 = v16[1];
  v55 = *v16;
  v56 = v17;
  v18 = v55;
  v41 = v55;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v19 = v53;
  v55 = v18;
  v56 = v17;
  State.wrappedValue.getter();
  v20 = v53;
  v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v43 = v8[2];
  v43(v11, &v20[v21], v7);

  v22 = AccessPointContainer.items.getter();
  v42 = v8[1];
  v42(v11, v7);
  v23 = *(v22 + 16);

  swift_getKeyPath();
  v53 = v19;
  v44 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *&v19[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller];

  dispatch thunk of APAnimationController.highlightIndex.setter();
  v25 = v41;

  v53 = v25;
  v54 = v17;
  State.wrappedValue.getter();
  v26 = v51;
  v27 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v43(v11, &v26[v27], v7);

  v28 = v45;
  AccessPointContainer.useCase.getter();
  v42(v11, v7);
  LOBYTE(v26) = AccessPointUseCase.isEphemeral.getter();
  (*(v46 + 8))(v28, v47);
  if ((v26 & 1) == 0)
  {
    v51 = v25;
    v52 = v17;
    State.wrappedValue.getter();
    v51 = v25;
    v52 = v17;
    State.wrappedValue.getter();
    v31 = v49;
    swift_getKeyPath();
    v51 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
    swift_beginAccess();
    v33 = &v31[v32];
    v34 = v38;
    (*(v39 + 16))(v38, v33, v40);

    sub_10001590C(v34);

    v49 = v25;
    v50 = v17;
    State.wrappedValue.getter();
    v35 = v48;
    if (v48[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state] != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v38 - 2) = v35;
      *(&v38 - 8) = 1;
      v49 = v35;
      goto LABEL_11;
    }
  }

  v51 = v25;
  v52 = v17;
  State.wrappedValue.getter();
  v29 = v49;
  if (v49[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state] == 2)
  {
  }

  v30 = swift_getKeyPath();
  __chkstk_darwin(v30);
  *(&v38 - 2) = v29;
  *(&v38 - 8) = 2;
  v51 = v29;
LABEL_11:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100021C98(char a1, uint64_t a2)
{
  v16 = type metadata accessor for AnimationCompletionCriteria();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessPointAnimationView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  if (qword_10012CB50 != -1)
  {
    v11 = swift_once();
  }

  v15[1] = v15;
  __chkstk_darwin(v11);
  v15[-2] = a2;
  LOBYTE(v15[-1]) = a1 & 1;
  sub_10002D940(a2, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
  v12 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1 & 1;
  sub_10002D7B8(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AccessPointAnimationView);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v4 + 8))(v7, v16);
}

uint64_t sub_100021F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AccessPointAnimationView(0);
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  __chkstk_darwin(v4 - 8);
  v65 = v6;
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v67 = &v61 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v15[13];
  v19(v18, enum case for GameDashboardLaunchContext.LaunchTarget.onboarding(_:), v14);
  v20 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
  v21 = v15[1];
  v21(v18, v14);
  if (v20)
  {
    v22 = *(a3 + 8);
    v23 = *(a3 + 16);

    v24 = a3;
    if ((v23 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v62 + 8))(v13, v63);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100011F80(v28, qword_100135C88);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Requesting invocation of onboarding flow from client.", v31, 2u);
      }

      v32 = type metadata accessor for TaskPriority();
      v33 = v67;
      (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
      v34 = v66;
      sub_10002D940(v24, v66, type metadata accessor for AccessPointAnimationView);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v35 = static MainActor.shared.getter();
      v36 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v37 = (v65 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      *(v38 + 24) = &protocol witness table for MainActor;
      sub_10002D7B8(v34, v38 + v36, type metadata accessor for AccessPointAnimationView);
      *(v38 + v37) = Strong;
      sub_100014BBC(0, 0, v33, &unk_1000EA120, v38);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v19(v18, enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:), v14);
    v39 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
    result = (v21)(v18, v14);
    if (v39)
    {
      v40 = a3;
      v41 = *(a3 + 8);
      v42 = *(a3 + 16);

      if ((v42 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v43 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v62 + 8))(v13, v63);
      }

      v44 = swift_unknownObjectWeakLoadStrong();

      if (v44)
      {
        v45 = sub_1000228C4();
        v46 = DashboardRequest.minimalInitialState()();
        v48 = v47;

        if (v48 >> 60 == 15)
        {
          return swift_unknownObjectRelease();
        }

        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_100011F80(v49, qword_100135C88);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Requesting full screen dashboard presentation from access point.", v52, 2u);
        }

        v53 = type metadata accessor for TaskPriority();
        (*(*(v53 - 8) + 56))(v67, 1, 1, v53);
        v54 = v66;
        sub_10002D940(v40, v66, type metadata accessor for AccessPointAnimationView);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();
        sub_1000304CC(v46, v48);
        v55 = static MainActor.shared.getter();
        v56 = v46;
        v57 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v58 = (v65 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        *(v59 + 16) = v55;
        *(v59 + 24) = &protocol witness table for MainActor;
        sub_10002D7B8(v54, v59 + v57, type metadata accessor for AccessPointAnimationView);
        *(v59 + v58) = v44;
        v60 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v60 = v56;
        v60[1] = v48;
        sub_100014BBC(0, 0, v67, &unk_1000EA110, v59);
        swift_unknownObjectRelease();
        sub_10003091C(v56, v48);
      }
    }
  }

  return result;
}

uint64_t sub_100022704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000227F8, v10, v9);
}

uint64_t sub_1000227F8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v7 = *(v5 + *(type metadata accessor for AccessPointAnimationView(0) + 52));
  (*(v4 + 104))(v2, enum case for GameDashboardLaunchContext.LaunchTarget.none(_:), v3);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.setter();
  [v6 requireOnboardingFlow];

  v8 = v0[1];

  return v8();
}

char *sub_1000228C4()
{
  v1 = v0;
  v2 = sub_100002B38(&qword_10012DDE0, &qword_1000EA128);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v58 - v4;
  v6 = sub_100002B38(&qword_10012DDE8, &qword_1000EA130);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000D1714(&_swiftEmptyArrayStorage);
  v19 = objc_allocWithZone(type metadata accessor for DashboardRequest());
  v20 = DashboardRequest.init(initialState:)(v18);
  v21 = *(v0 + 8);
  v22 = *(v0 + 16);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    v58 = v13;
    v24 = v5;
    v25 = v1;
    v26 = v12;
    v27 = v20;
    v28 = v10;
    v29 = v23;
    os_log(_:dso:log:_:_:)();

    v10 = v28;
    v20 = v27;
    v12 = v26;
    v1 = v25;
    v5 = v24;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v58);
    v21 = v59;
  }

  swift_getKeyPath();
  v59 = v21;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v21 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  v31 = v30;

  v32 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame];
  *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame] = v30;

  v33 = *(v1 + *(type metadata accessor for AccessPointAnimationView(0) + 52));
  dispatch thunk of GameDashboardLaunchContext.action.getter();
  v34 = type metadata accessor for LaunchDashboardAction();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v5, 1, v34) == 1)
  {
    sub_100005688(v5, &qword_10012DDE0, &qword_1000EA128);
    v36 = type metadata accessor for LaunchDashboardAction.Destination();
    (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
    sub_100005688(v12, &qword_10012DDE8, &qword_1000EA130);
LABEL_5:
    v37 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
    v38 = 4;
LABEL_12:
    *&v20[v37] = v38;
    return v20;
  }

  LaunchDashboardAction.destination.getter();
  (*(v35 + 8))(v5, v34);
  v39 = type metadata accessor for LaunchDashboardAction.Destination();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v12, 0, 1, v39);
  sub_100014830(v12, v10, &qword_10012DDE8, &qword_1000EA130);
  v41 = (*(v40 + 88))(v10, v39);
  if (v41 != enum case for LaunchDashboardAction.Destination.achievements(_:))
  {
    if (v41 == enum case for LaunchDashboardAction.Destination.leaderboards(_:))
    {
      (*(v40 + 96))(v10, v39);
      v44 = *v10;
      *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 0;
      v45 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8];
      *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier] = v44;

      *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope] = 1;
      v46 = &OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope;
    }

    else
    {
      if (v41 == enum case for LaunchDashboardAction.Destination.profile(_:))
      {
        (*(v40 + 96))(v10, v39);
        v48 = *v10;
        v49 = *(v10 + 1);
        *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 3;
        v50 = &v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier];
        v51 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier + 8];
        *v50 = v48;
        *(v50 + 1) = v49;
        goto LABEL_8;
      }

      if (v41 != enum case for LaunchDashboardAction.Destination.challenges(_:))
      {
        if (v41 == enum case for LaunchDashboardAction.Destination.localPlayerProfile(_:))
        {
          v37 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
          v38 = 3;
          goto LABEL_12;
        }

        if (v41 == enum case for LaunchDashboardAction.Destination.friendRequests(_:))
        {
          *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 5;
          v52 = &v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
          v53 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
          v54 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8];
          v55 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 16];
          v56 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 24];
          *v52 = 3;
          *(v52 + 1) = 0;
          *(v52 + 2) = 0;
          *(v52 + 3) = 0;
          v57 = v52[32];
          v52[32] = 3;
          sub_100030C94(v53, v54, v55, v56, v57);
          return v20;
        }

        (*(v40 + 8))(v10, v39);
        goto LABEL_5;
      }

      v46 = &OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
    }

    v37 = *v46;
    v38 = 2;
    goto LABEL_12;
  }

  (*(v40 + 96))(v10, v39);
  v42 = *v10;
  *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 1;
  v43 = *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier + 8];
  *&v20[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier] = v42;
LABEL_8:

  return v20;
}

uint64_t sub_100022F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023074, v12, v11);
}

uint64_t sub_100023074()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  v9 = *(v7 + *(type metadata accessor for AccessPointAnimationView(0) + 52));
  (*(v4 + 104))(v2, enum case for GameDashboardLaunchContext.LaunchTarget.none(_:), v3);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.setter();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v8 requestDashboardPresentation:isa];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100023164(uint64_t a1)
{
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v49 = &v41 - v4;
  v5 = type metadata accessor for EnvironmentValues();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimationCompletionCriteria();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessPointAnimationView(0);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  v13 = *(__chkstk_darwin(v11 - 8) + 36);
  v50 = a1;
  v14 = (a1 + v13);
  v16 = *v14;
  v15 = v14[1];
  v52 = *v14;
  v53 = v15;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v17 = v51;
  swift_getKeyPath();
  v52 = v17;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v18 != 2)
  {
    goto LABEL_3;
  }

  v52 = v16;
  v53 = v15;
  State.wrappedValue.getter();
  v19 = v51;
  swift_getKeyPath();
  v52 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__showDashboard);

  if ((v20 & 1) == 0)
  {
    if (qword_10012CB50 != -1)
    {
      v21 = swift_once();
    }

    __chkstk_darwin(v21);
    v37 = v50;
    *(&v41 - 2) = v50;
    sub_10002D940(v37, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
    v38 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v39 = swift_allocObject();
    sub_10002D7B8(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for AccessPointAnimationView);
    v40 = v43;
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v44 + 8))(v40, v45);
  }

  else
  {
LABEL_3:
    v52 = v16;
    v53 = v15;
    State.wrappedValue.getter();
    v22 = v51;
    swift_getKeyPath();
    v52 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (v23 == 2)
    {
      goto LABEL_5;
    }

    v52 = v16;
    v53 = v15;
    State.wrappedValue.getter();
    v24 = v51;
    swift_getKeyPath();
    v52 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v24 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (v25 == 1)
    {
LABEL_5:
      v27 = *(v50 + 8);
      v28 = *(v50 + 16);

      if ((v28 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v29 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v30 = v46;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v47 + 8))(v30, v48);
        v27 = v52;
      }

      swift_getKeyPath();
      v52 = v27;
      sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v31)
      {
        v33 = type metadata accessor for TaskPriority();
        v34 = v49;
        (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
        type metadata accessor for MainActor();
        v35 = static MainActor.shared.getter();
        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = &protocol witness table for MainActor;
        v36[4] = v32;
        v36[5] = v31;
        sub_100014BBC(0, 0, v34, &unk_1000EA0E0, v36);
      }

      v52 = v16;
      v53 = v15;
      State.wrappedValue.getter();
      sub_100017618();
    }
  }

  return result;
}

uint64_t sub_100023878(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v5 = *v1;
  v6 = v1[1];
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  if (*(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 0;
  }
}

uint64_t sub_1000239E4(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AccessPointAnimationView(0);
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v34);
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v32 = v13 + 56;
  v33 = v14;
  v14(v11, 1, 1, v12);
  sub_10002D940(a1, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
  v31 = type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AccessPointAnimationView);
  sub_100014BBC(0, 0, v11, &unk_1000EA0F0, v17);

  v18 = *(a1 + 8);
  LOBYTE(v15) = *(a1 + 16);

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v29 + 8))(v5, v30);
    v18 = v35;
  }

  swift_getKeyPath();
  v35 = v18;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);

  if (v20)
  {
    v33(v11, 1, 1, v12);
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    v23[5] = v20;
    sub_100014BBC(0, 0, v11, &unk_1000EA0F8, v23);
  }

  v24 = (a1 + *(v34 + 28));
  v26 = *v24;
  v25 = v24[1];
  v35 = v26;
  v36 = v25;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  sub_100017618();
}

uint64_t sub_100023E20(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    v5 = a1;
    v6 = a3;
    swift_once();
    a3 = v6;
    a1 = v5;
  }

  v3 = *a3;
  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100023EC0(uint64_t a1)
{
  v43 = type metadata accessor for AccessPointAnchoring();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v43);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v34 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  v41 = v12;
  v51 = v12;
  v52 = v11;
  v46 = v11;
  v45 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);

  v15 = v13;
  v38 = v14;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v17 = v39;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v40 + 8))(v17, v7);
    v15 = v51;
  }

  v35 = v13;
  v34 = v7;
  swift_getKeyPath();
  v51 = v15;
  v37 = sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v19 = *(v2 + 16);
  v20 = v43;
  v21 = v44;
  v19(v44, v15 + v18, v43);

  sub_100015C10(v21);

  v22 = v41;
  v49 = v41;
  v50 = v46;
  State.wrappedValue.getter();
  v23 = v47;
  swift_getKeyPath();
  v49 = v23;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v36 = v19;
  v19(v21, v23 + v24, v20);

  v25 = v42;
  (*(v2 + 104))(v42, enum case for AccessPointAnchoring.topCentered(_:), v20);
  sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v2 + 8);
  v26(v25, v20);
  result = (v26)(v21, v20);
  if ((v23 & 1) == 0)
  {
    v47 = v22;
    v48 = v46;
    State.wrappedValue.getter();
    v28 = v35;

    if ((v38 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v30 = v39;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v40 + 8))(v30, v34);
      v28 = v47;
    }

    swift_getKeyPath();
    v47 = v28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v32 = v28 + v31;
    v33 = v44;
    v36(v44, v32, v43);

    sub_10001590C(v33);
  }

  return result;
}

uint64_t sub_1000244A8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessPointAnimationView(0);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = v9;
    v16 = static Log.runtimeIssuesLog.getter();
    v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v25);
    v14 = v28;
  }

  swift_getKeyPath();
  v28 = v14;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v14 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v28 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v14 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    if (v17 <= 0)
    {
      if (qword_10012CB48 != -1)
      {
        swift_once();
      }

      v18 = &qword_10012D558;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (qword_10012CB50 != -1)
  {
    swift_once();
  }

  v18 = &qword_10012D560;
LABEL_12:
  v19 = *v18;

  __chkstk_darwin(v20);
  *(&v24 - 2) = a1;
  sub_10002D940(a1, v8, type metadata accessor for AccessPointAnimationView);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_10002D7B8(v8, v22 + v21, type metadata accessor for AccessPointAnimationView);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  (*(v27 + 8))(v5, v2);
  return sub_100018BC8();
}

uint64_t sub_100024974(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v9 = *v7;
  v8 = v7[1];
  v20 = v9;
  v21 = v8;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v10 = v19[1];
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v11 = v20;
  }

  swift_getKeyPath();
  v20 = v11;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
  {
    swift_getKeyPath();
    v20 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v15 = v14 > 0;
    v16 = (v10 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    if (((v15 ^ *(v10 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden)) & 1) == 0)
    {
LABEL_5:
      *v16 = v15;
    }
  }

  else
  {

    v16 = (v10 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    LOBYTE(v15) = 1;
    if (*(v10 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden))
    {
      goto LABEL_5;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v19[-2] = v10;
  LOBYTE(v19[-1]) = v15;
  v20 = v10;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100024CE4(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnimationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  v30 = a1;
  LOBYTE(a1) = *(a1 + 16);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = v10;
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v29);
    v15 = v32;
  }

  swift_getKeyPath();
  v32 = v15;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v15 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active);

  if ((v17 & 1) == 0)
  {
    v19 = (v30 + *(v2 + 28));
    v21 = *v19;
    v20 = v19[1];
    v32 = v21;
    v33 = v20;
    sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
    State.wrappedValue.getter();
    v22 = v31;
    swift_getKeyPath();
    v32 = v22;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal);

    if (v23 == 1)
    {
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
      sub_10002D940(v30, v5, type metadata accessor for AccessPointAnimationView);
      type metadata accessor for MainActor();
      v25 = static MainActor.shared.getter();
      v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = &protocol witness table for MainActor;
      sub_10002D7B8(v5, v27 + v26, type metadata accessor for AccessPointAnimationView);
      sub_100014BBC(0, 0, v9, &unk_1000EA0D0, v27);
    }
  }

  return result;
}

uint64_t sub_100025150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000251E8, v6, v5);
}

uint64_t sub_1000251E8()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1000215B4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10002524C(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnimationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10002D940(a1, v5, type metadata accessor for AccessPointAnimationView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(v5, v13 + v12, type metadata accessor for AccessPointAnimationView);
  sub_100014BBC(0, 0, v9, &unk_1000EA0C0, v13);
}

uint64_t sub_100025420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[73] = a4;
  v5 = type metadata accessor for AccessPointAnchoring();
  v4[74] = v5;
  v6 = *(v5 - 8);
  v4[75] = v6;
  v7 = *(v6 + 64) + 15;
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v8 = type metadata accessor for AccessPointUseCase();
  v4[78] = v8;
  v9 = *(v8 - 8);
  v4[79] = v9;
  v10 = *(v9 + 64) + 15;
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v11 = type metadata accessor for EnvironmentValues();
  v4[83] = v11;
  v12 = *(v11 - 8);
  v4[84] = v12;
  v13 = *(v12 + 64) + 15;
  v4[85] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[86] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000255F0, v15, v14);
}

uint64_t sub_1000255F0()
{
  v1 = v0[86];
  v2 = v0[73];

  v3 = *(v2 + 8);
  v4 = *(v2 + 16);

  v5 = v3;
  if ((v4 & 1) == 0)
  {
    v6 = v0[85];
    v7 = v0[84];
    v8 = v0[83];
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v6, v8);
    v5 = v0[57];
  }

  v10 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
  swift_beginAccess();
  v11 = *(v5 + v10);

  v12 = *(v11 + 16);

  if (!v12)
  {
    goto LABEL_42;
  }

  v13 = v0[73];
  v14 = (v13 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v15 = *v14;
  v16 = v14[1];
  v0[45] = *v14;
  v0[46] = v16;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v17 = v0[71];
  swift_getKeyPath();
  v0[69] = v17;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v13) = *(v17 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v13)
  {
    goto LABEL_42;
  }

  v121 = v16;
  v122 = v15;

  v18 = v3;
  if ((v4 & 1) == 0)
  {
    v19 = v0[85];
    v20 = v0[84];
    v21 = v0[83];
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v19, v21);
    v18 = v0[68];
  }

  v23 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
  swift_beginAccess();
  v24 = *(v18 + v23);

  v118 = v24;
  v27 = v121;
  v26 = v122;
  v116 = *(v24 + 16);
  if (!v116)
  {
LABEL_39:

    if ((v4 & 1) == 0)
    {
      v94 = v0[85];
      v95 = v0[84];
      v96 = v0[83];
      static os_log_type_t.fault.getter();
      v97 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v95 + 8))(v94, v96);
      v3 = v0[64];
    }

    v98 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
    swift_beginAccess();
    v99 = *(v3 + v98);
    *(v3 + v98) = &_swiftEmptyArrayStorage;

LABEL_42:
    v100 = v0[85];
    v101 = v0[82];
    v102 = v0[81];
    v103 = v0[80];
    v104 = v0[77];
    v105 = v0[76];

    v106 = v0[1];

    return v106();
  }

  v28 = 0;
  v29 = v0[79];
  v30 = v0[75];
  v115 = v24 + 32;
  v120 = (v0[84] + 8);
  v113 = (v29 + 16);
  v117 = (v29 + 104);
  v112 = (v29 + 8);
  v111 = enum case for AccessPointUseCase.welcomeBannerOnly(_:);
  v109 = (v29 + 40);
  v110 = (v30 + 16);
  v108 = enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:);
  v119 = (v30 + 8);
  v107 = (v30 + 24);
  v124 = v4;
  v125 = v3;
  while (v28 < *(v118 + 16))
  {
    v123 = v28;
    v31 = *(v115 + 8 * v28);

    v32 = v3;
    if ((v4 & 1) == 0)
    {
      v33 = v0[85];
      v34 = v0[83];
      static os_log_type_t.fault.getter();
      v35 = v4;
      v36 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v4 = v35;
      v3 = v125;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*v120)(v33, v34);
      v32 = v0[66];
    }

    v37 = *(v32 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing);

    if (v37 != 1)
    {
      goto LABEL_38;
    }

    if (v31[2])
    {
      v3 = v4;
      v0[49] = v26;
      v0[50] = v27;
      State.wrappedValue.getter();
      v38 = v0[63];
      swift_beginAccess();
      result = AccessPointContainer.items.modify();
      v4 = *v39;
      if (!*(*v39 + 16))
      {
        goto LABEL_46;
      }

      v40 = result;
      v41 = v39;
      v42 = *v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v41 = v4;
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = *(v4 + 16);
        if (!v44)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v4 = sub_10002CE2C(v4);
        *v41 = v4;
        v44 = *(v4 + 16);
        if (!v44)
        {
LABEL_37:
          __break(1u);
LABEL_38:

          goto LABEL_39;
        }
      }

      v45 = v27;
      v46 = v44 - 1;
      sub_10002E6CC((v4 + 40 * v44 - 8));
      *(v4 + 16) = v46;
      *v41 = v4;
      v40();
      swift_endAccess();

      v0[51] = v26;
      v0[52] = v45;
      State.wrappedValue.getter();
      v47 = v0[59];
      swift_beginAccess();
      v48 = AccessPointContainer.items.modify();
      sub_10002649C(v31);
      v48(v0 + 6, 0);
      swift_endAccess();

      v49 = v125;

      if ((v3 & 1) == 0)
      {
        v50 = v0[85];
        v51 = v0[83];
        static os_log_type_t.fault.getter();
        v52 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*v120)(v50, v51);
        v49 = v0[58];
      }

      v53 = v0[82];
      v54 = v0[81];
      v55 = v0[78];
      v56 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
      swift_beginAccess();
      (*v113)(v53, v49 + v56, v55);

      v114 = *v117;
      (*v117)(v54, v111, v55);
      sub_10002B454(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v57 = v0[82];
      v58 = v0[81];
      v59 = v0[78];
      if (v0[43] == v0[55] && v0[44] == v0[56])
      {
        v60 = *v112;
        (*v112)(v0[81], v0[78]);
        v60(v57, v59);

        v61 = v125;
        goto LABEL_25;
      }

      v62 = v0[44];
      v63 = v0[56];
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65 = *v112;
      (*v112)(v58, v59);
      v65(v57, v59);

      v61 = v125;
      if (v64)
      {
LABEL_25:

        v66 = v61;
        if ((v124 & 1) == 0)
        {
          v67 = v0[85];
          v68 = v0[83];
          static os_log_type_t.fault.getter();
          v69 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*v120)(v67, v68);
          v66 = v0[67];
        }

        v70 = v0[80];
        v71 = v0[78];
        v114(v70, v108, v71);
        v72 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
        swift_beginAccess();
        (*v109)(v66 + v72, v70, v71);
        swift_endAccess();

        v0[47] = v122;
        v0[48] = v121;
        State.wrappedValue.getter();
        v73 = v0[70];
        v114(v70, v108, v71);
        swift_beginAccess();
        AccessPointContainer.useCase.setter();
        swift_endAccess();

        if ((v124 & 1) == 0)
        {
          v75 = v0[85];
          v76 = v0[83];
          static os_log_type_t.fault.getter();
          v77 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*v120)(v75, v76);
          v74 = v0[72];
        }

        *(v74 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 0;
      }

      v0[53] = v122;
      v0[54] = v121;
      State.wrappedValue.getter();
      v78 = v0[60];

      v79 = v61;
      if ((v124 & 1) == 0)
      {
        v80 = v0[85];
        v81 = v0[83];
        static os_log_type_t.fault.getter();
        v82 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*v120)(v80, v81);
        v79 = v0[61];
      }

      v83 = v0[77];
      v84 = v0[76];
      v85 = v0[74];
      swift_getKeyPath();
      v0[62] = v79;
      sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v86 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
      swift_beginAccess();
      v87 = *v110;
      (*v110)(v83, v79 + v86, v85);

      v88 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
      swift_beginAccess();
      v87(v84, v78 + v88, v85);
      sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
      v89 = dispatch thunk of static Equatable.== infix(_:_:)();
      v90 = *v119;
      (*v119)(v84, v85);
      v91 = v0[77];
      if (v89)
      {
        v92 = v0[74];
        swift_beginAccess();
        (*v107)(v78 + v88, v91, v92);
        swift_endAccess();
      }

      else
      {
        swift_getKeyPath();
        v93 = swift_task_alloc();
        *(v93 + 16) = v78;
        *(v93 + 24) = v91;
        v0[65] = v78;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v90(v0[77], v0[74]);

      v4 = v124;
      v27 = v121;
      v26 = v122;
      v3 = v125;
      goto LABEL_10;
    }

LABEL_10:
    v28 = v123 + 1;
    if (v116 == v123 + 1)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *sub_10002649C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1000CC300(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000265A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002663C, v5, v4);
}

uint64_t sub_10002663C()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100018BC8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000266A0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 40));
  v3 = *v1;
  v4 = v1[1];
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_100026730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000267C8, v7, v6);
}

uint64_t sub_1000267C8()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 56) = qword_100135CD8;

  return _swift_task_switch(sub_100026860, v1, 0);
}

uint64_t sub_100026860()
{
  v1 = v0[7];
  sub_1000C6540(v0[2], v0[3]);
  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_1000268C8, v2, v3);
}

uint64_t sub_1000268C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002692C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v84 = type metadata accessor for AccessPointContainer();
  v3 = *(v84 - 8);
  v4 = v3[8];
  __chkstk_darwin(v84);
  v6 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012DB88, &qword_1000E9CF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v72 - v9;
  v78 = sub_100002B38(&qword_10012DB90, &qword_1000E9D00);
  v11 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v13 = v72 - v12;
  v80 = sub_100002B38(&qword_10012DB98, &qword_1000E9D08);
  v81 = *(v80 - 8);
  v14 = *(v81 + 64);
  __chkstk_darwin(v80);
  v79 = v72 - v15;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v16 = sub_100002B38(&qword_10012DBA0, &qword_1000E9D10);
  sub_1000272DC(v1, &v10[*(v16 + 44)]);
  *&v10[*(v7 + 36)] = static HierarchicalShapeStyle.primary.getter();
  v92 = *(v1 + 16);
  v93 = *(v1 + 32);
  v85 = *(v1 + 16);
  v86 = *(v1 + 32);
  v76 = sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v17 = v90;
  swift_getKeyPath();
  *&v85 = v17;
  v77 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  type metadata accessor for APAnimationController();
  sub_10002BD64();
  sub_10002B454(&qword_10012DBD0, &type metadata accessor for APAnimationController);
  View.environment<A>(_:)();

  sub_100005688(v10, &qword_10012DB88, &qword_1000E9CF8);
  LOBYTE(v17) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v13[*(sub_100002B38(&qword_10012DBD8, &unk_1000E9D28) + 36)];
  v83 = v13;
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v85 = v92;
  v86 = v93;
  Binding.wrappedValue.getter();
  v28 = v90;
  v29 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v75 = v3[2];
  v30 = v84;
  v75(v6, v28 + v29, v84);

  v91 = *(v2 + 40);
  v85 = *(v2 + 40);
  v74 = sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  AccessPointContainer.cornerRadii(for:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v3[1];
  v72[1] = v3 + 1;
  v73 = v39;
  v39(v6, v30);
  v40 = &v13[*(sub_100002B38(&qword_10012DBE0, &qword_1000E9D38) + 36)];
  v72[0] = type metadata accessor for UnevenRoundedRectangle();
  v41 = *(v72[0] + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = *(*(v43 - 8) + 104);
  v44(&v40[v41], v42, v43);
  *v40 = v32;
  *(v40 + 1) = v34;
  *(v40 + 2) = v36;
  *(v40 + 3) = v38;
  v40[*(sub_100002B38(&qword_10012DBE8, &qword_1000E9D40) + 36)] = 0;
  v85 = v92;
  v86 = v93;
  Binding.wrappedValue.getter();
  v45 = v89;
  v46 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v47 = v84;
  v75(v6, v45 + v46, v84);

  v85 = v91;
  State.wrappedValue.getter();
  AccessPointContainer.cornerRadii(for:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v73(v6, v47);
  v56 = v78;
  v57 = &v83[*(v78 + 36)];
  v44(&v57[*(v72[0] + 20)], v42, v43);
  *v57 = v49;
  *(v57 + 1) = v51;
  *(v57 + 2) = v53;
  *(v57 + 3) = v55;
  *&v57[*(sub_100002B38(&qword_10012DBF0, &qword_1000E9D48) + 36)] = 256;
  v85 = v92;
  v86 = v93;
  Binding.wrappedValue.getter();
  v58 = v88;
  swift_getKeyPath();
  *&v85 = v58;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = *(v58 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v60 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v88 = v60;
  v61 = swift_allocObject();
  v62 = *(v2 + 48);
  *(v61 + 48) = *(v2 + 32);
  *(v61 + 64) = v62;
  *(v61 + 80) = *(v2 + 64);
  *(v61 + 96) = *(v2 + 80);
  v63 = *(v2 + 16);
  *(v61 + 16) = *v2;
  *(v61 + 32) = v63;
  sub_10002BE54(v2, &v85);
  v64 = sub_10002BE8C();
  v65 = v79;
  v66 = v83;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v66, &qword_10012DB90, &qword_1000E9D00);
  v85 = *(v2 + 72);
  sub_100002B38(&qword_10012DC20, &unk_1000E9D50);
  State.wrappedValue.getter();
  LOBYTE(v42) = AccessPointHighlightComponent.GestureHandler.didSwipeUp.getter();

  LOBYTE(v88) = v42 & 1;
  v67 = swift_allocObject();
  v68 = *(v2 + 48);
  *(v67 + 48) = *(v2 + 32);
  *(v67 + 64) = v68;
  *(v67 + 80) = *(v2 + 64);
  *(v67 + 96) = *(v2 + 80);
  v69 = *(v2 + 16);
  *(v67 + 16) = *v2;
  *(v67 + 32) = v69;
  sub_10002BE54(v2, &v85);
  *&v85 = v56;
  *(&v85 + 1) = &type metadata for Int;
  v86 = v64;
  v87 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  v70 = v80;
  View.onChange<A>(of:initial:_:)();

  return (*(v81 + 8))(v65, v70);
}

uint64_t sub_1000272DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = sub_100002B38(&qword_10012DC40, &unk_1000E9DD0);
  v3 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v49 = &v43 - v4;
  v5 = type metadata accessor for AccessPointContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&qword_10012D3A0, &qword_1000E9720);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_100002B38(&qword_10012DC48, &qword_1000E9DE0);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v46 = &v43 - v16;
  v17 = sub_100002B38(&qword_10012DC50, &qword_1000E9DE8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v51 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = &v43 - v21;
  v58 = *(a1 + 40);
  v53 = *(a1 + 40);
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  v53 = *(a1 + 16);
  v54 = *(a1 + 32);
  if (v57)
  {
    sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
    Binding.wrappedValue.getter();
    v30 = v57;
    v31 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    (*(v6 + 16))(v9, v30 + v31, v5);

    v53 = v58;
    State.wrappedValue.getter();
    AccessPointContainer.componentView(for:)();
    (*(v6 + 8))(v9, v5);
    v53 = *(a1 + 72);
    sub_100002B38(&qword_10012DC20, &unk_1000E9D50);
    State.wrappedValue.getter();
    v32 = type metadata accessor for AccessPointHighlightComponent.GestureHandler();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = sub_10002B454(&qword_10012DC58, &type metadata accessor for AccessPointHighlightComponent.GestureHandler);
    v35 = v45;
    v27 = v46;
    View.environment<A>(_:)();

    (*(v44 + 8))(v13, v35);
    v29 = v47;
    (*(v47 + 16))(v49, v27, v14);
    swift_storeEnumTagMultiPayload();
    *&v53 = v35;
    *(&v53 + 1) = v32;
    v54 = OpaqueTypeConformance2;
    v55 = v34;
  }

  else
  {
    sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
    Binding.wrappedValue.getter();
    v22 = v57;
    v23 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    (*(v6 + 16))(v9, v22 + v23, v5);

    v53 = v58;
    State.wrappedValue.getter();
    AccessPointContainer.componentView(for:)();
    (*(v6 + 8))(v9, v5);
    v53 = *(a1 + 72);
    sub_100002B38(&qword_10012DC20, &unk_1000E9D50);
    State.wrappedValue.getter();
    v24 = type metadata accessor for AccessPointHighlightComponent.GestureHandler();
    v25 = swift_getOpaqueTypeConformance2();
    v26 = sub_10002B454(&qword_10012DC58, &type metadata accessor for AccessPointHighlightComponent.GestureHandler);
    v28 = v45;
    v27 = v46;
    View.environment<A>(_:)();

    (*(v44 + 8))(v13, v28);
    v29 = v47;
    (*(v47 + 16))(v49, v27, v14);
    swift_storeEnumTagMultiPayload();
    *&v53 = v28;
    *(&v53 + 1) = v24;
    v54 = v25;
    v55 = v26;
  }

  swift_getOpaqueTypeConformance2();
  v36 = v50;
  _ConditionalContent<>.init(storage:)();
  (*(v29 + 8))(v27, v14);
  v53 = *(a1 + 16);
  v54 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v37 = v56;
  swift_getKeyPath();
  *&v53 = v37;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v37 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__collapsed);

  v39 = v51;
  sub_1000035B4(v36, v51, &qword_10012DC50, &qword_1000E9DE8);
  v40 = v52;
  sub_1000035B4(v39, v52, &qword_10012DC50, &qword_1000E9DE8);
  v41 = v40 + *(sub_100002B38(&qword_10012DC60, &qword_1000E9E18) + 48);
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 9) = v38;
  sub_100005688(v36, &qword_10012DC50, &qword_1000E9DE8);
  return sub_100005688(v39, &qword_10012DC50, &qword_1000E9DE8);
}

uint64_t sub_100027AD8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CB60 != -1)
  {
    v5 = swift_once();
  }

  __chkstk_darwin(v5);
  v13[-2] = a1;
  v8 = withAnimation<A>(_:_:)();
  __chkstk_darwin(v8);
  v13[-2] = a1;
  v9 = swift_allocObject();
  v10 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = *(a1 + 80);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  sub_10002BE54(a1, v13);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_100027D00(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2[1] = *(a1 + 56);
  v4 = *(&v3 + 1);
  sub_1000035B4(&v4, v2, &qword_10012DC38, &qword_1000E9DC8);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_100005688(&v3, &qword_10012CFF0, &qword_1000ED780);
}

uint64_t sub_100027DD4(uint64_t a1)
{
  if (qword_10012CB60 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100027E94(uint64_t a1)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  dispatch thunk of APAnimationController.highlightIndex.getter();

  v5 = *(a1 + 40);
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  return State.wrappedValue.setter();
}

uint64_t sub_100027FD0(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v7 = v16;
  swift_getKeyPath();
  *&v14 = v7;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (!v8)
  {
    if (qword_10012CB68 != -1)
    {
      result = swift_once();
    }

    __chkstk_darwin(result);
    *&v13[-16] = a1;
    v10 = swift_allocObject();
    v11 = *(a1 + 48);
    *(v10 + 48) = *(a1 + 32);
    *(v10 + 64) = v11;
    *(v10 + 80) = *(a1 + 64);
    *(v10 + 96) = *(a1 + 80);
    v12 = *(a1 + 16);
    *(v10 + 16) = *a1;
    *(v10 + 32) = v12;
    sub_10002BE54(a1, &v14);
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10002825C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) != 3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000283C0(uint64_t a1)
{
  v59 = type metadata accessor for AccessPointAnchoring();
  v58 = *(v59 - 8);
  v2 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v55 = &v52 - v6;
  v54 = type metadata accessor for EnvironmentValues();
  v53 = *(v54 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for AccessPointUseCase();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v60);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for AccessPointContainer();
  v63 = *(v62 - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin(v62);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a1 + 16);
  v71 = *(a1 + 32);
  v64 = *(a1 + 16);
  v61 = a1;
  v65 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v16 = v69;
  if (v69[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal])
  {
    KeyPath = swift_getKeyPath();
    v56 = &v52;
    __chkstk_darwin(KeyPath);
    *(&v52 - 2) = v16;
    *(&v52 - 8) = 0;
    *&v64 = v16;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v69[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal] = 0;
  }

  v64 = v70;
  v65 = v71;
  Binding.wrappedValue.getter();
  v18 = v69;
  v19 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v20 = v63;
  v21 = v62;
  v56 = *(v63 + 16);
  (v56)(v15, &v18[v19], v62);

  AccessPointContainer.useCase.getter();
  v22 = *(v20 + 8);
  v63 = v20 + 8;
  v22(v15, v21);
  v23 = v22;
  LOBYTE(v22) = AccessPointUseCase.isEphemeral.getter();
  (*(v9 + 8))(v12, v60);
  if (v22)
  {
    v24 = v61;
    BYTE8(v67) = v61[8];
    v25 = *v61;
    *&v67 = *v61;
    v26 = BYTE8(v67);

    if ((v26 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v28 = v52;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100005688(&v67, &qword_10012DC28, &qword_1000E9D60);
      (*(v53 + 8))(v28, v54);
      v25 = v64;
    }

    swift_getKeyPath();
    *&v64 = v25;
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v25 + 16);
    v29 = *(v25 + 24);

    if (v29)
    {
      v32 = type metadata accessor for TaskPriority();
      v33 = v55;
      (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
      type metadata accessor for MainActor();
      sub_10002BE54(v24, &v64);
      v34 = static MainActor.shared.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = &protocol witness table for MainActor;
      v36 = *(v24 + 48);
      *(v35 + 64) = *(v24 + 32);
      *(v35 + 80) = v36;
      *(v35 + 96) = *(v24 + 64);
      v37 = *(v24 + 80);
      v38 = *(v24 + 16);
      *(v35 + 32) = *v24;
      *(v35 + 48) = v38;
      *(v35 + 112) = v37;
      *(v35 + 120) = v30;
      *(v35 + 128) = v29;
      sub_100014BBC(0, 0, v33, &unk_1000E9D98, v35);
    }
  }

  else
  {
    v64 = v70;
    v65 = v71;
    Binding.wrappedValue.getter();
    v64 = v70;
    v65 = v71;
    Binding.wrappedValue.getter();
    v39 = v67;
    swift_getKeyPath();
    *&v64 = v39;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
    swift_beginAccess();
    v41 = v39 + v40;
    v42 = v57;
    (*(v58 + 16))(v57, v41, v59);

    sub_10001590C(v42);

    v67 = v70;
    v68 = v71;
    Binding.wrappedValue.getter();
    v43 = v66;
    if (v66[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state] != 1)
    {
      v44 = swift_getKeyPath();
      __chkstk_darwin(v44);
      *(&v52 - 2) = v43;
      *(&v52 - 8) = 1;
      *&v67 = v43;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v67 = v70;
    v68 = v71;
    Binding.wrappedValue.getter();
    v45 = v66;
    v67 = v70;
    v68 = v71;
    Binding.wrappedValue.getter();
    v46 = v66;
    v47 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    v48 = v62;
    (v56)(v15, &v46[v47], v62);

    v49 = AccessPointContainer.items.getter();
    v23(v15, v48);
    v50 = *(v49 + 16);

    swift_getKeyPath();
    v66 = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v51 = *&v45[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller];

    dispatch thunk of APAnimationController.highlightIndex.setter();

    if (qword_10012CB48 != -1)
    {
      swift_once();
    }

    __chkstk_darwin(qword_10012D558);
    *(&v52 - 2) = v61;
    return withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100028E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v11;
  v6[13] = v10;

  return _swift_task_switch(sub_100028F80, v11, v10);
}

uint64_t sub_100028F80()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = qword_100135CD8;
  *(v0 + 112) = qword_100135CD8;
  v3 = *(v1 + 8);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  if ((v5 & 1) == 0)
  {
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100005688(v0 + 16, &qword_10012DC28, &qword_1000E9D60);
    (*(v7 + 8))(v6, v8);
    v4 = *(v0 + 32);
  }

  *(v0 + 120) = v4;

  return _swift_task_switch(sub_1000290F4, v2, 0);
}

uint64_t sub_1000290F4()
{
  v1 = *(v0 + 112);
  sub_10002CE40(*(v0 + 120), 1, v1);

  return _swift_task_switch(sub_100029170, v1, 0);
}

uint64_t sub_100029170()
{
  v1 = v0[14];
  sub_1000C6540(v0[6], v0[7]);
  v2 = v0[12];
  v3 = v0[13];

  return _swift_task_switch(sub_1000291D8, v2, v3);
}

uint64_t sub_1000291D8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100029240(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) == 1)
  {
    *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000293A8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_10002692C(a1);
}

uint64_t sub_100029410@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v73 = a2;
  v3 = type metadata accessor for CollapsibleContentFrame(0);
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  __chkstk_darwin(v3);
  v78 = v5;
  v69 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AccessPointAnchoring();
  v64 = *(v65 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v65);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for MoveTransition();
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  v10 = __chkstk_darwin(v67);
  v62 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v12;
  v13 = type metadata accessor for DynamicTypeSize();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002B38(&qword_10012DB20, &qword_1000E9BF0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v59 - v20;
  v77 = sub_100002B38(&qword_10012DB28, &qword_1000E9BF8);
  v22 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v61 = v59 - v23;
  v72 = sub_100002B38(&qword_10012DB30, &unk_1000E9C00);
  v71 = *(v72 - 8);
  v24 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = v59 - v25;
  v26 = v2 + *(v3 + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v85) = v27;
  *(&v85 + 1) = v28;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v79 == 1)
  {
    sub_10007A024(v17);
    static AccessPointHighlightComponent.accessPointHeight(for:)();
    (*(v14 + 8))(v17, v13);
  }

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = sub_100002B38(&qword_10012DB38, &qword_1000E9C10);
  (*(*(v29 - 8) + 16))(v21, v75, v29);
  v30 = &v21[*(v18 + 36)];
  v31 = v86;
  *v30 = v85;
  *(v30 + 1) = v31;
  *(v30 + 2) = v87;
  v32 = (v2 + *(v3 + 20));
  v33 = *v32;
  v74 = v32[1];
  v75 = v32[2];
  v76 = v2;
  v79 = v33;
  v80 = v74;
  v34 = v33;
  v60 = v33;
  v81 = v75;
  v59[1] = sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v35 = v84;
  swift_getKeyPath();
  v79 = v35;
  v59[0] = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v37 = v64;
  v38 = v35 + v36;
  v39 = v65;
  (*(v64 + 16))(v8, v38, v65);

  AccessPointAnchoring.leading.getter();
  (*(v37 + 8))(v8, v39);
  v40 = v63;
  MoveTransition.init(edge:)();
  v41 = v66;
  v42 = v67;
  (*(v66 + 16))(v62, v40, v67);
  sub_10002B454(&qword_10012DB50, &type metadata accessor for MoveTransition);
  v43 = AnyTransition.init<A>(_:)();
  (*(v41 + 8))(v40, v42);
  v44 = v21;
  v45 = v61;
  sub_100014830(v44, v61, &qword_10012DB20, &qword_1000E9BF0);
  *(v45 + *(v77 + 36)) = v43;
  v79 = v34;
  v80 = v74;
  v81 = v75;
  Binding.wrappedValue.getter();
  v46 = v83;
  swift_getKeyPath();
  v79 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v43) = *(v46 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  LOBYTE(v79) = v43;
  v47 = v69;
  sub_10002D940(v76, v69, type metadata accessor for CollapsibleContentFrame);
  v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v49 = swift_allocObject();
  sub_10002D7B8(v47, v49 + v48, type metadata accessor for CollapsibleContentFrame);
  v68 = sub_10002B4F8();
  v50 = sub_10002B3AC();
  v51 = v70;
  v52 = v77;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v45, &qword_10012DB28, &qword_1000E9BF8);
  v79 = v60;
  v80 = v74;
  v81 = v75;
  Binding.wrappedValue.getter();
  v53 = v83;
  swift_getKeyPath();
  v79 = v53;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = *(v53 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v55 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v83 = v55;
  sub_10002D940(v76, v47, type metadata accessor for CollapsibleContentFrame);
  v56 = swift_allocObject();
  sub_10002D7B8(v47, v56 + v48, type metadata accessor for CollapsibleContentFrame);
  v79 = v52;
  v80 = &type metadata for AccessPointModel.AnimationState;
  v81 = v68;
  v82 = v50;
  swift_getOpaqueTypeConformance2();
  v57 = v72;
  View.onChange<A>(of:initial:_:)();

  return (*(v71 + 8))(v51, v57);
}

uint64_t sub_100029DF8(uint64_t a1)
{
  v2 = type metadata accessor for CollapsibleContentFrame(0);
  v3 = (a1 + *(v2 + 20));
  v8 = *v3;
  v10 = *(v3 + 1);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v4 == 3)
  {
    v6 = (a1 + *(v2 + 28));
    v9 = *v6;
    v11 = *(v6 + 1);
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100029F44()
{
  v1 = v0;
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CollapsibleContentFrame(0);
  v28 = *(v5 - 1);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for AccessPointContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0 + v5[5];
  v38 = *v12;
  v39 = *(v12 + 8);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v13 = v36;
  v14 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v8 + 16))(v11, v13 + v14, v7);
  swift_getKeyPath();
  v36 = v13;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v16 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v17 = AccessPointContainer.isCollapsibleItem(at:)(v16);

  (*(v8 + 8))(v11, v7);
  v18 = v1 + v5[6];
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v36) = *v18;
  v37 = v20;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v33 == 1 && !v17 || (LOBYTE(v36) = v19, v37 = v20, result = State.wrappedValue.getter(), (v33 & 1) == 0) && v17)
  {
    v22 = v1 + v5[7];
    v23 = *v22;
    v24 = *(v22 + 8);
    LOBYTE(v36) = *v22;
    v37 = v24;
    State.wrappedValue.getter();
    if (v33 == 1)
    {
      LOBYTE(v36) = v23;
      v37 = v24;
      v33 = 0;
      State.wrappedValue.setter();
      LOBYTE(v36) = v19;
      v37 = v20;

      State.wrappedValue.getter();
      v33 = v19;
      v34 = v20;
      v32 = (v35 & 1) == 0;
      State.wrappedValue.setter();
    }

    else
    {
      if (qword_10012CB60 != -1)
      {
        swift_once();
      }

      sub_10002D940(v1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollapsibleContentFrame);
      v25 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v26 = swift_allocObject();
      sub_10002D7B8(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for CollapsibleContentFrame);
      v27 = v29;
      static AnimationCompletionCriteria.logicallyComplete.getter();
      withAnimation<A>(_:completionCriteria:_:completion:)();

      return (*(v30 + 8))(v27, v31);
    }
  }

  return result;
}

uint64_t sub_10002A440(uint64_t a1)
{
  v13[0] = type metadata accessor for AnimationCompletionCriteria();
  v2 = *(v13[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v13[0]);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CollapsibleContentFrame(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  if (qword_10012CB58 != -1)
  {
    v9 = swift_once();
  }

  __chkstk_darwin(v9);
  v13[-2] = a1;
  sub_10002D940(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollapsibleContentFrame);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_10002D7B8(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CollapsibleContentFrame);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v2 + 8))(v5, v13[0]);
}

uint64_t sub_10002A6A0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CollapsibleContentFrame(0) + 24));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_10002A75C(void (*a1)(char *, uint64_t))
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CollapsibleContentFrame(0);
  v6 = v5 - 8;
  v45 = *(v5 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v5);
  v46 = v8;
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessPointAnchoring();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v53 = &v43 - v14;
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = *(v6 + 28);
  v48 = a1;
  v18 = &a1[v17];
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  v64 = *v18;
  v65 = v19;
  v54 = v19;
  v66 = v21;
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v22 = v61;
  swift_getKeyPath();
  v64 = v22;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v6) = *(v22 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v6 == 1)
  {
    v64 = v20;
    v65 = v54;
    v66 = v21;
    Binding.wrappedValue.getter();
    v24 = v61;
    swift_getKeyPath();
    v64 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
    swift_beginAccess();
    v27 = v55;
    v26 = v56;
    v44 = *(v55 + 16);
    v44(v16, v24 + v25, v56);

    LOBYTE(v25) = AccessPointAnchoring.bottom.getter();
    v28 = *(v27 + 8);
    result = v28(v16, v26);
    if (v25)
    {
      v43 = v28;
      v61 = v20;
      v62 = v54;
      v63 = v21;
      Binding.wrappedValue.getter();
      v29 = v59;
      swift_getKeyPath();
      v61 = v29;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
      swift_beginAccess();
      v31 = v53;
      v32 = v56;
      v44(v53, v29 + v30, v56);

      v33 = v52;
      (*(v55 + 104))(v52, enum case for AccessPointAnchoring.topCentered(_:), v32);
      sub_10002B454(&qword_10012DB80, &type metadata accessor for AccessPointAnchoring);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v59 == v57 && v60 == v58)
      {
        v34 = v43;
        v43(v33, v32);
        v34(v31, v32);
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v36 = v43;
        v43(v33, v32);
        v36(v31, v32);

        if ((v35 & 1) == 0)
        {
          return result;
        }
      }

      if (qword_10012CB48 != -1)
      {
        swift_once();
      }

      v37 = Animation.delay(_:)();
      __chkstk_darwin(v37);
      v39 = v47;
      v38 = v48;
      *(&v43 - 2) = v48;
      sub_10002D940(v38, v39, type metadata accessor for CollapsibleContentFrame);
      v40 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v41 = swift_allocObject();
      sub_10002D7B8(v39, v41 + v40, type metadata accessor for CollapsibleContentFrame);
      v42 = v49;
      static AnimationCompletionCriteria.logicallyComplete.getter();
      withAnimation<A>(_:completionCriteria:_:completion:)();

      return (*(v50 + 8))(v42, v51);
    }
  }

  return result;
}

uint64_t sub_10002AE48(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CollapsibleContentFrame(0) + 20));
  v5 = *v1;
  v6 = *(v1 + 1);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 0;
  }
}

uint64_t sub_10002AFBC(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for CollapsibleContentFrame(0) + 20));
  v9 = v7[1];
  v10 = v7[2];
  v15 = *v7;
  v8 = v15;
  v16 = v9;
  v17 = v10;
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v15 = v8;
  v16 = v9;
  v17 = v10;
  Binding.wrappedValue.getter();
  v11 = v14[2];
  swift_getKeyPath();
  v15 = v11;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
  swift_beginAccess();
  (*(v3 + 16))(v6, v11 + v12, v2);

  sub_10001590C(v6);

  if (qword_10012CB48 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10012D558);
  v14[-2] = a1;
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10002B228(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CollapsibleContentFrame(0) + 20));
  v5 = *v1;
  v6 = *(v1 + 1);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) == 1)
  {
    *(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

unint64_t sub_10002B3AC()
{
  result = qword_10012DB18;
  if (!qword_10012DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DB18);
  }

  return result;
}

uint64_t sub_10002B454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002B4F8()
{
  result = qword_10012DB58;
  if (!qword_10012DB58)
  {
    sub_100005144(&qword_10012DB28, &qword_1000E9BF8);
    sub_10002B5B0();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DB58);
  }

  return result;
}

unint64_t sub_10002B5B0()
{
  result = qword_10012DB60;
  if (!qword_10012DB60)
  {
    sub_100005144(&qword_10012DB20, &qword_1000E9BF0);
    sub_1000057D8(&qword_10012DB68, &qword_10012DB38, &qword_1000E9C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DB60);
  }

  return result;
}

uint64_t sub_10002B6A8()
{
  v1 = type metadata accessor for CollapsibleContentFrame(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v4 + v1[5]);
  v8 = *v7;

  v9 = v7[1];

  v10 = v7[2];

  v11 = *(v4 + v1[6] + 8);

  v12 = *(v4 + v1[7] + 8);

  return swift_deallocObject();
}

uint64_t sub_10002B804()
{
  v1 = *(type metadata accessor for CollapsibleContentFrame(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_100029F44();
}

void (*sub_10002B860(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10002CACC(v6, a2, a3);
  return sub_10002B8E8;
}

void sub_10002B8E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10002B934(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for RemoteAlertRequest() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

size_t sub_10002BA20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002CE18(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for RemoteAlertRequest() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10002D7B8(v11, a2, type metadata accessor for RemoteAlertRequest);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10002BB80(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10002BD64()
{
  result = qword_10012DBA8;
  if (!qword_10012DBA8)
  {
    sub_100005144(&qword_10012DB88, &qword_1000E9CF8);
    sub_1000057D8(&qword_10012DBB0, &qword_10012DBB8, &qword_1000E9D18);
    sub_1000057D8(&qword_10012DBC0, &qword_10012DBC8, &qword_1000E9D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DBA8);
  }

  return result;
}

unint64_t sub_10002BE8C()
{
  result = qword_10012DBF8;
  if (!qword_10012DBF8)
  {
    sub_100005144(&qword_10012DB90, &qword_1000E9D00);
    sub_10002BF44();
    sub_1000057D8(&qword_10012DC18, &qword_10012DBF0, &qword_1000E9D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DBF8);
  }

  return result;
}

unint64_t sub_10002BF44()
{
  result = qword_10012DC00;
  if (!qword_10012DC00)
  {
    sub_100005144(&qword_10012DBE0, &qword_1000E9D38);
    sub_10002BFFC();
    sub_1000057D8(&qword_10012DC10, &qword_10012DBE8, &qword_1000E9D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DC00);
  }

  return result;
}

unint64_t sub_10002BFFC()
{
  result = qword_10012DC08;
  if (!qword_10012DC08)
  {
    sub_100005144(&qword_10012DBD8, &unk_1000E9D28);
    sub_100005144(&qword_10012DB88, &qword_1000E9CF8);
    type metadata accessor for APAnimationController();
    sub_10002BD64();
    sub_10002B454(&qword_10012DBD0, &type metadata accessor for APAnimationController);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DC08);
  }

  return result;
}

uint64_t sub_10002C17C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[16];

  return swift_deallocObject();
}

uint64_t sub_10002C1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[15];
  v7 = v1[16];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100028E88(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_10002C2C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002C3B8;

  return v7(a1);
}

uint64_t sub_10002C3B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002C4B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10002C4E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014BAC;

  return sub_10002C2C0(a1, v5);
}

uint64_t sub_10002C5A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002C750(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for RemoteAlertRequest() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10002C93C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void (*sub_10002CACC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_10002CDE4(v8);
  v8[9] = sub_10002CBD8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10002CB78;
}

void sub_10002CB78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10002CBD8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1000C547C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1000CF074();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000CD1EC(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1000C547C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_10002CD30;
}

void sub_10002CD30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1000CEF28(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_10002E718(*(v7 + 48) + 16 * v6);
    sub_10002C5A0(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_10002CDE4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10002CE0C;
}

void (*sub_10002CE40(uint64_t a1, int a2, uint64_t a3))(void *a1)
{
  v79 = a3;
  v78 = a2;
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v72 - v6;
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v77 = &v72 - v10;
  v11 = type metadata accessor for RemoteAlertRequest();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v86 = type metadata accessor for RemoteAlertAccessPointContext(0);
  v87 = &off_1001240E8;
  v85[0] = a1;
  sub_10002D754(v85, v86);

  v80 = sub_1000BE5F4();
  if (!v20)
  {
    return sub_10002E6CC(v85);
  }

  v21 = v20;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100011F80(v22, qword_100135C88);
  sub_10002E8A8(v85, v82);

  v72 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v74 = v7;
  v73 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_1000BA5C8(v80, v21, v81);
    *(v27 + 12) = 2080;
    v29 = v83;
    v28 = v84;
    sub_10002D754(v82, v83);
    v30 = (*(v28 + 16))(v29, v28);
    v32 = v31;
    sub_10002E6CC(v82);
    v33 = sub_1000BA5C8(v30, v32, v81);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Finding completed request for token: %s, contextID: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002E6CC(v82);
  }

  v34 = v79;
  swift_beginAccess();
  v35 = *(v34 + 112);
  if (!*(v35 + 16))
  {
    goto LABEL_12;
  }

  v36 = *(v34 + 112);

  v37 = sub_1000C547C(v80, v21);
  if ((v38 & 1) == 0)
  {

LABEL_12:

    return sub_10002E6CC(v85);
  }

  v39 = *(*(v35 + 56) + 8 * v37);

  __chkstk_darwin(v40);
  *(&v72 - 2) = v85;
  v41 = sub_10002B934(sub_10002D798, (&v72 - 4), v39);
  v43 = v42;

  if (v43)
  {
    goto LABEL_12;
  }

  v45 = sub_1000C7BE8();
  v46 = sub_10002B860(v81, v80, v21);
  if (!*v47)
  {
    (v46)(v81, 0);

    (v45)(v82, 0);
    return sub_10002E6CC(v85);
  }

  sub_10002BA20(v41, v17);
  (v46)(v81, 0);
  (v45)(v82, 0);
  sub_10002D7B8(v17, v19, type metadata accessor for RemoteAlertRequest);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v82[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1000BA5C8(v80, v21, v82);
    _os_log_impl(&_mh_execute_header, v48, v49, "Removing completed request for token: %s", v50, 0xCu);
    sub_10002E6CC(v51);
  }

  v52 = v74;
  v53 = v73;
  v54 = &v19[*(v73 + 32)];
  v55 = v79;
  if (*v54)
  {
    v56 = *(v54 + 1);
    (*v54)();
  }

  v57 = *(v55 + 112);
  if (!*(v57 + 16))
  {
LABEL_26:
    if (v78)
    {
      v64 = type metadata accessor for TaskPriority();
      v65 = v77;
      (*(*(v64 - 8) + 56))(v77, 1, 1, v64);
      v66 = swift_allocObject();
      v66[2] = 0;
      v66[3] = 0;
      v66[4] = v80;
      v66[5] = v21;
      sub_100014BBC(0, 0, v65, &unk_1000E9DC0, v66);

LABEL_29:
      sub_10002D820(v19);
      return sub_10002E6CC(v85);
    }

LABEL_28:

    goto LABEL_29;
  }

  v58 = *(v55 + 112);

  v59 = sub_1000C547C(v80, v21);
  if ((v60 & 1) == 0 || (v61 = *(*(v57 + 56) + 8 * v59), , , !*(v61 + 16)))
  {

    goto LABEL_26;
  }

  v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v63 = v75;
  sub_10002D940(v61 + v62, v75, type metadata accessor for RemoteAlertRequest);

  if (sub_1000D0750(v63, 0, 0, 0))
  {
    sub_10002D820(v63);
    goto LABEL_28;
  }

  v67 = sub_1000C7BE8();
  result = sub_10002B860(v81, v80, v21);
  v68 = result;
  v70 = *v69;
  if (!*v69)
  {
    (result)(v81, 0);

    (v67)(v82, 0);
    v71 = 1;
    goto LABEL_34;
  }

  if (*(v70 + 16))
  {
    sub_10002D940(v70 + v62, v52, type metadata accessor for RemoteAlertRequest);
    sub_10002E60C(0, 1);
    v68(v81, 0);

    (v67)(v82, 0);
    v71 = 0;
LABEL_34:
    sub_10002D820(v75);
    sub_10002D820(v19);
    (*(v76 + 56))(v52, v71, 1, v53);
    sub_100005688(v52, &qword_10012DC30, &qword_1000EEC90);
    return sub_10002E6CC(v85);
  }

  __break(1u);
  return result;
}

void *sub_10002D754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10002D7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002D820(uint64_t a1)
{
  v2 = type metadata accessor for RemoteAlertRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000C8E1C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002D940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void (*sub_10002D9A8(uint64_t a1, int a2, uint64_t a3))(void *a1)
{
  v79 = a3;
  v78 = a2;
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v72 - v6;
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v77 = &v72 - v10;
  v11 = type metadata accessor for RemoteAlertRequest();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v86 = type metadata accessor for RemoteAlertGameModeBannerContext(0);
  v87 = &off_100124070;
  v85[0] = a1;
  sub_10002D754(v85, v86);

  v80 = sub_1000C0704();
  if (!v20)
  {
    return sub_10002E6CC(v85);
  }

  v21 = v20;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100011F80(v22, qword_100135C88);
  sub_10002E8A8(v85, v82);

  v72 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v74 = v7;
  v73 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_1000BA5C8(v80, v21, v81);
    *(v27 + 12) = 2080;
    v29 = v83;
    v28 = v84;
    sub_10002D754(v82, v83);
    v30 = (*(v28 + 16))(v29, v28);
    v32 = v31;
    sub_10002E6CC(v82);
    v33 = sub_1000BA5C8(v30, v32, v81);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Finding completed request for token: %s, contextID: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002E6CC(v82);
  }

  v34 = v79;
  swift_beginAccess();
  v35 = *(v34 + 112);
  if (!*(v35 + 16))
  {
    goto LABEL_12;
  }

  v36 = *(v34 + 112);

  v37 = sub_1000C547C(v80, v21);
  if ((v38 & 1) == 0)
  {

LABEL_12:

    return sub_10002E6CC(v85);
  }

  v39 = *(*(v35 + 56) + 8 * v37);

  __chkstk_darwin(v40);
  *(&v72 - 2) = v85;
  v41 = sub_10002B934(sub_100032198, (&v72 - 4), v39);
  v43 = v42;

  if (v43)
  {
    goto LABEL_12;
  }

  v45 = sub_1000C7BE8();
  v46 = sub_10002B860(v81, v80, v21);
  if (!*v47)
  {
    (v46)(v81, 0);

    (v45)(v82, 0);
    return sub_10002E6CC(v85);
  }

  sub_10002BA20(v41, v17);
  (v46)(v81, 0);
  (v45)(v82, 0);
  sub_10002D7B8(v17, v19, type metadata accessor for RemoteAlertRequest);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v82[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1000BA5C8(v80, v21, v82);
    _os_log_impl(&_mh_execute_header, v48, v49, "Removing completed request for token: %s", v50, 0xCu);
    sub_10002E6CC(v51);
  }

  v52 = v74;
  v53 = v73;
  v54 = &v19[*(v73 + 32)];
  v55 = v79;
  if (*v54)
  {
    v56 = *(v54 + 1);
    (*v54)();
  }

  v57 = *(v55 + 112);
  if (!*(v57 + 16))
  {
LABEL_26:
    if (v78)
    {
      v64 = type metadata accessor for TaskPriority();
      v65 = v77;
      (*(*(v64 - 8) + 56))(v77, 1, 1, v64);
      v66 = swift_allocObject();
      v66[2] = 0;
      v66[3] = 0;
      v66[4] = v80;
      v66[5] = v21;
      sub_100014BBC(0, 0, v65, &unk_1000E9F08, v66);

LABEL_29:
      sub_10002D820(v19);
      return sub_10002E6CC(v85);
    }

LABEL_28:

    goto LABEL_29;
  }

  v58 = *(v55 + 112);

  v59 = sub_1000C547C(v80, v21);
  if ((v60 & 1) == 0 || (v61 = *(*(v57 + 56) + 8 * v59), , , !*(v61 + 16)))
  {

    goto LABEL_26;
  }

  v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v63 = v75;
  sub_10002D940(v61 + v62, v75, type metadata accessor for RemoteAlertRequest);

  if (sub_1000D0750(v63, 0, 0, 0))
  {
    sub_10002D820(v63);
    goto LABEL_28;
  }

  v67 = sub_1000C7BE8();
  result = sub_10002B860(v81, v80, v21);
  v68 = result;
  v70 = *v69;
  if (!*v69)
  {
    (result)(v81, 0);

    (v67)(v82, 0);
    v71 = 1;
    goto LABEL_34;
  }

  if (*(v70 + 16))
  {
    sub_10002D940(v70 + v62, v52, type metadata accessor for RemoteAlertRequest);
    sub_10002E60C(0, 1);
    v68(v81, 0);

    (v67)(v82, 0);
    v71 = 0;
LABEL_34:
    sub_10002D820(v75);
    sub_10002D820(v19);
    (*(v76 + 56))(v52, v71, 1, v53);
    sub_100005688(v52, &qword_10012DC30, &qword_1000EEC90);
    return sub_10002E6CC(v85);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E2BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10002E3B0;

  return v6(v2 + 32);
}

uint64_t sub_10002E3B0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10002E4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RemoteAlertRequest();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10002E60C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000CBFF4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10002E4C4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10002E6CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10002E7A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_10002E8A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002E910(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000160D4(v2, v3);
}

uint64_t sub_10002E990(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_10002E9E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10002EB18(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_10002EBC4()
{
  sub_100005144(&qword_10012DB30, &unk_1000E9C00);
  sub_100005144(&qword_10012DB28, &qword_1000E9BF8);
  sub_10002B4F8();
  sub_10002B3AC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002EC88()
{
  sub_100005144(&qword_10012DB98, &qword_1000E9D08);
  sub_100005144(&qword_10012DB90, &qword_1000E9D00);
  sub_10002BE8C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002ED44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_1000C8E1C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002EE04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014BAC;

  return sub_10002E2BC(a1, v5);
}

uint64_t sub_10002EEBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011720;

  return sub_10002E2BC(a1, v5);
}

uint64_t sub_10002EF88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10002F0DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_10002F23C()
{
  sub_100018A6C(319, &qword_10012CED0, type metadata accessor for RemoteAlertAccessPointContext, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100018A6C(319, &qword_10012DAD8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100018A6C(319, &qword_10012DD00, type metadata accessor for AccessPointModel, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10002F480(319, &qword_10012CEE8);
        if (v3 <= 0x3F)
        {
          sub_10002F480(319, &qword_10012DD08);
          if (v4 <= 0x3F)
          {
            type metadata accessor for GameOverlayDashboardVisibilityMonitor();
            if (v5 <= 0x3F)
            {
              sub_100018A6C(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                type metadata accessor for GameDashboardLaunchContext();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for BaseObjectGraph();
                  if (v8 <= 0x3F)
                  {
                    sub_10002F480(319, &unk_10012DD10);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10002F480(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10002F518()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = (v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = *(v3 + v1[8] + 8);

  v12 = *(v3 + v1[9] + 8);

  v13 = *(v3 + v1[10] + 8);

  v14 = *(v3 + v1[11]);

  v15 = v1[12];
  v16 = type metadata accessor for Game();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  v18 = *(v3 + v1[13]);

  v19 = *(v3 + v1[14]);

  v20 = *(v3 + v1[15] + 32);

  return swift_deallocObject();
}

uint64_t sub_10002F738()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 44));
  return dispatch thunk of GameOverlayDashboardVisibilityMonitor.stop()();
}

uint64_t sub_10002F79C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100021F10(a1, a2, v6);
}

unint64_t sub_10002F81C()
{
  result = qword_10012DDB0;
  if (!qword_10012DDB0)
  {
    sub_100005144(&qword_10012DD88, &qword_1000E9FD8);
    sub_10002F8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DDB0);
  }

  return result;
}

unint64_t sub_10002F8A8()
{
  result = qword_10012DDB8;
  if (!qword_10012DDB8)
  {
    sub_100005144(&qword_10012DDA8, &qword_1000E9FF8);
    sub_10002F934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DDB8);
  }

  return result;
}

unint64_t sub_10002F934()
{
  result = qword_10012DDC0;
  if (!qword_10012DDC0)
  {
    sub_100005144(&qword_10012DDA0, &qword_1000E9FF0);
    sub_1000057D8(&qword_10012DDC8, &qword_10012DDD0, &qword_1000EA000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DDC0);
  }

  return result;
}

uint64_t sub_10002FB48()
{
  v2 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014BAC;

  return sub_1000265A4(v4, v5, v0 + v3);
}

uint64_t sub_10002FC2C()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + v1[7]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11]);

  v17 = v1[12];
  v18 = type metadata accessor for Game();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v20 = *(v5 + v1[13]);

  v21 = *(v5 + v1[14]);

  v22 = *(v5 + v1[15] + 32);

  return swift_deallocObject();
}

uint64_t sub_10002FE54(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100019220(a1, v6, v7, v1 + v5);
}

uint64_t sub_10002FF44(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000199A4(a1, v6, v7, v1 + v5);
}

uint64_t sub_100030050(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100025420(a1, v6, v7, v1 + v5);
}

uint64_t sub_100030188(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100025150(a1, v6, v7, v1 + v5);
}

uint64_t sub_100030294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100026730(a1, v4, v5, v7, v6);
}

uint64_t sub_10003039C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10000EE40(a1, v6, v7, v1 + v5);
}

uint64_t sub_10003048C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1000304CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000304E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000304E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100030534()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + v1[7]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11]);

  v17 = v1[12];
  v18 = type metadata accessor for Game();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v20 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v5 + v1[13]);

  v22 = *(v5 + v1[14]);

  v23 = *(v5 + v1[15] + 32);

  v24 = *(v0 + v20);
  swift_unknownObjectRelease();
  sub_100030784(*(v0 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_100030784(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000307D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014BAC;

  return sub_100022F7C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10003091C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100030784(a1, a2);
  }

  return a1;
}

uint64_t sub_100030930()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + v1[7]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11]);

  v17 = v1[12];
  v18 = type metadata accessor for Game();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v20 = *(v5 + v1[13]);

  v21 = *(v5 + v1[14]);

  v22 = *(v5 + v1[15] + 32);

  v23 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100030B6C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014BAC;

  return sub_100022704(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100030C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_100030CF8(char a1)
{
  v3 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100021C98(a1, v4);
}

uint64_t sub_100030D90()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = (v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = *(v3 + v1[8] + 8);

  v12 = *(v3 + v1[9] + 8);

  v13 = *(v3 + v1[10] + 8);

  v14 = *(v3 + v1[11]);

  v15 = v1[12];
  v16 = type metadata accessor for Game();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  v18 = *(v3 + v1[13]);

  v19 = *(v3 + v1[14]);

  v20 = *(v3 + v1[15] + 32);

  return swift_deallocObject();
}

uint64_t sub_100030FB0()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  if (*(v0 + 16) == 1)
  {
    v5 = v0 + ((*(v3 + 80) + 17) & ~*(v3 + 80));
    return sub_1000215B4();
  }

  return result;
}

unint64_t sub_100031018()
{
  result = qword_10012DE28;
  if (!qword_10012DE28)
  {
    sub_100005144(&qword_10012DE20, &qword_1000EA1B0);
    sub_1000057D8(&qword_10012DE30, &qword_10012DE38, &qword_1000EA1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE28);
  }

  return result;
}

unint64_t sub_1000310D0()
{
  result = qword_10012DE40;
  if (!qword_10012DE40)
  {
    sub_100005144(&qword_10012DDF0, &qword_1000EA160);
    sub_10003115C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE40);
  }

  return result;
}

unint64_t sub_10003115C()
{
  result = qword_10012DE48;
  if (!qword_10012DE48)
  {
    sub_100005144(&qword_10012DE08, &qword_1000EA178);
    sub_1000057D8(&qword_10012DE50, &qword_10012DE58, &qword_1000EA1C0);
    sub_1000057D8(&qword_10012DE60, &qword_10012DE18, &qword_1000EA1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE48);
  }

  return result;
}

uint64_t sub_100031240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10001CF5C(v6, a1, a2);
}

uint64_t sub_1000312C8()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v26 = type metadata accessor for GeometryProxy();
  v3 = *(v26 - 8);
  v4 = *(v3 + 80);
  v25 = *(v3 + 64);
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + v1[7]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11]);

  v17 = v1[12];
  v18 = type metadata accessor for Game();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v20 = *(v5 + v1[13]);

  v21 = *(v5 + v1[14]);

  v22 = *(v5 + v1[15] + 32);

  (*(v3 + 8))(v0 + ((v2 + v24 + v4) & ~v4), v26);

  return swift_deallocObject();
}

uint64_t sub_10003157C()
{
  v1 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  return sub_10001E434(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_10003163C()
{
  result = qword_10012DE98;
  if (!qword_10012DE98)
  {
    sub_100005144(&qword_10012DE68, &qword_1000EA1C8);
    sub_1000057D8(&qword_10012DEA0, &qword_10012DEA8, &qword_1000EA1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE98);
  }

  return result;
}

uint64_t sub_1000316F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031734(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_10000FAB8(v7, v8, v9, v10, a1, v4, v5, v6);
}

unint64_t sub_100031820()
{
  result = qword_10012DF10;
  if (!qword_10012DF10)
  {
    sub_100005144(&qword_10012DEE0, &qword_1000EA240);
    sub_1000318DC();
    sub_10002B454(&qword_10012DF50, type metadata accessor for CollapsibleContentFrame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF10);
  }

  return result;
}

unint64_t sub_1000318DC()
{
  result = qword_10012DF18;
  if (!qword_10012DF18)
  {
    sub_100005144(&qword_10012DF20, &qword_1000EA2A0);
    sub_100031994();
    sub_1000057D8(&qword_10012DF40, &qword_10012DF48, &qword_1000EA2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF18);
  }

  return result;
}

unint64_t sub_100031994()
{
  result = qword_10012DF28;
  if (!qword_10012DF28)
  {
    sub_100005144(&qword_10012DF30, &qword_1000EA2A8);
    sub_100031A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF28);
  }

  return result;
}

unint64_t sub_100031A20()
{
  result = qword_10012DF38;
  if (!qword_10012DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF38);
  }

  return result;
}

unint64_t sub_100031ACC()
{
  result = qword_10012DF68;
  if (!qword_10012DF68)
  {
    sub_100005144(&qword_10012DF08, &qword_1000EA268);
    sub_100031B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF68);
  }

  return result;
}

unint64_t sub_100031B58()
{
  result = qword_10012DF70;
  if (!qword_10012DF70)
  {
    sub_100005144(&qword_10012DF00, &qword_1000EA260);
    sub_100031BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF70);
  }

  return result;
}

unint64_t sub_100031BE4()
{
  result = qword_10012DF78;
  if (!qword_10012DF78)
  {
    sub_100005144(&qword_10012DEF8, &qword_1000EA258);
    sub_100031C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF78);
  }

  return result;
}

unint64_t sub_100031C70()
{
  result = qword_10012DF80;
  if (!qword_10012DF80)
  {
    sub_100005144(&qword_10012DEF0, &qword_1000EA250);
    sub_100005144(&qword_10012DEE8, &qword_1000EA248);
    sub_100005144(&qword_10012DED8, &qword_1000EA238);
    sub_1000057D8(&qword_10012DF60, &qword_10012DED8, &qword_1000EA238);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF80);
  }

  return result;
}

uint64_t sub_100031E54()
{
  sub_100005144(&qword_10012CC58, &qword_1000E9FB0);
  sub_100005144(&qword_10012DD68, &qword_1000E9FB8);
  sub_100005144(&qword_10012DD70, &qword_1000E9FC0);
  sub_100005144(&qword_10012DD78, &qword_1000E9FC8);
  type metadata accessor for AccessPointAnchoring();
  sub_100005144(&qword_10012DD80, &qword_1000E9FD0);
  sub_100005144(&qword_10012DD88, &qword_1000E9FD8);
  type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  sub_10002F81C();
  sub_10002B454(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget);
  swift_getOpaqueTypeConformance2();
  sub_10002B3AC();
  swift_getOpaqueTypeConformance2();
  sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000321EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  v6 = async function pointer to static GameOverlayDashboardVisibilityNotifier.isDashboardPresented.getter[1];
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10003228C;

  return static GameOverlayDashboardVisibilityNotifier.isDashboardPresented.getter();
}

uint64_t sub_10003228C(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10003238C, 0, 0);
}

uint64_t sub_10003238C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 40)];
  v2(v3, 0);

  v4 = *(v0 + 8);

  return v4();
}

void sub_10003255C()
{
  sub_100002B38(&qword_10012DFB0, &qword_1000EA328);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000EA2D0;
  v1 = sub_10003F788(0, &qword_10012DFB8, NSArray_ptr);
  *(v0 + 56) = sub_100002B38(&qword_10012DFC0, &qword_1000EA330);
  *(v0 + 32) = v1;
  v2 = sub_10003F788(0, &qword_10012DFC8, NSDictionary_ptr);
  *(v0 + 88) = sub_100002B38(&qword_10012DFD0, &qword_1000EA338);
  *(v0 + 64) = v2;
  v3 = sub_10003F788(0, &qword_10012DFD8, NSData_ptr);
  *(v0 + 120) = sub_100002B38(&qword_10012DFE0, &qword_1000EA340);
  *(v0 + 96) = v3;
  v4 = sub_10003F788(0, &qword_10012DFE8, NSDate_ptr);
  *(v0 + 152) = sub_100002B38(&qword_10012DFF0, &qword_1000EA348);
  *(v0 + 128) = v4;
  v5 = sub_10003F788(0, &qword_10012DFF8, NSError_ptr);
  *(v0 + 184) = sub_100002B38(&qword_10012E000, &qword_1000EA350);
  *(v0 + 160) = v5;
  v6 = sub_10003F788(0, &qword_10012E008, NSMutableArray_ptr);
  *(v0 + 216) = sub_100002B38(&qword_10012E010, &qword_1000EA358);
  *(v0 + 192) = v6;
  v7 = sub_10003F788(0, &qword_10012E018, NSMutableDictionary_ptr);
  *(v0 + 248) = sub_100002B38(&qword_10012E020, &qword_1000EA360);
  *(v0 + 224) = v7;
  v8 = sub_10003F788(0, &qword_10012E028, NSMutableData_ptr);
  *(v0 + 280) = sub_100002B38(&qword_10012E030, &qword_1000EA368);
  *(v0 + 256) = v8;
  v9 = sub_10003F788(0, &qword_100131140, NSNumber_ptr);
  *(v0 + 312) = sub_100002B38(&qword_10012E038, &qword_1000EA370);
  *(v0 + 288) = v9;
  v10 = sub_10003F788(0, &qword_10012E040, NSString_ptr);
  *(v0 + 344) = sub_100002B38(&qword_10012E048, &qword_1000EA378);
  *(v0 + 320) = v10;
  v11 = sub_10003F788(0, &qword_10012E050, GKGame_ptr);
  *(v0 + 376) = sub_100002B38(&qword_10012E058, &qword_1000EA380);
  *(v0 + 352) = v11;
  v12 = sub_10003F788(0, &qword_10012E060, GKLeaderboardInternal_ptr);
  *(v0 + 408) = sub_100002B38(&qword_10012E068, &qword_1000EA388);
  *(v0 + 384) = v12;
  v13 = sub_10003F788(0, &qword_10012E070, GKLocalPlayer_ptr);
  *(v0 + 440) = sub_100002B38(&qword_10012E078, &qword_1000EA390);
  *(v0 + 416) = v13;
  v14 = sub_10003F788(0, &qword_10012E080, GKPlayer_ptr);
  *(v0 + 472) = sub_100002B38(&qword_10012E088, &qword_1000EA398);
  *(v0 + 448) = v14;
  sub_10003F788(0, &qword_10012E090, NSSet_ptr);
  NSSet.init(arrayLiteral:)();
  static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

uint64_t sub_100032A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  return _swift_task_switch(sub_100032A80, 0, 0);
}

uint64_t sub_100032A80()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100032B60;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1000D1E0C(v3, v2);
}

uint64_t sub_100032B60()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100032C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[58] = a4;
  v5[59] = a5;
  v6 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v5[60] = swift_task_alloc();
  v7 = type metadata accessor for RemoteAlertRequest();
  v5[61] = v7;
  v8 = *(v7 - 8);
  v5[62] = v8;
  v9 = *(v8 + 64) + 15;
  v5[63] = swift_task_alloc();
  v10 = type metadata accessor for AccessPointUseCase();
  v5[64] = v10;
  v11 = *(v10 - 8);
  v5[65] = v11;
  v12 = *(v11 + 64) + 15;
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v13 = *(*(sub_100002B38(&qword_10012DC30, &qword_1000EEC90) - 8) + 64) + 15;
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();

  return _swift_task_switch(sub_100032E40, 0, 0);
}

uint64_t sub_100032E40()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 608) = qword_100135CD8;

  return _swift_task_switch(sub_100032ED8, v1, 0);
}

uint64_t sub_100032ED8()
{
  v1 = v0[76];
  sub_1000C84F8(v0[58], v0[59], v0[75]);

  return _swift_task_switch(sub_100032F48, 0, 0);
}

uint64_t sub_100032F48()
{
  v1 = v0[74];
  v2 = v0[61];
  v3 = v0[62];
  sub_1000035B4(v0[75], v1, &qword_10012DC30, &qword_1000EEC90);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[74];
  if (v4 != 1)
  {
    v9 = *(v5 + *(v0[61] + 24));
    v0[77] = v9;

    sub_10002D820(v5);
    if (*v9 == _TtC13GameOverlayUI28AccessPointConnectionContext)
    {
      swift_beginAccess();
      sub_1000035B4((v9 + 8), (v0 + 7), &unk_100131120, &unk_1000EAAF0);
      if (!v0[10])
      {

        v6 = &unk_100131120;
        v7 = &unk_1000EAAF0;
        v8 = (v0 + 7);
        goto LABEL_3;
      }

      v0[78] = sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
      v0[79] = type metadata accessor for RemoteAlertAccessPointContext(0);
      if (swift_dynamicCast())
      {
        v10 = v0[73];
        v11 = v0[72];
        v12 = v0[65];
        v13 = v0[64];
        v14 = v0[55];
        v0[80] = v14;
        v15 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
        swift_beginAccess();
        v36 = v15;
        v35 = *(v12 + 16);
        v35(v10, v14 + v15, v13);
        v34 = *(v12 + 104);
        v34(v11, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v13);
        sub_10003FED0(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v0[46] == v0[48] && v0[47] == v0[49])
        {
          v16 = 1;
        }

        else
        {
          v17 = v0[47];
          v18 = v0[49];
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v19 = v0[73];
        v20 = v0[64];
        v21 = *(v0[65] + 8);
        v21(v0[72], v20);
        v33 = v21;
        v21(v19, v20);

        if (v16)
        {
          goto LABEL_17;
        }

        v22 = v0[70];
        v23 = v0[64];
        v35(v0[71], v14 + v36, v23);
        v34(v22, enum case for AccessPointUseCase.accessPointOnly(_:), v23);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v24 = v0[71];
        v25 = v0[70];
        v26 = v0[64];
        if (v0[50] == v0[52] && v0[51] == v0[53])
        {
          v33(v0[70], v0[64]);
          v33(v24, v26);

LABEL_17:
          v30 = v0[76];
          v31 = sub_100033420;
          goto LABEL_23;
        }

        v27 = v0[51];
        v28 = v0[53];
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v33(v25, v26);
        v33(v24, v26);

        if (v29)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_20;
  }

  v6 = &qword_10012DC30;
  v7 = &qword_1000EEC90;
  v8 = v0[74];
LABEL_3:
  sub_100005688(v8, v6, v7);
LABEL_20:
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v30 = qword_100135CA0;
  v0[81] = qword_100135CA0;
  v31 = sub_1000337EC;
LABEL_23:

  return _swift_task_switch(v31, v30, 0);
}

uint64_t sub_100033420()
{
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[58];
    v3 = v0[59];

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v0[62];
        v10 = v0[63];
        v11 = *(v0[61] + 24);
        v24 = v10;
        v12 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v13 = *(v9 + 72);
        v14 = &unk_1000EAAF0;
        v25 = v13;
        do
        {
          sub_10003F2F4(v12, v0[63]);
          v15 = *(v10 + v11);
          swift_beginAccess();
          sub_1000035B4(v15 + 64, (v0 + 12), &unk_100131120, v14);
          if (v0[15])
          {
            v16 = v0[79];
            v17 = v0[78];
            if (swift_dynamicCast())
            {
              v18 = v11;
              v19 = v14;
              v20 = v0[56];
              if (*(v20 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
              {
                swift_getKeyPath();
                v21 = swift_task_alloc();
                *(v21 + 16) = v20;
                *(v21 + 24) = 0;
                v0[57] = v20;
                sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                v10 = v24;
              }

              else
              {
                *(v20 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 0;
              }

              v14 = v19;
              v11 = v18;
              v13 = v25;
            }
          }

          else
          {
            sub_100005688((v0 + 12), &unk_100131120, v14);
          }

          sub_10002D820(v0[63]);
          v12 += v13;
          --v8;
        }

        while (v8);
      }
    }
  }

  v22 = v0[76];

  return _swift_task_switch(sub_1000336D4, v22, 0);
}

uint64_t sub_1000336D4()
{
  v1 = v0[76];
  sub_1000C6540(v0[58], v0[59]);

  return _swift_task_switch(sub_100033740, 0, 0);
}

uint64_t sub_100033740()
{
  v1 = v0[80];
  v2 = v0[77];

  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v3 = qword_100135CA0;
  v0[81] = qword_100135CA0;

  return _swift_task_switch(sub_1000337EC, v3, 0);
}

uint64_t sub_1000337EC()
{
  v1 = *(v0 + 648);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:

  return _swift_task_switch(sub_1000338FC, 0, 0);
}

uint64_t sub_1000338FC()
{
  if (v0[5])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[69];
      v2 = v0[68];
      v3 = v0[65];
      v4 = v0[64];
      v5 = v0[54];
      v6 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
      swift_beginAccess();
      v42 = v6;
      v44 = v5;
      v40 = *(v3 + 16);
      v40(v1, v5 + v6, v4);
      v39 = *(v3 + 104);
      v39(v2, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v4);
      sub_10003FED0(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v0[38] == v0[40] && v0[39] == v0[41])
      {
        v7 = 1;
      }

      else
      {
        v12 = v0[39];
        v13 = v0[41];
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v14 = v0[69];
      v15 = v0[64];
      v16 = *(v0[65] + 8);
      v16(v0[68], v15);
      v16(v14, v15);

      if (v7)
      {
        goto LABEL_18;
      }

      v17 = v0[66];
      v18 = v0[64];
      v40(v0[67], v44 + v42, v18);
      v39(v17, enum case for AccessPointUseCase.accessPointOnly(_:), v18);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v19 = v0[67];
      v20 = v0[66];
      v21 = v0[64];
      if (v0[42] == v0[44] && v0[43] == v0[45])
      {
        v16(v0[66], v0[64]);
        v16(v19, v21);

LABEL_18:
        v25 = v0[60];
        v26 = type metadata accessor for TaskPriority();
        (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
        type metadata accessor for MainActor();

        v27 = static MainActor.shared.getter();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = &protocol witness table for MainActor;
        v28[4] = v44;
        sub_100014BBC(0, 0, v25, &unk_1000EA498, v28);

        goto LABEL_19;
      }

      v22 = v0[43];
      v23 = v0[45];
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16(v20, v21);
      v16(v19, v21);

      if (v24)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not find access point context for the client request", v11, 2u);
  }

LABEL_19:
  v29 = v0[74];
  v30 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[68];
  v36 = v0[67];
  v41 = v0[66];
  v43 = v0[63];
  v45 = v0[60];
  sub_100005688(v0[75], &qword_10012DC30, &qword_1000EEC90);

  v37 = v0[1];

  return v37();
}

uint64_t sub_100033E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100033F24, v6, v5);
}

uint64_t sub_100033F24()
{
  v1 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active;
  v3 = v0[3];
  v2 = v0[4];
  if (*(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[2] = v3;
    sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v5 = v0[4];

    *(v3 + v1) = 0;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[3];
  if (v10)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    swift_getKeyPath();
    v0[2] = v11;
    sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v12 + 4) = *(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    _os_log_impl(&_mh_execute_header, v8, v9, "Setting access point with current hide count: %ld to inactive", v12, 0xCu);
  }

  else
  {
    v13 = v0[3];
  }

  v14 = v0[1];

  return v14();
}

void sub_100034394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v23 = a1;
  v16 = sub_10007C628(0, a3, v15);
  v18 = v17;

  if (v18)
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
    *(v20 + 48) = a5;
    sub_100014BBC(0, 0, v13, a6, v20);
  }

  else
  {
    v21 = v23;
  }
}

uint64_t sub_100034528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 112) = a4;
  *(v6 + 120) = a5;
  v7 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000345C8, 0, 0);
}

uint64_t sub_1000345C8()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 136) = qword_100135CD8;

  return _swift_task_switch(sub_100034660, v1, 0);
}

uint64_t sub_100034660()
{
  v1 = v0[17];
  sub_1000C6540(v0[14], v0[15]);

  return _swift_task_switch(sub_1000346CC, 0, 0);
}

uint64_t sub_1000346CC()
{
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 144) = qword_100135CA0;

  return _swift_task_switch(sub_100034764, v1, 0);
}

uint64_t sub_100034764()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:

  return _swift_task_switch(sub_100034874, 0, 0);
}

uint64_t sub_100034874()
{
  if (*(v0 + 40))
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 128);
      v2 = *(v0 + 152);
      v3 = *(v0 + 104);
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
      type metadata accessor for MainActor();

      v5 = static MainActor.shared.getter();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = &protocol witness table for MainActor;
      *(v6 + 32) = v3;
      *(v6 + 40) = v2;
      sub_100014BBC(0, 0, v1, &unk_1000EA3F0, v6);

      goto LABEL_10;
    }
  }

  else
  {
    sub_100005688(v0 + 16, &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not find access point context for the client request", v10, 2u);
  }

LABEL_10:
  v11 = *(v0 + 128);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100034ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100034B58, v7, v6);
}

uint64_t sub_100034B58()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  *(v0 + 16) = v2;
  v3 = (v0 + 16);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount;
  v6 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  v7 = __OFADD__(v6, v4);
  v8 = v6 + v4;
  if (v7)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v9 = *(v0 + 24);
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = v8;
  *(v0 + 16) = v9;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 16) = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v0 + 32);
  if ((*(v2 + v5) & 0x8000000000000000) != 0)
  {
    v12 = *(v0 + 24);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v0 + 16) = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v11 = *(v0 + 32);
  }

  if (qword_10012CC18 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v14 = *(v0 + 24);
  v15 = type metadata accessor for Logger();
  sub_100011F80(v15, qword_100135C88);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 24);
  if (v18)
  {
    v24 = v5;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    swift_getKeyPath();
    *v3 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v20 + 4) = *(v2 + v24);

    _os_log_impl(&_mh_execute_header, v16, v17, "Setting access point hide count: %ld", v20, 0xCu);
  }

  else
  {
    v21 = *(v0 + 24);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100034ECC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v33 - v15;
  result = sub_10007C790(0);
  if (v18)
  {
    v19 = v18;
    v36 = result;
    v20 = sub_10007C628(0, a5, a6);
    if (v21)
    {
      v22 = v21;
      v35 = v20;
      v23 = [objc_opt_self() currentContext];
      v33 = a1;
      v34 = a4;
      v24 = v6;
      v25 = v23;
      type metadata accessor for AccessPointConnectionContext();
      *(swift_allocObject() + 160) = 0;
      v26 = sub_1000E0554(v25);
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
      v28 = a2;
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v30 = v36;
      v29[4] = v35;
      v29[5] = v22;
      v29[6] = v30;
      v29[7] = v19;
      v29[8] = v24;
      v29[9] = v26;
      v31 = v34;
      v29[10] = v33;
      v29[11] = v28;
      v29[12] = a3;
      v29[13] = v31;
      v29[14] = a5;
      v29[15] = a6;
      v32 = v24;

      sub_1000304E0(a3, v31);

      sub_100014BBC(0, 0, v16, &unk_1000EA430, v29);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000350FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 464) = v25;
  *(v7 + 432) = v23;
  *(v7 + 448) = v24;
  *(v7 + 416) = v22;
  *(v7 + 400) = a6;
  *(v7 + 408) = a7;
  *(v7 + 384) = a4;
  *(v7 + 392) = a5;
  v8 = type metadata accessor for RemoteAlertRequest();
  *(v7 + 472) = v8;
  v9 = *(v8 - 8);
  *(v7 + 480) = v9;
  *(v7 + 488) = *(v9 + 64);
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 512) = v10;
  v11 = *(v10 - 8);
  *(v7 + 520) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 528) = swift_task_alloc();
  v13 = *(*(sub_100002B38(&qword_10012E0C8, &qword_1000EA438) - 8) + 64) + 15;
  *(v7 + 536) = swift_task_alloc();
  v14 = type metadata accessor for AccessPointAnchoring();
  *(v7 + 544) = v14;
  v15 = *(v14 - 8);
  *(v7 + 552) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 560) = swift_task_alloc();
  v17 = type metadata accessor for AccessPointUseCase();
  *(v7 + 568) = v17;
  v18 = *(v17 - 8);
  *(v7 + 576) = v18;
  *(v7 + 584) = *(v18 + 64);
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  v19 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  *(v7 + 608) = swift_task_alloc();

  return _swift_task_switch(sub_100035388, 0, 0);
}

uint64_t sub_100035388()
{
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 616) = qword_100135CA0;

  return _swift_task_switch(sub_100035420, v1, 0);
}

uint64_t sub_100035420()
{
  v1 = *(v0 + 616);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 184, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 216) = 0;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
LABEL_6:

  return _swift_task_switch(sub_100035534, 0, 0);
}

uint64_t sub_100035534()
{
  if (v0[26])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[76];
      v3 = v0[53];
      v2 = v0[54];
      v4 = v0[47];
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
      type metadata accessor for MainActor();

      v6 = static MainActor.shared.getter();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = &protocol witness table for MainActor;
      v7[4] = v3;
      v7[5] = v2;
      v7[6] = v4;
      sub_100014BBC(0, 0, v1, &unk_1000EA468, v7);

      v8 = v0[76];
      v9 = v0[75];
      v10 = v0[74];
      v11 = v0[70];
      v12 = v0[67];
      v13 = v0[66];
      v15 = v0[62];
      v14 = v0[63];

      v16 = v0[1];

      return v16();
    }
  }

  else
  {
    sub_100005688((v0 + 23), &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v0[78] = sub_100011F80(v18, qword_100135C88);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Could not find access point context for the client request", v21, 2u);
  }

  v22 = v0[77];

  return _swift_task_switch(sub_10003582C, v22, 0);
}

uint64_t sub_10003582C()
{
  v1 = *(v0 + 616);
  sub_100094248(*(v0 + 400), *(v0 + 408), v0 + 72);

  return _swift_task_switch(sub_10003589C, 0, 0);
}

uint64_t sub_10003589C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v1;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    sub_1000035B4(v0 + 16, v0 + 128, &qword_10012E0D8, &qword_1000EA448);
    v2 = *(v0 + 136);

    if (*(v0 + 168))
    {
      sub_10003FB38((v0 + 144), v0 + 224);
      if (qword_10012CC38 != -1)
      {
        swift_once();
      }

      v3 = qword_100135CD8;
      *(v0 + 632) = qword_100135CD8;

      return _swift_task_switch(sub_100035A84, v3, 0);
    }

    sub_100005688(v0 + 16, &qword_10012E0D8, &qword_1000EA448);
    v4 = &unk_100131120;
    v5 = &unk_1000EAAF0;
    v6 = v0 + 144;
  }

  else
  {
    v4 = &unk_10012E0D0;
    v5 = &unk_1000EA440;
    v6 = v0 + 72;
  }

  sub_100005688(v6, v4, v5);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  v9 = *(v0 + 592);
  v10 = *(v0 + 560);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v14 = *(v0 + 496);
  v13 = *(v0 + 504);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100035A84()
{
  v1 = v0[79];
  v2 = v0[31];
  v3 = v0[32];
  v4 = sub_10002D754(v0 + 28, v2);
  sub_1000CFE50(v4, 0, v1, v2, v3);

  return _swift_task_switch(sub_100035B14, 0, 0);
}

uint64_t sub_100035B14()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v5 = v0[53];
  v4 = v0[54];
  (*(v0[72] + 104))(v0[75], enum case for AccessPointUseCase.accessPointOnly(_:), v0[71]);

  AccessPointAnchoring.init(rawValue:)();
  v6 = *(v1 + 48);
  v7 = v6(v3, 1, v2);
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  if (v7 == 1)
  {
    (*(v9 + 104))(v8, enum case for AccessPointAnchoring.topLeading(_:), v0[68]);
    if (v6(v11, 1, v10) != 1)
    {
      sub_100005688(v0[67], &qword_10012E0C8, &qword_1000EA438);
    }
  }

  else
  {
    (*(v9 + 32))(v8, v0[67], v0[68]);
  }

  v12 = v0[75];
  v13 = v0[72];
  v14 = v0[71];
  v72 = v14;
  v74 = v0[74];
  v84 = v0[70];
  v15 = v0[69];
  v81 = v0[68];
  v16 = v0[66];
  v17 = v0[65];
  v66 = v0[64];
  v75 = v0[57];
  v77 = v0[58];
  v85 = v0[56];
  v79 = v0[55];
  v18 = v0[52];
  v68 = v0[48];
  v70 = v0[49];
  v83 = *(v13 + 16);
  v83();
  v19 = type metadata accessor for RemoteAlertAccessPointContext(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v17 + 8))(v16, v66);
  v22[4] = v23;
  v22[5] = v25;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
  v26 = (v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
  *v26 = 0;
  v26[1] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
  ObservationRegistrar.init()();
  v27 = v22[3];

  v22[2] = v68;
  v22[3] = v70;
  (*(v15 + 32))(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v84, v81);
  v82 = *(v13 + 32);
  v82(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v74, v72);
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
  *(v22 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
  v0[36] = v19;
  v0[37] = &off_1001240E8;
  v0[33] = v22;
  swift_beginAccess();

  sub_10003EF48((v0 + 33), v18 + 64);
  swift_endAccess();
  v28 = *(v18 + 152);
  *(v18 + 144) = v75;
  *(v18 + 152) = v77;

  sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
  sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
  v29 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v29)
  {
    v30 = v0[52];
    v31 = v29;
    v32 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v29];

    v33 = *(v30 + 160);
    *(v30 + 160) = v32;
  }

  else
  {
    v34 = v0[78];
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Game could not be deserialized", v37, 2u);
    }
  }

  v38 = v0[76];
  v69 = v38;
  v39 = v0[75];
  v73 = v39;
  v40 = v0[74];
  v76 = v0[73];
  v86 = v0[72];
  v42 = v0[62];
  v41 = v0[63];
  v71 = v0[61];
  v65 = v0[60];
  v67 = v0[71];
  v43 = v0[59];
  v44 = v0[52];
  v78 = v0[48];
  v80 = v0[49];
  v45 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
  v46 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v46 - 8) + 104))(v41, v45, v46);
  *(v41 + v43[5]) = 0;
  *(v41 + v43[6]) = v44;
  v47 = (v41 + v43[7]);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v41 + v43[8]);
  v49 = type metadata accessor for TaskPriority();
  *v48 = 0;
  v48[1] = 0;
  (*(*(v49 - 8) + 56))(v38, 1, 1, v49);
  sub_10003F2F4(v41, v42);
  (v83)(v40, v39, v67);
  v50 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v51 = (v71 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (*(v86 + 80) + v51 + 16) & ~*(v86 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  sub_10003F35C(v42, v53 + v50);
  v54 = (v53 + v51);
  *v54 = v78;
  v54[1] = v80;
  v82((v53 + v52), v40, v67);

  sub_100014BBC(0, 0, v69, &unk_1000EA458, v53);

  sub_10002D820(v41);
  (*(v86 + 8))(v73, v67);
  sub_100005688((v0 + 2), &qword_10012E0D8, &qword_1000EA448);
  sub_10002E6CC(v0 + 28);
  v55 = v0[76];
  v56 = v0[75];
  v57 = v0[74];
  v58 = v0[70];
  v59 = v0[67];
  v60 = v0[66];
  v62 = v0[62];
  v61 = v0[63];

  v63 = v0[1];

  return v63();
}

uint64_t sub_100036370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_100002B38(&qword_10012E0C8, &qword_1000EA438) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = type metadata accessor for AccessPointAnchoring();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000364AC, v12, v11);
}

uint64_t sub_1000364AC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  AccessPointAnchoring.init(rawValue:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100005688(v0[5], &qword_10012E0C8, &qword_1000EA438);
  }

  else
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[4];
    (*(v10 + 32))(v7, v0[5], v9);
    (*(v10 + 16))(v8, v7, v9);
    sub_1000BCC80(v8);
    (*(v10 + 8))(v7, v9);
  }

  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

void *sub_1000366EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v12 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = &v19 - v15;
  if (a2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {

      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;
      *(v18 + 48) = a7;

      sub_100014BBC(0, 0, v16, a8, v18);
    }
  }

  return result;
}

uint64_t sub_100036858()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100036924;
  v2 = *(v0 + 16);

  return sub_1000C6880(v2);
}

uint64_t sub_100036924()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100036A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10003F788(0, &qword_10012E0B8, PHAssetCreationRequest_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v15 = [ObjCClassFromMetadata creationRequestForAssetFromVideoAtFileURL:v9];

  v11 = v15;
  if (v15)
  {
    v12 = v15;
    if (a3)
    {
      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      v13 = 0;
    }

    [v15 setImportedByBundleIdentifier:v13];

    if (a5)
    {
      v15 = v15;
      v14 = String._bridgeToObjectiveC()();
      [v15 setAssetDescription:v14];
    }

    v11 = v15;
  }

  else if (a5)
  {
    return;
  }
}

void sub_100036B68(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100011F80(v4, qword_100135C88);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v6 + 4) = v8;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Could not export clip to Photos, error %@", v6, 0xCu);
      sub_100005688(v7, &qword_100131110, &unk_1000EC870);
    }
  }
}

void sub_100036CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100036D58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v547 = a5;
  v548 = a6;
  v545 = a4;
  v530 = a3;
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v543 = &v514 - v8;
  v9 = type metadata accessor for RemoteAlertRequest();
  v10 = *(v9 - 8);
  v539 = v9;
  v540 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v541 = v13;
  v542 = &v514 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v544 = &v514 - v14;
  v534 = type metadata accessor for UUID();
  v533 = *(v534 - 8);
  v15 = *(v533 + 64);
  __chkstk_darwin(v534);
  v532 = &v514 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v538 = type metadata accessor for AccessPointAnchoring();
  v537 = *(v538 - 8);
  v17 = *(v537 + 64);
  __chkstk_darwin(v538);
  v536 = &v514 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessPointUseCase();
  v20 = *(v19 - 8);
  v549 = v19;
  v550 = v20;
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v528 = &v514 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v514 - v25;
  v27 = __chkstk_darwin(v24);
  v529 = &v514 - v28;
  v29 = __chkstk_darwin(v27);
  v531 = &v514 - v30;
  v31 = __chkstk_darwin(v29);
  v535 = &v514 - v32;
  __chkstk_darwin(v31);
  v546 = &v514 - v33;
  v34 = type metadata accessor for InGameBannerData.BannerType();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  __chkstk_darwin(v37);
  v39 = (&v514 - v38);
  v40 = sub_100002B38(&qword_10012E098, &qword_1000EA3A0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v514 - v42;
  v44 = type metadata accessor for InGameBannerData();
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44);
  v48 = &v514 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v50 = &v514 - v49;
  v52 = v51;
  v54 = v53;
  static InGameBannerData.decode(data:)();
  if ((*(v54 + 48))(v43, 1, v52) == 1)
  {
    sub_100005688(v43, &qword_10012E098, &qword_1000EA3A0);
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100011F80(v55, qword_100135C88);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "showInGameBanner: Failed to decode InGameBannerData.", v58, 2u);
    }

    return;
  }

  v527 = v54;
  v59 = *(v54 + 32);
  v526 = v52;
  v59(v50, v43, v52);
  v60 = InGameBannerData.imageSymbolName.getter();
  v62 = v61;
  InGameBannerData.type.getter();
  v63 = (*(v35 + 88))(v39, v34);
  v525 = v62;
  v523 = v60;
  if (v63 == enum case for InGameBannerData.BannerType.youBeatFriendScore(_:))
  {
    (*(v35 + 96))(v39, v34);
    v64 = v39[1];
    v520 = *v39;
    v522 = v64;
    v521 = v39[2];
    v65 = v549;
    v66 = v550;
    v67 = v546;
    (v550[13])(v546, enum case for AccessPointUseCase.leaderboardBeatFriendScoreBanner(_:), v549);
    v68 = InGameBannerData.title.getter();
    v528 = v69;
    v519 = InGameBannerData.body.getter();
    v71 = v70;
    v531 = InGameBannerData.image.getter();
    v73 = v72;
    v529 = InGameBannerData.clipData.getter();
    v75 = v74;
    v77 = v547;
    v76 = v548;
    v78 = sub_10007C628(1, v547, v548);
    if (!v79)
    {

      sub_10003091C(v529, v75);
      sub_10003091C(v531, v73);

      (v66[1])(v67, v65);
      (*(v527 + 8))(v50, v526);
      return;
    }

    v516 = v79;
    v517 = v78;
    v518 = v75;
    v524 = v50;
    v80 = v76;
    v81 = [objc_opt_self() currentContext];
    type metadata accessor for InGameBannerConnectionContext();
    swift_allocObject();
    v82 = v528;

    v515 = v68;
    v83 = sub_1000E08D0(v81, v68, v82);
    v84 = v83[23];
    v83[22] = v519;
    v83[23] = v71;

    v85 = v83[27];
    v86 = v522;
    v83[26] = v520;
    v83[27] = v86;

    v87 = v83[24];
    v88 = v83[25];
    v89 = v531;
    v83[24] = v531;
    v83[25] = v73;
    sub_1000304CC(v89, v73);
    sub_10003091C(v87, v88);
    v90 = v83[19];
    v83[18] = v77;
    v83[19] = v80;

    v91 = v83[29];
    v83[29] = v521;

    v92 = v83[33];
    v93 = v525;
    v83[32] = v523;
    v83[33] = v93;

    v94 = 0;
    v95 = 0;
    v96 = v545;
    v525 = v73;
    v97 = v529;
    if (v545 >> 60 != 15)
    {
      sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
      sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
      v98 = v530;
      sub_1000304E0(v530, v96);
      v99 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v99)
      {
        v239 = v99;
        v240 = [v99 bundleIdentifier];
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v241;

        v242 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v239];
        sub_10003091C(v98, v96);
        v243 = v83[28];
        v83[28] = v242;
      }

      else
      {
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v262 = type metadata accessor for Logger();
        sub_100011F80(v262, qword_100135C88);
        v263 = Logger.logObject.getter();
        v264 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = swift_slowAlloc();
          *v265 = 0;
          _os_log_impl(&_mh_execute_header, v263, v264, "Game could not be deserialized", v265, 2u);
        }

        sub_10003091C(v98, v96);

        v94 = 0;
        v95 = 0;
      }

      v82 = v528;
    }

    v552 = &type metadata for GameOverlayUIFeatureFlags;
    v553 = sub_10003F1EC();
    LOBYTE(v551[0]) = 3;
    v266 = isFeatureEnabled(_:)();
    sub_10002E6CC(v551);
    if ((v266 & 1) != 0 && (v267 = v518, v518 >> 60 != 15))
    {
      sub_1000304E0(v97, v518);

      v268 = sub_10003D154(v97, v267, v94, v95, v515, v82, 0, 0);
      v270 = v269;

      sub_10003091C(v97, v267);

      v271 = v83[30];
      v272 = v83[31];
      v83[30] = v268;
      v83[31] = v270;
      sub_10003091C(v271, v272);
    }

    else
    {
    }

    v273 = v537;
    v274 = v536;
    v275 = v538;
    (*(v537 + 104))(v536, enum case for AccessPointAnchoring.topCentered(_:), v538);
    v276 = v535;
    (v550[2])(v535, v546, v549);
    v277 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v278 = *(v277 + 48);
    v279 = *(v277 + 52);
    v280 = swift_allocObject();
    v280[2] = 0;
    v280[3] = 0;
    v281 = v532;
    UUID.init()();
    v282 = UUID.uuidString.getter();
    v284 = v283;
    (*(v533 + 8))(v281, v534);
    v280[4] = v282;
    v280[5] = v284;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v285 = (v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v285 = 0;
    v285[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();
    v286 = v280[3];

    v287 = v516;
    v280[2] = v517;
    v280[3] = v287;
    (*(v273 + 32))(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v274, v275);
    (v550[4])(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v276, v549);
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v280 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v552 = v277;
    v553 = &off_1001240E8;
    v551[0] = v280;
    swift_beginAccess();
    sub_10003EF48(v551, (v83 + 8));
    swift_endAccess();
    v288 = v547;
    v289 = v548;
    v290 = sub_10007C628(0, v547, v548);
    v292 = v291;

    v293 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v294 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v295 = v544;
    (*(*(v294 - 8) + 104))(v544, v293, v294);
    v296 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v297 = swift_allocObject();
    *(v297 + 2) = v290;
    *(v297 + 3) = v292;
    *(v297 + 4) = v296;
    *(v297 + 5) = v288;
    *(v297 + 6) = v289;
    v298 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v299 = swift_allocObject();
    *(v299 + 2) = v290;
    *(v299 + 3) = v292;
    *(v299 + 4) = v298;
    *(v299 + 5) = v288;
    *(v299 + 6) = v289;
    v300 = v539;
    *(v295 + v539[5]) = 1;
    *(v295 + v300[6]) = v83;
    v301 = (v295 + v300[7]);
    *v301 = sub_1000403BC;
    v301[1] = v297;
    v302 = (v295 + v300[8]);
    *v302 = sub_1000403C4;
    v302[1] = v299;
    v303 = type metadata accessor for TaskPriority();
    v304 = v543;
    (*(*(v303 - 8) + 56))(v543, 1, 1, v303);
    v305 = v542;
    sub_10003F2F4(v295, v542);
    v306 = (*(v540 + 80) + 32) & ~*(v540 + 80);
    v307 = swift_allocObject();
    *(v307 + 16) = 0;
    *(v307 + 24) = 0;
    sub_10003F35C(v305, v307 + v306);

    swift_bridgeObjectRetain_n();
    sub_100014BBC(0, 0, v304, &unk_1000EA3D0, v307);

    sub_10003091C(v529, v518);
    sub_10003091C(v531, v525);
    sub_10002D820(v295);
    (v550[1])(v546, v549);
    goto LABEL_91;
  }

  v524 = v50;
  if (v63 == enum case for InGameBannerData.BannerType.topPercentageOnLeaderboard(_:))
  {
    (*(v35 + 96))(v39, v34);
    v100 = v39[1];
    v521 = *v39;
    v528 = v100;
    v102 = v549;
    v101 = v550;
    v103 = v531;
    (v550[13])(v531, enum case for AccessPointUseCase.leaderboardTopPercentageBanner(_:), v549);
    v104 = v524;
    v105 = InGameBannerData.title.getter();
    v107 = v106;
    v520 = InGameBannerData.body.getter();
    v522 = v108;
    v546 = InGameBannerData.image.getter();
    v110 = v109;
    v529 = InGameBannerData.clipData.getter();
    v112 = v111;
    v113 = v547;
    v114 = v548;
    v115 = sub_10007C628(1, v547, v548);
    if (v116)
    {
      v517 = v116;
      v518 = v115;
      v519 = v112;
      v117 = [objc_opt_self() currentContext];
      type metadata accessor for InGameBannerConnectionContext();
      swift_allocObject();

      v515 = v105;
      v516 = v107;
      v118 = sub_1000E08D0(v117, v105, v107);
      v119 = v118[23];
      v120 = v522;
      v118[22] = v520;
      v118[23] = v120;

      v121 = v118[27];
      v122 = v528;
      v118[26] = v521;
      v118[27] = v122;

      v123 = v118[24];
      v124 = v118[25];
      v125 = v546;
      v118[24] = v546;
      v118[25] = v110;
      sub_1000304CC(v125, v110);
      sub_10003091C(v123, v124);
      v126 = v118[19];
      v118[18] = v113;
      v118[19] = v114;

      v127 = v118[29];
      v118[29] = 0;

      v128 = v118[33];
      v129 = v525;
      v118[32] = v523;
      v118[33] = v129;

      v130 = 0;
      v131 = 0;
      v132 = v545;
      v525 = v110;
      v133 = v529;
      if (v545 >> 60 != 15)
      {
        sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
        sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
        v134 = v530;
        sub_1000304E0(v530, v132);
        v135 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v135)
        {
          v257 = v135;
          v258 = [v135 bundleIdentifier];
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v259;

          v260 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v257];
          sub_10003091C(v134, v132);
          v261 = v118[28];
          v118[28] = v260;
        }

        else
        {
          if (qword_10012CC18 != -1)
          {
            swift_once();
          }

          v358 = type metadata accessor for Logger();
          sub_100011F80(v358, qword_100135C88);
          v359 = Logger.logObject.getter();
          v360 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v359, v360))
          {
            v361 = swift_slowAlloc();
            *v361 = 0;
            _os_log_impl(&_mh_execute_header, v359, v360, "Game could not be deserialized", v361, 2u);
          }

          sub_10003091C(v134, v132);

          v130 = 0;
          v131 = 0;
        }
      }

      v552 = &type metadata for GameOverlayUIFeatureFlags;
      v553 = sub_10003F1EC();
      LOBYTE(v551[0]) = 3;
      v362 = isFeatureEnabled(_:)();
      sub_10002E6CC(v551);
      if ((v362 & 1) != 0 && (v363 = v519, v364 = v516, v519 >> 60 != 15))
      {
        sub_1000304E0(v133, v519);

        v365 = sub_10003D154(v133, v363, v130, v131, v515, v364, 0, 0);
        v367 = v366;

        sub_10003091C(v133, v363);

        v368 = v118[30];
        v369 = v118[31];
        v118[30] = v365;
        v118[31] = v367;
        sub_10003091C(v368, v369);
      }

      else
      {
      }

      v370 = v537;
      v371 = v536;
      v372 = v538;
      (*(v537 + 104))(v536, enum case for AccessPointAnchoring.topCentered(_:), v538);
      v373 = v535;
      (v550[2])(v535, v531, v549);
      v374 = type metadata accessor for RemoteAlertAccessPointContext(0);
      v375 = *(v374 + 48);
      v376 = *(v374 + 52);
      v377 = swift_allocObject();
      v377[2] = 0;
      v377[3] = 0;
      v378 = v532;
      UUID.init()();
      v379 = UUID.uuidString.getter();
      v381 = v380;
      (*(v533 + 8))(v378, v534);
      v377[4] = v379;
      v377[5] = v381;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
      v382 = (v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
      *v382 = 0;
      v382[1] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
      ObservationRegistrar.init()();
      v383 = v377[3];

      v384 = v517;
      v377[2] = v518;
      v377[3] = v384;
      (*(v370 + 32))(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v371, v372);
      (v550[4])(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v373, v549);
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
      *(v377 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
      v552 = v374;
      v553 = &off_1001240E8;
      v551[0] = v377;
      swift_beginAccess();
      sub_10003EF48(v551, (v118 + 8));
      swift_endAccess();
      v386 = v547;
      v385 = v548;
      v387 = sub_10007C628(0, v547, v548);
      v389 = v388;

      v390 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
      v391 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
      v392 = v544;
      (*(*(v391 - 8) + 104))(v544, v390, v391);
      v393 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v394 = swift_allocObject();
      *(v394 + 2) = v387;
      *(v394 + 3) = v389;
      *(v394 + 4) = v393;
      *(v394 + 5) = v386;
      *(v394 + 6) = v385;
      v395 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v396 = swift_allocObject();
      *(v396 + 2) = v387;
      *(v396 + 3) = v389;
      *(v396 + 4) = v395;
      *(v396 + 5) = v386;
      *(v396 + 6) = v385;
      v397 = v539;
      *(v392 + v539[5]) = 1;
      *(v392 + v397[6]) = v118;
      v398 = (v392 + v397[7]);
      *v398 = sub_1000403BC;
      v398[1] = v394;
      v399 = (v392 + v397[8]);
      *v399 = sub_1000403C4;
      v399[1] = v396;
      v400 = type metadata accessor for TaskPriority();
      v401 = v543;
      (*(*(v400 - 8) + 56))(v543, 1, 1, v400);
      v402 = v542;
      sub_10003F2F4(v392, v542);
      v403 = (*(v540 + 80) + 32) & ~*(v540 + 80);
      v404 = swift_allocObject();
      *(v404 + 16) = 0;
      *(v404 + 24) = 0;
      sub_10003F35C(v402, v404 + v403);

      swift_bridgeObjectRetain_n();
      sub_100014BBC(0, 0, v401, &unk_1000EA3C8, v404);

      sub_10003091C(v529, v519);
      sub_10003091C(v546, v525);
      sub_10002D820(v392);
      (v550[1])(v531, v549);
      goto LABEL_91;
    }

    sub_10003091C(v529, v112);
    sub_10003091C(v546, v110);

    (v101[1])(v103, v102);
LABEL_39:
    (*(v527 + 8))(v104, v526);
    return;
  }

  if (v63 == enum case for InGameBannerData.BannerType.scoreSubmittedOnLeaderboard(_:))
  {
    (*(v35 + 96))(v39, v34);
    v136 = v39[1];
    v521 = *v39;
    v528 = v136;
    v137 = v549;
    v138 = v550;
    v139 = v529;
    (v550[13])(v529, enum case for AccessPointUseCase.leaderboardScoreSubmittedBanner(_:), v549);
    v104 = v524;
    v140 = InGameBannerData.title.getter();
    v531 = v141;
    v520 = InGameBannerData.body.getter();
    v522 = v142;
    v143 = InGameBannerData.image.getter();
    v145 = v144;
    v546 = InGameBannerData.clipData.getter();
    v147 = v146;
    v148 = v547;
    v149 = v548;
    v150 = sub_10007C628(1, v547, v548);
    if (!v151)
    {

      sub_10003091C(v546, v147);
      sub_10003091C(v143, v145);

      (v138[1])(v139, v137);
      goto LABEL_39;
    }

    v515 = v151;
    v516 = v150;
    v519 = v147;
    v152 = [objc_opt_self() currentContext];
    type metadata accessor for InGameBannerConnectionContext();
    swift_allocObject();
    v153 = v531;

    v514 = v140;
    v154 = sub_1000E08D0(v152, v140, v153);
    v155 = v154[23];
    v156 = v522;
    v154[22] = v520;
    v154[23] = v156;

    v157 = v154[27];
    v158 = v528;
    v154[26] = v521;
    v154[27] = v158;

    v159 = v154[24];
    v160 = v154[25];
    v154[24] = v143;
    v154[25] = v145;
    sub_1000304CC(v143, v145);
    sub_10003091C(v159, v160);
    v161 = v154[19];
    v154[18] = v148;
    v154[19] = v149;

    v162 = v154[29];
    v154[29] = 0;

    v163 = v154[33];
    v164 = v525;
    v154[32] = v523;
    v154[33] = v164;

    v165 = 0;
    v166 = 0;
    v167 = v545;
    v168 = v546;
    if (v545 >> 60 != 15)
    {
      sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
      sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
      sub_1000304E0(v530, v167);
      v169 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v169)
      {
        v309 = v169;
        v310 = [v169 bundleIdentifier];
        v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v166 = v311;

        v312 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v309];
        sub_10003091C(v530, v545);
        v313 = v154[28];
        v154[28] = v312;

        v153 = v531;
      }

      else
      {
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v410 = type metadata accessor for Logger();
        sub_100011F80(v410, qword_100135C88);
        v411 = Logger.logObject.getter();
        v412 = static os_log_type_t.error.getter();
        v413 = os_log_type_enabled(v411, v412);
        v153 = v531;
        if (v413)
        {
          v414 = swift_slowAlloc();
          *v414 = 0;
          _os_log_impl(&_mh_execute_header, v411, v412, "Game could not be deserialized", v414, 2u);
        }

        sub_10003091C(v530, v545);

        v165 = 0;
        v166 = 0;
      }
    }

    v552 = &type metadata for GameOverlayUIFeatureFlags;
    v553 = sub_10003F1EC();
    LOBYTE(v551[0]) = 3;
    v314 = isFeatureEnabled(_:)();
    sub_10002E6CC(v551);
    v518 = v145;
    v517 = v143;
    if ((v314 & 1) != 0 && (v315 = v519, v519 >> 60 != 15))
    {
      sub_1000304E0(v168, v519);

      v316 = sub_10003D154(v168, v315, v165, v166, v514, v153, 0, 0);
      v318 = v317;

      sub_10003091C(v168, v315);

      v319 = v154[30];
      v320 = v154[31];
      v154[30] = v316;
      v154[31] = v318;
      sub_10003091C(v319, v320);
    }

    else
    {
    }

    v321 = v529;
    v322 = v537;
    v323 = v536;
    v324 = v538;
    (*(v537 + 104))(v536, enum case for AccessPointAnchoring.topCentered(_:), v538);
    v325 = v535;
    (v550[2])(v535, v321, v549);
    v326 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v327 = *(v326 + 48);
    v328 = *(v326 + 52);
    v329 = swift_allocObject();
    v329[2] = 0;
    v329[3] = 0;
    v330 = v532;
    UUID.init()();
    v331 = UUID.uuidString.getter();
    v333 = v332;
    (*(v533 + 8))(v330, v534);
    v329[4] = v331;
    v329[5] = v333;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v334 = (v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v334 = 0;
    v334[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();
    v335 = v329[3];

    v336 = v515;
    v329[2] = v516;
    v329[3] = v336;
    (*(v322 + 32))(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v323, v324);
    (v550[4])(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v325, v549);
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v329 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v552 = v326;
    v553 = &off_1001240E8;
    v551[0] = v329;
    swift_beginAccess();
    sub_10003EF48(v551, (v154 + 8));
    swift_endAccess();
    v338 = v547;
    v337 = v548;
    v339 = sub_10007C628(0, v547, v548);
    v341 = v340;

    v342 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v343 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v344 = v544;
    (*(*(v343 - 8) + 104))(v544, v342, v343);
    v345 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v346 = swift_allocObject();
    *(v346 + 2) = v339;
    *(v346 + 3) = v341;
    *(v346 + 4) = v345;
    *(v346 + 5) = v338;
    *(v346 + 6) = v337;
    v347 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v348 = swift_allocObject();
    *(v348 + 2) = v339;
    *(v348 + 3) = v341;
    *(v348 + 4) = v347;
    *(v348 + 5) = v338;
    *(v348 + 6) = v337;
    v349 = v539;
    *(v344 + v539[5]) = 1;
    *(v344 + v349[6]) = v154;
    v350 = (v344 + v349[7]);
    *v350 = sub_1000403BC;
    v350[1] = v346;
    v351 = (v344 + v349[8]);
    *v351 = sub_1000403C4;
    v351[1] = v348;
    v352 = type metadata accessor for TaskPriority();
    v353 = v543;
    (*(*(v352 - 8) + 56))(v543, 1, 1, v352);
    v354 = v542;
    sub_10003F2F4(v344, v542);
    v355 = (*(v540 + 80) + 32) & ~*(v540 + 80);
    v356 = swift_allocObject();
    *(v356 + 16) = 0;
    *(v356 + 24) = 0;
    sub_10003F35C(v354, v356 + v355);

    swift_bridgeObjectRetain_n();
    sub_100014BBC(0, 0, v353, &unk_1000EA3C0, v356);

    sub_10003091C(v546, v519);
    sub_10003091C(v517, v518);
    v357 = v344;
LABEL_90:
    sub_10002D820(v357);
    (v550[1])(v529, v549);
LABEL_91:
    (*(v527 + 8))(v524, v526);
    return;
  }

  if (v63 == enum case for InGameBannerData.BannerType.youEarnedAchievement(_:))
  {
    (*(v35 + 96))(v39, v34);
    v170 = *v39;
    v528 = v39[1];
    v171 = v550;
    v172 = v550[13];
    v529 = v26;
    v173 = v549;
    v172(v26, enum case for AccessPointUseCase.achievementBanner(_:), v549);
    v104 = v524;
    v174 = InGameBannerData.title.getter();
    v522 = v175;
    v521 = InGameBannerData.body.getter();
    v177 = v176;
    v546 = InGameBannerData.image.getter();
    v179 = v178;
    v531 = InGameBannerData.clipData.getter();
    v181 = v180;
    v182 = v547;
    v183 = v548;
    v184 = sub_10007C628(1, v547, v548);
    if (!v185)
    {

      sub_10003091C(v531, v181);
      sub_10003091C(v546, v179);

      (v171[1])(v529, v173);
      goto LABEL_39;
    }

    v518 = v185;
    v519 = v184;
    v520 = v181;
    v186 = v183;
    v187 = [objc_opt_self() currentContext];
    type metadata accessor for InGameBannerConnectionContext();
    swift_allocObject();
    v188 = v170;
    v189 = v522;

    v517 = v174;
    v190 = sub_1000E08D0(v187, v174, v189);
    v191 = v190[23];
    v190[22] = v521;
    v190[23] = v177;

    v192 = v190[27];
    v193 = v528;
    v190[26] = v188;
    v190[27] = v193;

    v194 = v190[24];
    v195 = v190[25];
    v196 = v546;
    v190[24] = v546;
    v190[25] = v179;
    sub_1000304CC(v196, v179);
    sub_10003091C(v194, v195);
    v197 = v190[19];
    v190[18] = v182;
    v190[19] = v186;

    v198 = v190[29];
    v190[29] = 0;

    v199 = v190[33];
    v200 = v525;
    v190[32] = v523;
    v190[33] = v200;

    v201 = 0;
    v202 = 0;
    v203 = v545;
    v525 = v179;
    v204 = v531;
    if (v545 >> 60 != 15)
    {
      sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
      sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
      sub_1000304E0(v530, v203);
      v205 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v205)
      {
        v405 = v205;
        v406 = [v205 bundleIdentifier];
        v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v202 = v407;

        v408 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v405];
        sub_10003091C(v530, v545);
        v409 = v190[28];
        v190[28] = v408;
      }

      else
      {
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v420 = type metadata accessor for Logger();
        sub_100011F80(v420, qword_100135C88);
        v421 = Logger.logObject.getter();
        v422 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v421, v422))
        {
          v423 = swift_slowAlloc();
          *v423 = 0;
          _os_log_impl(&_mh_execute_header, v421, v422, "Game could not be deserialized", v423, 2u);
        }

        sub_10003091C(v530, v545);

        v201 = 0;
        v202 = 0;
      }
    }

    v552 = &type metadata for GameOverlayUIFeatureFlags;
    v553 = sub_10003F1EC();
    LOBYTE(v551[0]) = 3;
    v424 = isFeatureEnabled(_:)();
    sub_10002E6CC(v551);
    if ((v424 & 1) != 0 && (v425 = v520, v520 >> 60 != 15))
    {
      v551[0] = 0;
      v551[1] = 0xE000000000000000;
      sub_1000304E0(v204, v520);
      _StringGuts.grow(_:)(16);

      strcpy(v551, "achievement://");
      HIBYTE(v551[1]) = -18;
      v426._countAndFlagsBits = v188;
      v426._object = v193;
      String.append(_:)(v426);

      v427 = sub_10003D154(v204, v425, v201, v202, v517, v189, v551[0], v551[1]);
      v429 = v428;

      sub_10003091C(v204, v425);

      v430 = v190[30];
      v431 = v190[31];
      v190[30] = v427;
      v190[31] = v429;
      sub_10003091C(v430, v431);
    }

    else
    {
    }

    v432 = v537;
    v433 = v536;
    v434 = v538;
    (*(v537 + 104))(v536, enum case for AccessPointAnchoring.topCentered(_:), v538);
    v435 = v535;
    (v550[2])(v535, v529, v549);
    v436 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v437 = *(v436 + 48);
    v438 = *(v436 + 52);
    v439 = swift_allocObject();
    v439[2] = 0;
    v439[3] = 0;
    v440 = v532;
    UUID.init()();
    v441 = UUID.uuidString.getter();
    v443 = v442;
    (*(v533 + 8))(v440, v534);
    v439[4] = v441;
    v439[5] = v443;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v444 = (v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v444 = 0;
    v444[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();
    v445 = v439[3];

    v446 = v518;
    v439[2] = v519;
    v439[3] = v446;
    (*(v432 + 32))(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v433, v434);
    (v550[4])(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v435, v549);
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v439 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v552 = v436;
    v553 = &off_1001240E8;
    v551[0] = v439;
    swift_beginAccess();
    sub_10003EF48(v551, (v190 + 8));
    swift_endAccess();
    v447 = v547;
    v448 = v548;
    v449 = sub_10007C628(0, v547, v548);
    v451 = v450;

    v452 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v453 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v454 = v544;
    (*(*(v453 - 8) + 104))(v544, v452, v453);
    v455 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v456 = swift_allocObject();
    *(v456 + 2) = v449;
    *(v456 + 3) = v451;
    *(v456 + 4) = v455;
    *(v456 + 5) = v447;
    *(v456 + 6) = v448;
    v457 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v458 = swift_allocObject();
    *(v458 + 2) = v449;
    *(v458 + 3) = v451;
    *(v458 + 4) = v457;
    *(v458 + 5) = v447;
    *(v458 + 6) = v448;
    v459 = v539;
    *(v454 + v539[5]) = 1;
    *(v454 + v459[6]) = v190;
    v460 = (v454 + v459[7]);
    *v460 = sub_1000403BC;
    v460[1] = v456;
    v461 = (v454 + v459[8]);
    *v461 = sub_1000403C4;
    v461[1] = v458;
    v462 = type metadata accessor for TaskPriority();
    v463 = v543;
    (*(*(v462 - 8) + 56))(v543, 1, 1, v462);
    v464 = v542;
    sub_10003F2F4(v454, v542);
    v465 = (*(v540 + 80) + 32) & ~*(v540 + 80);
    v466 = swift_allocObject();
    *(v466 + 16) = 0;
    *(v466 + 24) = 0;
    sub_10003F35C(v464, v466 + v465);

    swift_bridgeObjectRetain_n();
    sub_100014BBC(0, 0, v463, &unk_1000EA3B8, v466);

    sub_10003091C(v531, v520);
    sub_10003091C(v546, v525);
    v357 = v454;
    goto LABEL_90;
  }

  if (v63 == enum case for InGameBannerData.BannerType.general(_:))
  {
    v206 = v549;
    v207 = v550;
    (v550[13])(v528, enum case for AccessPointUseCase.inGameBanner(_:), v549);
    v104 = v524;
    v208 = InGameBannerData.title.getter();
    v210 = v209;
    v529 = InGameBannerData.body.getter();
    v531 = v211;
    v212 = InGameBannerData.image.getter();
    v214 = v213;
    v546 = InGameBannerData.clipData.getter();
    v216 = v215;
    v218 = v547;
    v217 = v548;
    v219 = sub_10007C628(1, v547, v548);
    if (v220)
    {
      v520 = v220;
      v521 = v219;
      v522 = v216;
      v221 = [objc_opt_self() currentContext];
      type metadata accessor for InGameBannerConnectionContext();
      swift_allocObject();

      v518 = v208;
      v519 = v210;
      v222 = v214;
      v223 = sub_1000E08D0(v221, v208, v210);
      v224 = v223[23];
      v225 = v531;
      v223[22] = v529;
      v223[23] = v225;

      v226 = v223[27];
      v223[26] = 0;
      v223[27] = 0;

      v227 = v223[24];
      v228 = v223[25];
      v223[24] = v212;
      v223[25] = v222;
      v531 = v222;
      sub_1000304CC(v212, v222);
      sub_10003091C(v227, v228);
      v229 = v223[19];
      v223[18] = v218;
      v223[19] = v217;

      v230 = v223[29];
      v223[29] = 0;

      v231 = v223[33];
      v232 = v525;
      v223[32] = v523;
      v223[33] = v232;

      v233 = 0;
      v234 = 0;
      v235 = v545;
      v529 = v212;
      v236 = v546;
      v237 = v528;
      if (v545 >> 60 != 15)
      {
        sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
        sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
        sub_1000304E0(v530, v235);
        v238 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v238)
        {
          v415 = v238;
          v416 = [v238 bundleIdentifier];
          v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v234 = v417;

          v418 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v415];
          sub_10003091C(v530, v235);
          v419 = v223[28];
          v223[28] = v418;
        }

        else
        {
          if (qword_10012CC18 != -1)
          {
            swift_once();
          }

          v467 = type metadata accessor for Logger();
          sub_100011F80(v467, qword_100135C88);
          v468 = Logger.logObject.getter();
          v469 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v468, v469))
          {
            v470 = swift_slowAlloc();
            *v470 = 0;
            _os_log_impl(&_mh_execute_header, v468, v469, "Game could not be deserialized", v470, 2u);
          }

          sub_10003091C(v530, v235);

          v233 = 0;
          v234 = 0;
        }
      }

      v552 = &type metadata for GameOverlayUIFeatureFlags;
      v553 = sub_10003F1EC();
      LOBYTE(v551[0]) = 3;
      v471 = isFeatureEnabled(_:)();
      sub_10002E6CC(v551);
      if ((v471 & 1) != 0 && (v472 = v522, v473 = v519, v522 >> 60 != 15))
      {
        sub_1000304CC(v236, v522);
        v474 = sub_10003D154(v236, v472, v233, v234, v518, v473, 0, 0);
        v476 = v475;

        sub_10003091C(v236, v472);

        v477 = v223[30];
        v478 = v223[31];
        v223[30] = v474;
        v223[31] = v476;
        sub_10003091C(v477, v478);
      }

      else
      {
      }

      v479 = v537;
      v480 = v536;
      v481 = v538;
      (*(v537 + 104))(v536, enum case for AccessPointAnchoring.topCentered(_:), v538);
      v482 = v535;
      (v550[2])(v535, v237, v549);
      v483 = type metadata accessor for RemoteAlertAccessPointContext(0);
      v484 = *(v483 + 48);
      v485 = *(v483 + 52);
      v486 = swift_allocObject();
      v486[2] = 0;
      v486[3] = 0;
      v487 = v532;
      UUID.init()();
      v488 = UUID.uuidString.getter();
      v490 = v489;
      (*(v533 + 8))(v487, v534);
      v486[4] = v488;
      v486[5] = v490;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
      v491 = (v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
      *v491 = 0;
      v491[1] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
      ObservationRegistrar.init()();
      v492 = v486[3];

      v493 = v520;
      v486[2] = v521;
      v486[3] = v493;
      (*(v479 + 32))(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v480, v481);
      (v550[4])(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v482, v549);
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
      *(v486 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
      v552 = v483;
      v553 = &off_1001240E8;
      v551[0] = v486;
      swift_beginAccess();
      sub_10003EF48(v551, (v223 + 8));
      swift_endAccess();
      v495 = v547;
      v494 = v548;
      v496 = sub_10007C628(0, v547, v548);
      v498 = v497;

      v499 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
      v500 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
      v501 = v544;
      (*(*(v500 - 8) + 104))(v544, v499, v500);
      v502 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v503 = swift_allocObject();
      *(v503 + 2) = v496;
      *(v503 + 3) = v498;
      *(v503 + 4) = v502;
      *(v503 + 5) = v495;
      *(v503 + 6) = v494;
      v504 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v505 = swift_allocObject();
      *(v505 + 2) = v496;
      *(v505 + 3) = v498;
      *(v505 + 4) = v504;
      *(v505 + 5) = v495;
      *(v505 + 6) = v494;
      v506 = v539;
      *(v501 + v539[5]) = 1;
      *(v501 + v506[6]) = v223;
      v507 = (v501 + v506[7]);
      *v507 = sub_10003F27C;
      v507[1] = v503;
      v508 = (v501 + v506[8]);
      *v508 = sub_10003F2A0;
      v508[1] = v505;
      v509 = type metadata accessor for TaskPriority();
      v510 = v543;
      (*(*(v509 - 8) + 56))(v543, 1, 1, v509);
      v511 = v542;
      sub_10003F2F4(v501, v542);
      v512 = (*(v540 + 80) + 32) & ~*(v540 + 80);
      v513 = swift_allocObject();
      *(v513 + 16) = 0;
      *(v513 + 24) = 0;
      sub_10003F35C(v511, v513 + v512);

      swift_bridgeObjectRetain_n();
      sub_100014BBC(0, 0, v510, &unk_1000EA3B0, v513);

      sub_10003091C(v546, v522);
      sub_10003091C(v529, v531);
      sub_10002D820(v501);
      (v550[1])(v528, v549);
      goto LABEL_91;
    }

    sub_10003091C(v546, v216);
    sub_10003091C(v212, v214);

    (v207[1])(v528, v206);
    goto LABEL_39;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v244 = type metadata accessor for Logger();
  sub_100011F80(v244, qword_100135C88);
  v245 = v527;
  v246 = v524;
  v247 = v526;
  (*(v527 + 16))(v48, v524, v526);
  v248 = Logger.logObject.getter();
  v249 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v248, v249))
  {
    v250 = swift_slowAlloc();
    v548 = v250;
    v550 = swift_slowAlloc();
    v551[0] = v550;
    *v250 = 136315138;
    LODWORD(v549) = v249;
    InGameBannerData.type.getter();
    v251 = String.init<A>(describing:)();
    v253 = v252;
    v254 = *(v245 + 8);
    v254(v48, v247);
    v255 = sub_1000BA5C8(v251, v253, v551);

    v256 = v548;
    *(v548 + 1) = v255;
    _os_log_impl(&_mh_execute_header, v248, v549, "showInGameBanner: Unknown banner type: %s", v256, 0xCu);
    sub_10002E6CC(v550);

    v254(v524, v247);
  }

  else
  {

    v308 = *(v245 + 8);
    v308(v48, v247);
    v308(v246, v247);
  }

  (*(v35 + 8))(v39, v34);
}

uint64_t sub_10003AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for RemoteAlertRequest();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_10003B088;

  return DashboardRequest.updateAsNeeded()();
}

uint64_t sub_10003B088()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_10003B184, 0, 0);
}

uint64_t sub_10003B184()
{
  v32 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    v9 = (v6 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext);
    if (*(v6 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext + 8))
    {
      v10 = *v9;
      v11 = v9[1];
    }

    else
    {
      v11 = 0xE300000000000000;
      v10 = 7104878;
    }

    v12 = sub_1000BA5C8(v10, v11, &v31);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "showDashboard called with launchContext: %s", v7, 0xCu);
    sub_10002E6CC(v8);
  }

  v13 = (v0[2] + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext);
  v15 = *v13;
  v14 = v13[1];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v14)
  {
    if (v15 == v16 && v14 == v17)
    {

LABEL_20:
      if (qword_10012CC20 != -1)
      {
        swift_once();
      }

      v30 = qword_100135CA0;
      v0[7] = qword_100135CA0;

      return _swift_task_switch(sub_10003B4D8, v30, 0);
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  v23 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
  v24 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v24 - 8) + 104))(v20, v23, v24);
  *(v20 + v21[5]) = 2;
  *(v20 + v21[6]) = v22;
  v25 = (v20 + v21[7]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v20 + v21[8]);
  *v26 = 0;
  v26[1] = 0;

  sub_1000D0750(v20, 0, 0, 0);
  sub_10002D820(v20);
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10003B4D8()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = sub_10009312C() & 1;

  return _swift_task_switch(sub_10003B548, 0, 0);
}

uint64_t sub_10003B548()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v5 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    (*(*(v5 - 8) + 104))(v1, v4, v5);
    *(v1 + v2[5]) = 2;
    *(v1 + v2[6]) = v3;
    v6 = (v1 + v2[7]);
    *v6 = 0;
    v6[1] = 0;
    v7 = (v1 + v2[8]);
    *v7 = 0;
    v7[1] = 0;

    sub_1000D0750(v1, 0, 0, 0);
    sub_10002D820(v1);
  }

  v8 = *(v0 + 40);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10003B748(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v10 = a4;
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v16;
  if (a5)
  {
LABEL_4:
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v19 = a1;
  sub_10003E824(v12, v14, v15, v10, v17, a5, a6, a7);
}

uint64_t sub_10003B8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 80) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = type metadata accessor for RemoteAlertRequest();
  *(v8 + 56) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10003B990, 0, 0);
}

uint64_t sub_10003B990()
{
  v26 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = type metadata accessor for Logger();
  sub_100011F80(v3, qword_100135C88);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 80);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_1000BA5C8(v9, v6, &v25);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v8;
    *(v10 + 18) = 2080;
    *(v0 + 16) = v7;

    sub_100002B38(&qword_10012DFA0, &qword_1000EA310);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000BA5C8(v11, v12, &v25);

    *(v10 + 20) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Enqueuing Game Mode banner: %s enabled:%{BOOL}d actionSymbols:%s", v10, 0x1Cu);
    swift_arrayDestroy();
  }

  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
  v18 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  *(v14 + v15[5]) = 8;
  *(v14 + v15[6]) = v16;
  v19 = (v14 + v15[7]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + v15[8]);
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_10012CC38;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = swift_task_alloc();
  *(v0 + 72) = v22;
  *v22 = v0;
  v22[1] = sub_10003BC98;
  v23 = *(v0 + 64);

  return sub_1000C6FF4(v23);
}

uint64_t sub_10003BC98()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_10003BD94, 0, 0);
}

uint64_t sub_10003BD94()
{
  sub_10002D820(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003BE58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  return result;
}

uint64_t sub_10003BF30(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v101 = a8;
  v100 = a7;
  v110 = a6;
  v109 = a5;
  v99 = a4;
  v98 = a3;
  v103 = a2;
  v102 = a1;
  v10 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v95 - v12;
  v14 = type metadata accessor for RemoteAlertRequest();
  v15 = *(v14 - 8);
  v112 = v14;
  v113 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v114 = v18;
  v115 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v95 - v19;
  v105 = type metadata accessor for UUID();
  v104 = *(v105 - 1);
  v21 = *(v104 + 64);
  __chkstk_darwin(v105);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002B38(&qword_10012E0C8, &qword_1000EA438);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v95 - v26;
  v28 = type metadata accessor for AccessPointAnchoring();
  v106 = *(v28 - 8);
  v29 = *(v106 + 64);
  __chkstk_darwin(v28);
  v117 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100002B38(&unk_1001324A0, &unk_1000EF030);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v95 - v33;
  v35 = type metadata accessor for AccessPointUseCase();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v119 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v39;
  __chkstk_darwin(v38);
  v122 = &v95 - v40;
  v107 = a9;
  v108 = a10;
  result = sub_10007C628(0, a9, a10);
  v118 = result;
  v120 = v42;
  if (v42)
  {
    v97 = v20;
    v116 = v13;
    v43 = [objc_opt_self() currentContext];
    type metadata accessor for AccessPointConnectionContext();
    *(swift_allocObject() + 160) = 0;
    v95 = sub_1000E0554(v43);

    AccessPointUseCase.init(rawValue:)();
    v44 = *(v36 + 48);
    v45 = v44(v34, 1, v35);
    v96 = v36;
    v121 = v35;
    if (v45 == 1)
    {
      (*(v36 + 104))(v122, enum case for AccessPointUseCase.accessPointOnly(_:), v35);
      v46 = v44(v34, 1, v35);
      v47 = v106;
      v48 = v117;
      if (v46 != 1)
      {
        sub_100005688(v34, &unk_1001324A0, &unk_1000EF030);
      }
    }

    else
    {
      (*(v36 + 32))(v122, v34, v35);
      v47 = v106;
      v48 = v117;
    }

    LODWORD(v100) = [v100 BOOLValueSafe];
    LODWORD(v101) = [v101 BOOLValueSafe];

    AccessPointAnchoring.init(rawValue:)();
    v49 = *(v47 + 48);
    if (v49(v27, 1, v28) == 1)
    {
      (*(v47 + 104))(v48, enum case for AccessPointAnchoring.topLeading(_:), v28);
      if (v49(v27, 1, v28) != 1)
      {
        sub_100005688(v27, &qword_10012E0C8, &qword_1000EA438);
      }
    }

    else
    {
      (*(v47 + 32))(v48, v27, v28);
    }

    v50 = v96;
    v51 = *(v96 + 16);
    v52 = v119;
    v53 = v121;
    v106 = v96 + 16;
    v103 = v51;
    v51(v119, v122, v121);
    v54 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    UUID.init()();
    v58 = UUID.uuidString.getter();
    v60 = v59;
    (*(v104 + 8))(v23, v105);
    v57[4] = v58;
    v57[5] = v60;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v61 = (v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v61 = 0;
    v61[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();
    v62 = v57[3];

    v63 = v117;
    v64 = v120;
    v57[2] = v118;
    v57[3] = v64;
    (*(v47 + 32))(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v63, v28);
    v65 = v50;
    v66 = *(v50 + 32);
    v117 = (v50 + 32);
    v105 = v66;
    v66(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v52, v53);
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = v100;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = v101;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v57 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v123[3] = v54;
    v123[4] = &off_1001240E8;
    v123[0] = v57;
    v67 = v95;
    swift_beginAccess();

    sub_10003EF48(v123, (v67 + 8));
    swift_endAccess();
    v68 = v67[19];
    v69 = v108;
    v67[18] = v107;
    v67[19] = v69;

    sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
    sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
    v70 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v70)
    {
      v71 = v70;
      v72 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v70];

      v73 = v67[20];
      v67[20] = v72;
    }

    else
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100011F80(v91, qword_100135C88);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "Game could not be deserialized", v94, 2u);
      }
    }

    v74 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v75 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v76 = v97;
    (*(*(v75 - 8) + 104))(v97, v74, v75);
    v77 = v112;
    *(v76 + v112[5]) = 0;
    *(v76 + v77[6]) = v67;
    v78 = (v76 + v77[7]);
    *v78 = 0;
    v78[1] = 0;
    v79 = (v76 + v77[8]);
    v80 = type metadata accessor for TaskPriority();
    *v79 = 0;
    v79[1] = 0;
    (*(*(v80 - 8) + 56))(v116, 1, 1, v80);
    v81 = v115;
    sub_10003F2F4(v76, v115);
    v82 = v119;
    v103(v119, v122, v121);
    v83 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v84 = (v114 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = v65;
    v86 = (*(v65 + 80) + v84 + 16) & ~*(v65 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    *(v87 + 24) = 0;
    sub_10003F35C(v81, v87 + v83);
    v88 = (v87 + v84);
    v89 = v120;
    v90 = v121;
    *v88 = v118;
    v88[1] = v89;
    v105(v87 + v86, v82, v90);

    sub_100014BBC(0, 0, v116, &unk_1000EA4C8, v87);

    sub_10002D820(v76);
    return (*(v85 + 8))(v122, v90);
  }

  return result;
}

void sub_10003CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedPhotoLibrary];
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = a3;
  v18 = (v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v17;
  v18[1] = a5;
  v27 = sub_10003F6D0;
  v28 = v15;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D431C;
  v26 = &unk_100121B48;
  v19 = _Block_copy(&aBlock);

  v27 = sub_100036B68;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100036CE0;
  v26 = &unk_100121B70;
  v20 = _Block_copy(&aBlock);
  [v12 performChanges:v19 completionHandler:v20];
  _Block_release(v20);
  _Block_release(v19);
}

uint64_t sub_10003CEC8()
{
  v0 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2 options:0];

  v5 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v4];
  [v5 setAppliesPreferredTrackTransform:1];
  CMTimeMake(&v25, 0, 1);
  v24 = 0;
  v6 = [v5 copyCGImageAtTime:&v25 actualTime:0 error:&v24];
  v7 = v24;
  if (!v6)
  {
    v22 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_11:

    return 0;
  }

  v8 = v6;
  v9 = objc_allocWithZone(UIImage);
  v10 = v7;
  v11 = [v9 initWithCGImage:v8];
  Width = CGImageGetWidth(v8);
  Height = CGImageGetHeight(v8);
  if (Height >= Width)
  {
    v14 = Width;
  }

  else
  {
    v14 = Height;
  }

  OverlayTabsInfoProvider.init(tabs:tabsToFlowActionsConverter:)(v14, v14);
  v15 = [v11 _gkCropImageIntoSquare:?];
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v25.value = 0;
    v18 = [v17 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v25];
    v19 = v25.value;
    if (v18)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v20;
    }

    v23 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_10003D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v23 = a3;
  v24 = a4;
  v27 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v28 = a5;
  v29 = a6;

  v18._countAndFlagsBits = 0x4F4D2E70696C6320;
  v18._object = 0xE900000000000056;
  String.append(_:)(v18);
  v19 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();

  v20 = *(v11 + 8);
  v20(v15, v10);
  Data.write(to:options:)();
  sub_10003CC48(v17, v23, v24, v25, v26);
  v21 = sub_10003CEC8();
  v20(v17, v10);
  return v21;
}

void sub_10003D490(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for GameOverlayUIConfig.OverlayStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(FBSSystemService) init];
  v16 = [v15 isPasscodeLockedOrBlocked];

  if (v16)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100011F80(v17, qword_100135C88);
    v42 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v42, v18, "Skipping dashboard request because device is locked or blocked.", v19, 2u);
    }

    v20 = v42;
  }

  else
  {
    v21 = sub_10007C628(2, a2, a3);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v25 = [objc_opt_self() currentContext];
      type metadata accessor for DashboardConnectionContext();
      v26 = swift_allocObject();
      *(v26 + 160) = 0;
      *(v26 + 168) = 0;
      *(v26 + 176) = 2;
      v27 = sub_1000E0554(v25);
      v28 = *(v27 + 160);
      *(v27 + 160) = a1;

      *(v27 + 176) = 1;
      (*(v11 + 104))(v14, enum case for GameOverlayUIConfig.OverlayStyle.fullScreen(_:), v10);
      v29 = a1;

      v30 = GameOverlayUIConfig.OverlayStyle.rawValue.getter();
      v32 = v31;
      (*(v11 + 8))(v14, v10);
      v33 = *(v27 + 152);
      *(v27 + 144) = v30;
      *(v27 + 152) = v32;

      v34 = type metadata accessor for RemoteAlertDashboardContext(0);
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      v37 = sub_1000BED8C(v23, v24);
      v43[3] = v34;
      v43[4] = &off_1001240C0;
      v43[0] = v37;
      swift_beginAccess();

      sub_10003EF48(v43, v27 + 64);
      swift_endAccess();

      v38 = type metadata accessor for TaskPriority();
      (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v29;
      v39[5] = v27;
      v40 = v29;

      sub_100014BBC(0, 0, v9, &unk_1000EA320, v39);
    }
  }
}

void sub_10003D8D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v33 = a4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v12 = 136315138;
    if (a5)
    {
      v14 = a4;
    }

    else
    {
      v14 = 7104878;
    }

    if (a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_1000BA5C8(v14, v15, v35);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "showDashboard called with sceneIdentifier: %s", v12, 0xCu);
    sub_10002E6CC(v13);

    a3 = v11;
  }

  v17 = objc_opt_self();
  if (qword_10012CB78 != -1)
  {
    swift_once();
  }

  isa = Set._bridgeToObjectiveC()().super.isa;
  v19 = Data._bridgeToObjectiveC()().super.isa;
  v35[0] = 0;
  v20 = [v17 unarchivedObjectOfClasses:isa fromData:v19 error:v35];

  if (v20)
  {
    v21 = v35[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100002B38(&qword_10012DFA8, qword_1000EEA30);
    if (swift_dynamicCast())
    {
      v22 = objc_allocWithZone(type metadata accessor for DashboardRequest());
      v23 = DashboardRequest.init(initialState:)(v34);
      [a3 BOOLValueSafe];
      sub_10003D490(v23, v33, a5);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unexpected type encountered for initial state dictionary", v32, 2u);
      }
    }
  }

  else
  {
    v24 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not deserialize initial state dictionary: %@", v27, 0xCu);
      sub_100005688(v28, &qword_100131110, &unk_1000EC870);
    }

    else
    {
    }
  }
}

void sub_10003E018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100011F80(v6, qword_100135C88);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v80[0] = v10;
    *v9 = 136315138;
    v11 = a3;
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      a3 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = sub_1000BA5C8(a3, v12, v80);

    *(v9 + 4) = v13;
    a3 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "showPlayTogether called with sceneIdentifier: %s", v9, 0xCu);
    sub_10002E6CC(v10);
  }

  v14 = [objc_allocWithZone(FBSSystemService) init];
  v15 = [v14 isPasscodeLockedOrBlocked];

  if (v15)
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Skipping showPlayTogether request because device is locked or blocked.", v17, 2u);
    }

    return;
  }

  v18 = objc_opt_self();
  if (qword_10012CB78 != -1)
  {
    swift_once();
  }

  isa = Set._bridgeToObjectiveC()().super.isa;
  v20 = Data._bridgeToObjectiveC()().super.isa;
  v80[0] = 0;
  v21 = [v18 unarchivedObjectOfClasses:isa fromData:v20 error:v80];

  if (!v21)
  {
    v35 = v80[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v36))
    {

      return;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v27, v36, "Could not deserialize initial state dictionary: %@", v37, 0xCu);
    sub_100005688(v38, &qword_100131110, &unk_1000EC870);

    goto LABEL_39;
  }

  v22 = v80[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002B38(&qword_10012DFA8, qword_1000EEA30);
  if (swift_dynamicCast())
  {
    v23 = objc_allocWithZone(type metadata accessor for PlayTogetherRequest());
    v24 = sub_1000D3F34(v79);
    v25 = sub_1000D1714(&_swiftEmptyArrayStorage);
    v26 = objc_allocWithZone(type metadata accessor for DashboardRequest());
    v27 = DashboardRequest.init(initialState:)(v25);
    v28 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_challengeDefinitionID + 8];
    if (v28)
    {
      v29 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
      v30 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v31 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v32 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v33 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      *v29 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_challengeDefinitionID];
      *(v29 + 1) = v28;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      v34 = v29[32];
      v29[32] = 0;
LABEL_31:

      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v33;
      v54 = v34;
LABEL_32:
      sub_100030C94(v50, v51, v52, v53, v54);
      v55 = OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_currentGame;
      v56 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_currentGame];
      v57 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame);
      *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame) = v56;
      v58 = v56;

      v59 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_localPlayer];
      v60 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer);
      *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer) = v59;
      v61 = v59;

      v62 = *&v24[v55];
      if (v62)
      {
        v63 = [v62 bundleIdentifier];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      v67 = (v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID);
      v68 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID);
      *v67 = v64;
      v67[1] = v66;

      v69 = *&v24[v55];
      if (v69)
      {
        v70 = [v69 adamID];
        v71 = [v70 stringValue];

        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      v75 = (v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
      v76 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
      *v75 = v72;
      v75[1] = v74;

      sub_10003D490(v27, a3, a4);

LABEL_39:
      return;
    }

    v43 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_activityInstanceID + 8];
    v44 = &v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_gameActivityDefinitionID];
    v45 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_gameActivityDefinitionID + 8];
    if (v43)
    {
      if (v45)
      {
        v46 = *v44;
        v47 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
        v30 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        v31 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        v32 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        v33 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        *v47 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_activityInstanceID];
        *(v47 + 1) = v43;
        *(v47 + 2) = v46;
        *(v47 + 3) = v45;
        v34 = v47[32];
        v47[32] = 2;

        goto LABEL_31;
      }
    }

    else if (v45)
    {
      v48 = *v44;
      v49 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
      v30 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v31 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v32 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v33 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      *v49 = v48;
      *(v49 + 1) = v45;
      *(v49 + 2) = 0;
      *(v49 + 3) = 0;
      v34 = v49[32];
      v49[32] = 1;
      goto LABEL_31;
    }

    v77 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
    v50 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    v51 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    v52 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    v53 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    *v77 = 6;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = 0;
    v54 = v77[32];
    v77[32] = 3;
    goto LABEL_32;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "showPlayTogether: Unexpected type encountered for initial state dictionary", v42, 2u);
  }
}