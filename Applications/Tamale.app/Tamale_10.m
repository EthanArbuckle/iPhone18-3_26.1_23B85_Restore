BOOL sub_1001151BC()
{
  v1 = v0;
  v2 = type metadata accessor for AppConfiguration();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A0);
  State.wrappedValue.getter();
  v7 = &v5[*(v3 + 28)];
  v8 = v7[*(type metadata accessor for CameraControllerConfiguration(0) + 60)];
  sub_10013E658(v5, type metadata accessor for AppConfiguration);
  if (v8 == 4)
  {
    v9 = (v1 + *(v6 + 52));
    v11 = *v9;
    v10 = v9[1];
    v19 = v11;
    v20 = v10;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v12 = v18[1];
    swift_getKeyPath();
    v19 = v12;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v14 = *(v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
    v15 = *(v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    sub_100060424(v13, v14, *(v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v15)
    {
      sub_1000616E4(v13, v14, v15);
      return 0;
    }

    return v13 == 1;
  }

  else
  {
    return v8 == 3;
  }
}

uint64_t sub_1001153A4()
{
  type metadata accessor for ContentView();
  dispatch thunk of UserDefaultsUtility.hasOnboardedApp.setter();
  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.restartLocationUpdatesIfNeeded()();

  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10011544C()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  return sub_1000F9C44();
}

uint64_t sub_1001154D4()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
  ConfigStorage.hasOnboardedACME.setter();

  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return sub_100115604();
}

uint64_t sub_100115604()
{
  v1 = type metadata accessor for ContentView();
  v58 = *(v1 - 8);
  __chkstk_darwin(v1);
  v60 = v2;
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v3 - 8);
  v59 = &v52 - v4;
  v5 = type metadata accessor for AskAcmeRequirement();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000033A8(&qword_1001DBBB0);
  v9 = __chkstk_darwin(v56);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v55 = &v52 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v52 - v14;
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = sub_1000033A8(&qword_1001D6DC0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v52 - v20;
  v66 = v1;
  v21 = *(v1 + 52);
  v69 = v0;
  v22 = (v0 + v21);
  v24 = *v22;
  v23 = v22[1];
  v71 = *v22;
  v72 = v23;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v25 = v70;
  swift_getKeyPath();
  v71 = v25;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v27 = *(v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v28 = *(v25 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v28 == 1 || v28 == 3 && v26 == 2 && !v27)
  {
    sub_100060424(v26, v27, v28);
    static LoggingSignposter.cameraControllerPause.getter();
    v52 = v18;
    v53 = v24;
    default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
    v24 = v53;
    LoggingSignposter.emitEvent(_:shouldLog:)();
    v71 = 2;
    LOBYTE(v72) = 2;
    sub_1000033A8(&qword_1001D6DC8);
    v29 = v54;
    AsyncStream.Continuation.yield(_:)();
    (*(v19 + 8))(v29, v52);
  }

  type metadata accessor for AskAcmeRequirementManager();
  v71 = v24;
  v72 = v23;
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
  ConfigStorage.hasOnboardedACME.getter();

  AskAcmeRequirementManager.__allocating_init(hasOnboardedACME:)();
  dispatch thunk of AskAcmeRequirementManager.nextRequirement.getter();
  v30 = v62;
  static Log.acme.getter();
  sub_1000138BC(v17, v15, &qword_1001DBBB0);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v71 = v34;
    *v33 = 136446210;
    sub_1000138BC(v15, v55, &qword_1001DBBB0);
    v35 = String.init<A>(describing:)();
    v36 = v15;
    v38 = v37;
    sub_10001370C(v36, &qword_1001DBBB0);
    v39 = sub_1000E0FE0(v35, v38, &v71);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Next enablement requirement: %{public}s", v33, 0xCu);
    sub_100006B44(v34);
  }

  else
  {

    sub_10001370C(v15, &qword_1001DBBB0);
  }

  (*(v63 + 8))(v30, v64);
  v41 = v68;
  v40 = v69;
  dispatch thunk of UserDefaultsUtility.hasPresentedMontaraRestrictionWarning.setter();
  v42 = v65;
  sub_1000138BC(v17, v65, &qword_1001DBBB0);
  v43 = v67;
  if ((*(v67 + 48))(v42, 1, v41) == 1)
  {
    sub_10001370C(v42, &qword_1001DBBB0);
    v44 = type metadata accessor for TaskPriority();
    v45 = v59;
    (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
    v46 = v61;
    sub_10013DAC8(v40, v61, type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v47 = static MainActor.shared.getter();
    v48 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v46, v49 + v48, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v45, &unk_10017C048, v49);
  }

  else
  {
    v50 = v57;
    (*(v43 + 32))(v57, v42, v41);
    sub_10012A070(v50);

    (*(v43 + 8))(v50, v41);
  }

  return sub_10001370C(v17, &qword_1001DBBB0);
}

uint64_t sub_100115F10(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DBBA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = (a1 + *(type metadata accessor for ContentView() + 52));
  v7 = *v5;
  v6 = v5[1];
  v16 = v7;
  v17 = v6;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
  ConfigStorage.hasOnboardedImageSearch.setter();

  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.bar.getter();

  v8 = NewBarModel.search.getter();

  Bindable.wrappedValue.getter();
  v9 = NewSaliencyModel.targetEntity.getter();

  v10 = enum case for ActionAnalytics.ActionSource.dedicatedButton(_:);
  v11 = type metadata accessor for ActionAnalytics.ActionSource();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_100137530(v8, v9, v4);

  sub_10001370C(v4, &qword_1001DBBA8);
  v15 = a1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1001161D0(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10013DAC8(a1, v5, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v5, v12 + v11, type metadata accessor for ContentView);
  sub_1000154EC(0, 0, v8, &unk_10017C060, v12);
}

uint64_t sub_1001163B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1001164A4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 7, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_1001164A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100116704;
  }

  else
  {
    v2 = sub_1001165B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001165B8()
{
  *(v0 + 57) = *(v0 + 56);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100116638, v2, v1);
}

uint64_t sub_100116638()
{
  v1 = *(v0 + 57);

  if (v1 == 1)
  {
    v2 = *(v0 + 16);
    *(swift_task_alloc() + 16) = v2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100116704()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001439E0, v1, v0);
}

uint64_t sub_100116788()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  return State.wrappedValue.setter();
}

uint64_t sub_100116804()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100116864()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  return sub_1000F9A10(0);
}

BOOL sub_100116914()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v0 = NewSaliencyModel.isAskingMontara.getter();

  result = 0;
  if ((v0 & 1) == 0)
  {
    Bindable.wrappedValue.getter();
    v1 = NewSaliencyModel.presentedEntity.getter();

    if (!v1)
    {
      return 1;
    }

    Bindable.wrappedValue.getter();
    v2 = NewSaliencyModel.shouldPeekForPresentedEntity.getter();

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001169F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_1000033A8(&qword_1001DC1F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v85 - v4;
  v6 = sub_1000033A8(&qword_1001DC200);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v85 - v8;
  v10 = sub_1000033A8(&qword_1001DC208);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v88 = &v85 - v12;
  v13 = sub_1000033A8(&qword_1001DC210);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v89 = &v85 - v15;
  v91 = sub_1000033A8(&qword_1001DC218) - 8;
  v16 = __chkstk_darwin(v91);
  v92 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v85 - v19;
  __chkstk_darwin(v18);
  v97 = &v85 - v21;
  v22 = sub_1000033A8(&qword_1001DC220);
  v23 = __chkstk_darwin(v22 - 8);
  v90 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = (&v85 - v25);
  v27 = sub_1000033A8(&qword_1001DC228);
  v28 = __chkstk_darwin(v27 - 8);
  v87 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v85 - v30;
  v32 = sub_1000033A8(&qword_1001DC230);
  v33 = __chkstk_darwin(v32 - 8);
  v94 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v96 = &v85 - v35;
  sub_100117210(&v85 - v35);
  *v31 = static HorizontalAlignment.center.getter();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v95 = v31;
  v36 = sub_1000033A8(&qword_1001DC238);
  sub_10011A404(a1, &v31[*(v36 + 44)]);
  *v26 = static Alignment.center.getter();
  v26[1] = v37;
  v86 = v26;
  v38 = sub_1000033A8(&qword_1001DC240);
  sub_10011791C(a1, v26 + *(v38 + 44));
  *v5 = static VerticalAlignment.bottom.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v39 = sub_1000033A8(&qword_1001DC248);
  sub_1001184AC(a1, &v5[*(v39 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v5, v9, &qword_1001DC1F8);
  v40 = &v9[*(v7 + 44)];
  v41 = v103;
  *(v40 + 4) = v102;
  *(v40 + 5) = v41;
  *(v40 + 6) = v104;
  v42 = v99;
  *v40 = v98;
  *(v40 + 1) = v42;
  v43 = v101;
  *(v40 + 2) = v100;
  *(v40 + 3) = v43;
  LOBYTE(v5) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v88;
  sub_10002091C(v9, v88, &qword_1001DC200);
  v53 = v52 + *(v11 + 44);
  *v53 = v5;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  LOBYTE(v5) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v52;
  v63 = v89;
  sub_10002091C(v62, v89, &qword_1001DC208);
  v64 = v63 + *(v14 + 44);
  *v64 = v5;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  LOBYTE(v5) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_10002091C(v63, v20, &qword_1001DC210);
  v73 = &v20[*(v91 + 44)];
  *v73 = v5;
  *(v73 + 1) = v66;
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
  *(v73 + 4) = v72;
  v73[40] = 0;
  v74 = v20;
  v75 = v97;
  sub_10002091C(v74, v97, &qword_1001DC218);
  v76 = v94;
  sub_1000138BC(v96, v94, &qword_1001DC230);
  v77 = v87;
  sub_1000138BC(v95, v87, &qword_1001DC228);
  v78 = v86;
  v79 = v90;
  sub_1000138BC(v86, v90, &qword_1001DC220);
  v80 = v75;
  v81 = v92;
  sub_1000138BC(v80, v92, &qword_1001DC218);
  v82 = v93;
  sub_1000138BC(v76, v93, &qword_1001DC230);
  v83 = sub_1000033A8(&qword_1001DC250);
  sub_1000138BC(v77, v82 + v83[12], &qword_1001DC228);
  sub_1000138BC(v79, v82 + v83[16], &qword_1001DC220);
  sub_1000138BC(v81, v82 + v83[20], &qword_1001DC218);
  sub_10001370C(v97, &qword_1001DC218);
  sub_10001370C(v78, &qword_1001DC220);
  sub_10001370C(v95, &qword_1001DC228);
  sub_10001370C(v96, &qword_1001DC230);
  sub_10001370C(v81, &qword_1001DC218);
  sub_10001370C(v79, &qword_1001DC220);
  sub_10001370C(v77, &qword_1001DC228);
  return sub_10001370C(v94, &qword_1001DC230);
}

uint64_t sub_100117210@<X0>(uint64_t a1@<X8>)
{
  v78 = sub_1000033A8(&qword_1001DC380);
  __chkstk_darwin(v78);
  v3 = &v67 - v2;
  v81 = sub_1000033A8(&qword_1001DC388);
  __chkstk_darwin(v81);
  v79 = &v67 - v4;
  v80 = sub_1000033A8(&qword_1001DC390);
  __chkstk_darwin(v80);
  v6 = &v67 - v5;
  v7 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  v10 = type metadata accessor for AppConfiguration();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A0);
  State.wrappedValue.getter();
  v14 = *(v11 + 28);
  v15 = type metadata accessor for CameraControllerConfiguration(0);
  sub_1000138BC(&v13[v14 + *(v15 + 68)], v9, &qword_1001D8020);
  sub_10013E658(v13, type metadata accessor for AppConfiguration);
  v16 = type metadata accessor for URL();
  LODWORD(v14) = (*(*(v16 - 8) + 48))(v9, 1, v16);
  sub_10001370C(v9, &qword_1001D8020);
  if (v14 == 1 && (type metadata accessor for LocationsHandler(), static LocationsHandler.shared.getter(), v17 = dispatch thunk of LocationsHandler.isLocationSimulationActive.getter(), , (v17 & 1) != 0))
  {
    static Font.subheadline.getter();
    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;

    static Font.Weight.medium.getter();
    v23 = Text.fontWeight(_:)();
    v75 = v24;
    v76 = v23;
    v26 = v25;
    v74 = v27;
    sub_100020D44(v18, v20, v22 & 1);

    KeyPath = swift_getKeyPath();
    v73 = static Color.white.getter();
    v85 = v26 & 1;
    v84 = 0;
    v71 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v68 = v85;
    v69 = v84;
    v82 = 0;
    v70 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v83 = 0;
    v44 = static Color.red.getter();
    v45 = &v3[*(sub_1000033A8(&qword_1001DC3B0) + 36)];
    v46 = sub_1000033A8(&qword_1001D6C08);
    v47 = *(v46 + 52);
    v48 = enum case for RoundedCornerStyle.continuous(_:);
    v49 = type metadata accessor for RoundedCornerStyle();
    v50 = *(*(v49 - 8) + 104);
    v77 = a1;
    v50(v45 + v47, v48, v49);
    *v45 = v44;
    *(v45 + *(v46 + 56)) = 256;
    v51 = v75;
    *v3 = v76;
    *(v3 + 1) = v51;
    v3[16] = v68;
    v52 = KeyPath;
    *(v3 + 3) = v74;
    *(v3 + 4) = v52;
    *(v3 + 5) = 1;
    v3[48] = v69;
    *(v3 + 7) = v73;
    v3[64] = v71;
    *(v3 + 9) = v29;
    *(v3 + 10) = v31;
    *(v3 + 11) = v33;
    *(v3 + 12) = v35;
    v3[104] = 0;
    v3[112] = v70;
    *(v3 + 15) = v37;
    *(v3 + 16) = v39;
    *(v3 + 17) = v41;
    *(v3 + 18) = v43;
    v3[152] = 0;
    v53 = static Alignment.center.getter();
    v55 = v54;
    v56 = &v3[*(v78 + 36)];
    v50(v56, v48, v49);
    static Color.red.getter();
    v57 = Color.opacity(_:)();

    v58 = &v56[*(sub_1000033A8(&qword_1001D6BA0) + 36)];
    *v58 = v57;
    *(v58 + 8) = xmmword_100175CA0;
    *(v58 + 3) = 0x402E000000000000;
    static UnitPoint.center.getter();
    v60 = v59;
    v62 = v61;
    v63 = &v56[*(sub_1000033A8(&qword_1001D6C28) + 36)];
    *v63 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
    v63[1].i64[0] = v60;
    v63[1].i64[1] = v62;
    v64 = &v56[*(sub_1000033A8(&qword_1001D6C30) + 36)];
    *v64 = v53;
    v64[1] = v55;
    sub_10013F66C();
    v65 = v79;
    View.accessibilityIdentifier(_:)();
    sub_10001370C(v3, &qword_1001DC380);
    sub_1000138BC(v65, v6, &qword_1001DC388);
    swift_storeEnumTagMultiPayload();
    sub_10013F5B0();
    _ConditionalContent<>.init(storage:)();
    return sub_10001370C(v65, &qword_1001DC388);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10013F5B0();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10011791C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v65 = type metadata accessor for SalientActionButton();
  __chkstk_darwin(v65);
  v64 = (v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000033A8(&qword_1001DC2A8);
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v63 = v61 - v5;
  v6 = sub_1000033A8(&qword_1001DC2B0);
  v7 = __chkstk_darwin(v6 - 8);
  v74 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = v61 - v9;
  v10 = type metadata accessor for SuggestedActionsDial();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = __chkstk_darwin(v10);
  v71 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = v61 - v13;
  v14 = type metadata accessor for ContentView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10013DAC8(a1, v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = *(v15 + 80);
  v61[1] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  v62 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100136D64(v62, v19 + ((v18 + 32) & ~v18), type metadata accessor for ContentView);
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v23 = v78;
  v22 = v79;
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v24 = *(a1 + *(v14 + 292));

  v25 = v24;
  default argument 3 of SuggestedActionsDial.init(model:sheetAssistant:isActive:sheetProgressOpacity:)();
  v66 = v22;
  v67 = v23;
  SuggestedActionsDial.init(model:sheetAssistant:isActive:sheetProgressOpacity:)();
  v26 = a1 + *(v14 + 300);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v78) = v27;
  v79 = v28;
  sub_1000033A8(&qword_1001DBB88);
  State.wrappedValue.getter();
  if (v77)
  {
    v29 = 1;
    v31 = v68;
    v30 = v69;
    v32 = v70;
  }

  else
  {
    Bindable.wrappedValue.getter();
    v33 = v78;
    v34 = Namespace.wrappedValue.getter();
    v35 = v62;
    sub_10013DAC8(a1, v62, type metadata accessor for ContentView);
    v36 = swift_allocObject();
    sub_100136D64(v35, v36 + ((v18 + 16) & ~v18), type metadata accessor for ContentView);
    KeyPath = swift_getKeyPath();
    v38 = v64;
    *v64 = KeyPath;
    sub_1000033A8(&qword_1001D6228);
    swift_storeEnumTagMultiPayload();
    v39 = v65;
    *(v38 + *(v65 + 20)) = v33;
    *(v38 + v39[6]) = v34;
    *(v38 + v39[7]) = v25;
    v40 = (v38 + v39[8]);
    *v40 = sub_10013D9EC;
    v40[1] = v36;
    v41 = v38 + v39[9];
    v77 = 0;
    v42 = v25;
    State.init(wrappedValue:)();
    v43 = v79;
    *v41 = v78;
    *(v41 + 8) = v43;
    v44 = v38 + v39[10];
    v77 = 0;
    State.init(wrappedValue:)();
    v45 = v79;
    *v44 = v78;
    *(v44 + 8) = v45;
    v46 = v38 + v39[11];
    v77 = 0;
    State.init(wrappedValue:)();
    v47 = v79;
    *v46 = v78;
    *(v46 + 8) = v47;
    Solarium.init()();
    sub_1000033A8(&qword_1001DC2C0);
    sub_10013FB34(&qword_1001DC2C8, type metadata accessor for SalientActionButton);
    sub_10013DA0C();
    v48 = v63;
    View.staticIf<A, B>(_:then:)();
    sub_10013E658(v38, type metadata accessor for SalientActionButton);
    v31 = v68;
    v49 = v69;
    v50 = v70;
    (*(v69 + 32))(v68, v48, v70);
    v29 = 0;
    v32 = v50;
    v30 = v49;
  }

  (*(v30 + 56))(v31, v29, 1, v32);
  v52 = v71;
  v51 = v72;
  v53 = *(v72 + 16);
  v54 = v76;
  v55 = v73;
  v53(v71, v76, v73);
  v56 = v74;
  sub_1000138BC(v31, v74, &qword_1001DC2B0);
  v57 = v75;
  v53(v75, v52, v55);
  v58 = sub_1000033A8(&qword_1001DC2B8);
  sub_1000138BC(v56, &v57[*(v58 + 48)], &qword_1001DC2B0);

  sub_10001370C(v31, &qword_1001DC2B0);
  v59 = *(v51 + 8);
  v59(v54, v55);
  sub_10001370C(v56, &qword_1001DC2B0);
  return (v59)(v52, v55);
}

uint64_t sub_100118118@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB88);
  result = State.wrappedValue.getter();
  if (v4 == 1)
  {
    sub_1000033A8(&qword_1001D3E88);
    result = State.wrappedValue.getter();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1001181E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DBBA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Performing action from hero pill", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = enum case for ActionAnalytics.ActionSource.pinContainer(_:);
  v15 = type metadata accessor for ActionAnalytics.ActionSource();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_100137530(a2, a1, v6);
  return sub_10001370C(v6, &qword_1001DBBA8);
}

uint64_t sub_10011842C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static BackdropGroups.contentViewButtons.getter();
  v6 = v5;
  sub_10013DAC8(a1, a2, type metadata accessor for SalientActionButton);
  result = sub_1000033A8(&qword_1001DC2C0);
  v8 = a2 + *(result + 36);
  *v8 = 1;
  *(v8 + 8) = v4;
  *(v8 + 16) = v6;
  return result;
}

uint64_t sub_1001184AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = type metadata accessor for Date();
  v3 = *(v50 - 8);
  v4 = __chkstk_darwin(v50);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v45 - v7;
  v9 = type metadata accessor for ContentView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v47 = type metadata accessor for ModernShutterButton();
  __chkstk_darwin(v47);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000033A8(&qword_1001DC258) - 8;
  __chkstk_darwin(v52);
  v48 = &v45 - v15;
  v53 = sub_1000033A8(&qword_1001DC260) - 8;
  __chkstk_darwin(v53);
  v51 = &v45 - v16;
  v54 = sub_1000033A8(&qword_1001DC268);
  __chkstk_darwin(v54);
  v49 = &v45 - v17;
  v46 = a1;
  v18 = Namespace.wrappedValue.getter();
  sub_10013DAC8(a1, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  sub_100136D64(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ContentView);
  type metadata accessor for CameraController();
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  *v14 = Environment.init<A>(_:)();
  v14[8] = v21 & 1;
  *(v14 + 2) = v18;
  *(v14 + 3) = sub_10013D49C;
  *(v14 + 4) = v20;
  LOBYTE(v56) = 0;
  State.init(wrappedValue:)();
  v22 = v58;
  v14[40] = v57;
  *(v14 + 6) = v22;
  LOBYTE(v56) = 0;
  State.init(wrappedValue:)();
  v23 = v58;
  v14[56] = v57;
  *(v14 + 8) = v23;
  static Date.distantPast.getter();
  v24 = v50;
  (*(v3 + 16))(v6, v8, v50);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v8, v24);
  v25 = (v46 + *(v10 + 60));
  v27 = *v25;
  v26 = v25[1];
  v57 = v27;
  v58 = v26;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  sub_10013FB34(&qword_1001DC270, type metadata accessor for ModernShutterButton);
  v28 = v48;
  View.environment<A>(_:)();

  sub_10013E658(v14, type metadata accessor for ModernShutterButton);
  LOBYTE(v18) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28 + *(v52 + 44);
  *v29 = v18;
  *(v29 + 8) = v30;
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v33;
  *(v29 + 40) = 0;
  if (sub_100116914())
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.9;
  }

  static UnitPoint.center.getter();
  v36 = v35;
  v38 = v37;
  v39 = v51;
  sub_10002091C(v28, v51, &qword_1001DC258);
  v40 = v39 + *(v53 + 44);
  *v40 = v34;
  *(v40 + 8) = v34;
  *(v40 + 16) = v36;
  *(v40 + 24) = v38;
  if (sub_100116914())
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 7.0;
  }

  v42 = v49;
  sub_10002091C(v39, v49, &qword_1001DC260);
  v43 = v42 + *(v54 + 36);
  *v43 = v41;
  *(v43 + 8) = 0;
  Solarium.init()();
  sub_1000033A8(&qword_1001DC278);
  sub_10013D4B4();
  sub_10013D708();
  View.staticIf<A, B>(_:then:)();
  return sub_10001370C(v42, &qword_1001DC268);
}

unint64_t sub_100118B08(uint64_t a1, uint64_t a2)
{
  v138 = a1;
  v3 = sub_1000033A8(&qword_1001DBBA8);
  __chkstk_darwin(v3 - 8);
  v132 = &v117 - v4;
  v5 = type metadata accessor for Logger();
  v142 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v135 = &v117 - v10;
  v11 = __chkstk_darwin(v9);
  v131 = &v117 - v12;
  __chkstk_darwin(v11);
  v119 = &v117 - v13;
  v137 = type metadata accessor for ActionAnalytics.ActionType();
  v139 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContentView();
  v128 = *(v15 - 1);
  __chkstk_darwin(v15);
  v129 = v16;
  v130 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v17 - 8);
  v134 = &v117 - v18;
  v19 = sub_1000033A8(&qword_1001DBAF8);
  v124 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v126 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v21;
  __chkstk_darwin(v20);
  v133 = &v117 - v22;
  v140 = type metadata accessor for CameraControllerConfiguration(0);
  v123 = *(v140 - 8);
  v23 = __chkstk_darwin(v140);
  v125 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v24;
  __chkstk_darwin(v23);
  v127 = &v117 - v25;
  v26 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v26 - 8);
  v28 = &v117 - v27;
  v141 = type metadata accessor for AppConfiguration();
  v29 = __chkstk_darwin(v141);
  v120 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v117 - v31;
  v33 = type metadata accessor for LoggingSignposter();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v15[38];
  v143 = a2;
  v38 = (a2 + v37);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v145) = v39;
  v146 = v40;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v144)
  {
    static Log.ui.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Ignoring shutter button while content is blurred", v43, 2u);
    }

    return (*(v142 + 8))(v8, v5);
  }

  v118 = v5;
  static LoggingSignposter.ui.getter();
  static LoggingSignposter.shutterButton.getter();
  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  LoggingSignposter.emitEvent(_:shouldLog:)();
  (*(v34 + 8))(v36, v33);
  v45 = v15[10];
  sub_1000033A8(&qword_1001DB7A0);
  v46 = v143;
  v117 = v45;
  State.wrappedValue.getter();
  sub_1000138BC(&v32[*(v141 + 20) + *(v140 + 68)], v28, &qword_1001D8020);
  sub_10013E658(v32, type metadata accessor for AppConfiguration);
  v47 = type metadata accessor for URL();
  v48 = (*(*(v47 - 8) + 48))(v28, 1, v47);
  sub_10001370C(v28, &qword_1001D8020);
  if (v48 != 1)
  {
    v49 = (v46 + v15[13]);
    v51 = *v49;
    v50 = v49[1];
    v145 = v51;
    v146 = v50;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v52 = v144;
    swift_getKeyPath();
    v145 = v52;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState;
    v54 = *(v52 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v54 == 1)
    {

      v46 = v143;
    }

    else
    {
      v79 = *v53;
      v78 = *(v53 + 8);
      sub_100060424(*v53, v78, *(v53 + 16));

      v46 = v143;
      v80 = v141;
      if (v54 != 3 || v79 != 2 || v78)
      {
        v81 = v140;
        sub_1000616E4(v79, v78, v54);
        v82 = v120;
        State.wrappedValue.getter();
        v83 = v127;
        sub_10013DAC8(v82 + *(v80 + 20), v127, type metadata accessor for CameraControllerConfiguration);
        sub_10013E658(v82, type metadata accessor for AppConfiguration);
        v84 = v123 + 56;
        v85 = v133;
        (*(v123 + 56))(v133, 1, 1, v81);
        v86 = type metadata accessor for TaskPriority();
        (*(*(v86 - 8) + 56))(v134, 1, 1, v86);
        v87 = v85;
        v88 = v126;
        sub_1000138BC(v87, v126, &qword_1001DBAF8);
        v89 = v130;
        sub_10013DAC8(v46, v130, type metadata accessor for ContentView);
        v90 = v125;
        sub_10013DAC8(v83, v125, type metadata accessor for CameraControllerConfiguration);
        type metadata accessor for MainActor();
        v91 = static MainActor.shared.getter();
        v92 = (*(v124 + 80) + 32) & ~*(v124 + 80);
        v93 = (v122 + *(v128 + 80) + v92) & ~*(v128 + 80);
        v94 = (v129 + *(v84 + 24) + v93) & ~*(v84 + 24);
        v95 = swift_allocObject();
        *(v95 + 16) = v91;
        *(v95 + 24) = &protocol witness table for MainActor;
        sub_10002091C(v88, v95 + v92, &qword_1001DBAF8);
        sub_100136D64(v89, v95 + v93, type metadata accessor for ContentView);
        sub_100136D64(v90, v95 + v94, type metadata accessor for CameraControllerConfiguration);
        sub_100044AB8(0, 0, v134, &unk_10017C2C8, v95);

        sub_10001370C(v133, &qword_1001DBAF8);
        sub_10013E658(v83, type metadata accessor for CameraControllerConfiguration);
        return sub_1001133B0();
      }
    }
  }

  v55 = (v46 + v15[13]);
  v57 = *v55;
  v56 = v55[1];
  v145 = v57;
  v146 = v56;
  v141 = v56;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v58 = v144;
  swift_getKeyPath();
  v145 = v58;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = *(v58 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v59 = *(v58 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v61 = *(v58 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v60, v59, *(v58 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v61 == 1 || v61 == 3 && v60 == 2 && !v59)
  {
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    NewSaliencyModel.analytics.getter();

    v62 = v139;
    v63 = *(v139 + 104);
    v65 = v136;
    v64 = v137;
    v63(v136, enum case for ActionAnalytics.ActionType.shutterAction(_:), v137);
    dispatch thunk of SessionAnalytics.didPerform(_:from:)();

    v67 = *(v62 + 8);
    v66 = v62 + 8;
    v141 = v67;
    v67(v65, v64);
    Bindable.wrappedValue.getter();
    v68 = NewSaliencyModel.targetEntity.getter();

    result = NewEntityModel.preShutterActions.getter();
    if (result >> 62)
    {
      v96 = result;
      v97 = _CocoaArrayWrapper.endIndex.getter();
      result = v96;
      v139 = v66;
      if (v97)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v69 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v139 = v66;
      if (v69)
      {
LABEL_14:
        if ((result & 0xC000000000000001) != 0)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v70 = *(result + 32);
        }

        goto LABEL_32;
      }
    }

    v70 = 0;
LABEL_32:
    v98 = MKBGetDeviceLockState();
    if (v98)
    {
      v99 = v98 == 3;
    }

    else
    {
      v99 = 1;
    }

    v100 = !v99;
    if (v70)
    {
      v101 = v131;
      static Log.ui.getter();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Shutter button is capturing with hero action", v104, 2u);
      }

      (*(v142 + 8))(v101, v118);
      v105 = NewActionModel.isStreamingAction.getter();
      if ((v105 & 1) == 0)
      {
        __chkstk_darwin(v105);
        *(&v117 - 4) = v143;
        *(&v117 - 24) = v100;
        *(&v117 - 2) = v68;
        *(&v117 - 1) = v70;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }

      v106 = enum case for ActionAnalytics.ActionSource.shutterButton(_:);
      v107 = type metadata accessor for ActionAnalytics.ActionSource();
      v108 = *(v107 - 8);
      v109 = v132;
      (*(v108 + 104))(v132, v106, v107);
      (*(v108 + 56))(v109, 0, 1, v107);
      sub_100137530(v70, v68, v109);

      return sub_10001370C(v109, &qword_1001DBBA8);
    }

    else
    {
      v110 = v119;
      static Log.ui.getter();
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v111, v112, "Shutter button is capturing with no hero action", v113, 2u);
      }

      v114 = (*(v142 + 8))(v110, v118);
      __chkstk_darwin(v114);
      *(&v117 - 2) = v143;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      sub_100136E04();
      Bindable.wrappedValue.getter();
      NewSaliencyModel.analytics.getter();

      v116 = v136;
      v115 = v137;
      v63(v136, enum case for ActionAnalytics.ActionType.shutterNoAction(_:), v137);
      dispatch thunk of SessionAnalytics.didPerform(_:from:)();

      return (v141)(v116, v115);
    }
  }

  sub_1000616E4(v60, v59, v61);
  v71 = v135;
  static Log.ui.getter();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Shutter button requested resume", v74, 2u);
  }

  (*(v142 + 8))(v71, v118);
  sub_1001133B0();
  v145 = v57;
  v146 = v141;
  State.wrappedValue.getter();
  v75 = v144;
  swift_getKeyPath();
  v145 = v75;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = (v75 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v77 = *(v75 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v77 != 1 && (v77 != 3 || v76[1] || *v76 != 2))
  {
    sub_10014FC70();
  }

  sub_10010A43C(0);
  return sub_10010A6A8();
}

uint64_t sub_100119D8C(uint64_t a1, char a2)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB88);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001D3E88);
  result = State.wrappedValue.setter();
  if ((a2 & 1) == 0)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100119EE0()
{
  NewEntityModel.prepareForPresentationOfAction(_:)();
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();

  NewSaliencyModel.presentedEntity.setter();
}

uint64_t sub_100119F6C()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB88);
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001D3E88);
  return State.wrappedValue.setter();
}

uint64_t sub_10011A040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static BackdropGroups.contentViewButtons.getter();
  v6 = v5;
  sub_1000138BC(a1, a2, &qword_1001DC268);
  result = sub_1000033A8(&qword_1001DC278);
  v8 = a2 + *(result + 36);
  *v8 = 1;
  *(v8 + 8) = v4;
  *(v8 + 16) = v6;
  return result;
}

uint64_t sub_10011A0BC()
{
  type metadata accessor for AskAcmeRequirementManager();
  result = static AskAcmeRequirementManager.montaraEnabled.getter();
  if (result)
  {
    return sub_100115604();
  }

  return result;
}

uint64_t sub_10011A0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = type metadata accessor for ContentView();
  v13[4] = sub_10013FB34(&qword_1001DC1F0, type metadata accessor for ContentView);
  v8 = sub_1000D5748(v13);
  sub_10013DAC8(a1, v8, type metadata accessor for ContentView);
  (*(v5 + 104))(v7, enum case for RequestType.visualIntelligenceCamera(_:), v4);
  GenerativeAssistantSettingsOnboarding.init(enablementDelegate:requestType:)();
  v9 = static SafeAreaRegions.all.getter();
  LOBYTE(a1) = static Edge.Set.all.getter();
  result = sub_1000033A8(&qword_1001DC180);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = a1;
  return result;
}

uint64_t sub_10011A280(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(__chkstk_darwin(v2 - 8) + 80);
  v6 = *v5;
  v7 = *(v5 + 8);
  v11[32] = v6;
  v12 = v7;
  sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  sub_10013DAC8(a1, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContentView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_100136D64(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ContentView);
  return SiriSetupViewController.init(showSiriOnboarding:completion:)();
}

uint64_t sub_10011A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v58 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v58);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for RecordingDebugButton();
  __chkstk_darwin(v60);
  v61 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_1000033A8(&qword_1001DC2D8);
  v6 = *(v70 - 8);
  __chkstk_darwin(v70);
  v59 = &v56 - v7;
  v8 = sub_1000033A8(&qword_1001DC2E0);
  v9 = __chkstk_darwin(v8 - 8);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v56 - v11;
  v69 = type metadata accessor for ContentView();
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v69);
  v15 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v64 = sub_1000033A8(&qword_1001DC2E8);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v56 - v18;
  v19 = sub_1000033A8(&qword_1001DC2F0);
  v20 = __chkstk_darwin(v19 - 8);
  v66 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v24 = sub_10011AE78();
  if (v24 == 4)
  {
    sub_10011B410(v77);
    sub_10013DAC8(a1, v17, type metadata accessor for ContentView);
    v61 = v6;
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = swift_allocObject();
    sub_100136D64(v17, v26 + v25, type metadata accessor for ContentView);
    sub_10013DAC8(a1, v15, type metadata accessor for ContentView);
    v27 = swift_allocObject();
    sub_100136D64(v15, v27 + v25, type metadata accessor for ContentView);
    *&v74 = v78;
    v71 = v77[0];
    v72 = v77[1];
    v73 = v77[2];
    *(&v74 + 1) = sub_10013E6B8;
    *&v75 = v26;
    *(&v75 + 1) = sub_10013E6D0;
    v76 = v27;
    v28 = (a1 + *(v69 + 52));
    v30 = *v28;
    v29 = v28[1];
    *&v79[0] = v30;
    *(&v79[0] + 1) = v29;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    type metadata accessor for CameraController();
    sub_10013E6E8();
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    v31 = v62;
    v6 = v61;
    View.environment<A>(_:)();

    v79[2] = v73;
    v79[3] = v74;
    v79[4] = v75;
    v80 = v76;
    v79[0] = v71;
    v79[1] = v72;
    sub_10013E73C(v79);
    v32 = v63;
    v33 = v64;
    (*(v63 + 32))(v23, v31, v64);
    v34 = 1;
    (*(v32 + 56))(v23, 0, 1, v33);
    v35 = v67;
  }

  else
  {
    v36 = v24;
    v57 = v12;
    v62 = v17;
    v37 = a1;
    v34 = 1;
    (*(v63 + 56))(v23, 1, 1, v64);
    v35 = v67;
    if ((v36 - 3) >= 2u)
    {
      sub_1000033A8(&qword_1001DB7A0);
      v56 = v37;
      State.wrappedValue.getter();
      v38 = &v4[*(v58 + 20)];
      LODWORD(v64) = v38[*(type metadata accessor for CameraControllerConfiguration(0) + 24)];
      sub_10013E658(v4, type metadata accessor for AppConfiguration);
      v39 = v62;
      sub_10013DAC8(v37, v62, type metadata accessor for ContentView);
      v40 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v41 = swift_allocObject();
      sub_100136D64(v39, v41 + v40, type metadata accessor for ContentView);
      *(v41 + v40 + v13) = v36;
      KeyPath = swift_getKeyPath();
      v43 = v61;
      *v61 = KeyPath;
      sub_1000033A8(&qword_1001D4DC0);
      swift_storeEnumTagMultiPayload();
      v44 = v60;
      v45 = v43 + *(v60 + 20);
      *v45 = swift_getKeyPath();
      *(v45 + 8) = 0;
      *(v43 + v44[6]) = v36;
      *(v43 + v44[7]) = v64;
      v46 = (v43 + v44[8]);
      *v46 = sub_10013E580;
      v46[1] = v41;
      v47 = (v56 + *(v69 + 52));
      v49 = *v47;
      v48 = v47[1];
      *&v79[0] = v49;
      *(&v79[0] + 1) = v48;
      sub_1000033A8(&qword_1001DB780);
      State.wrappedValue.getter();
      type metadata accessor for CameraController();
      sub_10013FB34(&qword_1001DC300, type metadata accessor for RecordingDebugButton);
      sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
      v50 = v59;
      View.environment<A>(_:)();

      sub_10013E658(v43, type metadata accessor for RecordingDebugButton);
      (v6[4])(v35, v50, v70);
      v34 = 0;
    }
  }

  (v6[7])(v35, v34, 1, v70);
  v51 = v66;
  sub_1000138BC(v23, v66, &qword_1001DC2F0);
  v52 = v68;
  sub_1000138BC(v35, v68, &qword_1001DC2E0);
  v53 = v65;
  sub_1000138BC(v51, v65, &qword_1001DC2F0);
  v54 = sub_1000033A8(&qword_1001DC2F8);
  sub_1000138BC(v52, v53 + *(v54 + 48), &qword_1001DC2E0);
  sub_10001370C(v35, &qword_1001DC2E0);
  sub_10001370C(v23, &qword_1001DC2F0);
  sub_10001370C(v52, &qword_1001DC2E0);
  return sub_10001370C(v51, &qword_1001DC2F0);
}

uint64_t sub_10011AE78()
{
  v1 = sub_1000033A8(&qword_1001D8020);
  v2 = __chkstk_darwin(v1 - 8);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v48 = &v44 - v5;
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for AppConfiguration();
  v9 = __chkstk_darwin(v8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v47 = type metadata accessor for ContentView();
  v19 = v47[10];
  v20 = v0;
  v51 = sub_1000033A8(&qword_1001DB7A0);
  v52 = v19;
  State.wrappedValue.getter();
  v21 = v8;
  v22 = *(v8 + 20);
  v23 = type metadata accessor for CameraControllerConfiguration(0);
  sub_1000138BC(&v18[v22 + v23[17]], v7, &qword_1001D8020);
  sub_10013E658(v18, type metadata accessor for AppConfiguration);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v49 = *(v25 + 48);
  v50 = v25 + 48;
  LODWORD(v22) = v49(v7, 1, v24);
  sub_10001370C(v7, &qword_1001D8020);
  if (v22 != 1)
  {
    return 4;
  }

  if (qword_1001D31C8 != -1)
  {
    swift_once();
  }

  if ((byte_1001EB601 & 1) == 0)
  {
    State.wrappedValue.getter();
    v26 = v16[*(v21 + 20) + v23[13]];
    sub_10013E658(v16, type metadata accessor for AppConfiguration);
    if ((v26 & 1) == 0)
    {
      v27 = (v20 + v47[51]);
      v28 = *v27;
      v29 = *(v27 + 1);
      LOBYTE(v54) = v28;
      v55 = v29;
      sub_1000033A8(&qword_1001D3E88);
      State.wrappedValue.getter();
      if (v53 != 1)
      {
        return 3;
      }
    }
  }

  State.wrappedValue.getter();
  v30 = v48;
  sub_1000138BC(&v13[*(v21 + 20) + v23[21]], v48, &qword_1001D8020);
  sub_10013E658(v13, type metadata accessor for AppConfiguration);
  v31 = v49;
  v32 = v49(v30, 1, v24);
  sub_10001370C(v30, &qword_1001D8020);
  if (v32 == 1)
  {
    return 0;
  }

  v34 = v23;
  v35 = (v20 + v47[13]);
  v37 = *v35;
  v36 = v35[1];
  v54 = v37;
  v55 = v36;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v38 = v53;
  swift_getKeyPath();
  v54 = v38;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v40 = *(v38 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v41 = *(v38 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v39, v40, *(v38 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v41 < 2)
  {
    return 1;
  }

  if (v41 == 2)
  {
    sub_1000616E4(v39, v40, 2);
    return 1;
  }

  if (v39 | v40)
  {
    return 1;
  }

  v42 = v45;
  State.wrappedValue.getter();
  v43 = v46;
  sub_1000138BC(v42 + *(v21 + 20) + v34[21], v46, &qword_1001D8020);
  sub_10013E658(v42, type metadata accessor for AppConfiguration);
  LODWORD(v42) = v31(v43, 1, v24);
  sub_10001370C(v43, &qword_1001D8020);
  if (v42 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_10011B410@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v3 = *(v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v3 == 1)
  {
  }

  else
  {
    v9 = *v2;
    v10 = v2[1];
    sub_100060424(*v2, v10, *(v12 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

    if (v3 != 3 || (v9 == 2 ? (v11 = v10 == 0) : (v11 = 0), !v11))
    {
      result = sub_1000616E4(v9, v10, v3);
      v7 = 0;
      v5 = xmmword_10017B730;
      v8 = 0xE600000000000000;
      v6 = 0x646573756150;
      goto LABEL_10;
    }
  }

  v5 = xmmword_10017B720;
  v6 = 0x6E6979616C706552;
  v7 = 1;
  v8 = 0xAC000000A680E267;
LABEL_10:
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_10011B5A8(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  v44 = *(v2 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v2);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v46 = &v34 - v5;
  v6 = sub_1000033A8(&qword_1001DBAF8);
  v41 = *(v6 - 8);
  v40 = *(v41 + 64);
  v7 = __chkstk_darwin(v6 - 8);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v34 - v9;
  v36 = type metadata accessor for CameraControllerConfiguration(0);
  v47 = *(v36 - 8);
  v39 = *(v47 + 64);
  v10 = __chkstk_darwin(v36);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = type metadata accessor for AppConfiguration();
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  sub_1000033A8(&qword_1001DB7A0);
  State.wrappedValue.getter();
  v21 = &v20[*(v15 + 28)];
  v35 = v13;
  sub_10013DAC8(v21, v13, type metadata accessor for CameraControllerConfiguration);
  sub_10013E658(v20, type metadata accessor for AppConfiguration);
  State.wrappedValue.getter();
  v22 = v45;
  sub_10013DAC8(&v18[*(v15 + 28)], v45, type metadata accessor for CameraControllerConfiguration);
  sub_10013E658(v18, type metadata accessor for AppConfiguration);
  v23 = *(v47 + 56);
  v47 += 56;
  v23(v22, 0, 1, v36);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  v25 = v38;
  sub_1000138BC(v22, v38, &qword_1001DBAF8);
  v26 = v42;
  sub_10013DAC8(a1, v42, type metadata accessor for ContentView);
  v27 = v37;
  sub_10013DAC8(v13, v37, type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for MainActor();
  v28 = static MainActor.shared.getter();
  v29 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v30 = (v40 + *(v44 + 80) + v29) & ~*(v44 + 80);
  v31 = (v43 + *(v47 + 24) + v30) & ~*(v47 + 24);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = &protocol witness table for MainActor;
  sub_10002091C(v25, v32 + v29, &qword_1001DBAF8);
  sub_100136D64(v26, v32 + v30, type metadata accessor for ContentView);
  sub_100136D64(v27, v32 + v31, type metadata accessor for CameraControllerConfiguration);
  sub_100044AB8(0, 0, v46, &unk_10017C380, v32);

  sub_10001370C(v45, &qword_1001DBAF8);
  return sub_10013E658(v35, type metadata accessor for CameraControllerConfiguration);
}

uint64_t sub_10011BB08()
{
  v0 = type metadata accessor for AppConfiguration();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A0);
  State.wrappedValue.getter();
  v8 = *(v1 + 28);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  sub_10004E3A0(v6, &v3[v8 + *(v9 + 68)]);
  return State.wrappedValue.setter();
}

uint64_t sub_10011BC78(uint64_t a1, char a2)
{
  v4 = sub_1000033A8(&qword_1001D6DC0);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v28 - v5;
  v6 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A0);
  v32 = a1;
  State.wrappedValue.getter();
  sub_10013DAC8(&v11[*(v9 + 20)], v14, type metadata accessor for CameraControllerConfiguration);
  sub_10013E658(v11, type metadata accessor for AppConfiguration);
  if (a2)
  {
    if (a2 == 1)
    {
      v16 = (v32 + *(v15 + 52));
      v18 = *v16;
      v17 = v16[1];
      v34 = v18;
      v35 = v17;
      sub_1000033A8(&qword_1001DB780);
      State.wrappedValue.getter();
      v19 = v33;
      swift_getKeyPath();
      v34 = v19;
      sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v19 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
      v21 = *(v19 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
      v22 = *(v19 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
      if (v22 == 1 || v22 == 3 && v20 == 2 && !v21)
      {
        sub_100060424(v20, v21, v22);
        static LoggingSignposter.cameraControllerPause.getter();
        default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
        LoggingSignposter.emitEvent(_:shouldLog:)();
        v34 = 2;
        LOBYTE(v35) = 2;
        sub_1000033A8(&qword_1001D6DC8);
        v23 = v29;
        AsyncStream.Continuation.yield(_:)();
        (*(v30 + 8))(v23, v31);
      }

      sub_100136E04();
    }

    else
    {
      v25 = *(v12 + 84);
      sub_10001370C(&v14[v25], &qword_1001D8020);
      v26 = type metadata accessor for URL();
      (*(*(v26 - 8) + 56))(&v14[v25], 1, 1, v26);
    }
  }

  else
  {
    sub_1000F8FA8(7761773, 0xE300000000000000, 0, 0xE000000000000000, v8);
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    sub_10004E3A0(v8, &v14[*(v12 + 84)]);
  }

  State.wrappedValue.getter();
  sub_10013F4F8(v14, &v11[*(v9 + 20)]);
  State.wrappedValue.setter();
  return sub_10013E658(v14, type metadata accessor for CameraControllerConfiguration);
}

uint64_t sub_10011C148@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v58 = type metadata accessor for FocusSelectionConfiguration();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000033A8(&qword_1001DC458);
  __chkstk_darwin(v64);
  v62 = v55 - v4;
  v5 = sub_1000033A8(&qword_1001DC460);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = __chkstk_darwin(v5);
  v67 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v55 - v8;
  v9 = type metadata accessor for ContentView();
  v10 = (v9 - 8);
  v11 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ContentView;
  v72 = v13;
  v73 = v12;
  sub_10013DAC8(a1, v13, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v71 = *(v11 + 80);
  v15 = (v71 + 32) & ~v71;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  v61 = type metadata accessor for ContentView;
  sub_100136D64(v13, v16 + v15, type metadata accessor for ContentView);
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v20 = v76;
  v19 = v77;
  LODWORD(v59) = v78;
  v66 = *(a1 + v10[65]);
  v21 = v10[74];

  v22 = sub_1000033A8(&qword_1001DB778);
  v55[1] = v21;
  v55[0] = v22;
  Bindable.wrappedValue.getter();
  v65 = v76;
  v23 = *(a1 + v10[75]);
  v24 = a1 + v10[76];
  v25 = *v24;
  v26 = *(v24 + 8);
  v74 = v25;
  v75 = v26;

  v27 = v23;
  sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  v28 = a1 + v10[79];
  v29 = *v28;
  v30 = *(v28 + 8);
  v74 = v29;
  v75 = v30;
  State.projectedValue.getter();
  v31 = v72;
  v32 = v62;
  v65 = v19;
  v66 = v20;
  OverlayView.init(model:saliencyModel:sheetAssistant:isActive:isPresentationAllowed:isPresenting:content:)();
  v33 = static SafeAreaRegions.all.getter();
  LOBYTE(v19) = static Edge.Set.all.getter();
  v34 = v32 + *(sub_1000033A8(&qword_1001DC468) + 36);
  *v34 = v33;
  *(v34 + 8) = v19;
  v35 = a1 + v10[36];
  v36 = *(v35 + 8);
  LOBYTE(v76) = *v35;
  LOBYTE(v20) = v76;
  v77 = v36;
  sub_1000033A8(&qword_1001DBB70);
  State.wrappedValue.getter();
  *(v32 + *(v64 + 36)) = v74 == 3;
  LOBYTE(v76) = v20;
  v77 = v36;
  State.wrappedValue.getter();
  v59 = a1;
  sub_10013DAC8(a1, v31, v63);
  v37 = (v71 + 16) & ~v71;
  v38 = swift_allocObject();
  sub_100136D64(v31, v38 + v37, v61);
  sub_100141838();
  sub_10005D128();
  v39 = v60;
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v32, &qword_1001DC458);
  LOBYTE(v76) = v20;
  v77 = v36;
  State.wrappedValue.getter();
  if (v74 == 3 && (Bindable.wrappedValue.getter(), NewSaliencyModel.userSelection.getter(), , v40 = v56, FocusSelectionModel.focusSelectionConfiguration.getter(), , v41 = FocusSelectionConfiguration.showBoundingBoxes.getter(), (*(v57 + 8))(v40, v58), (v41 & 1) != 0))
  {
    v42 = v72;
    sub_10013DAC8(v59, v72, type metadata accessor for ContentView);
    v43 = swift_allocObject();
    sub_100136D64(v42, v43 + v37, type metadata accessor for ContentView);

    v44 = sub_10014197C;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v46 = v67;
  v45 = v68;
  v47 = *(v68 + 16);
  v48 = v39;
  v49 = v39;
  v50 = v69;
  v47(v67, v49, v69);
  v51 = v70;
  v47(v70, v46, v50);
  v52 = &v51[*(sub_1000033A8(&qword_1001DC490) + 48)];
  sub_100005630(v44);
  sub_100005640(v44);

  *v52 = v44;
  v52[1] = v43;
  v53 = *(v45 + 8);
  v53(v48, v50);
  sub_100005640(v44);
  return (v53)(v46, v50);
}

uint64_t sub_10011C92C@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB70);
  result = State.wrappedValue.getter();
  *a1 = v3 > 1u;
  return result;
}

uint64_t sub_10011C9B0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ContentView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D41B0);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  if (*a2 == 3)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_10013DAC8(a3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v14 = static MainActor.shared.getter();
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_100136D64(v8, v16 + v15, type metadata accessor for ContentView);
    sub_1000154EC(0, 0, v12, &unk_10017C520, v16);
  }

  return result;
}

uint64_t sub_10011CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for ContentView();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v4[6] = *(v6 + 64);
  v4[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011CC9C, v8, v7);
}

uint64_t sub_10011CC9C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];

  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.userSelection.getter();

  sub_10013DAC8(v3, v1, type metadata accessor for ContentView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_100136D64(v1, v5 + v4, type metadata accessor for ContentView);
  FocusSelectionModel.didSelect.setter();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10011CDE0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000033A8(&qword_1001DB748);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011CEBC, v4, v3);
}

uint64_t sub_10011CEBC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = type metadata accessor for FocusSelection();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = type metadata accessor for ContentView();
  sub_1000138BC(v1, v2, &qword_1001DB748);
  sub_1000033A8(&qword_1001DB7B0);
  State.wrappedValue.setter();
  sub_10001370C(v1, &qword_1001DB748);
  [*(*(v3 + *(v7 + 248)) + 32) resetSelection];

  v8 = v0[1];

  return v8();
}

void sub_10011D040(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = sub_1000033A8(&qword_1001DB748);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - v4;
  v6 = type metadata accessor for FocusSelection();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7B0);
  State.wrappedValue.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001370C(v5, &qword_1001DB748);
    sub_1001419FC(&v96);
LABEL_8:
    v51 = v103;
    *(a2 + 96) = v102;
    *(a2 + 112) = v51;
    *(a2 + 128) = v104;
    *(a2 + 144) = v105;
    v52 = v99;
    *(a2 + 32) = v98;
    *(a2 + 48) = v52;
    v53 = v101;
    *(a2 + 64) = v100;
    *(a2 + 80) = v53;
    v54 = v97;
    *a2 = v96;
    *(a2 + 16) = v54;
    return;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 88))(v10, v6);
  v57 = v6;
  v58 = v12;
  if (v13 == enum case for FocusSelection.point(_:))
  {
    (*(v7 + 96))(v10, v6);
    v14 = *v10;
    v15 = static Color.red.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v16 = v88;
    v17 = v90;
    v18 = v91;
    v19 = v92;
    v20 = static Alignment.center.getter();
    v22 = v21;
    v23 = static Edge.Set.all.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v60[7] = v93;
    *&v60[23] = v94;
    *&v60[39] = v95;
    v56 = v14;
    FocusSelectionPoint.pointInViewCoordinates.getter();
    v25 = v24;
    FocusSelectionPoint.pointInViewCoordinates.getter();
    v27 = v26;
    GeometryProxy.safeAreaInsets.getter();
    v72 = __PAIR128__(v89, v16);
    *&v73 = v17;
    *(&v73 + 1) = v18;
    *&v74 = v19;
    *(&v74 + 1) = v15;
    LOWORD(v75) = 256;
    *(&v75 + 1) = v20;
    *&v76[0] = v22;
    BYTE8(v76[0]) = v23;
    *(&v76[3] + 1) = *&v60[47];
    *(&v76[2] + 9) = *&v60[32];
    *(&v76[1] + 9) = *&v60[16];
    *(v76 + 9) = *v60;
    *&v77 = v25;
    *(&v77 + 1) = v27 - v28;
    v98 = v74;
    v99 = v75;
    v96 = __PAIR128__(v89, v16);
    v97 = v73;
    v103 = v76[3];
    v104 = v77;
    v101 = v76[1];
    v102 = v76[2];
    v100 = v76[0];
    sub_100141DCC(&v96);
    v84 = v102;
    v85 = v103;
    v86 = v104;
    v87 = v105;
    v80 = v98;
    v81 = v99;
    v82 = v100;
    v83 = v101;
    v78 = v96;
    v79 = v97;
    v29 = &qword_1001DC4A0;
    sub_1000138BC(&v72, &v61, &qword_1001DC4A0);
    sub_1000138BC(&v72, &v61, &qword_1001DC4A0);
    sub_1000033A8(&qword_1001DC4A0);
    sub_1000033A8(&qword_1001DC498);
    sub_100141A2C();
    sub_100141BFC();
LABEL_7:
    _ConditionalContent<>.init(storage:)();

    sub_10001370C(&v72, v29);
    sub_10001370C(&v72, v29);
    (*(v7 + 8))(v58, v57);
    v84 = v67;
    v85 = v68;
    v86 = v69;
    v87 = v70;
    v80 = v63;
    v81 = v64;
    v82 = v65;
    v83 = v66;
    v78 = v61;
    v79 = v62;
    static AskACMESource.preferredSource()(&v61);
    v102 = v67;
    v103 = v68;
    v104 = v69;
    v105 = v70;
    v98 = v63;
    v99 = v64;
    v100 = v65;
    v101 = v66;
    v96 = v61;
    v97 = v62;
    goto LABEL_8;
  }

  if (v13 == enum case for FocusSelection.area(_:))
  {
    (*(v7 + 96))(v10, v6);
    v56 = *v10;
    FocusSelectionArea.boundingBoxInViewCoordinates.getter();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v55 = static Color.red.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v38 = v88;
    v39 = v90;
    v40 = v91;
    v41 = v92;
    v42 = static Alignment.center.getter();
    v44 = v43;
    v45 = static Edge.Set.all.getter();
    v106.origin.x = v31;
    v106.origin.y = v33;
    v106.size.width = v35;
    v106.size.height = v37;
    CGRectGetWidth(v106);
    v107.origin.x = v31;
    v107.origin.y = v33;
    v107.size.width = v35;
    v107.size.height = v37;
    CGRectGetHeight(v107);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v71[7] = v93;
    *&v71[23] = v94;
    *&v71[39] = v95;
    CGRect.center.getter();
    v47 = v46;
    CGRect.center.getter();
    v49 = v48;
    GeometryProxy.safeAreaInsets.getter();
    v72 = __PAIR128__(v89, v38);
    *&v73 = v39;
    *(&v73 + 1) = v40;
    *&v74 = v41;
    *(&v74 + 1) = v55;
    LOWORD(v75) = 256;
    *(&v75 + 1) = v42;
    *&v76[0] = v44;
    BYTE8(v76[0]) = v45;
    *(&v76[3] + 1) = *&v71[47];
    *(&v76[2] + 9) = *&v71[32];
    *(&v76[1] + 9) = *&v71[16];
    *(v76 + 9) = *v71;
    *&v77 = v47;
    *(&v77 + 1) = v49 - v50;
    v98 = v74;
    v99 = v75;
    v96 = __PAIR128__(v89, v38);
    v97 = v73;
    v103 = v76[3];
    v104 = v77;
    v101 = v76[1];
    v102 = v76[2];
    v100 = v76[0];
    sub_100141A20(&v96);
    v84 = v102;
    v85 = v103;
    v86 = v104;
    v87 = v105;
    v80 = v98;
    v81 = v99;
    v82 = v100;
    v83 = v101;
    v78 = v96;
    v79 = v97;
    v29 = &qword_1001DC498;
    sub_1000138BC(&v72, &v61, &qword_1001DC498);
    sub_1000138BC(&v72, &v61, &qword_1001DC498);
    sub_1000033A8(&qword_1001DC4A0);
    sub_1000033A8(&qword_1001DC498);
    sub_100141A2C();
    sub_100141BFC();
    goto LABEL_7;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10011D820(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ContentView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  MagnifyGesture.Value.magnification.getter();
  v15 = v14;
  *a2 = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_10013DAC8(a4, v10, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v10, v20 + v18, type metadata accessor for ContentView);
  v21 = v20 + v19;
  *v21 = v15;
  *(v21 + 8) = 0;
  sub_1000154EC(0, 0, v13, &unk_10017C4A8, v20);

  v22 = (a4 + *(v7 + 112));
  v23 = *v22;
  v24 = v22[1];
  v26[1] = v15;
  v26[2] = v23;
  v26[3] = v24;
  sub_1000033A8(&qword_1001D48E0);
  return State.wrappedValue.setter();
}

uint64_t sub_10011DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 128) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return _swift_task_switch(sub_10011DB20, v8, v7);
}

uint64_t sub_10011DB20()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[11] = v0[4];
  v0[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[13] = v6;
  v0[14] = v5;

  return _swift_task_switch(sub_10011DBF4, v6, v5);
}

uint64_t sub_10011DBF4()
{
  v1 = *(v0 + 128);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10011DC98;
  v3 = *(v0 + 48);

  return sub_1000E6D70(v3, v1 & 1);
}

uint64_t sub_10011DC98()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10011DDB8, v3, v2);
}

uint64_t sub_10011DDB8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_10011DE24, v1, v2);
}

uint64_t sub_10011DE24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011DE84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10013DAC8(a2, v6, type metadata accessor for ContentView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v6, v13 + v12, type metadata accessor for ContentView);
  sub_1000154EC(0, 0, v9, &unk_10017C498, v13);
}

uint64_t sub_10011E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10011E100, v6, v5);
}

uint64_t sub_10011E100()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v0[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v6;
  v0[13] = v5;

  return _swift_task_switch(sub_10011E1D0, v6, v5);
}

uint64_t sub_10011E1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10011E26C;

  return sub_1000E6D70(0, 1);
}

uint64_t sub_10011E26C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10011E38C, v3, v2);
}

uint64_t sub_10011E38C()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_10011E3F8, v1, v2);
}

uint64_t sub_10011E3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011E458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[51] = a5;
  v6[52] = a6;
  v6[50] = a4;
  sub_1000033A8(&qword_1001D41B0);
  v6[53] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[54] = v7;
  v6[55] = *(v7 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[61] = v8;
  v6[62] = *(v8 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = sub_1000033A8(&qword_1001D5958);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  sub_1000033A8(&qword_1001DBAF8);
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v6[80] = v9;
  v6[81] = *(v9 - 8);
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v6[84] = swift_task_alloc();
  v6[85] = type metadata accessor for MainActor();
  v6[86] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[87] = v11;
  v6[88] = v10;

  return _swift_task_switch(sub_10011E7CC, v11, v10);
}

uint64_t sub_10011E7CC()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  sub_1000138BC(*(v0 + 400), v3, &qword_1001DBAF8);
  v4 = *(v1 + 48);
  *(v0 + 712) = v4;
  *(v0 + 720) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 632);
    v6 = &qword_1001DBAF8;
LABEL_5:
    sub_10001370C(v5, v6);
LABEL_6:
    *(v0 + 776) = _swiftEmptyArrayStorage;
    v13 = *(v0 + 408);
    v14 = type metadata accessor for ContentView();
    *(v0 + 784) = v14;
    v15 = (v13 + *(v14 + 52));
    v16 = *v15;
    *(v0 + 792) = *v15;
    v17 = v15[1];
    *(v0 + 800) = v17;
    *(v0 + 296) = v16;
    *(v0 + 304) = v17;
    *(v0 + 808) = sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    *(v0 + 816) = *(v0 + 392);
    v18 = swift_task_alloc();
    *(v0 + 824) = v18;
    *v18 = v0;
    v18[1] = sub_10011F3F4;

    return sub_10015062C();
  }

  v7 = *(v0 + 672);
  v8 = *(v0 + 640);
  v9 = *(v0 + 592);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  sub_100136D64(*(v0 + 632), v7, type metadata accessor for CameraControllerConfiguration);
  sub_1000138BC(v7 + *(v8 + 84), v9, &qword_1001D8020);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v12 = *(v0 + 592);
    sub_10013E658(*(v0 + 672), type metadata accessor for CameraControllerConfiguration);
    v6 = &qword_1001D8020;
    v5 = v12;
    goto LABEL_5;
  }

  v20 = *(v0 + 408);
  sub_10001370C(*(v0 + 592), &qword_1001D8020);
  v21 = type metadata accessor for ContentView();
  v22 = (v20 + *(v21 + 204));
  v23 = *v22;
  v24 = *(v22 + 1);
  *(v0 + 248) = v23;
  *(v0 + 256) = v24;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (*(v0 + 904) != 1)
  {
    sub_10013E658(*(v0 + 672), type metadata accessor for CameraControllerConfiguration);
    goto LABEL_6;
  }

  v25 = (*(v0 + 408) + *(v21 + 52));
  v27 = *v25;
  v26 = v25[1];
  *(v0 + 280) = v27;
  *(v0 + 288) = v26;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  *(v0 + 728) = *(v0 + 384);
  *(v0 + 736) = static MainActor.shared.getter();
  v28 = swift_task_alloc();
  *(v0 + 744) = v28;
  *v28 = v0;
  v28[1] = sub_10011EB40;

  return sub_10015134C(v0 + 56, 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_10011EB40()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_10011EF24;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_10011ECC4;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_10011ECC4()
{

  v1 = *(v0 + 704);
  v2 = *(v0 + 696);

  return _swift_task_switch(sub_10011ED38, v2, v1);
}

uint64_t sub_10011ED38()
{
  sub_1000138BC(v0 + 56, v0 + 96, &qword_1001D3948);
  if (*(v0 + 120))
  {
    sub_10002AAA4((v0 + 96), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 752) = v1;
    *v1 = v0;
    v1[1] = sub_10011F198;

    return sub_1001226C4(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 672);
    sub_10001370C(v0 + 56, &qword_1001D3948);
    sub_10013E658(v3, type metadata accessor for CameraControllerConfiguration);
    sub_10001370C(v0 + 96, &qword_1001D3948);
    *(v0 + 776) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 408);
    v5 = type metadata accessor for ContentView();
    *(v0 + 784) = v5;
    v6 = (v4 + *(v5 + 52));
    v7 = *v6;
    *(v0 + 792) = *v6;
    v8 = v6[1];
    *(v0 + 800) = v8;
    *(v0 + 296) = v7;
    *(v0 + 304) = v8;
    *(v0 + 808) = sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    *(v0 + 816) = *(v0 + 392);
    v9 = swift_task_alloc();
    *(v0 + 824) = v9;
    *v9 = v0;
    v9[1] = sub_10011F3F4;

    return sub_10015062C();
  }
}

uint64_t sub_10011EF24()
{

  v1 = *(v0 + 704);
  v2 = *(v0 + 696);

  return _swift_task_switch(sub_10011EF98, v2, v1);
}

uint64_t sub_10011EF98()
{
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  sub_1000138BC(v0 + 56, v0 + 96, &qword_1001D3948);
  if (*(v0 + 120))
  {
    sub_10002AAA4((v0 + 96), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 752) = v1;
    *v1 = v0;
    v1[1] = sub_10011F198;

    return sub_1001226C4(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 672);
    sub_10001370C(v0 + 56, &qword_1001D3948);
    sub_10013E658(v3, type metadata accessor for CameraControllerConfiguration);
    sub_10001370C(v0 + 96, &qword_1001D3948);
    *(v0 + 776) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 408);
    v5 = type metadata accessor for ContentView();
    *(v0 + 784) = v5;
    v6 = (v4 + *(v5 + 52));
    v7 = *v6;
    *(v0 + 792) = *v6;
    v8 = v6[1];
    *(v0 + 800) = v8;
    *(v0 + 296) = v7;
    *(v0 + 304) = v8;
    *(v0 + 808) = sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    *(v0 + 816) = *(v0 + 392);
    v9 = swift_task_alloc();
    *(v0 + 824) = v9;
    *v9 = v0;
    v9[1] = sub_10011F3F4;

    return sub_10015062C();
  }
}

uint64_t sub_10011F198(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v5 = v4[88];
    v6 = v4[87];
    v7 = sub_1001218B8;
  }

  else
  {
    v4[96] = a1;
    v5 = v4[88];
    v6 = v4[87];
    v7 = sub_10011F2C8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10011F2C8()
{
  v1 = v0[84];
  sub_100006B44((v0 + 2));
  sub_10001370C((v0 + 7), &qword_1001D3948);
  sub_10013E658(v1, type metadata accessor for CameraControllerConfiguration);
  v0[97] = v0[96];
  v2 = v0[51];
  v3 = type metadata accessor for ContentView();
  v0[98] = v3;
  v4 = (v2 + *(v3 + 52));
  v5 = *v4;
  v0[99] = *v4;
  v6 = v4[1];
  v0[100] = v6;
  v0[37] = v5;
  v0[38] = v6;
  v0[101] = sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[102] = v0[49];
  v7 = swift_task_alloc();
  v0[103] = v7;
  *v7 = v0;
  v7[1] = sub_10011F3F4;

  return sub_10015062C();
}

uint64_t sub_10011F3F4()
{
  v1 = *v0;

  v2 = *(v1 + 704);
  v3 = *(v1 + 696);

  return _swift_task_switch(sub_10011F538, v3, v2);
}

uint64_t sub_10011F538()
{
  v1 = v0[89];
  v2 = v0[80];
  v3 = v0[78];
  sub_1000138BC(v0[50], v3, &qword_1001DBAF8);
  v4 = v1(v3, 1, v2);
  v5 = v0[78];
  if (v4 == 1)
  {

    sub_10001370C(v5, &qword_1001DBAF8);
    v6 = static SystemVariantSupport.isInternalBuild.getter();
    v7 = v0[80];
    if ((v6 & 1) == 0)
    {
      if (*(v0[52] + *(v7 + 52)) == 1)
      {
        static Log.ui.getter();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to reconfigure camera for vendor recording", v28, 2u);
        }

        v29 = v0[100];
        v30 = v0[99];
        v31 = v0[59];
        v32 = v0[54];
        v33 = v0[55];

        v34 = *(v33 + 8);
        v0[109] = v34;
        v34(v31, v32);
        v0[25] = v30;
        v0[26] = v29;
        State.wrappedValue.getter();
        v0[110] = v0[41];
        v35 = swift_task_alloc();
        v0[111] = v35;
        *v35 = v0;
        v36 = sub_100121794;
        goto LABEL_35;
      }

LABEL_44:

      static Log.ui.getter();
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Live reconfig failed or not attempted - restarting the old way", v108, 2u);
      }

      v109 = v0[100];
      v110 = v0[99];
      v111 = v0[82];
      v112 = v0[58];
      v113 = v0[54];
      v114 = v0[55];
      v115 = v0[52];

      (*(v114 + 8))(v112, v113);
      sub_10013DAC8(v115, v111, type metadata accessor for CameraControllerConfiguration);
      type metadata accessor for CameraController();
      swift_allocObject();
      sub_10014AFFC(v111);
      v0[33] = v110;
      v0[34] = v109;
      v0[47] = v116;
      State.wrappedValue.setter();
      sub_1000033A8(&qword_1001DB778);
      Bindable.wrappedValue.getter();
      NewSaliencyModel.reset()();

      v117 = v0[100];
      v0[27] = v0[99];
      v0[28] = v117;
      State.wrappedValue.getter();
      v118 = v0[39];
      swift_getKeyPath();
      v0[40] = v118;
      sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v119 = (v118 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
      v120 = *(v118 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
      if (v120 != 1 && (v120 != 3 || v119[1] || *v119 != 2))
      {
        sub_10014FC70();
      }

      v121 = v0[1];

      return v121();
    }

    v8 = v0[73];
    v9 = v0[61];
    v10 = v0[62];
    v11 = v0[52];
    v12 = *(v7 + 68);
    sub_1000138BC(v11 + v12, v8, &qword_1001D8020);
    v125 = *(v10 + 48);
    LODWORD(v9) = v125(v8, 1, v9);
    sub_10001370C(v8, &qword_1001D8020);
    if (v9 == 1)
    {
      v13 = v0[89];
      v14 = v0[80];
      v15 = v0[77];
      v16 = v0[50];
      sub_1000138BC(v11 + v12, v0[72], &qword_1001D8020);
      sub_1000138BC(v16, v15, &qword_1001DBAF8);
      v17 = v13(v15, 1, v14);
      v18 = v0[77];
      v19 = v0[71];
      if (v17 == 1)
      {
        v20 = v0[61];
        v21 = v0[62];
        sub_10001370C(v18, &qword_1001DBAF8);
        (*(v21 + 56))(v19, 1, 1, v20);
      }

      else
      {
        v37 = v0[77];
        sub_1000138BC(v18 + *(v7 + 68), v0[71], &qword_1001D8020);
        sub_10013E658(v37, type metadata accessor for CameraControllerConfiguration);
      }

      v38 = v0[71];
      v39 = v0[66];
      v40 = v0[64];
      v41 = v0[61];
      v42 = *(v40 + 48);
      sub_1000138BC(v0[72], v39, &qword_1001D8020);
      sub_1000138BC(v38, v39 + v42, &qword_1001D8020);
      if (v125(v39, 1, v41) == 1)
      {
        v43 = v0[72];
        v44 = v0[61];
        sub_10001370C(v0[71], &qword_1001D8020);
        sub_10001370C(v43, &qword_1001D8020);
        if (v125(v39 + v42, 1, v44) == 1)
        {
          sub_10001370C(v0[66], &qword_1001D8020);
LABEL_21:
          v58 = v0[89];
          v59 = v0[80];
          v60 = v0[76];
          v61 = v0[50];
          sub_1000138BC(v0[52] + *(v59 + 84), v0[69], &qword_1001D8020);
          sub_1000138BC(v61, v60, &qword_1001DBAF8);
          v62 = v58(v60, 1, v59);
          v63 = v0[76];
          v64 = v0[68];
          if (v62 == 1)
          {
            v65 = v0[61];
            v66 = v0[62];
            sub_10001370C(v63, &qword_1001DBAF8);
            (*(v66 + 56))(v64, 1, 1, v65);
          }

          else
          {
            v67 = *(v59 + 84);
            v68 = v0[76];
            sub_1000138BC(v63 + v67, v0[68], &qword_1001D8020);
            sub_10013E658(v68, type metadata accessor for CameraControllerConfiguration);
          }

          v69 = v0[68];
          v70 = v0[65];
          v71 = v0[61];
          v72 = *(v40 + 48);
          sub_1000138BC(v0[69], v70, &qword_1001D8020);
          sub_1000138BC(v69, v70 + v72, &qword_1001D8020);
          if (v125(v70, 1, v71) == 1)
          {
            v73 = v0[69];
            v74 = v0[61];
            sub_10001370C(v0[68], &qword_1001D8020);
            sub_10001370C(v73, &qword_1001D8020);
            if (v125(v70 + v72, 1, v74) == 1)
            {
              sub_10001370C(v0[65], &qword_1001D8020);
LABEL_39:
              v98 = v0[89];
              v99 = v0[80];
              v100 = v0[75];
              v101 = *(v0[52] + *(v99 + 76));
              sub_1000138BC(v0[50], v100, &qword_1001DBAF8);
              v102 = v98(v100, 1, v99);
              v51 = v0[75];
              if (v102 == 1)
              {
                v82 = &qword_1001DBAF8;
                goto LABEL_31;
              }

              v103 = *(v51 + *(v99 + 76));
              sub_10013E658(v51, type metadata accessor for CameraControllerConfiguration);
              if (v101 != v103)
              {
                goto LABEL_32;
              }

              v104 = v0[80];
              v105 = v0[52];
              if ((*(v105 + *(v104 + 52)) & 1) != 0 || *(v105 + *(v104 + 24)) == 1)
              {
                goto LABEL_32;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v75 = v0[61];
            sub_1000138BC(v0[65], v0[67], &qword_1001D8020);
            v76 = v125(v70 + v72, 1, v75);
            v77 = v0[69];
            v78 = v0[68];
            v79 = v0[67];
            if (v76 != 1)
            {
              v126 = v0[65];
              v94 = v0[62];
              v93 = v0[63];
              v95 = v0[61];
              (*(v94 + 32))(v93, v70 + v72, v95);
              sub_10013FB34(&qword_1001D5960, &type metadata accessor for URL);
              v96 = dispatch thunk of static Equatable.== infix(_:_:)();
              v97 = *(v94 + 8);
              v97(v93, v95);
              sub_10001370C(v78, &qword_1001D8020);
              sub_10001370C(v77, &qword_1001D8020);
              v97(v79, v95);
              sub_10001370C(v126, &qword_1001D8020);
              if ((v96 & 1) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_39;
            }

            v80 = v0[61];
            v81 = v0[62];
            sub_10001370C(v0[68], &qword_1001D8020);
            sub_10001370C(v77, &qword_1001D8020);
            (*(v81 + 8))(v79, v80);
          }

          v51 = v0[65];
LABEL_30:
          v82 = &qword_1001D5958;
LABEL_31:
          sub_10001370C(v51, v82);
          goto LABEL_32;
        }

LABEL_19:
        v51 = v0[66];
        goto LABEL_30;
      }

      v45 = v0[61];
      sub_1000138BC(v0[66], v0[70], &qword_1001D8020);
      v46 = v125(v39 + v42, 1, v45);
      v124 = v0[72];
      v47 = v0[71];
      v48 = v0[70];
      if (v46 == 1)
      {
        v49 = v0[61];
        v50 = v0[62];
        sub_10001370C(v0[71], &qword_1001D8020);
        sub_10001370C(v124, &qword_1001D8020);
        (*(v50 + 8))(v48, v49);
        goto LABEL_19;
      }

      v122 = v0[66];
      v123 = v40;
      v52 = v0[62];
      v53 = v0[63];
      v54 = v0[61];
      (*(v52 + 32))(v53, v39 + v42, v54);
      sub_10013FB34(&qword_1001D5960, &type metadata accessor for URL);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *(v52 + 8);
      v56(v53, v54);
      sub_10001370C(v47, &qword_1001D8020);
      sub_10001370C(v124, &qword_1001D8020);
      v57 = v54;
      v40 = v123;
      v56(v48, v57);
      sub_10001370C(v122, &qword_1001D8020);
      if (v55)
      {
        goto LABEL_21;
      }
    }

LABEL_32:
    static Log.ui.getter();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Attempting reconfig for record start/stop", v85, 2u);
    }

    v86 = v0[100];
    v87 = v0[99];
    v88 = v0[60];
    v89 = v0[54];
    v90 = v0[55];

    v91 = *(v90 + 8);
    v0[105] = v91;
    v91(v88, v89);
    v0[23] = v87;
    v0[24] = v86;
    State.wrappedValue.getter();
    v0[106] = v0[44];
    v35 = swift_task_alloc();
    v0[107] = v35;
    *v35 = v0;
    v36 = sub_1001213DC;
LABEL_35:
    v35[1] = v36;
    v92 = v0[52];

    return sub_10014FEEC(v92);
  }

  sub_100136D64(v0[78], v0[83], type metadata accessor for CameraControllerConfiguration);
  v22 = swift_task_alloc();
  v0[104] = v22;
  *v22 = v0;
  v22[1] = sub_100120460;
  v23 = v0[97];
  v24 = v0[83];

  return sub_100122BA0(v24, v23);
}

uint64_t sub_100120460()
{
  v1 = *v0;

  v2 = *(v1 + 704);
  v3 = *(v1 + 696);

  return _swift_task_switch(sub_1001205A4, v3, v2);
}

uint64_t sub_1001205A4()
{
  sub_10013E658(v0[83], type metadata accessor for CameraControllerConfiguration);
  v1 = static SystemVariantSupport.isInternalBuild.getter();
  v2 = v0[80];
  if ((v1 & 1) == 0)
  {
    if (*(v0[52] + *(v2 + 52)) == 1)
    {
      static Log.ui.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Attempting to reconfigure camera for vendor recording", v19, 2u);
      }

      v20 = v0[100];
      v21 = v0[99];
      v22 = v0[59];
      v23 = v0[54];
      v24 = v0[55];

      v25 = *(v24 + 8);
      v0[109] = v25;
      v25(v22, v23);
      v0[25] = v21;
      v0[26] = v20;
      State.wrappedValue.getter();
      v0[110] = v0[41];
      v26 = swift_task_alloc();
      v0[111] = v26;
      *v26 = v0;
      v27 = sub_100121794;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v3 = v0[73];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[52];
  v7 = *(v2 + 68);
  sub_1000138BC(v6 + v7, v3, &qword_1001D8020);
  v117 = *(v5 + 48);
  LODWORD(v4) = v117(v3, 1, v4);
  sub_10001370C(v3, &qword_1001D8020);
  if (v4 != 1)
  {
    goto LABEL_28;
  }

  v8 = v0[89];
  v9 = v0[80];
  v10 = v0[77];
  v11 = v0[50];
  sub_1000138BC(v6 + v7, v0[72], &qword_1001D8020);
  sub_1000138BC(v11, v10, &qword_1001DBAF8);
  v12 = v8(v10, 1, v9);
  v13 = v0[77];
  v14 = v0[71];
  if (v12 == 1)
  {
    v15 = v0[61];
    v16 = v0[62];
    sub_10001370C(v13, &qword_1001DBAF8);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    v28 = v0[77];
    sub_1000138BC(v13 + *(v2 + 68), v0[71], &qword_1001D8020);
    sub_10013E658(v28, type metadata accessor for CameraControllerConfiguration);
  }

  v29 = v0[71];
  v30 = v0[66];
  v31 = v0[64];
  v32 = v0[61];
  v33 = *(v31 + 48);
  sub_1000138BC(v0[72], v30, &qword_1001D8020);
  sub_1000138BC(v29, v30 + v33, &qword_1001D8020);
  if (v117(v30, 1, v32) == 1)
  {
    v34 = v0[72];
    v35 = v0[61];
    sub_10001370C(v0[71], &qword_1001D8020);
    sub_10001370C(v34, &qword_1001D8020);
    if (v117(v30 + v33, 1, v35) == 1)
    {
      sub_10001370C(v0[66], &qword_1001D8020);
      goto LABEL_17;
    }

LABEL_15:
    v42 = v0[66];
LABEL_26:
    v73 = &qword_1001D5958;
LABEL_27:
    sub_10001370C(v42, v73);
    goto LABEL_28;
  }

  v36 = v0[61];
  sub_1000138BC(v0[66], v0[70], &qword_1001D8020);
  v37 = v117(v30 + v33, 1, v36);
  v116 = v0[72];
  v38 = v0[71];
  v39 = v0[70];
  if (v37 == 1)
  {
    v40 = v0[61];
    v41 = v0[62];
    sub_10001370C(v0[71], &qword_1001D8020);
    sub_10001370C(v116, &qword_1001D8020);
    (*(v41 + 8))(v39, v40);
    goto LABEL_15;
  }

  v114 = v0[66];
  v115 = v31;
  v43 = v0[62];
  v44 = v0[63];
  v45 = v0[61];
  (*(v43 + 32))(v44, v30 + v33, v45);
  sub_10013FB34(&qword_1001D5960, &type metadata accessor for URL);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v43 + 8);
  v47(v44, v45);
  sub_10001370C(v38, &qword_1001D8020);
  sub_10001370C(v116, &qword_1001D8020);
  v48 = v45;
  v31 = v115;
  v47(v39, v48);
  sub_10001370C(v114, &qword_1001D8020);
  if ((v46 & 1) == 0)
  {
LABEL_28:
    static Log.ui.getter();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Attempting reconfig for record start/stop", v76, 2u);
    }

    v77 = v0[100];
    v78 = v0[99];
    v79 = v0[60];
    v80 = v0[54];
    v81 = v0[55];

    v82 = *(v81 + 8);
    v0[105] = v82;
    v82(v79, v80);
    v0[23] = v78;
    v0[24] = v77;
    State.wrappedValue.getter();
    v0[106] = v0[44];
    v26 = swift_task_alloc();
    v0[107] = v26;
    *v26 = v0;
    v27 = sub_1001213DC;
LABEL_31:
    v26[1] = v27;
    v83 = v0[52];

    return sub_10014FEEC(v83);
  }

LABEL_17:
  v49 = v0[89];
  v50 = v0[80];
  v51 = v0[76];
  v52 = v0[50];
  sub_1000138BC(v0[52] + *(v50 + 84), v0[69], &qword_1001D8020);
  sub_1000138BC(v52, v51, &qword_1001DBAF8);
  v53 = v49(v51, 1, v50);
  v54 = v0[76];
  v55 = v0[68];
  if (v53 == 1)
  {
    v56 = v0[61];
    v57 = v0[62];
    sub_10001370C(v54, &qword_1001DBAF8);
    (*(v57 + 56))(v55, 1, 1, v56);
  }

  else
  {
    v58 = *(v50 + 84);
    v59 = v0[76];
    sub_1000138BC(v54 + v58, v0[68], &qword_1001D8020);
    sub_10013E658(v59, type metadata accessor for CameraControllerConfiguration);
  }

  v60 = v0[68];
  v61 = v0[65];
  v62 = v0[61];
  v63 = *(v31 + 48);
  sub_1000138BC(v0[69], v61, &qword_1001D8020);
  sub_1000138BC(v60, v61 + v63, &qword_1001D8020);
  if (v117(v61, 1, v62) != 1)
  {
    v66 = v0[61];
    sub_1000138BC(v0[65], v0[67], &qword_1001D8020);
    v67 = v117(v61 + v63, 1, v66);
    v68 = v0[69];
    v69 = v0[68];
    v70 = v0[67];
    if (v67 != 1)
    {
      v118 = v0[65];
      v86 = v0[62];
      v85 = v0[63];
      v87 = v0[61];
      (*(v86 + 32))(v85, v61 + v63, v87);
      sub_10013FB34(&qword_1001D5960, &type metadata accessor for URL);
      v88 = dispatch thunk of static Equatable.== infix(_:_:)();
      v89 = *(v86 + 8);
      v89(v85, v87);
      sub_10001370C(v69, &qword_1001D8020);
      sub_10001370C(v68, &qword_1001D8020);
      v89(v70, v87);
      sub_10001370C(v118, &qword_1001D8020);
      if ((v88 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }

    v71 = v0[61];
    v72 = v0[62];
    sub_10001370C(v0[68], &qword_1001D8020);
    sub_10001370C(v68, &qword_1001D8020);
    (*(v72 + 8))(v70, v71);
    goto LABEL_25;
  }

  v64 = v0[69];
  v65 = v0[61];
  sub_10001370C(v0[68], &qword_1001D8020);
  sub_10001370C(v64, &qword_1001D8020);
  if (v117(v61 + v63, 1, v65) != 1)
  {
LABEL_25:
    v42 = v0[65];
    goto LABEL_26;
  }

  sub_10001370C(v0[65], &qword_1001D8020);
LABEL_35:
  v90 = v0[89];
  v91 = v0[80];
  v92 = v0[75];
  v93 = *(v0[52] + *(v91 + 76));
  sub_1000138BC(v0[50], v92, &qword_1001DBAF8);
  v94 = v90(v92, 1, v91);
  v42 = v0[75];
  if (v94 == 1)
  {
    v73 = &qword_1001DBAF8;
    goto LABEL_27;
  }

  v95 = *(v42 + *(v91 + 76));
  sub_10013E658(v42, type metadata accessor for CameraControllerConfiguration);
  if (v93 != v95)
  {
    goto LABEL_28;
  }

  v96 = v0[80];
  v97 = v0[52];
  if ((*(v97 + *(v96 + 52)) & 1) != 0 || *(v97 + *(v96 + 24)) == 1)
  {
    goto LABEL_28;
  }

LABEL_40:

  static Log.ui.getter();
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "Live reconfig failed or not attempted - restarting the old way", v100, 2u);
  }

  v101 = v0[100];
  v102 = v0[99];
  v103 = v0[82];
  v104 = v0[58];
  v105 = v0[54];
  v106 = v0[55];
  v107 = v0[52];

  (*(v106 + 8))(v104, v105);
  sub_10013DAC8(v107, v103, type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for CameraController();
  swift_allocObject();
  sub_10014AFFC(v103);
  v0[33] = v102;
  v0[34] = v101;
  v0[47] = v108;
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.reset()();

  v109 = v0[100];
  v0[27] = v0[99];
  v0[28] = v109;
  State.wrappedValue.getter();
  v110 = v0[39];
  swift_getKeyPath();
  v0[40] = v110;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v111 = (v110 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v112 = *(v110 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v112 != 1 && (v112 != 3 || v111[1] || *v111 != 2))
  {
    sub_10014FC70();
  }

  v113 = v0[1];

  return v113();
}

uint64_t sub_1001213DC()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_100121AC0;
  }

  else
  {

    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_100121500;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100121500()
{

  v0[27] = v0[99];
  v0[28] = v0[100];
  State.wrappedValue.getter();
  v1 = v0[39];
  swift_getKeyPath();
  v0[40] = v1;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v2 != 1)
  {
    if (v2 != 3 || (!*(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8) ? (v3 = *(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState) == 2) : (v3 = 0), !v3))
    {
      sub_10014FC70();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100121794()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_100122178;
  }

  else
  {

    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_100143824;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001218B8()
{
  v1 = *(v0 + 672);

  sub_100006B44(v0 + 16);
  sub_10001370C(v0 + 56, &qword_1001D3948);
  sub_10013E658(v1, type metadata accessor for CameraControllerConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100121AC0()
{
  v40 = v0;
  v1 = v0[108];

  v0[45] = v1;
  swift_errorRetain();
  sub_1000033A8(&qword_1001D57D0);
  if (swift_dynamicCast())
  {
    v2 = v0[30];
    if (v2)
    {
      v3 = v0[53];
      v4 = v0[51];
      v5 = v0[29];

      v6 = swift_task_alloc();
      v6[2] = v4;
      v6[3] = v5;
      v6[4] = v2;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = &protocol witness table for MainActor;
      sub_1000154EC(0, 0, v3, &unk_10017BAD8, v9);

      goto LABEL_16;
    }
  }

  static Log.ui.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[105];
  v14 = v0[57];
  v15 = v0[54];
  if (v12)
  {
    v38 = v0[57];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000E0FE0(v18, v19, &v39);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Reconfig failed: %s", v16, 0xCu);
    sub_100006B44(v17);

    v13(v38, v15);
  }

  else
  {

    v13(v14, v15);
  }

  static Log.ui.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Live reconfig failed or not attempted - restarting the old way", v23, 2u);
  }

  v24 = v0[100];
  v25 = v0[99];
  v26 = v0[82];
  v27 = v0[58];
  v28 = v0[54];
  v29 = v0[55];
  v30 = v0[52];

  (*(v29 + 8))(v27, v28);
  sub_10013DAC8(v30, v26, type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for CameraController();
  swift_allocObject();
  sub_10014AFFC(v26);
  v0[33] = v25;
  v0[34] = v24;
  v0[47] = v31;
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.reset()();

  v32 = v0[100];
  v0[27] = v0[99];
  v0[28] = v32;
  State.wrappedValue.getter();
  v33 = v0[39];
  swift_getKeyPath();
  v0[40] = v33;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = (v33 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v35 = *(v33 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v35 == 3)
  {
    if (!v34[1] && *v34 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v35 != 1)
  {
LABEL_14:
    sub_10014FC70();
  }

LABEL_15:

LABEL_16:

  v36 = v0[1];

  return v36();
}

uint64_t sub_100122178()
{
  v32 = v0;

  static Log.ui.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v29 = v0[56];
    v30 = v0[109];
    v3 = v0[54];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000E0FE0(v6, v7, &v31);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to reconfigure camera for recording: %s", v4, 0xCu);
    sub_100006B44(v5);

    v30(v29, v3);
  }

  else
  {
    v9 = v0[109];
    v10 = v0[56];
    v11 = v0[54];

    v9(v10, v11);
  }

  static Log.ui.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Live reconfig failed or not attempted - restarting the old way", v14, 2u);
  }

  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[82];
  v18 = v0[58];
  v19 = v0[54];
  v20 = v0[55];
  v21 = v0[52];

  (*(v20 + 8))(v18, v19);
  sub_10013DAC8(v21, v17, type metadata accessor for CameraControllerConfiguration);
  type metadata accessor for CameraController();
  swift_allocObject();
  sub_10014AFFC(v17);
  v0[33] = v16;
  v0[34] = v15;
  v0[47] = v22;
  State.wrappedValue.setter();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.reset()();

  v23 = v0[100];
  v0[27] = v0[99];
  v0[28] = v23;
  State.wrappedValue.getter();
  v24 = v0[39];
  swift_getKeyPath();
  v0[40] = v24;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = (v24 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v26 = *(v24 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v26 != 1 && (v26 != 3 || v25[1] || *v25 != 2))
  {
    sub_10014FC70();
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1001226C4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(type metadata accessor for ContentView() - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();
  sub_1000033A8(&qword_1001D41B0);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for MainActor();
  v2[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[16] = v5;
  v2[17] = v4;

  return _swift_task_switch(sub_1001227F8, v5, v4);
}

uint64_t sub_1001227F8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_10002A860(v5, v0 + 16);
  sub_10013DAC8(v3, v2, type metadata accessor for ContentView);
  v7 = static MainActor.shared.getter();
  v8 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10002AAA4((v0 + 16), v9 + 32);
  sub_100136D64(v2, v9 + v8, type metadata accessor for ContentView);
  v10 = sub_1000157EC(0, 0, v1, &unk_10017BAF8, v9);
  *(v0 + 144) = v10;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  v12 = sub_1000033A8(&unk_1001D4230);
  *v11 = v0;
  v11[1] = sub_1001229D4;

  return Task<>.value.getter(v0 + 56, v10, v12);
}

uint64_t sub_1001229D4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100122B18, v3, v2);
}

uint64_t sub_100122B18()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100122BA0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for Logger();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for URL.DirectoryHint();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[29] = v6;
  v7 = *(v6 - 8);
  v3[30] = v7;
  v3[31] = *(v7 + 64);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[40] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[41] = v8;
  v3[42] = v9;

  return _swift_task_switch(sub_100122E0C, v8, v9);
}

uint64_t sub_100122E0C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  v5 = *(type metadata accessor for CameraControllerConfiguration(0) + 84);
  sub_1000138BC(v4 + v5, v1, &qword_1001D8020);
  v6 = *(v3 + 48);
  if (v6(v1, 1, v2) == 1)
  {
    v7 = *(v0 + 312);
LABEL_5:

    sub_10001370C(v7, &qword_1001D8020);
LABEL_6:

    v10 = *(v0 + 8);

    return v10();
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 232);
  sub_10001370C(*(v0 + 312), &qword_1001D8020);
  sub_1000138BC(v4 + v5, v8, &qword_1001D8020);
  if (v6(v8, 1, v9) == 1)
  {
    v7 = *(v0 + 304);
    goto LABEL_5;
  }

  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v16 = *(v15 + 32);
  *(v0 + 344) = v16;
  *(v0 + 352) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v13, v12, v14);
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  URL.path(percentEncoded:)(1);
  v19 = String._bridgeToObjectiveC()();

  LODWORD(v13) = [v18 fileExistsAtPath:v19];

  if (!v13)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 296), *(v0 + 232));

    goto LABEL_6;
  }

  v20 = *(v0 + 176);
  v21 = type metadata accessor for ContentView();
  *(v0 + 360) = v21;
  v22 = (v20 + *(v21 + 204));
  v23 = *v22;
  *(v0 + 437) = *v22;
  v24 = *(v22 + 1);
  *(v0 + 368) = v24;
  *(v0 + 40) = v23;
  *(v0 + 48) = v24;
  *(v0 + 376) = sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (*(v0 + 432) == 1)
  {
    v72 = v21;
    v73 = v16;
    v25 = *(v0 + 288);
    v26 = *(v0 + 272);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v79 = *(v0 + 224);
    v74 = *(v0 + 296);
    v75 = *(v0 + 216);
    v77 = *(v0 + 208);
    sub_1000033A8(&qword_1001D83B0);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v70 = *(v27 + 72);
    v30 = swift_allocObject();
    v76 = v17;
    v31 = *(v27 + 16);
    v31(v30 + v29, v74, v28);
    v71 = v29;
    v31(v25, v30 + v29, v28);
    static URL.temporaryDirectory.getter();
    v32._countAndFlagsBits = URL.lastPathComponent.getter();
    String.append(_:)(v32);

    *(v0 + 104) = 95;
    *(v0 + 112) = 0xE100000000000000;
    (*(v75 + 104))(v79, enum case for URL.DirectoryHint.inferFromPath(_:), v77);
    sub_10002EC9C();
    URL.appending<A>(path:directoryHint:)();
    (*(v75 + 8))(v79, v77);

    v33 = *(v27 + 8);
    v33(v26, v28);
    v34 = [v76 defaultManager];
    URL.path(percentEncoded:)(1);
    v35 = String._bridgeToObjectiveC()();

    LOBYTE(v25) = [v34 fileExistsAtPath:v35];

    if (v25)
    {
LABEL_14:
      v80 = v33;
      v31(*(v0 + 264), *(v0 + 280), *(v0 + 232));
      v46 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_10009567C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_10009567C(v47 > 1, v48 + 1, 1, v46);
      }

      v49 = *(v0 + 288);
      v50 = *(v0 + 264);
      v51 = *(v0 + 232);
      v78 = *(v0 + 176);
      v80(*(v0 + 280), v51);
      v80(v49, v51);
      *(v46 + 2) = v48 + 1;
      v73(&v46[v71 + v48 * v70], v50, v51);
      *(v0 + 144) = v46;
      swift_setDeallocating();
      v80(v30 + v71, v51);
      swift_deallocClassInstance();

      sub_1000EC1E0(v52);
      v53 = *(v0 + 144);
      *(v0 + 384) = v53;
      v54 = (v78 + *(v72 + 208));
      v55 = *v54;
      v56 = *(v54 + 1);
      *(v0 + 120) = v55;
      *(v0 + 128) = v56;
      State.wrappedValue.getter();
      v57 = *(v0 + 436);
      v58 = swift_task_alloc();
      *(v0 + 392) = v58;
      *v58 = v0;
      v58[1] = sub_1001236FC;

      return sub_10012F570(v53, v57);
    }

    v36 = [v76 defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    *(v0 + 152) = 0;
    v43 = [v36 copyItemAtURL:v39 toURL:v41 error:v0 + 152];

    v44 = *(v0 + 152);
    if (v43)
    {
      v45 = v44;
      goto LABEL_14;
    }

    v69 = v44;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return swift_unexpectedError();
  }

  else
  {
    v59 = (*(v0 + 176) + *(*(v0 + 360) + 200));
    v60 = *v59;
    *(v0 + 438) = *v59;
    v61 = *(v59 + 1);
    *(v0 + 400) = v61;
    *(v0 + 56) = v60;
    *(v0 + 64) = v61;
    State.wrappedValue.getter();
    if (*(v0 + 433))
    {

      v62 = *(v0 + 400);
      v63 = *(v0 + 438);
      v64 = *(v0 + 368);
      v65 = *(v0 + 437);
      v66 = *(v0 + 296);
      v67 = *(v0 + 232);
      v68 = *(v0 + 240);
      sub_10012FF3C();
      *(v0 + 72) = v63;
      *(v0 + 80) = v62;
      *(v0 + 434) = 0;
      State.wrappedValue.setter();
      *(v0 + 88) = v65;
      *(v0 + 96) = v64;
      *(v0 + 435) = 0;
      State.wrappedValue.setter();
      (*(v68 + 8))(v66, v67);
      goto LABEL_6;
    }

    return _swift_task_switch(sub_100123A90, 0, 0);
  }
}

uint64_t sub_1001236FC()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_10012386C, v3, v2);
}

uint64_t sub_10012386C()
{
  v1 = (*(v0 + 176) + *(*(v0 + 360) + 200));
  v2 = *v1;
  *(v0 + 438) = *v1;
  v3 = *(v1 + 1);
  *(v0 + 56) = v2;
  *(v0 + 400) = v3;
  *(v0 + 64) = v3;
  State.wrappedValue.getter();
  if (*(v0 + 433))
  {

    v4 = *(v0 + 400);
    v5 = *(v0 + 438);
    v6 = *(v0 + 368);
    v7 = *(v0 + 437);
    v8 = *(v0 + 296);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    sub_10012FF3C();
    *(v0 + 72) = v5;
    *(v0 + 80) = v4;
    *(v0 + 434) = 0;
    State.wrappedValue.setter();
    *(v0 + 88) = v7;
    *(v0 + 96) = v6;
    *(v0 + 435) = 0;
    State.wrappedValue.setter();
    (*(v10 + 8))(v8, v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_100123A90, 0, 0);
  }
}

uint64_t sub_100123A90()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  (*(v4 + 16))(v2, v0[37], v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[51] = v6;
  v1(v6 + v5, v2, v3);
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_100123BD8;

  return sub_1000CF120(sub_100135F74, v6);
}

uint64_t sub_100123BD8()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_100123ECC;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 328);
    v5 = *(v2 + 336);
    v3 = sub_100123D48;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100123D48()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 438);
  v3 = *(v0 + 368);
  v4 = *(v0 + 437);
  v5 = *(v0 + 296);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  sub_10012FF3C();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  *(v0 + 434) = 0;
  State.wrappedValue.setter();
  *(v0 + 88) = v4;
  *(v0 + 96) = v3;
  *(v0 + 435) = 0;
  State.wrappedValue.setter();
  (*(v7 + 8))(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100123ECC()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100123F5C, v1, v2);
}

uint64_t sub_100123F5C()
{
  v24 = v0;

  static Log.cameraSource.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 192);
    v22 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000E0FE0(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to save video to photos: %s", v5, 0xCu);
    sub_100006B44(v6);

    (*(v3 + 8))(v22, v4);
  }

  else
  {
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);
    v12 = *(v0 + 184);

    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 400);
  v14 = *(v0 + 438);
  v15 = *(v0 + 368);
  v16 = *(v0 + 437);
  v17 = *(v0 + 296);
  v18 = *(v0 + 232);
  v19 = *(v0 + 240);
  sub_10012FF3C();
  *(v0 + 72) = v14;
  *(v0 + 80) = v13;
  *(v0 + 434) = 0;
  State.wrappedValue.setter();
  *(v0 + 88) = v16;
  *(v0 + 96) = v15;
  *(v0 + 435) = 0;
  State.wrappedValue.setter();
  (*(v19 + 8))(v17, v18);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100124238()
{
  _StringGuts.grow(_:)(17);

  v0._countAndFlagsBits = 0x747261747365520ALL;
  v0._object = 0xEF70706120676E69;
  String.append(_:)(v0);
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB68);
  return State.wrappedValue.setter();
}

uint64_t sub_100124320()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[6] = v3;
  v0[7] = v2;

  return _swift_task_switch(sub_100124410, v3, v2);
}

uint64_t sub_100124410()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1001244EC;

  return sub_1000A9BE0(v1, v3, 0, 0, 1);
}

uint64_t sub_1001244EC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_100124690;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v3[9] = 0;
    v9 = sub_1001246B0;
    v7 = 0;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001246B0()
{
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012473C, v2, v1);
}

uint64_t sub_10012473C()
{

  static Animation.default.getter();
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100124808()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = type metadata accessor for ContentView();
  if (dispatch thunk of UserDefaultsUtility.hasOnboardedApp.getter())
  {
    static Log.ui.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Not showing onboarding because the user has already onboarded.", v12, 2u);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    static Log.ui.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Showing app onboarding", v16, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v17 = (v1 + *(v9 + 184));
    v18 = *v17;
    v19 = *(v17 + 1);
    v20[16] = v18;
    v21 = v19;
    v20[15] = 1;
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.setter();
    return sub_1000F9C44();
  }
}

uint64_t sub_100124A6C()
{
  v1 = type metadata accessor for ContentView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  result = dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.getter();
  if ((result & 1) == 0)
  {
    type metadata accessor for LocationsHandler();
    static LocationsHandler.shared.getter();
    v9 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();

    if ((v9 & 1) == 0)
    {
      type metadata accessor for GeoLookup();
      static GeoLookup.shared.getter();
      v10 = dispatch thunk of GeoLookup.isSupported.getter();

      if (v10)
      {
        sub_10013DAC8(v0, v7, type metadata accessor for ContentView);
        v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v12 = swift_allocObject();
        sub_100136D64(v7, v12 + v11, type metadata accessor for ContentView);
        sub_10013DAC8(v0, v5, type metadata accessor for ContentView);
        v13 = swift_allocObject();
        sub_100136D64(v5, v13 + v11, type metadata accessor for ContentView);
        sub_1000E9E38(sub_100139AFC, v12, sub_100139B14, v13);
      }
    }
  }

  return result;
}

uint64_t sub_100124C98()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  return sub_10010B268();
}

uint64_t sub_100124D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000033A8(&qword_1001DB750);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100124DF8, v6, v5);
}

uint64_t sub_100124DF8()
{
  v2 = v0 + 5;
  v1 = v0[5];
  v3 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.getter();
  v4 = type metadata accessor for ResultLookupState();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) != 1)
  {
    v6 = *v2;
    v7 = (*(v5 + 88))(*v2, v4);
    v8 = enum case for ResultLookupState.barCodeLookup(_:);
    (*(v5 + 8))(v6, v4);
    if (v7 != v8)
    {
      goto LABEL_5;
    }

    v2 = v0 + 4;
    v9 = v0[4];
    v10 = v0[3];
    (*(v5 + 56))(v9, 1, 1, v4);
    sub_1000138BC(v9, v10, &qword_1001DB750);
    State.wrappedValue.setter();
    sub_1000F9408();
  }

  sub_10001370C(*v2, &qword_1001DB750);
LABEL_5:
  v0[9] = *(v0[2] + *(v3 + 220));
  v13 = (&async function pointer to dispatch thunk of SiriVoiceAvailabilityUtility.updatePreferredSiriLanguageCode() + async function pointer to dispatch thunk of SiriVoiceAvailabilityUtility.updatePreferredSiriLanguageCode());
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_100125034;

  return v13();
}

uint64_t sub_100125034()
{
  v1 = *v0;
  v2 = *v0;

  v5 = (&async function pointer to dispatch thunk of SiriVoiceAvailabilityUtility.updateVoiceLanguages() + async function pointer to dispatch thunk of SiriVoiceAvailabilityUtility.updateVoiceLanguages());
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100125198;

  return v5();
}

uint64_t sub_100125198()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1001252CC, v3, v2);
}

uint64_t sub_1001252CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100125350(uint64_t a1)
{
  v18 = a1;
  v1 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GreymatterAvailability.UseCaseIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GreymatterAvailability();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GreymatterAvailability.shared.getter();
  (*(v6 + 104))(v8, enum case for GreymatterAvailability.UseCaseIdentifier.settings(_:), v5);
  default argument 1 of GreymatterAvailability.isAvailable(_:languageOption:)();
  v13 = GreymatterAvailability.isAvailable(_:languageOption:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v14 = (v18 + *(type metadata accessor for ContentView() + 148));
  v15 = *v14;
  v16 = *(v14 + 1);
  v20 = v15;
  v21 = v16;
  v19 = (v13 & 1) == 0;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  sub_100124808();
  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.startLocationUpdates()();
}

uint64_t sub_10012560C()
{
  v1 = type metadata accessor for ContentView();
  v2 = __chkstk_darwin(v1);
  v166 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v167 = &v155 - v4;
  v5 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v5 - 8);
  v165 = &v155 - v6;
  v164 = type metadata accessor for ActionAnalytics.ActionType();
  v188 = *(v164 - 8);
  __chkstk_darwin(v164);
  v176 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for ActionBarItem();
  v163 = *(v179 - 8);
  v8 = __chkstk_darwin(v179);
  v175 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v174 = &v155 - v10;
  v168 = type metadata accessor for ActionPin.Pill.Flags.Flag();
  v185 = *(v168 - 8);
  __chkstk_darwin(v168);
  v192 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for ActionPin.Pill.Flags();
  v184 = *(v191 - 8);
  __chkstk_darwin(v191);
  v197 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for ActionPin.Pill();
  v183 = *(v196 - 8);
  v13 = __chkstk_darwin(v196);
  v173 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v195 = &v155 - v15;
  v194 = sub_1000033A8(&qword_1001DBBD8);
  v187 = *(v194 - 8);
  __chkstk_darwin(v194);
  v193 = &v155 - v16;
  v17 = sub_1000033A8(&qword_1001DBBE0);
  v18 = __chkstk_darwin(v17 - 8);
  v198 = (&v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = (&v155 - v20);
  v177 = type metadata accessor for Logger();
  v170 = *(v177 - 8);
  v22 = __chkstk_darwin(v177);
  v169 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v155 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v155 - v28;
  __chkstk_darwin(v27);
  v31 = &v155 - v30;
  v32 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v32 - 8);
  v190 = &v155 - v33;
  v172 = type metadata accessor for ActionPin();
  v171 = *(v172 - 8);
  v34 = __chkstk_darwin(v172);
  v36 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v155 - v37;
  v180 = v1;
  v39 = *(v1 + 160);
  v181 = v0;
  v40 = (v0 + v39);
  v41 = *v40;
  v42 = v40[1];
  v202 = *v40;
  v203 = v42;
  v43 = sub_1000033A8(&qword_1001DBB90);
  State.wrappedValue.getter();
  v44 = *(v200 + 16);

  if (v44)
  {
    v202 = v41;
    v203 = v42;
    State.wrappedValue.getter();
    return v200;
  }

  v186 = v36;
  v189 = v31;
  v160 = v38;
  v161 = v29;
  v159 = v26;
  v162 = v43;
  v45 = (v181 + *(v180 + 52));
  v47 = *v45;
  v46 = v45[1];
  v202 = v47;
  v203 = v46;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v48 = v200;
  swift_getKeyPath();
  v202 = v48;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  v50 = v190;
  sub_1000138BC(v48 + v49, v190, &qword_1001D44C8);

  v51 = v171;
  v52 = v172;
  if ((*(v171 + 48))(v50, 1, v172) == 1)
  {
    sub_10001370C(v50, &qword_1001D44C8);
    v178 = _swiftEmptyArrayStorage;
LABEL_25:
    v102 = v167;
    v103 = v161;
    static Log.ui.getter();
    sub_10013DAC8(v181, v102, type metadata accessor for ContentView);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    v106 = os_log_type_enabled(v104, v105);
    v107 = v180;
    v108 = v170;
    if (v106)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v109 = 136315138;
      v111 = (v102 + *(v107 + 164));
      v113 = *v111;
      v112 = v111[1];
      v199 = v110;
      v200 = v113;
      v201 = v112;
      State.wrappedValue.getter();
      v114 = v103;
      v115 = Array.description.getter();
      v117 = v116;

      sub_10013E658(v102, type metadata accessor for ContentView);
      v118 = sub_1000E0FE0(v115, v117, &v199);

      *(v109 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v104, v105, "live text action bar items: %s", v109, 0xCu);
      sub_100006B44(v110);

      v119 = *(v108 + 8);
      v120 = v177;
      v119(v114, v177);
    }

    else
    {

      v119 = *(v108 + 8);
      v121 = v103;
      v120 = v177;
      v119(v121, v177);
      sub_10013E658(v102, type metadata accessor for ContentView);
    }

    v122 = v159;
    static Log.ui.getter();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v200 = v126;
      *v125 = 136315138;

      v127 = Array.description.getter();
      v129 = v128;

      v130 = sub_1000E0FE0(v127, v129, &v200);
      v120 = v177;

      *(v125 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v123, v124, "new items: %s", v125, 0xCu);
      sub_100006B44(v126);
    }

    v119(v122, v120);
    v131 = v166;
    v132 = v169;
    static Log.ui.getter();
    sub_10013DAC8(v181, v131, type metadata accessor for ContentView);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v198 = v119;
      v137 = v136;
      *v135 = 136315138;
      v138 = v180;
      v139 = (v131 + *(v180 + 168));
      v141 = *v139;
      v140 = v139[1];
      v199 = v136;
      v200 = v141;
      v201 = v140;
      State.wrappedValue.getter();
      v142 = Array.description.getter();
      v144 = v143;

      sub_10013E658(v131, type metadata accessor for ContentView);
      v145 = sub_1000E0FE0(v142, v144, &v199);

      *(v135 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v133, v134, "subject lift action bar items: %s", v135, 0xCu);
      sub_100006B44(v137);

      v198(v169, v177);
    }

    else
    {

      v119(v132, v120);
      sub_10013E658(v131, type metadata accessor for ContentView);
      v138 = v180;
    }

    v146 = v181;
    v147 = (v181 + *(v138 + 164));
    v149 = *v147;
    v148 = v147[1];
    v200 = v149;
    v201 = v148;
    State.wrappedValue.getter();

    sub_1000EC1B4(v150);
    v151 = v199;
    v152 = (v146 + *(v138 + 168));
    v154 = *v152;
    v153 = v152[1];
    v200 = v154;
    v201 = v153;
    State.wrappedValue.getter();
    v200 = v151;
    sub_1000EC1B4(v199);

    return v200;
  }

  v53 = v160;
  (*(v51 + 32))(v160, v50, v52);
  v54 = v189;
  static Log.ui.getter();
  v55 = v186;
  (*(v51 + 16))(v186, v53, v52);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v178 = v58;
    v190 = swift_slowAlloc();
    v200 = v190;
    *v58 = 136315138;
    LODWORD(v182) = v57;
    ActionPin.rankedPills.getter();
    v59 = v196;
    v158 = Array.description.getter();
    v61 = v60;

    v156 = *(v51 + 8);
    v156(v55, v52);
    v62 = sub_1000E0FE0(v158, v61, &v200);

    v63 = v178;
    *(v178 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v182, "actionPin.rankedPills: %s", v63, 0xCu);
    sub_100006B44(v190);

    (*(v170 + 8))(v54, v177);
    v64 = v168;
  }

  else
  {

    v156 = *(v51 + 8);
    v156(v55, v52);
    (*(v170 + 8))(v54, v177);
    v64 = v168;
    v59 = v196;
  }

  v65 = v183;
  v66 = v194;
  result = ActionPin.rankedPills.getter();
  v68 = 0;
  v69 = *(result + 16);
  v182 = (v65 + 16);
  v189 = (v187 + 56);
  v70 = v65;
  v71 = (v187 + 48);
  v72 = (v70 + 32);
  LODWORD(v187) = enum case for ActionPin.Pill.Flags.Flag.preShutter(_:);
  v73 = v185++;
  v186 = (v73 + 13);
  ++v184;
  v74 = (v70 + 8);
  v157 = (v188 + 32);
  v178 = _swiftEmptyArrayStorage;
  v190 = result;
  v188 = v69;
LABEL_9:
  v75 = v193;
  v76 = v198;
  if (v68 == v69)
  {
LABEL_10:
    v77 = 1;
    v68 = v69;
    goto LABEL_14;
  }

  while ((v68 & 0x8000000000000000) == 0)
  {
    if (v68 >= *(result + 16))
    {
      goto LABEL_36;
    }

    v78 = v68 + 1;
    v79 = v183;
    v80 = result + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v68;
    v81 = *(v66 + 48);
    *v75 = v68;
    v82 = v75;
    (*(v79 + 16))(&v75[v81], v80, v59);
    sub_10002091C(v82, v198, &qword_1001DBBD8);
    v77 = 0;
    v68 = v78;
    v76 = v198;
LABEL_14:
    (*v189)(v76, v77, 1, v66);
    sub_10002091C(v76, v21, &qword_1001DBBE0);
    if ((*v71)(v21, 1, v66) == 1)
    {
      v156(v160, v172);

      goto LABEL_25;
    }

    v83 = *v21;
    v84 = v59;
    v85 = *v72;
    v86 = v21 + *(v66 + 48);
    v87 = v195;
    (*v72)(v195, v86, v84);
    if (v83 || (ActionPin.Pill.flags.getter(), v88 = v192, (*v186)(v192, v187, v64), v89 = ActionPin.Pill.Flags.contains(_:)(), v90 = v88, v91 = v197, (*v185)(v90, v64), (*v184)(v91, v191), (v89 & 1) == 0))
    {
      (*v182)(v173, v87, v196);
      ActionPin.Pill.analyticsAction()();
      v92 = type metadata accessor for UUID();
      v93 = v165;
      (*(*(v92 - 8) + 56))(v165, 1, 1, v92);
      v94 = sub_1000033A8(&qword_1001DA608);
      v158 = v94[19];
      v95 = v174;
      v85(v174, v173, v196);
      (*v157)(v95 + v94[9], v176, v164);
      *(v95 + v94[10]) = 0;
      *(v95 + v94[11]) = 2;
      *(v95 + v94[12]) = 1;
      *(v95 + v94[13]) = 0;
      *(v95 + v94[18]) = 0;
      v96 = (v95 + v94[15]);
      *v96 = sub_100019CC8;
      v96[1] = 0;
      v97 = (v95 + v94[16]);
      *v97 = sub_1001279D4;
      v97[1] = 0;
      v98 = (v95 + v94[17]);
      *v98 = 0;
      v98[1] = 0;
      *(v95 + v158) = 0;
      sub_10002091C(v93, v95 + v94[14], &qword_1001D44B0);
      swift_storeEnumTagMultiPayload();
      sub_10013DAC8(v95, v175, type metadata accessor for ActionBarItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = sub_1000954F8(0, v178[2] + 1, 1, v178);
      }

      v66 = v194;
      v100 = v178[2];
      v99 = v178[3];
      v64 = v168;
      v158 = v100 + 1;
      if (v100 >= v99 >> 1)
      {
        v178 = sub_1000954F8(v99 > 1, v100 + 1, 1, v178);
      }

      v59 = v196;
      (*v74)();
      v101 = v178;
      v178[2] = v158;
      sub_100136D64(v175, v101 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v100, type metadata accessor for ActionBarItem);
      sub_10013E658(v174, type metadata accessor for ActionBarItem);
      result = v190;
      v69 = v188;
      goto LABEL_9;
    }

    v59 = v196;
    (*v74)(v87, v196);
    v75 = v193;
    v66 = v194;
    v76 = v198;
    result = v190;
    v69 = v188;
    if (v68 == v188)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100126C00()
{
  v0 = sub_1000D27D4();
  v2 = v1;
  if (v0 == sub_1000D27D4() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100126CD0()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  return State.wrappedValue.setter();
}

uint64_t sub_100126D48()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();

  sub_1000033A8(&qword_1001DBB90);
  return State.wrappedValue.setter();
}

uint64_t sub_100126E1C()
{
  type metadata accessor for AskAcmeRequirementManager();
  if (static AskAcmeRequirementManager.montaraRestricted.getter() & 1) != 0 && (type metadata accessor for ContentView(), (dispatch thunk of UserDefaultsUtility.hasPresentedMontaraRestrictionWarning.getter()))
  {
    v0 = static AskAcmeRequirementManager.shouldShowAskAcmeUI.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_100126E8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1000033A8(&qword_1001DBBA8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.bar.getter();

  v7 = a2(v6);

  Bindable.wrappedValue.getter();
  v8 = NewSaliencyModel.targetEntity.getter();

  v9 = enum case for ActionAnalytics.ActionSource.actionBar(_:);
  v10 = type metadata accessor for ActionAnalytics.ActionSource();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  sub_100137530(v7, v8, v5);

  return sub_10001370C(v5, &qword_1001DBBA8);
}

uint64_t sub_100127060()
{
  type metadata accessor for ContentView();

  sub_1000033A8(&qword_1001DBB90);
  return State.wrappedValue.setter();
}

uint64_t sub_1001270E4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000033A8(&qword_1001DA458);
  __chkstk_darwin(v59);
  v54 = v42 - v5;
  v6 = sub_1000033A8(&qword_1001D44B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v42 - v11;
  __chkstk_darwin(v10);
  v66 = v42 - v13;
  v14 = type metadata accessor for ActionBarItem();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = __chkstk_darwin(v14);
  v61 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v56 = v42 - v18;
  __chkstk_darwin(v17);
  v65 = v42 - v19;
  v20 = (a1 + *(type metadata accessor for ContentView() + 172));
  v22 = *v20;
  v21 = v20[1];
  v44 = v22;
  v70 = v22;
  v71 = v21;
  v43 = v21;
  v42[1] = sub_1000033A8(&qword_1001DBB90);
  State.wrappedValue.getter();
  result = v67;
  v55 = *(v67 + 16);
  if (v55)
  {
    v60 = v9;
    v24 = 0;
    v52 = (v3 + 16);
    v51 = (v3 + 56);
    v50 = (v3 + 48);
    v45 = (v3 + 32);
    v25 = _swiftEmptyArrayStorage;
    v48 = (v3 + 8);
    v49 = v2;
    v53 = v67;
    while (1)
    {
      if (v24 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v63 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v64 = v25;
      v62 = *(v57 + 72);
      v26 = v65;
      sub_10013DAC8(result + v63 + v62 * v24, v65, type metadata accessor for ActionBarItem);
      v27 = v56;
      sub_10013DAC8(v26, v56, type metadata accessor for ActionBarItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = sub_1000033A8(&qword_1001DA600);
        v69 = sub_100013608(&qword_1001DA610, &qword_1001DA600);
        v28 = sub_1000D5748(&v67);
        v29 = v27;
        v30 = &qword_1001DA600;
      }

      else
      {
        v68 = sub_1000033A8(&qword_1001DA608);
        v69 = sub_100013608(&qword_1001DA618, &qword_1001DA608);
        v28 = sub_1000D5748(&v67);
        v29 = v27;
        v30 = &qword_1001DA608;
      }

      sub_10002091C(v29, v28, v30);
      sub_10002AAA4(&v67, &v70);
      v32 = v72;
      v31 = v73;
      sub_100006AAC(&v70, v72);
      (*(v31 + 56))(v32, v31);
      sub_100006B44(&v70);
      if (qword_1001D31D0 != -1)
      {
        swift_once();
      }

      v33 = sub_10002769C(v2, qword_1001DB6F0);
      (*v52)(v12, v33, v2);
      (*v51)(v12, 0, 1, v2);
      v34 = *(v59 + 48);
      v35 = v54;
      sub_1000138BC(v66, v54, &qword_1001D44B0);
      sub_1000138BC(v12, v35 + v34, &qword_1001D44B0);
      v36 = *v50;
      if ((*v50)(v35, 1, v2) == 1)
      {
        sub_10001370C(v12, &qword_1001D44B0);
        sub_10001370C(v66, &qword_1001D44B0);
        if (v36(v35 + v34, 1, v2) != 1)
        {
          goto LABEL_17;
        }

        sub_10001370C(v35, &qword_1001D44B0);
        v25 = v64;
      }

      else
      {
        sub_1000138BC(v35, v60, &qword_1001D44B0);
        if (v36(v35 + v34, 1, v2) == 1)
        {
          sub_10001370C(v12, &qword_1001D44B0);
          sub_10001370C(v66, &qword_1001D44B0);
          (*v48)(v60, v2);
LABEL_17:
          sub_10001370C(v35, &qword_1001DA458);
          v25 = v64;
LABEL_18:
          sub_100136D64(v65, v61, type metadata accessor for ActionBarItem);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v25;
          v2 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100059694(0, v25[2] + 1, 1);
            v25 = v74;
          }

          v39 = v25[2];
          v38 = v25[3];
          if (v39 >= v38 >> 1)
          {
            sub_100059694(v38 > 1, v39 + 1, 1);
            v25 = v74;
          }

          v25[2] = v39 + 1;
          sub_100136D64(v61, v25 + v63 + v39 * v62, type metadata accessor for ActionBarItem);
          goto LABEL_5;
        }

        v40 = v46;
        (*v45)(v46, v35 + v34, v2);
        sub_10013FB34(&qword_1001D80D0, &type metadata accessor for UUID);
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *v48;
        (*v48)(v40, v2);
        sub_10001370C(v12, &qword_1001D44B0);
        sub_10001370C(v66, &qword_1001D44B0);
        v41(v60, v2);
        sub_10001370C(v35, &qword_1001D44B0);
        v25 = v64;
        if ((v47 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_10013E658(v65, type metadata accessor for ActionBarItem);
      v2 = v49;
LABEL_5:
      ++v24;
      result = v53;
      if (v55 == v24)
      {
        goto LABEL_26;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_26:

  v70 = v44;
  v71 = v43;
  *&v67 = v25;
  return State.wrappedValue.setter();
}

uint64_t sub_100127A30()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB80);
  return State.wrappedValue.setter();
}

uint64_t sub_100127AA4(char *a1)
{
  v2 = type metadata accessor for ObjectDetectorResult();
  v120 = *(v2 - 8);
  v121 = v2;
  __chkstk_darwin(v2);
  v119 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for VisualDomain();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ParseDetectorResult();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin(v5);
  v116 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001DBBF0);
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v122 = &v110 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v131 = v9;
  v132 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v110 - v15;
  v17 = __chkstk_darwin(v14);
  v130 = &v110 - v18;
  v19 = __chkstk_darwin(v17);
  v112 = &v110 - v20;
  v21 = __chkstk_darwin(v19);
  v111 = &v110 - v22;
  v23 = __chkstk_darwin(v21);
  v110 = &v110 - v24;
  __chkstk_darwin(v23);
  v125 = &v110 - v25;
  v26 = sub_1000033A8(&qword_1001D4530);
  __chkstk_darwin(v26 - 8);
  v28 = &v110 - v27;
  v29 = type metadata accessor for CVDetection();
  v30 = *(v29 - 8);
  v128 = v29;
  v129 = v30;
  v31 = __chkstk_darwin(v29);
  v126 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v110 - v34;
  __chkstk_darwin(v33);
  v127 = &v110 - v36;
  v37 = sub_1000033A8(&qword_1001DB750);
  __chkstk_darwin(v37 - 8);
  v39 = &v110 - v38;
  v40 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.getter();
  v41 = type metadata accessor for ResultLookupState();
  v42 = (*(*(v41 - 8) + 48))(v39, 1, v41);
  sub_10001370C(v39, &qword_1001DB750);
  if (v42 != 1 || (v43 = &a1[v40[33]], v44 = *v43, v45 = *(v43 + 1), LOBYTE(v134) = v44, v135 = v45, sub_1000033A8(&qword_1001D3E88), State.wrappedValue.getter(), (v133 & 1) != 0) || (v46 = &a1[v40[34]], v47 = *v46, v48 = *(v46 + 1), LOBYTE(v134) = v47, v135 = v48, sub_1000033A8(&qword_1001DBB70), State.wrappedValue.getter(), v133) || (sub_1000033A8(&qword_1001DB778), Bindable.wrappedValue.getter(), v49 = NewSaliencyModel.isAskingMontara.getter(), , (v49 & 1) != 0) || (v50 = &a1[v40[27]], v51 = *v50, v52 = *(v50 + 1), LOBYTE(v134) = v51, v135 = v52, State.wrappedValue.getter(), (v133 & 1) != 0) || (sub_10010F1E4() & 1) != 0)
  {
    static Log.ui.getter();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Not presenting location access follow-up because something else is showing", v55, 2u);
    }

    (*(v132 + 8))(v13, v131);
    goto LABEL_10;
  }

  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  v58 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();

  if (v58)
  {
    static Log.ui.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Not presenting location access follow-up because access was set from elsewhere", v61, 2u);
    }

    (*(v132 + 8))(v16, v131);
    goto LABEL_10;
  }

  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  v62 = dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.getter();

  if (v62)
  {
    v63 = v130;
    static Log.ui.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "Not presenting location access follow-up because it has already been presented";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v64, v65, v67, v66, 2u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v68 = &a1[v40[13]];
  v70 = *v68;
  v69 = *(v68 + 1);
  v134 = v70;
  v135 = v69;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v71 = sub_100149908();

  __chkstk_darwin(v72);
  *(&v110 - 2) = a1;
  sub_100071B7C(sub_100143968, v71, v28);

  v73 = type metadata accessor for CVBundle();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v28, 1, v73) == 1)
  {
    sub_10001370C(v28, &qword_1001D4530);
    v63 = v125;
    static Log.ui.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "Not presenting location access follow-up because nothing is in the boresight";
      goto LABEL_22;
    }

LABEL_23:

    (*(v132 + 8))(v63, v131);
LABEL_10:
    v56 = 0;
    return v56 & 1;
  }

  CVBundle.latestEstimate.getter();
  (*(v74 + 8))(v28, v73);
  v76 = v128;
  v75 = v129;
  v77 = v127;
  (*(v129 + 32))(v127, v35, v128);
  v78 = v126;
  (*(v75 + 16))(v126, v77, v76);
  v79 = (*(v75 + 88))(v78, v76);
  if (v79 == enum case for CVDetection.grounding(_:))
  {
    (*(v75 + 96))(v78, v76);
    v80 = swift_projectBox();
    v82 = v122;
    v81 = v123;
    v83 = v124;
    (*(v123 + 16))(v122, v80, v124);
    if (GroundingResult.label.getter() == 0x6F726665726F7473 && v84 == 0xEA0000000000746ELL)
    {

      v56 = 1;
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v81 + 8))(v82, v83);
LABEL_41:
    (*(v75 + 8))(v77, v76);

    return v56 & 1;
  }

  if (v79 == enum case for CVDetection.object(_:))
  {
    (*(v75 + 96))(v78, v76);
    v85 = swift_projectBox();
    v87 = v119;
    v86 = v120;
    v88 = v121;
    (*(v120 + 16))(v119, v85, v121);
    if (ObjectDetectorResult.label.getter() == 1852270963 && v89 == 0xE400000000000000)
    {

      v56 = 1;
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v86 + 8))(v87, v88);
    goto LABEL_41;
  }

  if (v79 != enum case for CVDetection.parse(_:))
  {
    v101 = v112;
    static Log.ui.getter();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "Not presenting location access follow-up because there's nothing valid in the boresight", v104, 2u);
    }

    (*(v132 + 8))(v101, v131);
    v105 = *(v75 + 8);
    v105(v77, v76);
    v105(v78, v76);
    goto LABEL_10;
  }

  (*(v75 + 96))(v78, v76);
  v130 = *v78;
  v90 = swift_projectBox();
  v92 = v116;
  v91 = v117;
  v93 = v118;
  (*(v117 + 16))(v116, v90, v118);
  v94 = ParseDetectorResult.domains.getter();
  v95 = v113;
  static VisualDomain.storefront.getter();
  v96 = sub_1000F6EA0(v95, v94);

  (*(v114 + 8))(v95, v115);
  if (!v96)
  {
    v106 = v111;
    static Log.ui.getter();
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Not presenting location access follow-up because there is no store front", v109, 2u);
    }

    (*(v132 + 8))(v106, v131);
    (*(v91 + 8))(v92, v93);
    (*(v75 + 8))(v77, v76);

    goto LABEL_10;
  }

  v97 = v110;
  static Log.ui.getter();
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "Presenting location access follow-up because there is a store front", v100, 2u);
  }

  (*(v132 + 8))(v97, v131);
  (*(v91 + 8))(v92, v93);
  (*(v75 + 8))(v77, v76);

  v56 = 1;
  return v56 & 1;
}

uint64_t sub_100128A1C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v56 = type metadata accessor for AskAcmeRequirement();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v49 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000033A8(&qword_1001DBBC8);
  __chkstk_darwin(v51);
  v55 = v48 - v4;
  v5 = sub_1000033A8(&qword_1001DBBB0);
  v6 = __chkstk_darwin(v5 - 8);
  v50 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v57 = v48 - v9;
  __chkstk_darwin(v8);
  v53 = v48 - v10;
  v11 = type metadata accessor for BuiltInAction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionPin.Pill();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v48 - v20;
  (*(v16 + 16))(v48 - v20, a1, v15);
  v59 = *(v12 + 104);
  v59(v14, enum case for BuiltInAction.imageSearch(_:), v11);
  BuiltInAction.pill.getter();
  v22 = *(v12 + 8);
  v60 = v11;
  v58 = v22;
  v22(v14, v11);
  v23 = sub_10013FB34(qword_1001DA470, &type metadata accessor for ActionPin.Pill);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v16 + 8);
  v24(v19, v15);
  if ((a1 & 1) == 0)
  {
    v48[1] = v23;
    v30 = v60;
    v59(v14, enum case for BuiltInAction.askAcme(_:), v60);
    BuiltInAction.pill.getter();
    v58(v14, v30);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24(v19, v15);
    v24(v21, v15);
    if (v31)
    {
      v32 = (v61 + *(type metadata accessor for ContentView() + 52));
      v34 = *v32;
      v33 = v32[1];
      v62 = v34;
      v63 = v33;
      sub_1000033A8(&qword_1001DB780);
      State.wrappedValue.getter();

      type metadata accessor for CameraControllerConfiguration.Storage();
      sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
      v35 = ConfigStorage.hasOnboardedACME.getter();

      if ((v35 & 1) == 0)
      {
        v29 = 1;
        return v29 & 1;
      }

      v37 = v53;
      v36 = v54;
      v38 = v56;
      (*(v54 + 56))(v53, 1, 1, v56);
      v39 = v57;
      dispatch thunk of AskAcmeRequirementManager.nextRequirement.getter();
      v40 = *(v51 + 48);
      v41 = v55;
      sub_1000138BC(v37, v55, &qword_1001DBBB0);
      sub_1000138BC(v39, v41 + v40, &qword_1001DBBB0);
      v42 = *(v36 + 48);
      if (v42(v41, 1, v38) == 1)
      {
        sub_10001370C(v39, &qword_1001DBBB0);
        sub_10001370C(v37, &qword_1001DBBB0);
        if (v42(v41 + v40, 1, v38) == 1)
        {
          sub_10001370C(v41, &qword_1001DBBB0);
          goto LABEL_9;
        }
      }

      else
      {
        v43 = v50;
        sub_1000138BC(v41, v50, &qword_1001DBBB0);
        if (v42(v41 + v40, 1, v38) != 1)
        {
          v45 = v41 + v40;
          v46 = v49;
          (*(v36 + 32))(v49, v45, v38);
          sub_10013FB34(&qword_1001DBBD0, &type metadata accessor for AskAcmeRequirement);
          v28 = dispatch thunk of static Equatable.== infix(_:_:)();
          v47 = *(v36 + 8);
          v47(v46, v38);
          sub_10001370C(v57, &qword_1001DBBB0);
          sub_10001370C(v37, &qword_1001DBBB0);
          v47(v43, v38);
          sub_10001370C(v41, &qword_1001DBBB0);
          goto LABEL_3;
        }

        sub_10001370C(v57, &qword_1001DBBB0);
        sub_10001370C(v37, &qword_1001DBBB0);
        (*(v36 + 8))(v43, v38);
      }

      sub_10001370C(v41, &qword_1001DBBC8);
      v29 = 1;
      return v29 & 1;
    }

LABEL_9:
    v29 = 0;
    return v29 & 1;
  }

  v24(v21, v15);
  v25 = (v61 + *(type metadata accessor for ContentView() + 52));
  v27 = *v25;
  v26 = v25[1];
  v62 = v27;
  v63 = v26;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
  v28 = ConfigStorage.hasOnboardedImageSearch.getter();

LABEL_3:
  v29 = v28 ^ 1;
  return v29 & 1;
}

uint64_t sub_100129284(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = type metadata accessor for Logger();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001DBBB0);
  __chkstk_darwin(v5 - 8);
  v66 = &v60 - v6;
  v68 = type metadata accessor for AskAcmeRequirement();
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ContentView();
  v67 = *(v80 - 8);
  __chkstk_darwin(v80);
  v70 = v8;
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v69 = &v60 - v10;
  v11 = type metadata accessor for BuiltInAction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionPin.Pill();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v64 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v60 - v20;
  __chkstk_darwin(v19);
  v23 = &v60 - v22;
  v24 = *(v16 + 16);
  v73 = a1;
  v63 = v16 + 16;
  v62 = v24;
  v24(&v60 - v22, a1, v15);
  v78 = *(v12 + 104);
  v78(v14, enum case for BuiltInAction.imageSearch(_:), v11);
  BuiltInAction.pill.getter();
  v25 = *(v12 + 8);
  v79 = v11;
  v77 = v25;
  v25(v14, v11);
  v26 = sub_10013FB34(qword_1001DA470, &type metadata accessor for ActionPin.Pill);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v16 + 8);
  v28 = v16 + 8;
  v27 = v29;
  v29(v21, v15);
  if (a1)
  {
    v27(v23, v15);
    v30 = v81;
    v31 = (v81 + *(v80 + 52));
    v33 = *v31;
    v32 = v31[1];
    v82[0] = v33;
    v82[1] = v32;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();

    type metadata accessor for CameraControllerConfiguration.Storage();
    sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
    v34 = ConfigStorage.hasOnboardedImageSearch.getter();

    if ((v34 & 1) == 0)
    {
      v36 = type metadata accessor for TaskPriority();
      v37 = v69;
      (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
      v38 = v71;
      sub_10013DAC8(v30, v71, type metadata accessor for ContentView);
      type metadata accessor for MainActor();
      v39 = static MainActor.shared.getter();
      v40 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      *(v41 + 24) = &protocol witness table for MainActor;
      sub_100136D64(v38, v41 + v40, type metadata accessor for ContentView);
      sub_1000154EC(0, 0, v37, &unk_10017BC10, v41);
    }
  }

  else
  {
    v80 = v26;
    v42 = v79;
    v78(v14, enum case for BuiltInAction.askAcme(_:), v79);
    BuiltInAction.pill.getter();
    v77(v14, v42);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27(v21, v15);
    v27(v23, v15);
    if (v43)
    {
      v44 = v66;
      dispatch thunk of AskAcmeRequirementManager.nextRequirement.getter();
      v45 = v65;
      v46 = v68;
      if ((*(v65 + 48))(v44, 1, v68) == 1)
      {
        return sub_10001370C(v44, &qword_1001DBBB0);
      }

      else
      {
        v59 = v61;
        (*(v45 + 32))(v61, v44, v46);
        sub_10012A070(v59);
        return (*(v45 + 8))(v59, v46);
      }
    }

    else
    {
      v47 = v74;
      static Log.ui.getter();
      v48 = v64;
      v62(v64, v73, v15);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v81 = v28;
        v52 = v27;
        v53 = v51;
        v54 = swift_slowAlloc();
        v82[0] = v54;
        *v53 = 136315138;
        v55 = ActionPin.Pill.localizedTitle.getter();
        v57 = v56;
        v52(v48, v15);
        v58 = sub_1000E0FE0(v55, v57, v82);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v49, v50, "Didnt display speedbump for %s", v53, 0xCu);
        sub_100006B44(v54);
      }

      else
      {

        v27(v48, v15);
      }

      return (*(v75 + 8))(v47, v76);
    }
  }

  return result;
}

uint64_t sub_100129B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100129C78;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 7, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_100129C78()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100129ED8;
  }

  else
  {
    v2 = sub_100129D8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100129D8C()
{
  *(v0 + 57) = *(v0 + 56);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100129E0C, v2, v1);
}

uint64_t sub_100129E0C()
{
  v1 = *(v0 + 57);

  if (v1 == 1)
  {
    v2 = *(v0 + 16);
    *(swift_task_alloc() + 16) = v2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100129ED8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100129F5C, v1, v0);
}

uint64_t sub_100129F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100129FBC(uint64_t a1, char a2)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  return sub_1000F9A10(a2);
}

uint64_t sub_10012A070(uint64_t a1)
{
  v49 = type metadata accessor for ContentView();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = v3;
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v48 = &v44 - v5;
  v6 = type metadata accessor for AskAcmeAlert();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for AskAcmeRequirement();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  (*(v14 + 16))(&v44 - v18, a1, v13);
  v20 = (*(v14 + 88))(v19, v13);
  if (v20 == enum case for AskAcmeRequirement.montaraNotMDMRestricted(_:) || v20 == enum case for AskAcmeRequirement.montaraNotAgeRestricted(_:))
  {
    (*(v14 + 104))(v17);
    v22 = static AskAcmeRequirement.== infix(_:_:)();
    (*(v14 + 8))(v17, v13);
    v23 = type metadata accessor for AskAcmeAlert.MontaraRestrictionReason();
    v24 = &enum case for AskAcmeAlert.MontaraRestrictionReason.ageRestricted(_:);
    if ((v22 & 1) == 0)
    {
      v24 = &enum case for AskAcmeAlert.MontaraRestrictionReason.mdmRestricted(_:);
    }

    (*(*(v23 - 8) + 104))(v10, *v24, v23);
    (*(v7 + 104))(v10, enum case for AskAcmeAlert.montaraRestriction(_:), v6);
    sub_10012CC74(v10);
    (*(v7 + 8))(v10, v6);
    return dispatch thunk of UserDefaultsUtility.hasPresentedMontaraRestrictionWarning.setter();
  }

  else
  {
    if (v20 == enum case for AskAcmeRequirement.siriEnablement(_:))
    {
      v26 = type metadata accessor for TaskPriority();
      v27 = v48;
      (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
      v28 = v47;
      sub_10013DAC8(v1, v47, type metadata accessor for ContentView);
      type metadata accessor for MainActor();
      v29 = static MainActor.shared.getter();
      v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = &protocol witness table for MainActor;
      sub_100136D64(v28, v31 + v30, type metadata accessor for ContentView);
      v32 = &unk_10017BC50;
LABEL_11:
      sub_1000154EC(0, 0, v27, v32, v31);
    }

    if (v20 == enum case for AskAcmeRequirement.intelligenceEnablement(_:) || v20 == enum case for AskAcmeRequirement.siriAssetsAvailability(_:) || v20 == enum case for AskAcmeRequirement.intelligenceAssetsAvailability(_:))
    {
      v37 = &enum case for AskAcmeAlert.missingAssets(_:);
    }

    else
    {
      if (v20 == enum case for AskAcmeRequirement.splashScreenPresentation(_:))
      {
        v33 = type metadata accessor for TaskPriority();
        v27 = v48;
        (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
        v34 = v47;
        sub_10013DAC8(v1, v47, type metadata accessor for ContentView);
        type metadata accessor for MainActor();
        v35 = static MainActor.shared.getter();
        v36 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = v35;
        *(v31 + 24) = &protocol witness table for MainActor;
        sub_100136D64(v34, v31 + v36, type metadata accessor for ContentView);
        v32 = &unk_10017BC40;
        goto LABEL_11;
      }

      if (v20 == enum case for AskAcmeRequirement.montaraEnablement(_:))
      {
        v38 = type metadata accessor for TaskPriority();
        v27 = v48;
        (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
        v39 = v47;
        sub_10013DAC8(v1, v47, type metadata accessor for ContentView);
        type metadata accessor for MainActor();
        v40 = static MainActor.shared.getter();
        v41 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = v40;
        *(v31 + 24) = &protocol witness table for MainActor;
        sub_100136D64(v39, v31 + v41, type metadata accessor for ContentView);
        v32 = &unk_10017BC30;
        goto LABEL_11;
      }

      if (v20 == enum case for AskAcmeRequirement.noCall(_:))
      {
        v37 = &enum case for AskAcmeAlert.inCall(_:);
      }

      else
      {
        if (v20 != enum case for AskAcmeRequirement.currentIPCountryCodeAllowance(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        v42 = enum case for AskAcmeAlert.MontaraRestrictionReason.useCaseDoesNotAllowCurrentIPCountryCode(_:);
        v43 = type metadata accessor for AskAcmeAlert.MontaraRestrictionReason();
        (*(*(v43 - 8) + 104))(v12, v42, v43);
        v37 = &enum case for AskAcmeAlert.montaraRestriction(_:);
      }
    }

    (*(v7 + 104))(v12, *v37, v6);
    sub_10012CC74(v12);
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_10012A838()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActionPin.Pill();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BuiltInAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for BuiltInAction.askAcme(_:), v8);
  BuiltInAction.pill.getter();
  (*(v9 + 8))(v11, v8);
  sub_10013FB34(qword_1001DA470, &type metadata accessor for ActionPin.Pill);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v11)
  {
    type metadata accessor for ContentView();
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    NewSaliencyModel.isAskingMontara.setter();

    static Log.acme.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Will execute ACME action via Siri", v15, 2u);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10012AB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = type metadata accessor for ActionPin.Pill();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  sub_1000033A8(&qword_1001DBBB8);
  v8[18] = swift_task_alloc();
  v8[19] = type metadata accessor for MainActor();
  v8[20] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v8[21] = v11;
  *v11 = v8;
  v11[1] = sub_10012AD80;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8 + 27, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_10012AD80()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10012B210;
  }

  else
  {
    v2 = sub_10012AE94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012AE94()
{
  *(v0 + 217) = *(v0 + 216);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;

  return _swift_task_switch(sub_10012AF14, v2, v1);
}

uint64_t sub_10012AF14()
{
  if (*(v0 + 217))
  {
    sub_10012A838();
    type metadata accessor for ContentView();
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    v1 = NewSaliencyModel.isAskingMontara.getter();

    if ((v1 & 1) == 0 && (NewActionModel.isStreamingAction.getter() & 1) == 0)
    {
      v2 = *(v0 + 32);
      v3 = swift_task_alloc();
      v4 = *(v0 + 56);
      *(v3 + 16) = v2;
      *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    v5 = *(v0 + 144);
    Bindable.wrappedValue.getter();
    *(v0 + 200) = *(v0 + 24);
    v6 = type metadata accessor for ExecutionParameter();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = default argument 3 of NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)();
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *v8 = v0;
    v8[1] = sub_10012B3CC;
    v9 = *(v0 + 144);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);

    return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(v12, v10, v9, v7 & 1, v11);
  }

  else
  {

    static Log.ui.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Attempting to execute NSM action but authentication failed.", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10012B210()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012B294, v1, v0);
}

uint64_t sub_10012B294()
{

  static Log.ui.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to execute NSM action but authentication failed.", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012B3CC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_10001370C(v2, &qword_1001DBBB8);
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_10012B53C, v4, v3);
}

uint64_t sub_10012B53C()
{
  v31 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];

  static Log.ui.getter();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  if (v8)
  {
    v29 = v0[14];
    v13 = v0[11];
    v14 = v0[12];
    log = v6;
    v15 = v0[10];
    v28 = v0[17];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v16 = 136315138;
    v5(v14, v12, v15);
    v17 = String.init<A>(describing:)();
    v18 = v7;
    v20 = v19;
    (*(v13 + 8))(v12, v15);
    v21 = sub_1000E0FE0(v17, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, log, v18, "Finished executing action : %s", v16, 0xCu);
    sub_100006B44(v26);

    (*(v10 + 8))(v28, v29);
  }

  else
  {
    v22 = v0[10];
    v23 = v0[11];

    (*(v23 + 8))(v12, v22);
    (*(v10 + 8))(v9, v11);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10012B794()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DBB88);
  State.wrappedValue.setter();
  NewEntityModel.prepareForPresentationOfAction(_:)();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();

  NewSaliencyModel.presentedEntity.setter();
}

uint64_t sub_10012B874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012B90C, v6, v5);
}

uint64_t sub_10012B90C()
{

  v1 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v2 = NewSaliencyModel.isAskingMontara.getter();

  if (v2)
  {
    v3 = v0[5];
    *(swift_task_alloc() + 16) = v3;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    v4 = (v3 + *(v1 + 52));
    v6 = *v4;
    v5 = v4[1];
    v0[2] = v6;
    v0[3] = v5;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v7 = v0[4];
    swift_getKeyPath();
    v0[2] = v7;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = (v7 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v9 = *(v7 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    if (v9 != 1 && (v9 != 3 || v8[1] || *v8 != 2))
    {
      sub_10014FC70();
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10012BB00(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DB750);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v14[-v6];
  v8 = type metadata accessor for ResultLookupState();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for ContentView();
  sub_1000138BC(v7, v5, &qword_1001DB750);
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.setter();
  sub_1000F9408();
  sub_10001370C(v7, &qword_1001DB750);
  v10 = (a1 + *(v9 + 124));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[16] = v11;
  v15 = v12;
  v14[15] = 0;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  sub_10010AD70();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.isAskingMontara.setter();
}

uint64_t sub_10012BCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_1000033A8(&qword_1001DB750);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012BDB0, v6, v5);
}

uint64_t sub_10012BDB0()
{

  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v1 = NewSaliencyModel.isAskingMontara.getter();

  if ((v1 & 1) == 0)
  {
    v2 = v0[4];
    sub_1000033A8(&qword_1001DB7A8);
    State.wrappedValue.getter();
    v3 = type metadata accessor for ResultLookupState();
    v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
    sub_10001370C(v2, &qword_1001DB750);
    if (v4 != 1)
    {
      v5 = v0[3];
      *(swift_task_alloc() + 16) = v5;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10012BF4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1000033A8(&qword_1001DB750);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = type metadata accessor for ResultLookupState();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for ContentView();
  sub_1000138BC(v9, v7, &qword_1001DB750);
  sub_1000033A8(&qword_1001DB7A8);
  State.wrappedValue.setter();
  sub_1000F9408();
  sub_10001370C(v9, &qword_1001DB750);
  v12 = (a1 + *(v11 + 124));
  v13 = *v12;
  v14 = *(v12 + 1);
  v17[0] = v13;
  v18 = v14;
  v19 = 0;
  sub_1000033A8(&qword_1001D3E88);
  v15 = State.wrappedValue.setter();
  return a2(v15);
}

uint64_t sub_10012C104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1000033A8(&qword_1001D6DC0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012C204, v7, v6);
}

uint64_t sub_10012C204()
{

  v1 = type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  v2 = NewSaliencyModel.isAskingMontara.getter();

  if (v2)
  {
    goto LABEL_15;
  }

  v3 = (*(v0 + 104) + *(v1 + 52));
  v4 = *v3;
  v5 = v3[1];
  *(v0 + 16) = *v3;
  *(v0 + 24) = v5;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v6 = *(v0 + 72);
  swift_getKeyPath();
  *(v0 + 80) = v6;
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v8 = *(v6 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v8 == 1)
  {

LABEL_4:
    sub_100136E04();
    goto LABEL_9;
  }

  v9 = *v7;
  v10 = v7[1];
  sub_100060424(*v7, v10, *(v6 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v8 == 3 && v9 == 2 && !v10)
  {
    goto LABEL_4;
  }

  sub_1000616E4(v9, v10, v8);
LABEL_9:
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  State.wrappedValue.getter();
  v11 = *(v0 + 88);
  swift_getKeyPath();
  *(v0 + 96) = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v13 = *(v11 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v14 = *(v11 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v14 == 1 || v14 == 3 && v12 == 2 && !v13)
  {
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    sub_100060424(v12, v13, v14);
    static LoggingSignposter.cameraControllerPause.getter();
    default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
    LoggingSignposter.emitEvent(_:shouldLog:)();
    *(v0 + 48) = 2;
    *(v0 + 56) = 2;
    sub_1000033A8(&qword_1001D6DC8);
    AsyncStream.Continuation.yield(_:)();
    (*(v16 + 8))(v15, v17);
  }

  sub_10012C518();
LABEL_15:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10012C518()
{
  v1 = sub_1000033A8(&qword_1001DB740);
  v2 = __chkstk_darwin(v1 - 8);
  v12 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  v6 = type metadata accessor for VisualIntelligenceFrameEntity();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + *(type metadata accessor for ContentView() + 240));
  dispatch thunk of AppEntitiesProvider.reset()();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.engineIdentifier.getter();

  Bindable.wrappedValue.getter();
  NewSaliencyModel.fullscreenEntity.getter();

  VisualIntelligenceFrameEntity.init(engineIdentifier:modelEntity:)();
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000138BC(v5, v12, &qword_1001DB740);
  sub_1000033A8(&qword_1001DB7B8);
  State.wrappedValue.setter();
  sub_10001370C(v5, &qword_1001DB740);
  dispatch thunk of AppEntitiesProvider.add(entity:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10012C7A0()
{
  v1[4] = v0;
  sub_1000033A8(&qword_1001DBBA8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012C870, v3, v2);
}

uint64_t sub_10012C870()
{
  v1 = *(v0 + 40);

  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.bar.getter();

  v2 = NewBarModel.ask.getter();

  Bindable.wrappedValue.getter();
  v3 = NewSaliencyModel.targetEntity.getter();

  v4 = enum case for ActionAnalytics.ActionSource.actionBar(_:);
  v5 = type metadata accessor for ActionAnalytics.ActionSource();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  sub_100137530(v2, v3, v1);

  sub_10001370C(v1, &qword_1001DBBA8);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10012CA2C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10012CAD8;

  return sub_10012C7A0();
}

uint64_t sub_10012CAD8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012CC14, v1, v0);
}

uint64_t sub_10012CC14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012CC74(uint64_t a1)
{
  v52 = a1;
  v1 = type metadata accessor for WithCurrentHostingControllerAction();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AskAcmeAlert.MontaraRestrictionReason();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v50 - v8;
  v9 = type metadata accessor for AskAcmeAlert();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  String.LocalizationValue.init(stringLiteral:)();
  sub_10005BBC4(0, &qword_1001D42C8);
  if (!NSBundle.init(__dsoHandle:)())
  {
    v16 = [objc_opt_self() mainBundle];
  }

  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  (*(v10 + 16))(v12, v52, v9);
  v20 = (*(v10 + 88))(v12, v9);
  if (v20 == enum case for AskAcmeAlert.montaraRestriction(_:))
  {
    (*(v10 + 96))(v12, v9);
    v21 = v50;
    v22 = v53;
    v23 = v12;
    v24 = v51;
    (*(v50 + 32))(v53, v23, v51);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 543912769;
    v25._object = 0xE400000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
    v26._countAndFlagsBits = v17;
    v26._object = v19;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
    v28 = v22;
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v30 = v29;
    (*(v21 + 16))(v7, v28, v24);
    v31 = (*(v21 + 88))(v7, v24);
    if (v31 == enum case for AskAcmeAlert.MontaraRestrictionReason.mdmRestricted(_:))
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0xD000000000000027;
      v32._object = 0x800000010016ECC0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
      v33._countAndFlagsBits = v17;
      v33._object = v19;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v33);

      v34 = "uardian has turned off ";
      v35 = 0xD000000000000025;
LABEL_10:
      v38 = v34 | 0x8000000000000000;
LABEL_15:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v35);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v41 = String.init(localized:table:bundle:locale:comment:)();
      v43 = v46;
      (*(v21 + 8))(v53, v24);
      v39 = v52;
      goto LABEL_16;
    }

    if (v31 == enum case for AskAcmeAlert.MontaraRestrictionReason.ageRestricted(_:))
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v36);
      v37._countAndFlagsBits = v17;
      v37._object = v19;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v37);

      v34 = "available in this region";
      v35 = 0xD00000000000002ALL;
      goto LABEL_10;
    }

    if (v31 == enum case for AskAcmeAlert.MontaraRestrictionReason.useCaseDoesNotAllowCurrentIPCountryCode(_:))
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v44._countAndFlagsBits = 0x696C6572206B7341;
      v44._object = 0xEE00206E6F207365;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
      v45._countAndFlagsBits = v17;
      v45._object = v19;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v45);

      v38 = 0x800000010016EC60;
      v35 = 0x1000000000000028;
      goto LABEL_15;
    }
  }

  else
  {
    if (v20 == enum case for AskAcmeAlert.missingAssets(_:) || v20 == enum case for AskAcmeAlert.inCall(_:))
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v39 = String.init(localized:table:bundle:locale:comment:)();
      v30 = v40;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v41 = String.init(localized:table:bundle:locale:comment:)();
      v43 = v42;
LABEL_16:
      type metadata accessor for ContentView();
      v47 = v54;
      v48 = sub_1000543A0(v54);
      __chkstk_darwin(v48);
      *(&v50 - 4) = v39;
      *(&v50 - 3) = v30;
      *(&v50 - 2) = v41;
      *(&v50 - 1) = v43;
      WithCurrentHostingControllerAction.callAsFunction(_:)();

      return (*(v55 + 8))(v47, v56);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10012D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_10012D5DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 9, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_10012D5DC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10012D830;
  }

  else
  {
    v2 = sub_10012D6F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012D6F0()
{
  *(v0 + 74) = *(v0 + 72);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012D770, v2, v1);
}

uint64_t sub_10012D770()
{
  v1 = *(v0 + 74);

  if (v1 == 1)
  {
    v2 = *(v0 + 32);
    v3 = (v2 + *(type metadata accessor for ContentView() + 72));
    v4 = *v3;
    v5 = *(v3 + 1);
    *(v0 + 73) = 1;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.setter();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10012D830()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001439E8, v1, v0);
}

uint64_t sub_10012D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10012D9A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 7, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_10012D9A8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100116704;
  }

  else
  {
    v2 = sub_10012DABC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012DABC()
{
  *(v0 + 57) = *(v0 + 56);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012DB3C, v2, v1);
}

uint64_t sub_10012DB3C()
{
  v1 = *(v0 + 57);

  if (v1 == 1)
  {
    v2 = *(v0 + 16);
    *(swift_task_alloc() + 16) = v2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10012DC08(uint64_t a1, char a2)
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  return sub_1000F9A10(a2);
}

uint64_t sub_10012DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_10012DDB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 9, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_10012DDB0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10012E004;
  }

  else
  {
    v2 = sub_10012DEC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012DEC4()
{
  *(v0 + 74) = *(v0 + 72);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012DF44, v2, v1);
}

uint64_t sub_10012DF44()
{
  v1 = *(v0 + 74);

  if (v1 == 1)
  {
    v2 = *(v0 + 32);
    v3 = (v2 + *(type metadata accessor for ContentView() + 68));
    v4 = *v3;
    v5 = *(v3 + 1);
    *(v0 + 73) = 1;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.setter();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10012E004()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012E088, v1, v0);
}

uint64_t sub_10012E088()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10012E0E8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

    v4 = [objc_opt_self() mainBundle];
    v11._object = 0xEE006E6F74747542;
    v5._countAndFlagsBits = 0x7373696D736944;
    v11._countAndFlagsBits = 0x207373696D736944;
    v5._object = 0xE700000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

    v7 = String._bridgeToObjectiveC()();

    v8 = [objc_opt_self() actionWithTitle:v7 style:0 handler:0];

    [v9 addAction:v8];
    [v1 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10012E2AC()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001D3E88);
  return State.wrappedValue.setter();
}

uint64_t sub_10012E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v6 = type metadata accessor for LoggingSignposter();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = type metadata accessor for MainActor();
  v5[38] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[39] = v8;
  v5[40] = v7;

  return _swift_task_switch(sub_10012E41C, v8, v7);
}

uint64_t sub_10012E41C()
{
  v1 = v0[33];
  static LoggingSignposter.awaitCaptureEffectsMedia.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v2 = type metadata accessor for ContentView();
  v0[41] = v2;
  v3 = (v1 + *(v2 + 52));
  v4 = *v3;
  v0[42] = *v3;
  v5 = v3[1];
  v0[43] = v5;
  v0[24] = v4;
  v0[25] = v5;
  v0[44] = sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[45] = v0[30];
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_10012E544;

  return sub_100150D74();
}

uint64_t sub_10012E544(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v5 = v4[39];
    v6 = v4[40];
    v7 = sub_10012F0E8;
  }

  else
  {

    v5 = v4[39];
    v6 = v4[40];
    v7 = sub_10012E664;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10012E664()
{
  IOSurface = CVPixelBufferGetIOSurface(*(v0 + 376));
  *(v0 + 400) = IOSurface;
  if (IOSurface)
  {
    v2 = IOSurface;
    v3 = sub_1001394C4(v2);
    *(v0 + 408) = v3;
    v4 = *(v0 + 384);
    if (v3)
    {
      *(v0 + 416) = [objc_allocWithZone(UIImage) initWithCIImage:v4 scale:0 orientation:1.0];
      sub_100006AAC((v0 + 16), *(v0 + 40));
      dispatch thunk of LoggingSignposter.Interval.end()();

      return _swift_task_switch(sub_10012E7B8, 0, 0);
    }

    v5 = *(v0 + 376);
  }

  else
  {
    v4 = *(v0 + 376);
    v2 = *(v0 + 384);
  }

  sub_100006B44(v0 + 16);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10012E7B8()
{
  *(v0 + 424) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012E844, v2, v1);
}

uint64_t sub_10012E844()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v3 = *(v0 + 328);
  v4 = *(v0 + 264);

  v5 = v4 + *(v3 + 84);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v0 + 136) = *v5;
  *(v0 + 152) = v6;
  *(v0 + 160) = v7;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  *(v0 + 184) = 1;
  v8 = v2;
  v9 = v1;
  sub_1000033A8(&qword_1001DBBC0);
  State.wrappedValue.setter();
  v10 = (v4 + *(v3 + 136));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 208) = v11;
  *(v0 + 216) = v12;
  *(v0 + 185) = 2;
  sub_1000033A8(&qword_1001DBB70);
  State.wrappedValue.setter();
  v13 = *(v0 + 312);
  v14 = *(v0 + 320);

  return _swift_task_switch(sub_10012E96C, v13, v14);
}

uint64_t sub_10012E96C()
{
  v1 = v0[43];
  v2 = v0[42];
  static LoggingSignposter.awaitHighQualityStillImage.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v0[28] = v2;
  v0[29] = v1;
  State.wrappedValue.getter();
  v0[54] = v0[31];
  v0[55] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[56] = v4;
  v0[57] = v3;

  return _swift_task_switch(sub_10012EA6C, v4, v3);
}

uint64_t sub_10012EA6C()
{
  v1 = v0[54];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  static LoggingSignposter.viewfinder.getter();
  static LoggingSignposter.cameraControllerGetDisplayFrame.getter();
  default argument 1 of LoggingSignposter.autoInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.autoInterval(_:shouldLog:enableTelemetry:)();
  v0[58] = LoggingSignposter.autoInterval(_:shouldLog:enableTelemetry:)();
  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_displayMaxDimension);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_10012EB90;

  return sub_10015134C((v0 + 12), v5);
}

uint64_t sub_10012EB90()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_10012EF00;
  }

  else
  {
    v5 = sub_10012ECCC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10012ECCC()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return _swift_task_switch(sub_10012ED44, v1, v2);
}

uint64_t sub_10012ED44()
{
  sub_100006AAC((v0 + 56), *(v0 + 80));
  dispatch thunk of LoggingSignposter.Interval.end()();

  return _swift_task_switch(sub_10012EDCC, 0, 0);
}

uint64_t sub_10012EDCC()
{
  *(v0 + 488) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012EE58, v2, v1);
}

uint64_t sub_10012EE58()
{
  v1 = v0[60];
  v2 = v0[33];

  sub_10012F16C(v0 + 12, v2);
  if (v1)
  {
  }

  else
  {
    v4 = v0[39];
    v5 = v0[40];

    return _swift_task_switch(sub_10012F02C, v4, v5);
  }
}

uint64_t sub_10012EF00()
{

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return _swift_task_switch(sub_10012EF78, v1, v2);
}

uint64_t sub_10012EF78()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);

  sub_100006B44(v0 + 56);
  sub_100006B44(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10012F02C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);

  sub_100006B44(v0 + 96);
  sub_100006B44(v0 + 56);
  sub_100006B44(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10012F0E8()
{

  sub_100006B44(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012F16C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&unk_1001D9BE8);
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v22 = &v22 - v9;
  sub_100006AAC(a1, a1[3]);
  v10 = CameraSourceFrame.surface.getter();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1001394C4(v10);
    if (v12)
    {
      v13 = v12;
      v14 = (a2 + *(type metadata accessor for ContentView() + 88));
      v15 = v14[1];
      v25 = *v14;
      v16 = v25;
      v26 = v15;
      v27 = v13;

      v17 = v16;
      sub_1000033A8(&qword_1001DBB78);
      State.wrappedValue.setter();
    }
  }

  sub_10010B268();
  type metadata accessor for ContentView();
  LOBYTE(v25) = 1;
  sub_1000033A8(&qword_1001DA1B8);
  AccessibilityFocusState.wrappedValue.setter();
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of CameraSourceFrame.cameraImage.getter();
  if ((*(v5 + 88))(v7, v4) == enum case for CameraImage.pixelBuffer(_:))
  {
    (*(v5 + 96))(v7, v4);
    v19 = v22;
    v18 = v23;
    v20 = v24;
    (*(v23 + 32))(v22, v7, v24);
    sub_1000033A8(&qword_1001DB778);
    Bindable.wrappedValue.getter();
    NewSaliencyModel.userSelection.getter();

    SendableTransfer.wrappedValue.getter();
    FocusSelectionModel.pixelBuffer.setter();

    (*(v18 + 8))(v19, v20);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.userSelection.getter();

  FocusSelectionModel.active.setter();
}

uint64_t sub_10012F500()
{
  type metadata accessor for ContentView();
  sub_1000033A8(&qword_1001DB778);
  Bindable.wrappedValue.getter();
  NewSaliencyModel.isAskingMontara.setter();
}

uint64_t sub_10012F570(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  sub_1000033A8(&qword_1001D8020);
  *(v3 + 88) = swift_task_alloc();
  v4 = type metadata accessor for VITapToRadarInvocation.ActionType();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  sub_1000033A8(&qword_1001DBB60);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = type metadata accessor for MainActor();
  *(v3 + 144) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 152) = v6;
  *(v3 + 160) = v5;

  return _swift_task_switch(sub_10012F6E8, v6, v5);
}

uint64_t sub_10012F6E8()
{
  v1 = v0[10];
  v2 = (v1 + *(type metadata accessor for ContentView() + 52));
  v3 = *v2;
  v0[21] = *v2;
  v4 = v2[1];
  v0[22] = v4;
  v0[2] = v3;
  v0[3] = v4;
  v0[23] = sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();
  v0[24] = v0[6];
  v0[25] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[26] = v6;
  v0[27] = v5;

  return _swift_task_switch(sub_10012F7CC, v6, v5);
}

uint64_t sub_10012F7CC()
{
  v1 = *(*(v0 + 192) + 16);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_10012F7F0, v1, 0);
}

uint64_t sub_10012F7F0()
{
  v0[7] = *(v0[28] + 112);
  v1 = swift_task_alloc();
  v0[29] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_10012F8BC;
  v4 = v0[16];

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(v4, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_10012F8BC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_10012F9DC, v3, v2);
}

uint64_t sub_10012F9DC()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_10012FA48, v1, v2);
}

uint64_t sub_10012FA48()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = &enum case for VITapToRadarInvocation.ActionType.dataCollection(_:);
  if (!*(v0 + 264))
  {
    v3 = &enum case for VITapToRadarInvocation.ActionType.sysdiagnose(_:);
  }

  (*(*(v0 + 104) + 104))(*(v0 + 112), *v3, *(v0 + 96));
  sub_1000138BC(v2, v1, &qword_1001DBB60);
  v4 = type metadata accessor for OverlaySupportData();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 120);
  if (v6 == 1)
  {
    sub_10001370C(*(v0 + 120), &qword_1001DBB60);
    v8 = 0;
  }

  else
  {
    v8 = OverlaySupportData.crDocument.getter();
    (*(v5 + 8))(v7, v4);
  }

  *(v0 + 240) = v8;
  v9 = *(v0 + 176);
  v10 = *(v0 + 168);
  v11 = *(v0 + 88);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *(v0 + 32) = v10;
  *(v0 + 40) = v9;
  State.wrappedValue.getter();
  v13 = *(v0 + 64);
  *(v0 + 248) = v13;
  v14 = sub_10013FB34(&qword_1001DB788, type metadata accessor for CameraController);
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_10012FCA4;
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 72);

  return static VITapToRadarInvocation.createVIRadarDraft(actionType:attachments:crDocument:stillCompositeOverlay:saliencyStream:)(v16, v18, v8, v17, v13, v14);
}

uint64_t sub_10012FCA4()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 88);

  sub_10001370C(v6, &qword_1001D8020);
  (*(v4 + 8))(v3, v5);
  v7 = *(v1 + 160);
  v8 = *(v1 + 152);

  return _swift_task_switch(sub_10012FE90, v8, v7);
}

uint64_t sub_10012FE90()
{
  v1 = *(v0 + 128);

  sub_10001370C(v1, &qword_1001DBB60);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10012FF3C()
{
  v0 = type metadata accessor for Logger();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &countAndFlagsBits - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &countAndFlagsBits - v5;
  __chkstk_darwin(v4);
  v8 = &countAndFlagsBits - v7;
  v9 = URL.path(percentEncoded:)(0);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  countAndFlagsBits = v9._countAndFlagsBits;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 isDeletableFileAtPath:v12];

  if (v13)
  {
    v14 = [v10 defaultManager];
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v42 = 0;
    v18 = [v14 removeItemAtURL:v16 error:&v42];

    if (v18)
    {
      v19 = v42;
      static Log.cameraSource.getter();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42 = v23;
        *v22 = 136315138;
        v24 = sub_1000E0FE0(countAndFlagsBits, v9._object, &v42);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Deleted temporary recording at path %s", v22, 0xCu);
        sub_100006B44(v23);
      }

      else
      {
      }

      return (*(v40 + 8))(v8, v41);
    }

    else
    {
      v30 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Log.cameraSource.getter();

      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v33 = 136315394;
        v34 = sub_1000E0FE0(countAndFlagsBits, v9._object, &v42);

        *(v33 + 4) = v34;
        *(v33 + 12) = 2080;
        swift_getErrorValue();
        v35 = Error.localizedDescription.getter();
        v37 = sub_1000E0FE0(v35, v36, &v42);

        *(v33 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Unable to remove temporary recording file at path %s: %s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v40 + 8))(v3, v41);
    }
  }

  else
  {
    static Log.cameraSource.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315138;
      v29 = sub_1000E0FE0(countAndFlagsBits, v9._object, &v42);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Recording doesn't exist to delete at: %s", v27, 0xCu);
      sub_100006B44(v28);
    }

    else
    {
    }

    return (*(v40 + 8))(v6, v41);
  }
}

uint64_t sub_1001304B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[23] = a1;
  v5[26] = sub_1000033A8(&qword_1001D44B0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for ContentView();
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v5[31] = *(v7 + 64);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for AnnotationViewConfiguration();
  v5[33] = v8;
  v9 = *(v8 - 8);
  v5[34] = v9;
  v5[35] = *(v9 + 64);
  v5[36] = swift_task_alloc();
  v5[37] = sub_1000033A8(&qword_1001DBB00);
  v5[38] = swift_task_alloc();
  v5[39] = sub_1000033A8(&qword_1001DBB08);
  v5[40] = swift_task_alloc();
  v10 = sub_1000033A8(&qword_1001DBB10);
  v5[41] = v10;
  v5[42] = *(v10 - 8);
  v5[43] = swift_task_alloc();
  v11 = type metadata accessor for EnvironmentValues();
  v5[44] = v11;
  v5[45] = *(v11 - 8);
  v5[46] = swift_task_alloc();
  v12 = type metadata accessor for URL.DirectoryHint();
  v5[47] = v12;
  v5[48] = *(v12 - 8);
  v5[49] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v5[50] = v13;
  v5[51] = *(v13 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v14 = sub_1000033A8(&unk_1001D9BE8);
  v5[57] = v14;
  v5[58] = *(v14 - 8);
  v5[59] = swift_task_alloc();
  v15 = type metadata accessor for CameraImage();
  v5[60] = v15;
  v5[61] = *(v15 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v5[64] = v16;
  v5[65] = *(v16 - 8);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[68] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001309C0, v18, v17);
}

uint64_t sub_1001309C0()
{
  v1 = *(v0 + 192);

  sub_100006AAC(v1, v1[3]);
  v2 = CameraSourceFrame.cgImage.getter();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 504);
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    v7 = *(v0 + 192);
    sub_100006AAC(v7, v1[3]);
    dispatch thunk of CameraSourceFrame.cameraImage.getter();
    CameraImage.imageResolution.getter();
    v8 = *(v6 + 8);
    v8(v4, v5);
    sub_100006AAC(v7, v1[3]);
    CameraSourceFrame.timestamp.getter();
    v12 = *&v11 & 0x7FFFFFFFFFFFFFFFLL;
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v12 = 0xC3E0000000000001;
      if (v11 > -9.22337204e18)
      {
        v12 = 0x43E0000000000000;
        if (v11 < 9.22337204e18)
        {
          v165 = v3;
          v13 = *(v0 + 488);
          v14 = *(v0 + 496);
          v15 = *(v0 + 480);
          v16 = *(v0 + 192);
          *(v0 + 144) = v11;
          v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v17);

          v136._countAndFlagsBits = 0x5F6C6C697453;
          v136._object = 0xE600000000000000;
          sub_100006AAC(v16, v1[3]);
          dispatch thunk of CameraSourceFrame.cameraImage.getter();
          v18 = (*(v13 + 88))(v14, v15);
          v19 = *(v0 + 496);
          if (v18 != enum case for CameraImage.pixelBuffer(_:))
          {
            v8(*(v0 + 496), *(v0 + 480));
            goto LABEL_12;
          }

          v21 = *(v0 + 464);
          v20 = *(v0 + 472);
          v22 = *(v0 + 456);
          (*(*(v0 + 488) + 96))(*(v0 + 496), *(v0 + 480));
          (*(v21 + 32))(v20, v19, v22);
          SendableTransfer.wrappedValue.getter();
          v23 = *(v0 + 168);
          v24 = CVBufferRef.cvPixelData.getter();
          v26 = v25;

          if (v26 >> 60 == 15)
          {
            (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
LABEL_12:
            v138 = _swiftEmptyArrayStorage;
LABEL_16:
            v59 = *(v0 + 328);
            v58 = *(v0 + 336);
            v60 = *(v0 + 200);
            sub_1000033A8(&qword_1001DBB18);
            v61 = *(v58 + 72);
            v62 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v63 = (swift_allocObject() + v62);
            *v63 = 0x6C616E696769724FLL;
            v63[1] = 0xE800000000000000;
            default argument 0 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            default argument 2 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            default argument 3 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            v147 = v61;
            v64 = (v63 + v61);
            *v64 = 0x7365786F42;
            v64[1] = 0xE500000000000000;
            default argument 0 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            default argument 2 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            default argument 3 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            v129 = v63;
            v65 = (v63 + 2 * v61);
            *v65 = 1954047316;
            v65[1] = 0xE400000000000000;
            default argument 0 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            default argument 2 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            default argument 3 of AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)();
            if ((*(v60 + 24) & 1) == 0)
            {
              v66 = *(v60 + 16);
              v68 = *(v0 + 360);
              v67 = *(v0 + 368);
              v69 = *(v0 + 352);

              static os_log_type_t.fault.getter();
              v70 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              EnvironmentValues.init()();
              swift_getAtKeyPath();
              sub_100133E10(v66, 0);
              (*(v68 + 8))(v67, v69);
            }

            v71 = *(v0 + 520);
            v72 = *(v0 + 408);
            v73 = *(v0 + 384);
            v74 = *(v0 + 344);
            v144 = *(v0 + 304);
            v145 = *(v0 + 312);
            v168 = *(v0 + 296);
            v75 = *(v0 + 272);
            v76 = *(v0 + 232);
            v142 = *(v0 + 240);
            v77 = *(v0 + 200);
            v128 = v165;
            v148 = Image.init(decorative:scale:orientation:)();
            v146 = v74;
            v141 = v74 + *(v59 + 48);
            type metadata accessor for CameraController();
            v78 = (v77 + *(v76 + 52));
            v143 = v75;
            v139 = v78[1];
            v140 = *v78;
            v133 = (v73 + 8);
            v134 = (v73 + 104);
            v132 = enum case for URL.DirectoryHint.inferFromPath(_:);
            v137 = (v72 + 8);
            v135 = v72;
            v131 = (v72 + 16);
            v130 = (v71 + 8);
            v79 = 3;
            v80 = v129;
            do
            {
              v150 = v79;
              v81 = *(v0 + 344);
              v82 = *(v0 + 304);
              v159 = *(v0 + 320);
              v83 = *(v0 + 288);
              v151 = *(v0 + 280);
              v152 = v82;
              v84 = *(v0 + 256);
              v85 = *(v0 + 264);
              v153 = *(v0 + 224);
              v86 = *(v0 + 200);
              v155 = *(v0 + 216);
              v166 = v80;
              sub_1000138BC(v80, v81, &qword_1001DBB10);
              v149 = *v81;
              v164 = *(v146 + 8);
              (*(v143 + 16))(v82 + v168[12], v141, v85);
              v87 = *(v143 + 32);
              v87(v83, v141, v85);
              sub_10013DAC8(v86, v84, type metadata accessor for ContentView);
              v88 = (*(v143 + 80) + 24) & ~*(v143 + 80);
              v89 = (v151 + *(v142 + 80) + v88) & ~*(v142 + 80);
              v90 = swift_allocObject();
              *(v90 + 16) = v148;
              v87(v90 + v88, v83, v85);
              sub_100136D64(v84, v90 + v89, type metadata accessor for ContentView);
              sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);

              *v152 = Environment.init<A>(_:)();
              *(v144 + 8) = v91 & 1;
              *(v0 + 552) = 0;
              State.init(wrappedValue:)();
              v92 = *(v0 + 72);
              *(v144 + 16) = *(v0 + 64);
              *(v144 + 24) = v92;
              *(v0 + 553) = 0;
              State.init(wrappedValue:)();
              v93 = *(v0 + 88);
              *(v144 + 32) = *(v0 + 80);
              *(v144 + 40) = v93;
              v94 = type metadata accessor for UUID();
              (*(*(v94 - 8) + 56))(v153, 1, 1, v94);
              sub_1000138BC(v153, v155, &qword_1001D44B0);
              State.init(wrappedValue:)();
              sub_10001370C(v153, &qword_1001D44B0);
              *(v152 + v168[13]) = 0;
              v95 = (v152 + v168[14]);
              *v95 = sub_100135DD8;
              v95[1] = v90;
              *(v0 + 96) = v140;
              *(v0 + 104) = v139;
              sub_1000033A8(&qword_1001DB780);
              State.wrappedValue.getter();
              sub_100013608(&qword_1001DBB20, &qword_1001DBB00);
              View.environment<A>(_:)();

              sub_10001370C(v152, &qword_1001DBB00);
              static Alignment.center.getter();
              _FrameLayout.init(width:height:alignment:)();
              v96 = (v159 + *(v145 + 36));
              v97 = *(v0 + 16);
              v98 = *(v0 + 48);
              v96[1] = *(v0 + 32);
              v96[2] = v98;
              *v96 = v97;
              sub_1000033A8(&qword_1001DBB28);
              swift_allocObject();
              ImageRenderer.init(content:)();
              ImageRenderer.scale.setter();
              v99 = ImageRenderer.cgImage.getter();
              if (v99)
              {
                v100 = v99;
                v101 = CGImageRef.toPNG()();
                if (v102 >> 60 == 15)
                {

                  static Log.ui.getter();
                  v103 = Logger.logObject.getter();
                  v104 = static os_log_type_t.error.getter();
                  v105 = os_log_type_enabled(v103, v104);
                  v106 = *(v0 + 528);
                  v107 = *(v0 + 512);
                  if (v105)
                  {
                    v108 = swift_slowAlloc();
                    *v108 = 0;
                    _os_log_impl(&_mh_execute_header, v103, v104, "Failed to generate png from image", v108, 2u);
                  }

                  (*v130)(v106, v107);
                }

                else
                {
                  v109 = v102;
                  v110 = *(v0 + 440);
                  v111 = *(v0 + 424);
                  v112 = *(v0 + 392);
                  v157 = *(v0 + 400);
                  v160 = *(v0 + 416);
                  v113 = *(v0 + 376);
                  v162 = v101;
                  static URL.temporaryDirectory.getter();
                  v114._countAndFlagsBits = 95;
                  v114._object = 0xE100000000000000;
                  String.append(_:)(v114);
                  String.append(_:)(v136);
                  v115._countAndFlagsBits = 1735290926;
                  v115._object = 0xE400000000000000;
                  String.append(_:)(v115);
                  *(v0 + 112) = v149;
                  *(v0 + 120) = v164;
                  (*v134)(v112, v132, v113);
                  sub_10002EC9C();
                  URL.appending<A>(path:directoryHint:)();
                  (*v133)(v112, v113);

                  v116 = *v137;
                  (*v137)(v110, v157);
                  v117 = [objc_opt_self() defaultManager];
                  URL.path(percentEncoded:)(1);
                  v118 = String._bridgeToObjectiveC()();

                  isa = Data._bridgeToObjectiveC()().super.isa;
                  [v117 createFileAtPath:v118 contents:isa attributes:0];

                  (*v131)(v160, v111, v157);
                  v120 = v138;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v120 = sub_10009567C(0, v138[2] + 1, 1, v138);
                  }

                  v122 = v120[2];
                  v121 = v120[3];
                  if (v122 >= v121 >> 1)
                  {
                    v138 = sub_10009567C(v121 > 1, v122 + 1, 1, v120);
                  }

                  else
                  {
                    v138 = v120;
                  }

                  v124 = *(v0 + 416);
                  v123 = *(v0 + 424);
                  v125 = *(v0 + 400);

                  sub_100135EB0(v162, v109);

                  v116(v123, v125);
                  v138[2] = v122 + 1;
                  (*(v135 + 32))(v138 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v122, v124, v125);
                }
              }

              else
              {
              }

              v80 = v166 + v147;
              v79 = v150 - 1;
            }

            while (v150 != 1);

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v34 = v138;
            goto LABEL_33;
          }

          v35 = *(v0 + 440);
          v161 = *(v0 + 432);
          v36 = *(v0 + 408);
          v154 = *(v0 + 448);
          v156 = *(v0 + 400);
          v37 = *(v0 + 384);
          v38 = *(v0 + 392);
          v39 = *(v0 + 376);
          SendableTransfer.wrappedValue.getter();
          v40 = *(v0 + 176);
          v41 = CVBufferRef.pixelFormat.getter();
          v167 = v24;
          v43 = v42;

          static URL.temporaryDirectory.getter();
          _StringGuts.grow(_:)(17);
          v163 = v26;

          v44._countAndFlagsBits = 0x75626C657869705FLL;
          v44._object = 0xED00002E72656666;
          String.append(_:)(v44);
          v45._countAndFlagsBits = v41;
          v45._object = v43;
          String.append(_:)(v45);

          *(v0 + 128) = 0x5F6C6C697453;
          *(v0 + 136) = 0xE600000000000000;
          (*(v37 + 104))(v38, enum case for URL.DirectoryHint.inferFromPath(_:), v39);
          sub_10002EC9C();
          URL.appending<A>(path:directoryHint:)();
          (*(v37 + 8))(v38, v39);

          v158 = *(v36 + 8);
          v158(v35, v156);
          v46 = [objc_opt_self() defaultManager];
          URL.path(percentEncoded:)(1);
          v47 = String._bridgeToObjectiveC()();

          v48 = Data._bridgeToObjectiveC()().super.isa;
          [v46 createFileAtPath:v47 contents:v48 attributes:0];

          (*(v36 + 16))(v161, v154, v156);
          v49 = sub_10009567C(0, 1, 1, _swiftEmptyArrayStorage);
          v10 = v49;
          v5 = *(v49 + 16);
          v12 = *(v49 + 24);
          v9 = v5 + 1;
          if (v5 < v12 >> 1)
          {
            v50 = v5 + 1;
            v138 = v49;
LABEL_15:
            v52 = *(v0 + 464);
            v51 = *(v0 + 472);
            v54 = *(v0 + 448);
            v53 = *(v0 + 456);
            v55 = *(v0 + 432);
            v57 = *(v0 + 400);
            v56 = *(v0 + 408);
            sub_100135EB0(v167, v163);
            v158(v54, v57);
            (*(v52 + 8))(v51, v53);
            v138[2] = v50;
            (*(v56 + 32))(v138 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v5, v55, v57);
            goto LABEL_16;
          }

LABEL_39:
          v50 = v9;
          v138 = sub_10009567C(v12 > 1, v9, 1, v10);
          goto LABEL_15;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  static Log.ui.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 536);
  v31 = *(v0 + 520);
  v32 = *(v0 + 512);
  if (v29)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not get high quality frame. Aborting TTR visualization capture.", v33, 2u);
  }

  (*(v31 + 8))(v30, v32);
  v34 = _swiftEmptyArrayStorage;
LABEL_33:
  **(v0 + 184) = v34;

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_100131B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_1000033A8(&qword_1001DBB30);
  return sub_100131B98(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_100131B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v63 = a2;
  v66 = a3;
  v4 = type metadata accessor for BundleTextDetailView();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = __chkstk_darwin(v4);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v55 - v7;
  v8 = sub_1000033A8(&qword_1001DBB38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = sub_1000033A8(&qword_1001D4530);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v65 = type metadata accessor for CVBundle();
  v15 = *(v65 - 8);
  v16 = __chkstk_darwin(v65);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v64 = &v55 - v19;
  v20 = sub_1000033A8(&qword_1001DBB40);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v55 - v24;
  if (AnnotationViewConfiguration.showText.getter())
  {
    v56 = v9;
    v57 = v8;
    v58 = a1;
    v26 = type metadata accessor for ContentView();
    v27 = v63;
    v28 = (v63 + *(v26 + 52));
    v30 = *v28;
    v29 = v28[1];
    v67 = v30;
    v68 = v29;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v31 = sub_100149908();

    __chkstk_darwin(v32);
    *(&v55 - 2) = v27;
    sub_100071B7C(sub_100135EC4, v31, v14);

    if ((*(v15 + 48))(v14, 1, v65) != 1)
    {
      v55 = v15;
      v33 = v64;
      v34 = v14;
      v35 = v65;
      (*(v15 + 32))(v64, v34, v65);
      *v11 = static HorizontalAlignment.center.getter();
      *(v11 + 1) = 0;
      v11[16] = 1;
      v36 = &v11[*(sub_1000033A8(&qword_1001DBB50) + 44)];
      (*(v15 + 16))(v18, v33, v35);
      v37 = v59;
      BundleTextDetailView.init(bundle:renderOnly:)();
      LOBYTE(v67) = 1;
      v39 = v60;
      v38 = v61;
      v40 = *(v61 + 16);
      v41 = v62;
      v40(v60, v37, v62);
      v42 = v67;
      *v36 = 0;
      v36[8] = v42;
      v43 = sub_1000033A8(&qword_1001DBB58);
      v40(&v36[*(v43 + 48)], v39, v41);
      v44 = *(v38 + 8);
      v44(v37, v41);
      v44(v39, v41);
      v45 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v46 = v57;
      v47 = &v11[*(v57 + 36)];
      *v47 = v45;
      *(v47 + 1) = v48;
      *(v47 + 2) = v49;
      *(v47 + 3) = v50;
      *(v47 + 4) = v51;
      v47[40] = 0;
      sub_10002091C(v11, v25, &qword_1001DBB38);
      (*(v56 + 56))(v25, 0, 1, v46);
      (*(v55 + 8))(v64, v65);
      a1 = v58;
      goto LABEL_6;
    }

    sub_10001370C(v14, &qword_1001D4530);
    v8 = v57;
    a1 = v58;
    v9 = v56;
  }

  (*(v9 + 56))(v25, 1, 1, v8);
LABEL_6:
  sub_1000138BC(v25, v23, &qword_1001DBB40);
  v52 = v66;
  *v66 = a1;
  v53 = sub_1000033A8(&qword_1001DBB48);
  sub_1000138BC(v23, v52 + *(v53 + 48), &qword_1001DBB40);
  swift_retain_n();
  sub_10001370C(v25, &qword_1001DBB40);
  sub_10001370C(v23, &qword_1001DBB40);
}

uint64_t sub_1001321C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D51D8);
  __chkstk_darwin(v4 - 8);
  v55 = &v47 - v5;
  v56 = type metadata accessor for URL();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Logger();
  v11 = *(v57 - 8);
  v12 = __chkstk_darwin(v57);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = type metadata accessor for EnablementUIDismissType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v1 + *(type metadata accessor for ContentView() + 68));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v59) = v25;
  v60 = v26;
  v58 = 0;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  (*(v21 + 16))(v23, a1, v20);
  v27 = (*(v21 + 88))(v23, v20);
  if (v27 == enum case for EnablementUIDismissType.cancel(_:) || v27 == enum case for EnablementUIDismissType.notNow(_:))
  {
    static Log.acme.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "User has exited Generative Assistant set up.", v34, 2u);
    }

    return (*(v11 + 8))(v19, v57);
  }

  else if (v27 == enum case for EnablementUIDismissType.enableWithAccount(_:))
  {
    static Log.acme.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Opening Generative Assistant settings since the user has an account…", v30, 2u);
    }

    (*(v11 + 8))(v14, v57);
    v31 = *(v2 + 64);
    if (*(v2 + 80) == 1)
    {
    }

    else
    {

      static os_log_type_t.fault.getter();
      v39 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v40 = v47;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000357B8();
      (*(v48 + 8))(v40, v49);
      v31 = v59;
    }

    v41 = v50;
    v42 = v51;
    v43 = v52;
    (*(v51 + 104))(v50, enum case for GenerativeAssistantSettingsDestination.signIn(_:), v52);
    v44 = v53;
    GenerativeAssistantSettingsDestination.fullURL.getter();
    (*(v42 + 8))(v41, v43);
    v45 = v55;
    OpenSensitiveURLOptions.init(promptForUnlock:)();
    v46 = type metadata accessor for OpenSensitiveURLOptions();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v31(v44, v45);

    sub_10001370C(v45, &qword_1001D51D8);
    return (*(v54 + 8))(v44, v56);
  }

  else if (v27 == enum case for EnablementUIDismissType.enableWithoutAccount(_:))
  {
    static Log.acme.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Generative Assistant has been enabled without an account", v38, 2u);
    }

    (*(v11 + 8))(v17, v57);
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    return static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)();
  }

  else
  {
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t type metadata accessor for ContentView()
{
  result = qword_1001DB818;
  if (!qword_1001DB818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001329A4(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_100132A6C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100132A98@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100132AEC@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = EnvironmentValues.openSensitiveURL.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100132BD8;
  a1[1] = result;
  return result;
}

uint64_t sub_100132B78()
{

  return swift_deallocObject();
}

uint64_t sub_100132C24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000033A8(&qword_1001DB798);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_1000033A8(&qword_1001DB7A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_7;
  }

  v11 = sub_1000033A8(&qword_1001DB7A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[11];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[13]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000033A8(&qword_1001DB7B0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[23];
      goto LABEL_7;
    }

    v16 = type metadata accessor for ActionPin.Pill();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[66];
      goto LABEL_7;
    }

    v17 = sub_1000033A8(&qword_1001DB7B8);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[68];
      goto LABEL_7;
    }

    v18 = sub_1000033A8(&qword_1001DA1B8);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v7 = v18;
      v8 = *(v18 - 8);
      v9 = a3[70];
      goto LABEL_7;
    }

    v19 = sub_1000033A8(&qword_1001DB778);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[72];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_100132F64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000033A8(&qword_1001DB798);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1000033A8(&qword_1001DB7A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  result = sub_1000033A8(&qword_1001DB7A8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v15 = sub_1000033A8(&qword_1001DB7B0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[23];
    goto LABEL_7;
  }

  v16 = type metadata accessor for ActionPin.Pill();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[66];
    goto LABEL_7;
  }

  v17 = sub_1000033A8(&qword_1001DB7B8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[68];
    goto LABEL_7;
  }

  v18 = sub_1000033A8(&qword_1001DA1B8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[70];
    goto LABEL_7;
  }

  v19 = sub_1000033A8(&qword_1001DB778);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[72];

  return v20(v21, a2, a2, v19);
}

void sub_100133290()
{
  sub_100133D4C(319, &qword_1001DB828, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100133CE8(319, &qword_1001DB830, type metadata accessor for LaunchOptions, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100133CE8(319, &qword_1001DB838, type metadata accessor for SiriRequestStateResponder, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100133C24(319, &qword_1001D5010, &qword_1001D5018, &unk_100172688, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100133CE8(319, &qword_1001DB840, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100133CE8(319, &qword_1001DB848, type metadata accessor for AppConfiguration, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100133C24(319, &qword_1001DB850, &qword_1001DB750, &unk_10017B798, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_100133D4C(319, &qword_1001D44A0, &type metadata for Bool, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_100133CE8(319, &qword_1001DB858, type metadata accessor for CameraController, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_100133D4C(319, &qword_1001DB860, &type metadata for String, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_100133C88(319, &qword_1001DB868, &type metadata accessor for FocusState);
                      if (v10 <= 0x3F)
                      {
                        sub_100133D4C(319, &qword_1001DB870, &type metadata for ScanwaveData, &type metadata accessor for State);
                        if (v11 <= 0x3F)
                        {
                          sub_100133C24(319, &qword_1001DB878, &qword_1001DB758, &unk_10017B860, &type metadata accessor for State);
                          if (v12 <= 0x3F)
                          {
                            sub_100133C24(319, &qword_1001DB880, &qword_1001DB748, &unk_10017B790, &type metadata accessor for State);
                            if (v13 <= 0x3F)
                            {
                              sub_100133C24(319, &qword_1001DB888, &qword_1001DB760, &unk_10017B868, &type metadata accessor for State);
                              if (v14 <= 0x3F)
                              {
                                sub_100133D4C(319, &qword_1001DB890, &type metadata for Double, &type metadata accessor for GestureState);
                                if (v15 <= 0x3F)
                                {
                                  sub_100133D4C(319, &qword_1001D4808, &type metadata for Double, &type metadata accessor for State);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_100133C24(319, &qword_1001DB898, &qword_1001DB768, &unk_10017B870, &type metadata accessor for State);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_100133C24(319, &qword_1001DB8A0, &qword_1001D6CA0, &unk_100175F20, &type metadata accessor for State);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_100133D4C(319, &qword_1001DB8A8, &type metadata for CaptureEffectsState, &type metadata accessor for State);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_100133D4C(319, &qword_1001DB8B0, &type metadata for ActionBarSortOrder, &type metadata accessor for State);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_100133C24(319, &qword_1001DB8B8, &qword_1001DA510, &unk_100179990, &type metadata accessor for State);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_100133D4C(319, &qword_1001DB8C0, &type metadata for UserPromptState, &type metadata accessor for State);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_10005BBC4(319, &qword_1001DB8C8);
                                                if (v23 <= 0x3F)
                                                {
                                                  type metadata accessor for SiriVoiceAvailabilityUtility();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    type metadata accessor for UserDefaultsUtility();
                                                    if (v25 <= 0x3F)
                                                    {
                                                      type metadata accessor for PromptScheduler();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        type metadata accessor for ConnectivityUtility();
                                                        if (v27 <= 0x3F)
                                                        {
                                                          type metadata accessor for ImageContextCoordinator();
                                                          if (v28 <= 0x3F)
                                                          {
                                                            type metadata accessor for AppEntitiesProvider();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              type metadata accessor for SubjectLiftViewModel();
                                                              if (v30 <= 0x3F)
                                                              {
                                                                type metadata accessor for LiveTextViewModel();
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  type metadata accessor for OverlayViewModel();
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    type metadata accessor for SiriStreamingVoicePlayer();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      type metadata accessor for GoogleImageSearchRateLimiter();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        type metadata accessor for ActionPin.Pill();
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_100133C24(319, &qword_1001DB8D0, &qword_1001DB740, &unk_10017B788, &type metadata accessor for State);
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_100133CE8(319, &qword_1001DB8D8, &type metadata accessor for FeedbackController, &type metadata accessor for State);
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_100133C88(319, &qword_1001DA230, &type metadata accessor for AccessibilityFocusState);
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_100133CE8(319, &qword_1001DB8E0, &type metadata accessor for NewSaliencyModel, &type metadata accessor for Bindable);
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  type metadata accessor for SheetTrackingAssistant();
                                                                                  if (v40 <= 0x3F)
                                                                                  {
                                                                                    sub_100133D4C(319, &unk_1001DB8E8, &type metadata for ContentView.SuggestionStyle, &type metadata accessor for State);
                                                                                    if (v41 <= 0x3F)
                                                                                    {
                                                                                      sub_100133D4C(319, &qword_1001D4800, &type metadata for CGFloat, &type metadata accessor for State);
                                                                                      if (v42 <= 0x3F)
                                                                                      {
                                                                                        type metadata accessor for SharedSuppressPostShutterAction();
                                                                                        if (v43 <= 0x3F)
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
}

void sub_100133C24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10001276C(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100133C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool, &protocol witness table for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100133CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100133D4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100133DA0()
{
  result = qword_1001DBA40;
  if (!qword_1001DBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBA40);
  }

  return result;
}

uint64_t sub_100133E10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100133E94()
{
  result = qword_1001DBAA0;
  if (!qword_1001DBAA0)
  {
    sub_10001276C(&qword_1001DBA98);
    sub_100133F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBAA0);
  }

  return result;
}

unint64_t sub_100133F20()
{
  result = qword_1001DBAA8;
  if (!qword_1001DBAA8)
  {
    sub_10001276C(&qword_1001DBAB0);
    sub_100013608(&qword_1001DBAB8, &qword_1001DBAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBAA8);
  }

  return result;
}

unint64_t sub_100134008()
{
  result = qword_1001DBAD0;
  if (!qword_1001DBAD0)
  {
    sub_10001276C(&qword_1001DBA48);
    sub_10001276C(&qword_1001DBA98);
    type metadata accessor for SharedSuppressPostShutterAction();
    sub_100133E94();
    sub_10013FB34(&qword_1001DBAC8, &type metadata accessor for SharedSuppressPostShutterAction);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001DBAD8, &qword_1001DBAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBAD0);
  }

  return result;
}

uint64_t sub_100134184(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100134208()
{
  result = qword_1001DBAE8;
  if (!qword_1001DBAE8)
  {
    sub_10001276C(&qword_1001DBA58);
    sub_10001276C(&qword_1001DBA50);
    sub_10001276C(&qword_1001DBA48);
    sub_100134008();
    swift_getOpaqueTypeConformance2();
    sub_1000E0F08();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001DBAD8, &qword_1001DBAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBAE8);
  }

  return result;
}

uint64_t sub_10013435C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ContentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100109FCC(a1, a2, v6);
}

uint64_t sub_10013446C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ContentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10010D364(a1, a2, v6);
}

uint64_t sub_1001344EC@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of FeedbackController.fbkEvaluationController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100134544(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000033A8(&qword_1001DBAF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContentView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100019774;

  return sub_10011E458(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100134724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_100124320();
}

uint64_t sub_1001347D0()
{
  v1 = type metadata accessor for ContentView();
  v37 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  sub_100006B44(v0 + 32);
  v2 = v0 + ((v37 + 72) & ~v37);
  sub_100133E10(*v2, *(v2 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_100135230(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1001304B8(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100135324()
{
  v1 = type metadata accessor for AnnotationViewConfiguration();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ContentView();
  v41 = *(*(v5 - 1) + 80);

  v6 = *(v2 + 8);
  v6(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v41) & ~v41);
  sub_100133E10(*v7, *(v7 + 8));
  sub_100133E10(*(v7 + 16), *(v7 + 24));

  sub_1000357B8();
  v8 = v5[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v7 + v5[10];
  v6(v10, v1);
  v40 = type metadata accessor for AppConfiguration();
  v11 = v10 + *(v40 + 20);
  v12 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for CameraControllerConfiguration(0);
  v14 = v13[14];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v11 + v14, 1, v15))
  {
    (*(v16 + 8))(v11 + v14, v15);
  }

  v18 = v13[17];
  if (!v17(v11 + v18, 1, v15))
  {
    (*(v16 + 8))(v11 + v18, v15);
  }

  v19 = v13[21];
  if (!v17(v11 + v19, 1, v15))
  {
    (*(v16 + 8))(v11 + v19, v15);
  }

  v20 = *(v40 + 28);
  v21 = type metadata accessor for MapsConfiguration();
  (*(*(v21 - 8) + 8))(v10 + v20, v21);

  sub_1000033A8(&qword_1001DB7A0);

  v22 = v7 + v5[11];
  v23 = type metadata accessor for ResultLookupState();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v22, 1, v23))
  {
    (*(v24 + 8))(v22, v23);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v7 + v5[21]), *(v7 + v5[21] + 8), *(v7 + v5[21] + 16));

  v25 = v7 + v5[23];
  v26 = type metadata accessor for FocusSelection();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v25, 1, v26))
  {
    (*(v27 + 8))(v25, v26);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v28 = v5[66];
  v29 = type metadata accessor for ActionPin.Pill();
  v30 = *(*(v29 - 8) + 8);
  v30(v7 + v28, v29);
  v30(v7 + v5[67], v29);
  v31 = v7 + v5[68];
  v32 = type metadata accessor for VisualIntelligenceFrameEntity();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v31, 1, v32))
  {
    (*(v33 + 8))(v31, v32);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v34 = v7 + v5[70];
  v35 = type metadata accessor for AccessibilityTechnologies();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v37 = v5[72];
  v38 = sub_1000033A8(&qword_1001DB778);
  (*(*(v38 - 8) + 8))(v7 + v37, v38);

  return swift_deallocObject();
}

uint64_t sub_100135DD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewConfiguration() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ContentView() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100131B30(v7, v8, a1);
}

uint64_t sub_100135EB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005BC60(a1, a2);
  }

  return a1;
}

uint64_t sub_100135EEC()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_100135F74()
{
  type metadata accessor for URL();

  return sub_1000CF894();
}

uint64_t sub_100135FD8(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10010CFD8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001360C8()
{
  v1 = type metadata accessor for ContentView();
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v40 = v0;
  v38 = (v39 + 32) & ~v39;
  v2 = v0 + v38;
  sub_100133E10(*(v0 + v38), *(v0 + v38 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  sub_1000616E4(*(v40 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v40 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v40 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 16));

  return swift_deallocObject();
}

uint64_t sub_100136B44(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100019774;

  return sub_10010A814(a1, v6, v7, v1 + v5, v9, v10, v11);
}

uint64_t sub_100136D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100136E04()
{
  v1 = type metadata accessor for ContentView();
  v65 = *(v1 - 8);
  __chkstk_darwin(v1);
  v66 = v2;
  v70 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v3 - 8);
  v67 = &v52 - v4;
  v5 = type metadata accessor for LoggingSignposter();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  v7 = __chkstk_darwin(v5);
  v63 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v52 - v8;
  v9 = sub_1000033A8(&qword_1001D6DC0);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = type metadata accessor for Logger();
  v60 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1;
  v16 = (v0 + *(v1 + 136));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v72) = *v16;
  v73 = v18;
  v19 = sub_1000033A8(&qword_1001DBB70);
  result = State.wrappedValue.getter();
  if (!v71)
  {
    v53 = v12;
    v54 = v19;
    v55 = v18;
    v56 = v17;
    v57 = v11;
    v58 = v6;
    v59 = v0;
    static Log.ui.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Showing capture effects", v23, 2u);
    }

    v24 = (*(v60 + 8))(v14, v53);
    __chkstk_darwin(v24);
    v25 = v59;
    *(&v52 - 2) = v59;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    v26 = v25;
    LOBYTE(v72) = v56;
    v73 = v55;
    LOBYTE(v71) = 1;
    State.wrappedValue.setter();
    v27 = (v25 + *(v15 + 52));
    v29 = *v27;
    v28 = v27[1];
    v72 = v29;
    v73 = v28;
    sub_1000033A8(&qword_1001DB780);
    State.wrappedValue.getter();
    v30 = v71;
    swift_getKeyPath();
    v72 = v30;
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
    v32 = *(v30 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
    v33 = *(v30 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
    v34 = v64;
    v36 = v61;
    v35 = v62;
    v37 = v57;
    if (v33 == 1 || v33 == 3 && v31 == 2 && !v32)
    {
      sub_100060424(v31, v32, v33);
      static LoggingSignposter.cameraControllerPause.getter();
      default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
      LoggingSignposter.emitEvent(_:shouldLog:)();
      v72 = 2;
      LOBYTE(v73) = 2;
      sub_1000033A8(&qword_1001D6DC8);
      AsyncStream.Continuation.yield(_:)();
      (*(v36 + 8))(v37, v35);
    }

    v39 = v68;
    v38 = v69;
    v40 = v67;
    v41 = v65;
    v42 = v63;
    static LoggingSignposter.ui.getter();
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
    (*(v39 + 16))(v42, v34, v38);
    v44 = v26;
    v45 = v70;
    sub_10013DAC8(v44, v70, type metadata accessor for ContentView);
    type metadata accessor for MainActor();
    v46 = v34;
    v47 = v42;
    v48 = static MainActor.shared.getter();
    v49 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v50 = (v58 + *(v41 + 80) + v49) & ~*(v41 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    *(v51 + 24) = &protocol witness table for MainActor;
    (*(v39 + 32))(v51 + v49, v47, v38);
    sub_100136D64(v45, v51 + v50, type metadata accessor for ContentView);
    sub_100044AB8(0, 0, v40, &unk_10017BC68, v51);

    return (*(v39 + 8))(v46, v38);
  }

  return result;
}