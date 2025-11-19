unint64_t sub_100040A58()
{
  result = qword_100143D50;
  if (!qword_100143D50)
  {
    sub_100004370(&qword_100143D48);
    sub_100040B10();
    sub_100004610(&qword_100142A88, &unk_100142A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143D50);
  }

  return result;
}

unint64_t sub_100040B10()
{
  result = qword_100143D58;
  if (!qword_100143D58)
  {
    sub_100004370(&qword_100143D60);
    sub_100040BC8();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143D58);
  }

  return result;
}

unint64_t sub_100040BC8()
{
  result = qword_100143D68;
  if (!qword_100143D68)
  {
    sub_100004370(&qword_100143D70);
    sub_100004610(&qword_100143D78, &qword_100143D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143D68);
  }

  return result;
}

uint64_t sub_100040C80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100040CC8()
{
  result = qword_100143DA8;
  if (!qword_100143DA8)
  {
    sub_100004370(&qword_100143D10);
    sub_100004370(&qword_100143D08);
    type metadata accessor for CircularProgressViewStyle();
    sub_100004610(&qword_100143D98, &qword_100143D08);
    sub_100040C80(&qword_100143DA0, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143DA8);
  }

  return result;
}

uint64_t sub_100040E14()
{
  sub_100004370(&qword_100143C48);
  sub_10004072C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100040EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for TrackPageView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  v11 = v8[7];
  *(a4 + v11) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0);
  swift_storeEnumTagMultiPayload();
  v12 = (a4 + v8[9]);
  *v12 = [objc_allocWithZone(CLLocationManager) init];
  type metadata accessor for LocationManager();
  Logger.init(subsystem:category:)();
  v13 = (a4 + v8[10]);
  sub_100002D44(&qword_1001420E8);
  *(swift_allocObject() + 16) = 0;
  sub_100004610(&qword_1001420F0, &qword_1001420E8);
  result = ObservedObject.init(wrappedValue:)();
  *v13 = result;
  v13[1] = v15;
  *(a4 + v8[8]) = a1;
  v16 = (a4 + v8[11]);
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t type metadata accessor for TrackPageView()
{
  result = qword_100143E80;
  if (!qword_100143E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100041194@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002D44(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_100007FDC(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000413BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_1001420D8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100007FDC(v2, &v13 - v9, &qword_1001420D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10002F250(v10, a1, &qword_1001420F8);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

double sub_1000415AC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10004162C(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = Color.opacity(_:)();

  *a3 = v4;
  return result;
}

uint64_t sub_100041684()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  v0 = AnyTransition.animation(_:)();

  qword_100143DE0 = v0;
  return result;
}

uint64_t sub_1000416E0()
{
  result = static Font.body.getter();
  qword_100143DE8 = result;
  return result;
}

uint64_t sub_100041714(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t sub_10004177C(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() systemBackgroundColor];
  Color.init(uiColor:)();
  v4 = Color.opacity(_:)();

  *a2 = v4;
  return result;
}

uint64_t sub_1000417F0()
{
  v0 = type metadata accessor for Material();
  sub_10000D0C8(v0, qword_100143E08);
  sub_10000BEC4(v0, qword_100143E08);
  return static Material.thin.getter();
}

uint64_t sub_10004183C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v37 = type metadata accessor for EnvironmentValues();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrackPageView();
  v45 = *(v4 - 8);
  v41 = *(v45 + 8);
  __chkstk_darwin(v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ScenePhase();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v7;
  v8 = sub_100002D44(&qword_100143EE0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v39 = sub_100002D44(&qword_100143EE8);
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = &v35 - v11;
  v13 = sub_100002D44(&qword_100143EF0);
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  sub_100041FA4(v2, v10);
  Solarium.init()();
  v49 = v2;
  v16 = sub_100002D44(&qword_100143EF8);
  v17 = sub_10004FF84();
  v34 = sub_100050820();
  View.staticIf<A, B>(_:then:)();
  sub_100007E14(v10, &qword_100143EE0);
  sub_100041194(&qword_1001420E0, &type metadata accessor for ScenePhase, v7);
  v18 = v40;
  sub_100051918(v2, v40, type metadata accessor for TrackPageView);
  v19 = (v45[80] + 16) & ~v45[80];
  v20 = swift_allocObject();
  sub_100051EFC(v18, v20 + v19, type metadata accessor for TrackPageView);
  v50 = v8;
  v51 = &type metadata for Solarium;
  v52 = v16;
  v21 = v42;
  v53 = v17;
  v22 = v39;
  v54 = &protocol witness table for Solarium;
  v55 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1000520B0(&qword_100143A58, &type metadata accessor for ScenePhase);
  v45 = v15;
  v25 = OpaqueTypeConformance2;
  v26 = v38;
  View.onChange<A>(of:initial:_:)();

  (*(v44 + 8))(v26, v21);
  (*(v43 + 8))(v12, v22);
  v27 = *v2;
  LOBYTE(OpaqueTypeConformance2) = *(v2 + 8);

  if ((OpaqueTypeConformance2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v29 = v35;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v36 + 8))(v29, v37);
    v27 = v50;
  }

  swift_getKeyPath();
  v50 = v27;
  sub_1000520B0(&qword_100142060, type metadata accessor for ViewConfiguration);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v27 + 16);

  if (v30 != 1)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v50 = v22;
  v51 = v21;
  v52 = v25;
  v53 = v24;
  swift_getOpaqueTypeConformance2();
  v31 = v47;
  v32 = v45;
  View.navigationBarBackButtonHidden(_:)();
  return (*(v46 + 8))(v32, v31);
}

uint64_t sub_100041FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for TrackPageView();
  v4 = *(a1 + *(v3 + 32));
  swift_getKeyPath();
  *&v92[0] = v4;
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100050AB8(v4 + 32, v92);
  if (v93)
  {
    if (v93 == 1)
    {
      v85 = sub_100002D44(&qword_100144008);
      v86 = v71;
      __chkstk_darwin(v85);
      v83 = v71 - v5;
      v6 = sub_100002D44(&qword_100144018);
      v84 = v71;
      v7 = *(v6 - 8);
      __chkstk_darwin(v6);
      v9 = v71 - v8;
      LocalizedStringKey.init(stringLiteral:)();
      LocalizedStringKey.init(stringLiteral:)();
      Text.init(_:tableName:bundle:comment:)();
      ContentUnavailableView<>.init(_:systemImage:description:)();
      sub_100004610(&qword_100144010, &qword_100144018);
      v10 = v83;
      View.accessibilityIdentifier(_:)();
      (*(v7 + 8))(v9, v6);
      v11 = sub_100002D44(&qword_100144030);
      __chkstk_darwin(v11);
      sub_100007FDC(v10, v71 - v12, &qword_100144008);
      swift_storeEnumTagMultiPayload();
      sub_100002D44(&qword_100143F20);
      sub_100050094();
      sub_100050738();
      _ConditionalContent<>.init(storage:)();
      return sub_100007E14(v10, &qword_100144008);
    }

    else
    {
      v84 = sub_100002D44(&qword_100143550);
      v85 = v71;
      v83 = *(v84 - 1);
      __chkstk_darwin(v84);
      v86 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v82 = v71;
      __chkstk_darwin(v32);
      v34 = v71 - v33;
      v81 = v71;
      v78 = *(v4 + 528);
      v35 = *(v4 + 536);
      v79 = *(v4 + 544);
      v36 = *(v4 + 552);
      v37 = *(v3 - 8);
      v38 = *(v37 + 64);
      __chkstk_darwin(v39);
      sub_100051918(a1, v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
      type metadata accessor for MainActor();
      v80 = v35;

      v40 = static MainActor.shared.getter();
      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      *(v42 + 24) = &protocol witness table for MainActor;
      sub_100051EFC(v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for TrackPageView);
      v76 = type metadata accessor for TaskPriority();
      v77 = v71;
      v43 = *(v76 - 8);
      v44 = *(v43 + 64);
      __chkstk_darwin(v76);
      v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
      v46 = v71 - v45;
      static TaskPriority.userInitiated.getter();
      if (sub_1000EEF04(2, 26, 4, 0))
      {
        v74 = type metadata accessor for _TaskModifier2();
        v75 = v71;
        v73 = *(v74 - 8);
        __chkstk_darwin(v74);
        v48 = v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        v90 = 0;
        v91 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v90 = 0xD000000000000031;
        v91 = 0x80000001001008C0;
        v88 = 109;
        v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v36;
        String.append(_:)(v49);

        v71[1] = v71;
        v51 = __chkstk_darwin(v50);
        v52 = v71 - v45;
        v53 = v71 - v45;
        v54 = v76;
        (*(v43 + 16))(v52, v53, v76, v51);
        _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
        (*(v43 + 8))(v46, v54);
        v55 = sub_100002D44(&qword_100141DF8);
        (*(v73 + 32))(&v34[*(v55 + 36)], v48, v74);
        v56 = v80;
        *v34 = v78;
        *(v34 + 1) = v56;
        v34[16] = v79;
        *(v34 + 3) = v72;
      }

      else
      {
        v57 = &v34[*(sub_100002D44(&qword_100141E00) + 36)];
        v58 = type metadata accessor for _TaskModifier();
        (*(v43 + 32))(&v57[*(v58 + 20)], v71 - v45, v76);
        *v57 = &unk_1000F7C08;
        *(v57 + 1) = v42;
        v59 = v80;
        *v34 = v78;
        *(v34 + 1) = v59;
        v34[16] = v79;
        *(v34 + 3) = v36;
      }

      v60 = v83;
      v61 = v84;
      v62 = v86;
      (*(v83 + 4))(v86, v34, v84);
      v81 = sub_100002D44(&qword_100143F20);
      v82 = v71;
      __chkstk_darwin(v81);
      v64 = v71 - v63;
      v65 = sub_100002D44(&qword_100144038);
      v66 = __chkstk_darwin(v65);
      (*(v60 + 2))(v71 - v67, v62, v61, v66);
      swift_storeEnumTagMultiPayload();
      sub_100002D44(&qword_100143F30);
      v68 = sub_10002D0E0();
      v90 = &type metadata for LoadingView;
      v91 = v68;
      swift_getOpaqueTypeConformance2();
      sub_10005014C();
      _ConditionalContent<>.init(storage:)();
      v69 = sub_100002D44(&qword_100144030);
      __chkstk_darwin(v69);
      sub_100007FDC(v64, v71 - v70, &qword_100143F20);
      swift_storeEnumTagMultiPayload();
      sub_100002D44(&qword_100144008);
      sub_100050094();
      sub_100050738();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v64, &qword_100143F20);
      return (*(v60 + 1))(v86, v61);
    }
  }

  else
  {
    sub_100050B14(v92, &v90);
    v14 = sub_100002D44(&qword_100143F30);
    v86 = v71;
    __chkstk_darwin(v14);
    v16 = v71 - v15;
    v17 = sub_100043190(&v90, v71 - v15);
    v18 = *(v3 - 8);
    v19 = *(v18 + 64);
    __chkstk_darwin(v17);
    sub_100051918(a1, v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
    v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v21 = swift_allocObject();
    sub_100051EFC(v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TrackPageView);
    v22 = &v16[*(v14 + 36)];
    *v22 = sub_100050B44;
    v22[1] = v21;
    v22[2] = 0;
    v22[3] = 0;
    v23 = sub_100002D44(&qword_100143F20);
    v85 = v71;
    __chkstk_darwin(v23);
    v25 = v71 - v24;
    v26 = sub_100002D44(&qword_100144038);
    __chkstk_darwin(v26);
    sub_100007FDC(v16, v71 - v27, &qword_100143F30);
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100143550);
    v28 = sub_10002D0E0();
    v88 = &type metadata for LoadingView;
    v89 = v28;
    swift_getOpaqueTypeConformance2();
    sub_10005014C();
    _ConditionalContent<>.init(storage:)();
    v29 = sub_100002D44(&qword_100144030);
    __chkstk_darwin(v29);
    sub_100007FDC(v25, v71 - v30, &qword_100143F20);
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100144008);
    sub_100050094();
    sub_100050738();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v25, &qword_100143F20);
    sub_100007E14(v16, &qword_100143F30);
    return sub_100007E74(&v90);
  }
}

uint64_t sub_100042ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[4] = v5;
  v3[5] = v4;

  return _swift_task_switch(sub_100042F70, v5, v4);
}

uint64_t sub_100042F70()
{
  type metadata accessor for TrackPageView();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100043010;

  return sub_10009AC94();
}

uint64_t sub_100043010()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100043130, v3, v2);
}

uint64_t sub_100043130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v77 = a1;
  v75 = a2;
  v4 = type metadata accessor for ToolbarRole();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v72 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrackPageView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100002D44(&qword_100143FA0);
  v56[1] = v10;
  __chkstk_darwin(v10);
  v12 = v56 - v11;
  v63 = sub_100002D44(&qword_100143F90);
  __chkstk_darwin(v63);
  v57 = v56 - v13;
  v14 = sub_100002D44(&qword_100143F88);
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  __chkstk_darwin(v14);
  v62 = v56 - v16;
  v69 = sub_100002D44(&qword_100143F78);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = v56 - v17;
  sub_100051918(v3, v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v78 = *(v8 + 80);
  v19 = swift_allocObject();
  sub_100051EFC(v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for TrackPageView);
  *v12 = static Axis.Set.vertical.getter();
  v12[1] = 0;
  *(v12 + 1) = sub_100050F74;
  *(v12 + 2) = v19;
  v20 = &v12[*(v10 + 44)];

  *v20 = static HorizontalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &v20[*(sub_100002D44(&qword_100144040) + 44)];
  v76 = v3;
  sub_100049F1C(v3, v77, v21);

  v61 = type metadata accessor for TrackPageView;
  sub_100051918(v3, v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
  v60 = v9;
  v22 = swift_allocObject();
  v59 = type metadata accessor for TrackPageView;
  sub_100051EFC(v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v18, type metadata accessor for TrackPageView);
  sub_100004610(&qword_100143FA8, &qword_100143FA0);
  sub_1000506E4();
  v23 = v57;
  View.onScrollGeometryChange<A>(for:of:action:)();

  sub_100007E14(v12, &qword_100143FA0);
  v24 = v76;
  v58 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051918(v76, v58, type metadata accessor for TrackPageView);
  v25 = swift_allocObject();
  sub_100051EFC(v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v18, type metadata accessor for TrackPageView);
  v26 = v63;
  v27 = &v23[*(v63 + 36)];
  v28 = v23;
  *v27 = sub_100051050;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  v30 = v67;
  v29 = v68;
  v31 = v70;
  (*(v68 + 104))(v67, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v70);
  v32 = sub_1000505D4();
  v33 = v62;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v29 + 8))(v30, v31);
  sub_100007E14(v28, &qword_100143F90);
  v34 = v72;
  static ToolbarRole.automatic.getter();
  v81 = v26;
  v82 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v64;
  v37 = v65;
  View.toolbarRole(_:)();
  (*(v73 + 8))(v34, v74);
  (*(v66 + 8))(v33, v37);
  v79 = v77;
  v80 = v24;
  sub_100002D44(&qword_100143F80);
  v81 = v37;
  v82 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_100143FB8, &qword_100143F80);
  v38 = v75;
  v39 = v69;
  View.toolbar<A>(content:)();
  (*(v71 + 8))(v36, v39);
  v40 = (v38 + *(sub_100002D44(&qword_100143F70) + 36));
  v41 = v38;
  *v40 = &type metadata for TrackPageViewSafeAreaPreferenceKey;
  v40[1] = sub_10004EAD4;
  v40[2] = 0;
  v42 = v58;
  v43 = v61;
  sub_100051918(v24, v58, v61);
  v44 = swift_allocObject();
  v45 = v59;
  sub_100051EFC(v42, v44 + v18, v59);
  v46 = (v38 + *(sub_100002D44(&qword_100143F60) + 36));
  *v46 = sub_100051070;
  v46[1] = v44;
  v47 = (v38 + *(sub_100002D44(&qword_100143F50) + 36));
  v48 = sub_100002D44(&qword_100143FE8);
  v49 = *(v48 + 36);
  v50 = enum case for CoordinateSpace.local(_:);
  v51 = type metadata accessor for CoordinateSpace();
  (*(*(v51 - 8) + 104))(&v47[v49], v50, v51);
  *v47 = &type metadata for ScreenWidthPreferenceKey;
  v52 = &v47[*(v48 + 40)];
  *v52 = sub_100052D44;
  v52[1] = 0;
  sub_100051918(v76, v42, v43);
  v53 = swift_allocObject();
  sub_100051EFC(v42, v53 + v18, v45);
  result = sub_100002D44(&qword_100143F40);
  v55 = (v41 + *(result + 36));
  *v55 = sub_1000510E0;
  v55[1] = v53;
  return result;
}

uint64_t sub_100043B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  type metadata accessor for TrackPageView();
  sub_100041194(&qword_1001420C8, &type metadata accessor for ColorScheme, v10);
  (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
  v11 = static ColorScheme.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    v13 = static Color.white.getter();
  }

  else
  {
    v13 = static Color.black.getter();
  }

  v14 = v13;
  KeyPath = swift_getKeyPath();
  v19[1] = v14;
  v16 = AnyShapeStyle.init<A>(_:)();
  sub_100007FDC(a1, a2, &qword_100143EE0);
  result = sub_100002D44(&qword_100143EF8);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v16;
  return result;
}

uint64_t sub_100043D34(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  if ((*(v4 + 88))(v7, v3) != enum case for ScenePhase.background(_:))
  {
    return (*(v4 + 8))(v7, v3);
  }

  type metadata accessor for TrackPageView();
  return sub_10009D628();
}

__n128 sub_100043E64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v4 = type metadata accessor for TrackPageView();
  v5 = v4 - 8;
  v34 = *(v4 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v4);
  State.init(wrappedValue:)();
  v35 = v40.n128_u64[1];
  v36 = v40.n128_u64[0];
  v37 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v32 = v40.n128_u64[1];
  v33 = v40.n128_u64[0];
  v7 = *(v2 + *(v5 + 40));
  swift_getKeyPath();
  v40.n128_u64[0] = v7;
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v7[2];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v40.n128_u64[0] = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LOBYTE(v43[0]) = 0;
  swift_getKeyPath();
  v37 = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v7[18];
  static UnitPoint.center.getter();
  v20 = v19;
  v22 = v21;
  swift_getKeyPath();
  v37 = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = v7[19];
  sub_100051918(v29[1], v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
  v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v25 = swift_allocObject();
  sub_100051EFC(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TrackPageView);
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 9) = v37;
  *(a2 + 12) = *(&v37 + 3);
  *(a2 + 16) = v36;
  *(a2 + 24) = v35;
  *(a2 + 32) = v33;
  v26 = v31;
  *(a2 + 40) = v32;
  *(a2 + 48) = v26;
  *(a2 + 56) = 0;
  *(a2 + 57) = v43[0];
  *(a2 + 60) = *(v43 + 3);
  *(a2 + 64) = v30;
  result = v40;
  v28 = v41;
  *(a2 + 104) = v42;
  *(a2 + 88) = v28;
  *(a2 + 72) = result;
  *(a2 + 120) = v9;
  *(a2 + 124) = *&v39[3];
  *(a2 + 121) = *v39;
  *(a2 + 128) = v11;
  *(a2 + 136) = v13;
  *(a2 + 144) = v15;
  *(a2 + 152) = v17;
  *(a2 + 160) = 0;
  *(a2 + 164) = *&v38[3];
  *(a2 + 161) = *v38;
  *(a2 + 168) = v18;
  *(a2 + 176) = v18;
  *(a2 + 184) = v20;
  *(a2 + 192) = v22;
  *(a2 + 200) = v23;
  *(a2 + 208) = sub_1000528C0;
  *(a2 + 216) = v25;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  return result;
}

uint64_t sub_1000442AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for ColorScheme();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v73 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v68 - v6;
  v7 = sub_100002D44(&qword_100144210);
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v76 = &v68 - v8;
  v9 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = type metadata accessor for URL();
  __chkstk_darwin(v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v29 = v28;
  sub_100007FDC(v27, v23, &unk_100144630);
  if ((*(v29 + 48))(v23, 1, v24) == 1)
  {
    sub_100007E14(v23, &unk_100144630);
    v30 = 1;
    v32 = v78;
    v31 = v79;
  }

  else
  {
    (*(v29 + 32))(v26, v23, v24);
    v33 = *(v29 + 16);
    v70 = v26;
    v33(v20, v26, v24);
    v71 = v29;
    v34 = *(v29 + 56);
    v34(v20, 0, 1, v24);
    v34(v17, 1, 1, v24);
    type metadata accessor for SongArtworkViewModel();
    v35 = swift_allocObject();
    v34((v35 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v24);
    v34((v35 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v24);
    ObservationRegistrar.init()();
    sub_100007FDC(v20, v14, &unk_100144630);
    sub_1000D88D8(v14);
    sub_100007FDC(v17, v14, &unk_100144630);
    sub_100007FDC(v14, v11, &unk_100144630);
    sub_1000D8B98(v11);
    sub_100007E14(v17, &unk_100144630);
    sub_100007E14(v20, &unk_100144630);
    sub_100007E14(v14, &unk_100144630);
    v80 = 0;
    State.init(wrappedValue:)();
    v36 = v81;
    v69 = v82;
    v80 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v37 = v81;
    v38 = v82;
    v68 = static Alignment.center.getter();
    v40 = v39;
    type metadata accessor for TrackPageView();
    v41 = v72;
    sub_100041194(&qword_1001420C8, &type metadata accessor for ColorScheme, v72);
    v43 = v73;
    v42 = v74;
    v44 = v75;
    (*(v74 + 104))(v73, enum case for ColorScheme.light(_:), v75);
    v45 = static ColorScheme.== infix(_:_:)();
    v46 = *(v42 + 8);
    v46(v43, v44);
    v46(v41, v44);
    v47 = v24;
    if (v45)
    {
      v48 = v76;
      if (qword_100141B08 != -1)
      {
        swift_once();
      }

      v49 = &qword_100143DD8;
    }

    else
    {
      v48 = v76;
      if (qword_100141B00 != -1)
      {
        swift_once();
      }

      v49 = &qword_100143DD0;
    }

    v50 = *v49;

    if (qword_100141B38 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Material();
    v52 = sub_10000BEC4(v51, qword_100143E08);
    v53 = static Edge.Set.all.getter();
    v54 = v48 + *(sub_100002D44(&qword_100144218) + 36);
    (*(*(v51 - 8) + 16))(v54, v52, v51);
    *(v54 + *(sub_100002D44(&qword_100144220) + 36)) = v53;
    *v48 = v36;
    *(v48 + 8) = v69;
    *(v48 + 16) = v37;
    *(v48 + 24) = v38;
    *(v48 + 32) = v35;
    *(v48 + 40) = 1;
    *(v48 + 48) = xmmword_1000F7960;
    v55 = v68;
    *(v48 + 64) = v50;
    *(v48 + 72) = v55;
    *(v48 + 80) = v40;
    v56 = v48 + *(sub_100002D44(&qword_100144228) + 36);
    *v56 = 0x4049000000000000;
    *(v56 + 8) = 0;
    v57 = static Alignment.center.getter();
    v59 = v58;
    sub_100002D44(&qword_1001441D0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1000F6160;
    if (qword_100141B20 != -1)
    {
      swift_once();
    }

    *(v60 + 32) = Gradient.Stop.init(color:location:)();
    *(v60 + 40) = v61;
    v62 = v70;
    if (qword_100141B28 != -1)
    {
      swift_once();
    }

    *(v60 + 48) = Gradient.Stop.init(color:location:)();
    *(v60 + 56) = v63;
    if (qword_100141B30 != -1)
    {
      swift_once();
    }

    *(v60 + 64) = Gradient.Stop.init(color:location:)();
    *(v60 + 72) = v64;
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(stops:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    (*(v71 + 8))(v62, v47);
    v65 = v81;
    v32 = v78;
    v66 = v48 + *(v78 + 36);
    *v66 = v57;
    *(v66 + 8) = v59;
    *(v66 + 16) = v65;
    *(v66 + 24) = v82;
    *(v66 + 40) = v83;
    v31 = v79;
    sub_10002F250(v48, v79, &qword_100144210);
    v30 = 0;
  }

  return (*(v77 + 56))(v31, v30, 1, v32);
}

uint64_t sub_100044C10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v4 = *(v2 + *(type metadata accessor for TrackPageView() + 32));
    swift_getKeyPath();
    v30[0] = v4;
    sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_100007FDC(v4 + 320, v30, &qword_1001442E8);
    v5 = v31;
    if (v31)
    {
      v6 = sub_10000DC80(v30, v31);
      v7 = *(v5 - 8);
      v8 = __chkstk_darwin(v6);
      v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v7 + 16))(v10, v8);
      sub_100007E14(v30, &qword_1001442E8);
      v11 = [*&v10[*(type metadata accessor for TrackPageMetadata() + 20)] shazamCount];
      (*(v7 + 8))(v10, v5);
    }

    else
    {
      sub_100007E14(v30, &qword_1001442E8);
      v11 = 0;
    }

    v21 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v15 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v26 = static Edge.Set.bottom.getter();
    result = EdgeInsets.init(_all:)();
    v16 = 0;
    *(&v14 + 1) = v27;
    *(&v20 + 1) = v28;
    v33 = 0;
    v32 = 0;
    v13 = v21;
    v12 = v26;
    v29[15] = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0;
    v16 = 1;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = 0;
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 80) = v20;
  *(a2 + 96) = 0;
  *(a2 + 97) = v16;
  return result;
}

uint64_t sub_100044ECC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_100002D44(&qword_100144300);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100002D44(&qword_100144308);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  sub_100045150(a1, a2, &v30 - v17);
  v19 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v20 = &v18[*(v13 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_100045648(a2, a1, v11);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = &v11[*(v6 + 44)];
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;
  *(v25 + 2) = v34;
  sub_100007FDC(v18, v15, &qword_100144308);
  sub_100007FDC(v11, v8, &qword_100144300);
  v27 = v31;
  sub_100007FDC(v15, v31, &qword_100144308);
  v28 = sub_100002D44(&qword_100144310);
  sub_100007FDC(v8, v27 + *(v28 + 48), &qword_100144300);
  sub_100007E14(v11, &qword_100144300);
  sub_100007E14(v18, &qword_100144308);
  sub_100007E14(v8, &qword_100144300);
  return sub_100007E14(v15, &qword_100144308);
}

uint64_t sub_100045150@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = type metadata accessor for RedactionReasons();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100002D44(&qword_100144380);
  __chkstk_darwin(v35);
  v9 = &v31 - v8;
  v10 = sub_100002D44(&qword_100144388);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  sub_10000DC80(a1, a1[3]);
  v13 = sub_1000B4BBC();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v32 = a3;
    sub_10000DC80(a1, a1[3]);
    v17 = sub_1000B54F4();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_10000DC80(a1, a1[3]);
      v22 = [*(v21 + *(type metadata accessor for TrackPageMetadata() + 20)) explicitContent];
      if (qword_100141B10 != -1)
      {
        v30 = v22;
        swift_once();
        v22 = v30;
      }

      v23 = qword_100143DE0;
      *v12 = v19;
      *(v12 + 1) = v20;
      *(v12 + 2) = v15;
      *(v12 + 3) = v16;
      v12[32] = v22;
      *(v12 + 5) = v23;
      swift_storeEnumTagMultiPayload();

      sub_100002D44(&qword_1001443A0);
      sub_1000523B4();
      sub_10005246C();
      v24 = v32;
      _ConditionalContent<>.init(storage:)();
      v25 = sub_100002D44(&qword_100144390);
      return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    }

    a3 = v32;
  }

  type metadata accessor for TrackPageView();
  if (sub_10009DB70())
  {
    v36 = 0x747369747241;
    v37 = 0xE600000000000000;
    v38 = 1735290707;
    v39 = 0xE400000000000000;
    v40 = 1;
    static RedactionReasons.placeholder.getter();
    sub_100052360();
    View.redacted(reason:)();
    (*(v33 + 8))(v7, v5);
    if (qword_100141B10 != -1)
    {
      swift_once();
    }

    *&v9[*(v35 + 36)] = qword_100143DE0;
    sub_100007FDC(v9, v12, &qword_100144380);
    swift_storeEnumTagMultiPayload();

    sub_100002D44(&qword_1001443A0);
    sub_1000523B4();
    sub_10005246C();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v9, &qword_100144380);
    v27 = sub_100002D44(&qword_100144390);
    return (*(*(v27 - 8) + 56))(a3, 0, 1, v27);
  }

  else
  {
    v28 = sub_100002D44(&qword_100144390);
    v29 = *(*(v28 - 8) + 56);

    return v29(a3, 1, 1, v28);
  }
}

uint64_t sub_100045648@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v71 = a3;
  v4 = sub_100002D44(&qword_100144318);
  __chkstk_darwin(v4);
  v6 = &v56 - v5;
  v7 = type metadata accessor for TrackPageView();
  v8 = v7 - 8;
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v68 = v9;
  v69 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002D44(&qword_100144320);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v17 = *(v8 + 40);
  v70 = a1;
  v18 = *(a1 + v17);
  swift_getKeyPath();
  v77 = v18;
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v18 + 280, &aBlock, &qword_100144328);
  if (v74)
  {
    v63 = v14;
    v64 = v4;
    v65 = v6;
    sub_1000518E8(&aBlock, v78);
    v19 = v66;
    sub_10000DC80(v66, v66[3]);
    v60 = enum case for ColorScheme.light(_:);
    v20 = *(v11 + 104);
    v20(v13);
    v58 = v20;
    v21 = sub_1000B4514(v13);
    v22 = *(v11 + 8);
    v22(v13, v10);
    v57 = v22;
    v59 = enum case for ColorScheme.dark(_:);
    v20(v13);
    sub_1000B4514(v13);
    v22(v13, v10);
    sub_100051D2C();
    v56 = v21;

    v23 = UIColor.init(_:)();
    v62 = v16;
    v24 = v23;

    v25 = UIColor.init(_:)();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    v27 = objc_allocWithZone(UIColor);
    v75 = sub_100052D48;
    v76 = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v73 = sub_1000C7D7C;
    v74 = &unk_100136D80;
    v28 = _Block_copy(&aBlock);
    [v27 initWithDynamicProvider:v28];
    _Block_release(v28);

    v61 = Color.init(_:)();

    sub_10000DC80(v19, v19[3]);
    v29 = v58;
    (v58)(v13, v60, v10);
    sub_1000B4010(v13);
    v30 = v57;
    v57(v13, v10);
    (v29)(v13, v59, v10);
    sub_1000B4010(v13);
    v30(v13, v10);

    v31 = UIColor.init(_:)();

    v32 = UIColor.init(_:)();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v34 = objc_allocWithZone(UIColor);
    v75 = sub_100052D48;
    v76 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v35 = v62;
    v73 = sub_1000C7D7C;
    v74 = &unk_100136DD0;
    v36 = _Block_copy(&aBlock);
    [v34 initWithDynamicProvider:v36];
    _Block_release(v36);

    v37 = Color.init(_:)();

    sub_100007DB0(v78, &aBlock);
    type metadata accessor for SongPreviewPlaybackViewModel();
    swift_allocObject();
    v38 = sub_1000B37B0(&aBlock, v61, v37);

    v39 = v69;
    sub_100051918(v70, v69, type metadata accessor for TrackPageView);
    v40 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v41 = swift_allocObject();
    sub_100051EFC(v39, v41 + v40, type metadata accessor for TrackPageView);
    *v35 = swift_getKeyPath();
    sub_100002D44(&qword_100144378);
    swift_storeEnumTagMultiPayload();
    v42 = type metadata accessor for SongPreviewPlaybackView();
    v43 = v35 + *(v42 + 20);
    *v43 = sub_100052358;
    *(v43 + 1) = v38;
    v43[16] = 0;
    v44 = (v35 + *(v42 + 24));
    *v44 = sub_100052268;
    v44[1] = v41;
    if (qword_100141B10 != -1)
    {
      swift_once();
    }

    *(v35 + *(v63 + 36)) = qword_100143DE0;
    sub_100007FDC(v35, v65, &qword_100144320);
    swift_storeEnumTagMultiPayload();

    sub_100002D44(&qword_100144338);
    sub_100051FC8();
    sub_1000520F8();
    v45 = v71;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v35, &qword_100144320);
    sub_100007E74(v78);
    v46 = sub_100002D44(&qword_100144330);
    return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  }

  else
  {
    v48 = v71;
    sub_100007E14(&aBlock, &qword_100144328);
    if (sub_10009DB70())
    {
      v49 = [objc_opt_self() secondarySystemFillColor];
      v50 = Color.init(uiColor:)();
      v51 = v48;
      if (qword_100141B10 != -1)
      {
        v55 = v50;
        swift_once();
        v50 = v55;
      }

      v52 = qword_100143DE0;
      *v6 = v50;
      *(v6 + 4) = 256;
      *(v6 + 2) = v52;
      swift_storeEnumTagMultiPayload();

      sub_100002D44(&qword_100144338);
      sub_100051FC8();
      sub_1000520F8();
      _ConditionalContent<>.init(storage:)();
      v53 = sub_100002D44(&qword_100144330);
      return (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
    }

    else
    {
      v54 = sub_100002D44(&qword_100144330);
      return (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
    }
  }
}

uint64_t sub_100046068(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 68354;
  }

  else
  {
    v2 = 2818;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_100046148@<X0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v6 = sub_100002D44(&qword_100144268);
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = [objc_allocWithZone(LSApplicationWorkspace) init];
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 applicationWithBundleIdentifier:v11];

  v13 = String._bridgeToObjectiveC()();
  v14 = [v9 applicationIsInstalled:v13];

  if (v14)
  {
    sub_1000463A0(a1, v3, v23, v8);
    v15 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v16 = &v8[*(v6 + 36)];
    *v16 = v15;
    *(v16 + 1) = v17;
    *(v16 + 2) = v18;
    *(v16 + 3) = v19;
    *(v16 + 4) = v20;
    v16[40] = 0;
    sub_10002F250(v8, a3, &qword_100144268);
    return (*(v24 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v22 = *(v24 + 56);

    return v22(a3, 1, 1, v6);
  }
}

uint64_t sub_1000463A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v140 = a3;
  v170 = a4;
  v171 = a2;
  v155 = type metadata accessor for RedactionReasons();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_100002D44(&qword_100144270);
  __chkstk_darwin(v164);
  v156 = v129 - v6;
  v162 = sub_100002D44(&qword_100144278);
  __chkstk_darwin(v162);
  v163 = v129 - v7;
  v168 = type metadata accessor for TrackPageView();
  v150 = *(v168 - 8);
  __chkstk_darwin(v168);
  v151 = v8;
  v152 = v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v9 - 8);
  v146 = v129 - v10;
  v11 = type metadata accessor for MusicSubscriptionOffer.MessageIdentifier();
  __chkstk_darwin(v11 - 8);
  v145 = v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicSubscriptionOffer.Action();
  __chkstk_darwin(v13 - 8);
  v141 = v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for MusicSubscriptionOffer.Options();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ColorScheme();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v17 = v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002D44(&qword_100144140);
  __chkstk_darwin(v18 - 8);
  v20 = v129 - v19;
  v160 = type metadata accessor for PlayInAppleMusicView();
  __chkstk_darwin(v160);
  v22 = (v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v148 = (v129 - v24);
  v161 = sub_100002D44(&qword_100144280);
  __chkstk_darwin(v161);
  v147 = v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v149 = v129 - v27;
  v28 = sub_100002D44(&qword_100144288);
  __chkstk_darwin(v28 - 8);
  v30 = v129 - v29;
  v31 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v31 - 8);
  v165 = v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v167 = v129 - v34;
  __chkstk_darwin(v35);
  v37 = v129 - v36;
  v38 = type metadata accessor for URL();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v158 = v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v166 = v129 - v42;
  __chkstk_darwin(v43);
  v159 = v129 - v44;
  v45 = a1[3];
  v169 = a1;
  v46 = sub_10000DC80(a1, v45);
  v157 = type metadata accessor for TrackPageMetadata();
  sub_100007FDC(v46 + v157[6], v30, &qword_100144288);
  v47 = type metadata accessor for AnySong();
  if ((*(*(v47 - 8) + 48))(v30, 1, v47) == 1)
  {
    sub_100007E14(v30, &qword_100144288);
    (*(v39 + 56))(v37, 1, 1, v38);
  }

  else
  {
    sub_100007FDC(v30, v37, &unk_100144630);
    sub_100051CCC(v30, type metadata accessor for AnySong);
    if ((*(v39 + 48))(v37, 1, v38) != 1)
    {
      v59 = v39;
      v60 = v159;
      (*(v39 + 32))(v159, v37, v38);
      v61 = *(v171 + *(v168 + 32));
      LODWORD(v156) = sub_10009DD50();
      v62 = *(v59 + 16);
      v155 = v59 + 16;
      v154 = v62;
      v62(v166, v60, v38);
      v63 = sub_10000DC80(v169, v169[3]);
      sub_100007FDC(v63 + v157[8], v20, &qword_100144140);
      v64 = type metadata accessor for AnyAlbum();
      v65 = (*(*(v64 - 8) + 48))(v20, 1, v64);
      v137 = v38;
      v136 = v59;
      v135 = v61;
      if (v65 == 1)
      {
        sub_100007E14(v20, &qword_100144140);
        (*(v59 + 56))(v167, 1, 1, v38);
      }

      else
      {
        v66 = &v20[*(v64 + 20)];
        v67 = *(v66 + 3);
        v68 = *(v66 + 4);
        sub_10000DC80(v66, v67);
        (*(v68 + 56))(v67, v68);
        sub_100051CCC(v20, type metadata accessor for AnyAlbum);
      }

      sub_10000DC80(v169, v169[3]);
      LODWORD(v153) = enum case for ColorScheme.light(_:);
      v69 = v138;
      v70 = *(v138 + 13);
      v71 = v139;
      v70(v17);
      v133 = v70;
      sub_1000B4010(v17);
      v72 = *(v69 + 1);
      v72(v17, v71);
      v132 = v72;
      LODWORD(v138) = enum case for ColorScheme.dark(_:);
      v70(v17);
      sub_1000B4010(v17);
      v72(v17, v71);
      sub_100051D2C();

      v73 = UIColor.init(_:)();

      v74 = UIColor.init(_:)();
      v75 = swift_allocObject();
      *(v75 + 16) = v74;
      *(v75 + 24) = v73;
      v76 = objc_allocWithZone(UIColor);
      v176 = sub_100051DB8;
      v177 = v75;
      aBlock = _NSConcreteStackBlock;
      v173 = 1107296256;
      v134 = &v174;
      v174 = sub_1000C7D7C;
      v175 = &unk_100136C40;
      v77 = _Block_copy(&aBlock);
      [v76 initWithDynamicProvider:v77];
      _Block_release(v77);

      v168 = Color.init(_:)();

      sub_10000DC80(v169, v169[3]);
      v78 = v133;
      v133(v17, v153, v71);
      sub_1000B4514(v17);
      v79 = v132;
      v132(v17, v71);
      v78(v17, v138, v71);
      sub_1000B4514(v17);
      v79(v17, v71);

      v80 = UIColor.init(_:)();

      v81 = UIColor.init(_:)();
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v80;
      v83 = objc_allocWithZone(UIColor);
      v176 = sub_100052D48;
      v177 = v82;
      aBlock = _NSConcreteStackBlock;
      v173 = 1107296256;
      v174 = sub_1000C7D7C;
      v175 = &unk_100136C90;
      v84 = _Block_copy(&aBlock);
      [v83 initWithDynamicProvider:v84];
      _Block_release(v84);

      v85 = Color.init(_:)();

      v86 = v140[3];
      v139 = v140[2];
      v87 = v140[1];
      v153 = *v140;
      v88 = v169;
      sub_10000DC80(v169, v169[3]);
      v140 = v87;

      v138 = v86;

      v129[1] = sub_1000B4D60();
      v134 = v89;
      swift_getKeyPath();
      v90 = v135;
      aBlock = v135;
      sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v133 = v90[71];
      v91 = v90[72];
      v92 = sub_10000DC80(v88, v88[3]);
      v93 = *(v92 + v157[5]);
      v157 = v91;

      v94 = [v93 shazamID];
      if (v94)
      {
        v95 = v94;
        v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v131 = v96;
      }

      else
      {
        v132 = 0;
        v131 = 0;
      }

      swift_getKeyPath();
      aBlock = v90;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v135 = v90[34];
      v97 = v135;
      v98 = v158;
      v99 = v137;
      v100 = v154;
      v154(v158, v166, v137);
      sub_100007FDC(v167, v165, &unk_100144630);
      v169 = type metadata accessor for PlayInAppleMusicViewModel();
      v101 = swift_allocObject();
      *(v101 + 16) = 0;
      v130 = v97;
      v102 = v168;

      static MusicSubscriptionOffer.Action.subscribe.getter();
      static MusicSubscriptionOffer.MessageIdentifier.join.getter();
      v103 = v142;
      MusicSubscriptionOffer.Options.init(action:messageIdentifier:itemID:affiliateToken:campaignToken:)();
      static MusicSubscriptionOffer.MessageIdentifier.playMusic.getter();
      MusicSubscriptionOffer.Options.messageIdentifier.setter();
      (*(v143 + 32))(v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions, v103, v144);
      v104 = (v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token);
      *v104 = 0;
      v104[1] = 0;
      ObservationRegistrar.init()();
      v105 = (v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_sourceBundleIdentifier);
      v106 = v157;
      *v105 = v133;
      v105[1] = v106;
      v100(v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicSongURL, v98, v99);
      v107 = v131;
      *(v101 + 24) = v132;
      *(v101 + 32) = v107;
      *(v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers) = v135;
      v108 = v130;

      *v104 = 0;
      v104[1] = 0;
      sub_100007FDC(v165, v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicClassicalURL, &unk_100144630);
      *(v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_shouldDisplayAppleClassicalFeatures) = v156 & 1;
      *(v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_buttonTextColor) = v85;
      *(v101 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_buttonBackgroundColor) = v102;
      if (v134)
      {

        MusicItemID.init(_:)();
        swift_getKeyPath();
        aBlock = v101;
        sub_1000520B0(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        aBlock = v101;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        MusicSubscriptionOffer.Options.itemID.setter();
        swift_endAccess();
        aBlock = v101;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }

      else
      {
      }

      swift_getKeyPath();
      aBlock = v101;
      sub_1000520B0(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v101;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      MusicSubscriptionOffer.Options.figaroCampaignToken.setter();
      swift_endAccess();
      aBlock = v101;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      swift_getKeyPath();
      aBlock = v101;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v101;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      MusicSubscriptionOffer.Options.figaroCampaignGroup.setter();
      swift_endAccess();
      aBlock = v101;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_100007E14(v165, &unk_100144630);
      v109 = *(v136 + 8);
      v110 = v137;
      v109(v158, v137);
      v111 = type metadata accessor for TaskPriority();
      v112 = v146;
      (*(*(v111 - 8) + 56))(v146, 1, 1, v111);
      type metadata accessor for MainActor();

      v113 = static MainActor.shared.getter();
      v114 = swift_allocObject();
      v114[2] = v113;
      v114[3] = &protocol witness table for MainActor;
      v114[4] = v101;
      sub_1000C8AF8(0, 0, v112, &unk_1000F8040, v114);

      sub_100007E14(v167, &unk_100144630);
      v168 = v109;
      v109(v166, v110);
      v115 = v152;
      sub_100051918(v171, v152, type metadata accessor for TrackPageView);
      v116 = (*(v150 + 80) + 16) & ~*(v150 + 80);
      v117 = swift_allocObject();
      sub_100051EFC(v115, v117 + v116, type metadata accessor for TrackPageView);
      v118 = v160;
      v119 = *(v160 + 24);
      KeyPath = swift_getKeyPath();
      v121 = v148;
      *(v148 + v119) = KeyPath;
      sub_100002D44(&qword_1001422A0);
      swift_storeEnumTagMultiPayload();
      v122 = *(v118 + 28);
      *(v121 + v122) = swift_getKeyPath();
      sub_100002D44(&qword_1001420C8);
      swift_storeEnumTagMultiPayload();
      v178 = v101;
      State.init(wrappedValue:)();
      v123 = v173;
      v121[2] = aBlock;
      v121[3] = v123;
      *v121 = sub_100051EE4;
      v121[1] = v117;
      if (qword_100141B10 != -1)
      {
        swift_once();
      }

      v124 = qword_100143DE0;
      v125 = v147;
      sub_100051EFC(v121, v147, type metadata accessor for PlayInAppleMusicView);
      *(v125 + *(v161 + 36)) = v124;
      v126 = v149;
      sub_10002F250(v125, v149, &qword_100144280);
      sub_100007FDC(v126, v163, &qword_100144280);
      swift_storeEnumTagMultiPayload();
      sub_100051ACC();
      sub_100051BB4();

      v49 = v170;
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v126, &qword_100144280);
      (v168)(v159, v137);
      goto LABEL_21;
    }
  }

  sub_100007E14(v37, &unk_100144630);
  v48 = sub_10009DB70();
  v49 = v170;
  if (v48)
  {
    v50 = sub_1000C7E0C();
    v51 = v160;
    v52 = *(v160 + 24);
    *(v22 + v52) = swift_getKeyPath();
    sub_100002D44(&qword_1001422A0);
    swift_storeEnumTagMultiPayload();
    v53 = *(v51 + 28);
    *(v22 + v53) = swift_getKeyPath();
    sub_100002D44(&qword_1001420C8);
    swift_storeEnumTagMultiPayload();
    v178 = v50;
    type metadata accessor for PlayInAppleMusicViewModel();
    State.init(wrappedValue:)();
    v54 = v173;
    v22[2] = aBlock;
    v22[3] = v54;
    *v22 = 0;
    v22[1] = 0;
    v55 = v153;
    static RedactionReasons.placeholder.getter();
    sub_1000520B0(&qword_100144298, type metadata accessor for PlayInAppleMusicView);
    v56 = v156;
    View.redacted(reason:)();
    (*(v154 + 1))(v55, v155);
    sub_100051CCC(v22, type metadata accessor for PlayInAppleMusicView);
    if (qword_100141B10 != -1)
    {
      swift_once();
    }

    v57 = v163;
    *(v56 + *(v164 + 36)) = qword_100143DE0;
    sub_100007FDC(v56, v57, &qword_100144270);
    swift_storeEnumTagMultiPayload();
    sub_100051ACC();
    sub_100051BB4();

    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v56, &qword_100144270);
LABEL_21:
    v58 = 0;
    goto LABEL_22;
  }

  v58 = 1;
LABEL_22:
  v127 = sub_100002D44(&qword_100144290);
  return (*(*(v127 - 8) + 56))(v49, v58, 1, v127);
}

uint64_t sub_100047E14(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 66049;
  }

  else
  {
    v2 = 513;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_100047EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_100144138);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v11 - 8);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v19 = sub_100002D44(&qword_1001441D8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v46 - v21;
  sub_100048460(a1, v2, &v46 - v21);
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v23 = *(v20 + 44);
  v50 = v22;
  v24 = &v22[v23];
  *v24 = a1;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v49 = static Edge.Set.horizontal.getter();
  type metadata accessor for TrackPageView();
  sub_1000413BC(v18);
  (*(v5 + 104))(v15, enum case for UserInterfaceSizeClass.regular(_:), v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v29 = *(v8 + 56);
  sub_100007FDC(v18, v10, &qword_1001420F8);
  sub_100007FDC(v15, &v10[v29], &qword_1001420F8);
  v30 = *(v5 + 48);
  if (v30(v10, 1, v4) != 1)
  {
    sub_100007FDC(v10, v48, &qword_1001420F8);
    if (v30(&v10[v29], 1, v4) != 1)
    {
      v31 = &v10[v29];
      v32 = v47;
      (*(v5 + 32))(v47, v31, v4);
      sub_1000520B0(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
      v33 = v48;
      dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v5 + 8);
      v34(v32, v4);
      sub_100007E14(v15, &qword_1001420F8);
      sub_100007E14(v18, &qword_1001420F8);
      v34(v33, v4);
      sub_100007E14(v10, &qword_1001420F8);
      goto LABEL_8;
    }

    sub_100007E14(v15, &qword_1001420F8);
    sub_100007E14(v18, &qword_1001420F8);
    (*(v5 + 8))(v48, v4);
    goto LABEL_6;
  }

  sub_100007E14(v15, &qword_1001420F8);
  sub_100007E14(v18, &qword_1001420F8);
  if (v30(&v10[v29], 1, v4) != 1)
  {
LABEL_6:
    sub_100007E14(v10, &qword_100144138);
    goto LABEL_8;
  }

  sub_100007E14(v10, &qword_1001420F8);
LABEL_8:
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v51;
  sub_10002F250(v50, v51, &qword_1001441D8);
  result = sub_100002D44(&qword_100144150);
  v45 = v43 + *(result + 36);
  *v45 = v49;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_100048460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v3 = type metadata accessor for RedactionReasons();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100002D44(&qword_1001441E0);
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v35 - v6;
  v8 = sub_100002D44(&qword_1001441E8);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for TrackPageView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = type metadata accessor for ArtistProfileView();
  __chkstk_darwin(v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100007FDC(v40, &v43, &qword_100144198);
  if (v44)
  {
    sub_1000518E8(&v43, v45);
    sub_100007DB0(v45, v16);
    sub_100051918(v41, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
    v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v18 = swift_allocObject();
    sub_100051EFC(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TrackPageView);
    v19 = *(v14 + 24);
    *(v16 + v19) = swift_getKeyPath();
    sub_100002D44(&qword_1001422A0);
    swift_storeEnumTagMultiPayload();
    v16[5] = sub_100051900;
    v16[6] = v18;
    sub_100051918(v16, v10, type metadata accessor for ArtistProfileView);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1000520B0(&qword_1001441F8, type metadata accessor for ArtistProfileView);
    *&v43 = v14;
    *(&v43 + 1) = v20;
    swift_getOpaqueTypeConformance2();
    v21 = v42;
    _ConditionalContent<>.init(storage:)();
    sub_100051CCC(v16, type metadata accessor for ArtistProfileView);
    sub_100007E74(v45);
    v22 = sub_100002D44(&qword_1001441F0);
    return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v24 = v5;
    v35 = v10;
    v26 = v37;
    v25 = v38;
    v40 = v8;
    sub_100007E14(&v43, &qword_100144198);
    if (sub_10009DB70())
    {
      v16[3] = type metadata accessor for DesignTimeArtistMetadata();
      v16[4] = &off_100135880;
      v27 = sub_100023284(v16);
      sub_100008120(v27);
      v28 = *(v14 + 24);
      *(v16 + v28) = swift_getKeyPath();
      sub_100002D44(&qword_1001422A0);
      swift_storeEnumTagMultiPayload();
      v16[5] = 0;
      v16[6] = 0;
      static RedactionReasons.placeholder.getter();
      v29 = sub_1000520B0(&qword_1001441F8, type metadata accessor for ArtistProfileView);
      View.redacted(reason:)();
      (*(v26 + 8))(v24, v25);
      sub_100051CCC(v16, type metadata accessor for ArtistProfileView);
      v30 = v36;
      v31 = v39;
      (*(v36 + 16))(v35, v7, v39);
      swift_storeEnumTagMultiPayload();
      v45[0] = v14;
      v45[1] = v29;
      swift_getOpaqueTypeConformance2();
      v32 = v42;
      _ConditionalContent<>.init(storage:)();
      (*(v30 + 8))(v7, v31);
      v33 = sub_100002D44(&qword_1001441F0);
      return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    }

    else
    {
      v34 = sub_100002D44(&qword_1001441F0);
      return (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    }
  }
}

uint64_t sub_100048B00(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 66561;
  }

  else
  {
    v2 = 1025;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_100048BE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  LODWORD(v84) = a1;
  v85 = type metadata accessor for UserInterfaceSizeClass();
  v81 = *(v85 - 8);
  __chkstk_darwin(v85);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&qword_100144138);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v8 - 8);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v70 - v11;
  __chkstk_darwin(v13);
  v15 = &v70 - v14;
  v16 = type metadata accessor for TrackPageView();
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = *(v77 + 64);
  __chkstk_darwin(v16);
  v18 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v18 - 8);
  v20 = &v70 - v19;
  v21 = type metadata accessor for ShazamUpsellView();
  __chkstk_darwin(v21);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_100002D44(&qword_1001441C0);
  __chkstk_darwin(v82);
  v83 = &v70 - v24;
  v25 = sub_100002D44(&qword_1001441C8);
  __chkstk_darwin(v25);
  v31.n128_f64[0] = __chkstk_darwin(v26);
  if (v84)
  {
    v71 = &v70 - v29;
    v72 = v30;
    v73 = v28;
    v74 = v27;
    v84 = a3;
    sub_100007FDC(v79, v20, &unk_100144630);
    sub_100089B20(v20, v23);
    v70 = v5;
    sub_100051918(v80, &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
    v32 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v33 = swift_allocObject();
    sub_100051EFC(&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for TrackPageView);
    v34 = *(v21 + 24);
    *(v23 + v34) = swift_getKeyPath();
    sub_100002D44(&qword_1001422A0);
    swift_storeEnumTagMultiPayload();
    v35 = *(v21 + 20);
    v79 = v23;
    v36 = (v23 + v35);
    *v36 = sub_1000518B8;
    v36[1] = v33;
    LODWORD(v77) = static Edge.Set.horizontal.getter();
    sub_1000413BC(v15);
    v37 = v81;
    v38 = v85;
    (*(v81 + 104))(v12, enum case for UserInterfaceSizeClass.regular(_:), v85);
    (*(v37 + 56))(v12, 0, 1, v38);
    v39 = *(v70 + 48);
    sub_100007FDC(v15, v7, &qword_1001420F8);
    sub_100007FDC(v12, &v7[v39], &qword_1001420F8);
    v40 = *(v37 + 48);
    if (v40(v7, 1, v38) == 1)
    {
      sub_100007E14(v12, &qword_1001420F8);
      sub_100007E14(v15, &qword_1001420F8);
      v41 = v40(&v7[v39], 1, v85);
      v42 = v84;
      if (v41 == 1)
      {
        sub_100007E14(v7, &qword_1001420F8);
LABEL_12:
        v49 = v83;
        EdgeInsets.init(_all:)();
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        sub_100051EFC(v79, v49, type metadata accessor for ShazamUpsellView);
        v58 = v49 + *(v82 + 36);
        *v58 = v77;
        *(v58 + 8) = v51;
        *(v58 + 16) = v53;
        *(v58 + 24) = v55;
        *(v58 + 32) = v57;
        *(v58 + 40) = 0;
        sub_100002D44(&qword_1001441D0);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1000F7970;
        if (qword_100141AF0 != -1)
        {
          swift_once();
        }

        *(v59 + 32) = Gradient.Stop.init(color:location:)();
        *(v59 + 40) = v60;
        if (qword_100141AF8 != -1)
        {
          swift_once();
        }

        *(v59 + 48) = Gradient.Stop.init(color:location:)();
        *(v59 + 56) = v61;
        static UnitPoint.top.getter();
        static UnitPoint.bottom.getter();
        Gradient.init(stops:)();
        LinearGradient.init(gradient:startPoint:endPoint:)();
        v62 = v86;
        v63 = static Edge.Set.all.getter();
        v64 = v72;
        sub_10002F250(v49, v72, &qword_1001441C0);
        v65 = v74;
        v66 = v64 + *(v74 + 36);
        *v66 = v62;
        v67 = v87;
        *(v66 + 24) = v88;
        *(v66 + 8) = v67;
        *(v66 + 40) = v63;
        v68 = v64;
        v69 = v71;
        sub_10002F250(v68, v71, &qword_1001441C8);
        sub_10002F250(v69, v42, &qword_1001441C8);
        return (*(v73 + 56))(v42, 0, 1, v65);
      }
    }

    else
    {
      v80 = v12;
      v45 = v76;
      sub_100007FDC(v7, v76, &qword_1001420F8);
      if (v40(&v7[v39], 1, v85) != 1)
      {
        v46 = v75;
        v47 = v85;
        (*(v37 + 32))(v75, &v7[v39], v85);
        sub_1000520B0(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v37 + 8);
        v48(v46, v47);
        sub_100007E14(v80, &qword_1001420F8);
        sub_100007E14(v15, &qword_1001420F8);
        v48(v45, v47);
        sub_100007E14(v7, &qword_1001420F8);
        v42 = v84;
        goto LABEL_12;
      }

      sub_100007E14(v80, &qword_1001420F8);
      sub_100007E14(v15, &qword_1001420F8);
      (*(v37 + 8))(v45, v85);
      v42 = v84;
    }

    sub_100007E14(v7, &qword_100144138);
    goto LABEL_12;
  }

  v43 = *(v28 + 56);

  return v43(a3, 1, 1, v31);
}

uint64_t sub_100049614(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 66054;
  }

  else
  {
    v2 = 518;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

void sub_1000496F4(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v63 = *(v6 - 8);
  __chkstk_darwin(v6);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100002D44(&qword_100144138);
  __chkstk_darwin(v62);
  v9 = &v56 - v8;
  v10 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v10 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  __chkstk_darwin(v15);
  v64 = &v56 - v16;
  v17 = type metadata accessor for TrackPageView();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  if ((a1 & 1) == 0)
  {
    *(a3 + 169) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v57 = v19;
  v58 = v6;
  v20 = a2[3];
  v21 = a2[10];
  v22 = sub_10000DC80(a2, v20);
  v73 = v20;
  *&v74 = v21;
  v23 = sub_100023284(&v72);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = v61;
  v25 = sub_1000A3158();
  v56 = v9;
  if (v25)
  {
    v26 = sub_10006CE5C(&off_100134ED0);
  }

  else
  {
    v26 = &_swiftEmptySetSingleton;
  }

  v27 = v64;
  *&v65 = LocalizedStringKey.init(stringLiteral:)();
  *(&v65 + 1) = v28;
  LOBYTE(v66) = v29 & 1;
  *(&v66 + 1) = v30;
  sub_100007DB0(&v72, v67);
  v31 = sub_1000D2274(v26);

  sub_100007E74(&v72);
  *(&v68 + 1) = v31;
  sub_100051918(v24, &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
  v32 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v33 = swift_allocObject();
  sub_100051EFC(&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for TrackPageView);
  *&v69 = sub_1000518D0;
  *(&v69 + 1) = v33;
  LOBYTE(v33) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v70) = v33;
  *(&v70 + 1) = v34;
  *&v71[0] = v35;
  *(&v71[0] + 1) = v36;
  *&v71[1] = v37;
  BYTE8(v71[1]) = 0;
  LODWORD(v57) = static Edge.Set.horizontal.getter();
  sub_1000413BC(v27);
  v38 = v63;
  v39 = v58;
  (*(v63 + 104))(v14, enum case for UserInterfaceSizeClass.regular(_:), v58);
  (*(v38 + 56))(v14, 0, 1, v39);
  v40 = *(v62 + 48);
  v41 = v27;
  v42 = v56;
  sub_100007FDC(v41, v56, &qword_1001420F8);
  sub_100007FDC(v14, v42 + v40, &qword_1001420F8);
  v43 = *(v38 + 48);
  if (v43(v42, 1, v39) != 1)
  {
    v44 = v60;
    sub_100007FDC(v42, v60, &qword_1001420F8);
    if (v43(v42 + v40, 1, v39) != 1)
    {
      v45 = v63;
      v46 = v59;
      (*(v63 + 32))(v59, v42 + v40, v39);
      sub_1000520B0(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v45 + 8);
      v47(v46, v39);
      sub_100007E14(v14, &qword_1001420F8);
      sub_100007E14(v64, &qword_1001420F8);
      v47(v60, v39);
      sub_100007E14(v42, &qword_1001420F8);
      goto LABEL_13;
    }

    sub_100007E14(v14, &qword_1001420F8);
    sub_100007E14(v64, &qword_1001420F8);
    (*(v63 + 8))(v44, v39);
    goto LABEL_11;
  }

  sub_100007E14(v14, &qword_1001420F8);
  sub_100007E14(v64, &qword_1001420F8);
  if (v43(v42 + v40, 1, v39) != 1)
  {
LABEL_11:
    sub_100007E14(v42, &qword_100144138);
    goto LABEL_13;
  }

  sub_100007E14(v42, &qword_1001420F8);
LABEL_13:
  EdgeInsets.init(_all:)();
  v77[0] = v71[0];
  *(v77 + 9) = *(v71 + 9);
  v74 = v67[0];
  v75 = v67[1];
  v48 = v69;
  v76 = v68;
  v49 = v66;
  v72 = v65;
  v50 = v77[0];
  *(a3 + 96) = v70;
  *(a3 + 112) = v50;
  *(a3 + 128) = v77[1];
  v51 = v75;
  *(a3 + 32) = v74;
  *(a3 + 48) = v51;
  *(a3 + 64) = v76;
  *(a3 + 80) = v48;
  *a3 = v72;
  *(a3 + 16) = v49;
  *(a3 + 144) = v57;
  *(a3 + 152) = v52;
  *(a3 + 160) = v53;
  *(a3 + 168) = v54;
  *(a3 + 176) = v55;
  *(a3 + 184) = 0;
}

uint64_t sub_100049E3C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 66817;
  }

  else
  {
    v2 = 1281;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_100049F1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v217 = a2;
  v210 = a3;
  v4 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v4 - 8);
  v206 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v207 = &v184 - v7;
  v8 = sub_100002D44(&qword_100144130);
  __chkstk_darwin(v8 - 8);
  v209 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v208 = &v184 - v11;
  v192 = type metadata accessor for UserInterfaceSizeClass();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v184 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_100002D44(&qword_100144138);
  __chkstk_darwin(v189);
  v191 = &v184 - v13;
  v14 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v14 - 8);
  v185 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v193 = &v184 - v17;
  __chkstk_darwin(v18);
  v194 = &v184 - v19;
  v20 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v20 - 8);
  v196 = &v184 - v21;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v197 = v22;
  v198 = v23;
  __chkstk_darwin(v22);
  v187 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v188 = &v184 - v26;
  __chkstk_darwin(v27);
  v195 = &v184 - v28;
  v29 = sub_100002D44(&qword_100144140);
  __chkstk_darwin(v29 - 8);
  v186 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v205 = (&v184 - v32);
  v33 = sub_100002D44(&qword_100144148);
  __chkstk_darwin(v33 - 8);
  v204 = &v184 - v34;
  v35 = sub_100002D44(&qword_100144150);
  __chkstk_darwin(v35 - 8);
  v213 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v216 = &v184 - v38;
  v211 = type metadata accessor for TrackPageView();
  v203 = *(v211 - 8);
  v202 = *(v203 + 8);
  __chkstk_darwin(v211);
  v201 = &v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100002D44(&qword_100144158);
  __chkstk_darwin(v40 - 8);
  v42 = &v184 - v41;
  v43 = sub_100002D44(&qword_100144160);
  v44 = v43 - 8;
  __chkstk_darwin(v43);
  v46 = &v184 - v45;
  v47 = sub_100002D44(&qword_100144168);
  v48 = v47 - 8;
  __chkstk_darwin(v47);
  v50 = &v184 - v49;
  v51 = sub_100002D44(&qword_100144170);
  v52 = v51 - 8;
  __chkstk_darwin(v51);
  v199 = (&v184 - v53);
  v200 = (sub_100002D44(&qword_100144178) - 8);
  __chkstk_darwin(v200);
  v212 = &v184 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v184 - v56;
  __chkstk_darwin(v58);
  v215 = &v184 - v59;
  *v42 = static HorizontalAlignment.center.getter();
  *(v42 + 1) = 0;
  v42[16] = 0;
  v60 = sub_100002D44(&qword_100144180);
  v61 = v217;
  sub_10004B750(a1, v217, &v42[*(v60 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F250(v42, v46, &qword_100144158);
  v62 = &v46[*(v44 + 44)];
  v63 = v252;
  *(v62 + 4) = v251;
  *(v62 + 5) = v63;
  *(v62 + 6) = v253;
  v64 = v248;
  *v62 = v247;
  *(v62 + 1) = v64;
  v65 = v250;
  *(v62 + 2) = v249;
  *(v62 + 3) = v65;
  v66 = static Alignment.center.getter();
  v68 = v67;
  v69 = &v50[*(v48 + 44)];
  sub_10004C88C(a1, v61, v69);
  v70 = (v69 + *(sub_100002D44(&qword_100144188) + 36));
  *v70 = v66;
  v70[1] = v68;
  sub_10002F250(v46, v50, &qword_100144160);
  v71 = v199;
  v72 = v199 + *(v52 + 44);
  v73 = sub_100002D44(&qword_100144190);
  v74 = *(v73 + 36);
  v75 = enum case for CoordinateSpace.local(_:);
  v76 = type metadata accessor for CoordinateSpace();
  (*(*(v76 - 8) + 104))(&v72[v74], v75, v76);
  *v72 = &type metadata for BackgroundBlurHeightPreferenceKey;
  v77 = &v72[*(v73 + 40)];
  v78 = v204;
  *v77 = sub_100052D44;
  v77[1] = 0;
  sub_10002F250(v50, v71, &qword_100144168);
  v214 = a1;
  v79 = a1;
  v80 = v201;
  sub_100051918(v79, v201, type metadata accessor for TrackPageView);
  v81 = (*(v203 + 80) + 16) & ~*(v203 + 80);
  v82 = swift_allocObject();
  v83 = v82 + v81;
  v84 = v217;
  sub_100051EFC(v80, v83, type metadata accessor for TrackPageView);
  sub_10002F250(v71, v57, &qword_100144170);
  v85 = &v57[v200[11]];
  *v85 = sub_100051858;
  v85[1] = v82;
  sub_10002F250(v57, v215, &qword_100144178);
  v86 = sub_10000DC80(v84, v84[3]);
  v87 = type metadata accessor for TrackPageMetadata();
  sub_100007FDC(v86 + v87[7], v78, &qword_100144148);
  v88 = type metadata accessor for AnyArtist();
  if ((*(*(v88 - 8) + 48))(v78, 1, v88) == 1)
  {
    sub_100007E14(v78, &qword_100144148);
    v244 = 0u;
    v245 = 0u;
    v246 = 0;
  }

  else
  {
    *(&v245 + 1) = v88;
    v246 = &off_100137A58;
    v89 = sub_100023284(&v244);
    sub_100051EFC(v78, v89, type metadata accessor for AnyArtist);
  }

  sub_100047EF4(&v244, v216);
  sub_100007E14(&v244, &qword_100144198);
  v90 = sub_10000DC80(v84, v84[3]);
  v91 = v205;
  sub_100007FDC(v90 + v87[8], v205, &qword_100144140);
  v92 = type metadata accessor for AnyAlbum();
  v93 = *(*(v92 - 8) + 48);
  if (v93(v91, 1, v92) == 1)
  {
    sub_100007E14(v91, &qword_100144140);
    v94 = v206;
LABEL_19:
    sub_100051870(&v237);
    v117 = v214;
    goto LABEL_20;
  }

  v203 = v93;
  v95 = (v91 + *(v92 + 20));
  v96 = v95[3];
  v97 = v95[4];
  sub_10000DC80(v95, v96);
  v98 = (*(v97 + 64))(v96, v97);
  sub_100051CCC(v91, type metadata accessor for AnyAlbum);
  v99 = v84[3];
  v100 = v84[10];
  sub_10000DC80(v84, v99);
  v101 = *(v100 + 8);
  v102 = v100;
  v103 = v196;
  v101(v99, v102);
  v104 = v197;
  v105 = v198;
  if ((*(v198 + 48))(v103, 1, v197) == 1)
  {

    sub_100007E14(v103, &qword_100142FE0);
    v94 = v206;
    goto LABEL_19;
  }

  v204 = v98;
  v205 = v87;
  v106 = v195;
  (*(v105 + 32))(v195, v103, v104);
  v107 = v105;
  v108 = v84[3];
  v109 = v84[10];
  sub_10000DC80(v84, v108);
  v110 = (*(v109 + 72))(v108, v109);
  if (!v110)
  {
    (*(v107 + 8))(v106, v104);

    v94 = v206;
LABEL_18:
    v87 = v205;
    goto LABEL_19;
  }

  v111 = v110;
  [v110 coordinate];
  if (v112 == 0.0)
  {
    [v111 coordinate];
    v114 = v113 == 0.0;
  }

  else
  {
    v114 = 0;
  }

  [v111 coordinate];
  if (!CLLocationCoordinate2DIsValid(v254) || v114)
  {

    (*(v198 + 8))(v195, v197);
    v94 = v206;
    goto LABEL_18;
  }

  v115 = sub_10000DC80(v217, v217[3]);
  v116 = v186;
  sub_100007FDC(v115 + v205[8], v186, &qword_100144140);
  if (v203(v116, 1, v92) == 1)
  {
    sub_100007E14(v116, &qword_100144140);
  }

  else
  {
    v143 = (v116 + *(v92 + 20));
    v144 = v143[3];
    v145 = v143[4];
    sub_10000DC80(v143, v144);
    v146 = (*(v145 + 16))(v144, v145);
    sub_100051CCC(v116, type metadata accessor for AnyAlbum);
    if (v146)
    {
      goto LABEL_26;
    }
  }

  v146 = static Color.primary.getter();
LABEL_26:
  v147 = v197;
  v148 = v198;
  v149 = *(v198 + 16);
  v150 = v188;
  v149(v188, v195, v197);
  v151 = v187;
  v149(v187, v150, v147);
  type metadata accessor for LocationModuleModel();
  swift_allocObject();
  v152 = v204;

  v153 = sub_1000B27B4(v152, v151, v146);

  v203 = v146;

  v218[0] = v153;
  State.init(wrappedValue:)();
  v201 = *(&v230 + 1);
  v202 = v230;
  type metadata accessor for LocationViewModel();

  v200 = v111;
  v218[0] = LocationViewModel.__allocating_init(location:artworkView:)();
  State.init(wrappedValue:)();
  v154 = *(v148 + 8);
  v198 = v148 + 8;
  v199 = v154;
  v154(v150, v147);
  v188 = *(&v230 + 1);
  v196 = v230;
  LODWORD(v187) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  LOBYTE(v228[0]) = 0;
  LODWORD(v186) = static Edge.Set.horizontal.getter();
  v163 = v194;
  sub_1000413BC(v194);
  v164 = v190;
  v166 = v192;
  v165 = v193;
  (*(v190 + 104))(v193, enum case for UserInterfaceSizeClass.regular(_:), v192);
  (*(v164 + 56))(v165, 0, 1, v166);
  v167 = *(v189 + 48);
  v168 = v191;
  sub_100007FDC(v163, v191, &qword_1001420F8);
  sub_100007FDC(v165, v168 + v167, &qword_1001420F8);
  v169 = *(v164 + 48);
  if (v169(v168, 1, v166) != 1)
  {
    v171 = v185;
    sub_100007FDC(v168, v185, &qword_1001420F8);
    if (v169(v168 + v167, 1, v166) != 1)
    {
      v174 = v184;
      (*(v164 + 32))(v184, v168 + v167, v166);
      sub_1000520B0(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v175 = *(v164 + 8);
      v175(v174, v166);
      sub_100007E14(v193, &qword_1001420F8);
      sub_100007E14(v194, &qword_1001420F8);
      v175(v171, v166);
      sub_100007E14(v168, &qword_1001420F8);
      v117 = v214;
      v94 = v206;
      v172 = v197;
      v173 = v195;
      goto LABEL_34;
    }

    sub_100007E14(v193, &qword_1001420F8);
    sub_100007E14(v194, &qword_1001420F8);
    (*(v164 + 8))(v171, v166);
    v117 = v214;
    goto LABEL_31;
  }

  sub_100007E14(v165, &qword_1001420F8);
  sub_100007E14(v194, &qword_1001420F8);
  v170 = v169(v168 + v167, 1, v166);
  v117 = v214;
  if (v170 != 1)
  {
LABEL_31:
    sub_100007E14(v168, &qword_100144138);
    goto LABEL_32;
  }

  sub_100007E14(v168, &qword_1001420F8);
LABEL_32:
  v94 = v206;
  v172 = v197;
  v173 = v195;
LABEL_34:
  EdgeInsets.init(_all:)();
  v177 = v176;
  v179 = v178;
  v181 = v180;
  v183 = v182;

  v199(v173, v172);
  LOBYTE(v218[0]) = 0;
  *&v230 = v202;
  *(&v230 + 1) = v201;
  *&v231 = v196;
  *(&v231 + 1) = v188;
  LOBYTE(v232) = v187;
  *(&v232 + 1) = v156;
  *&v233 = v158;
  *(&v233 + 1) = v160;
  *&v234 = v162;
  BYTE8(v234) = 0;
  LOBYTE(v235) = v186;
  *(&v235 + 1) = v177;
  *&v236[0] = v179;
  *(&v236[0] + 1) = v181;
  *&v236[1] = v183;
  BYTE8(v236[1]) = 0;
  nullsub_1(&v230);
  v241 = v234;
  v242 = v235;
  v243[0] = v236[0];
  *(v243 + 9) = *(v236 + 9);
  v237 = v230;
  v238 = v231;
  v239 = v232;
  v240 = v233;
  v87 = v205;
LABEL_20:
  v118 = *(v117 + *(v211 + 32));
  v119 = sub_10009E648();
  v120 = v217;
  sub_1000496F4(v119 & 1, v217, &v230);
  swift_getKeyPath();
  v218[0] = v118;
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v121 = *(v118 + 584);
  v122 = [*(sub_10000DC80(v120 v120[3]) + v87[5])];
  if (v122)
  {
    v123 = v122;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = 0;
  }

  else
  {
    v124 = 1;
  }

  v125 = type metadata accessor for URL();
  (*(*(v125 - 8) + 56))(v94, v124, 1, v125);
  v126 = v207;
  sub_10002F250(v94, v207, &unk_100144630);
  v127 = v208;
  sub_100048BE0(v121, v126, v208);
  sub_100007E14(v126, &unk_100144630);
  v128 = v212;
  sub_100007FDC(v215, v212, &qword_100144178);
  v129 = v213;
  sub_100007FDC(v216, v213, &qword_100144150);
  v223 = v241;
  v224 = v242;
  v225[0] = v243[0];
  *(v225 + 9) = *(v243 + 9);
  v219 = v237;
  v220 = v238;
  v221 = v239;
  v222 = v240;
  sub_100007FDC(&v230, v218, &qword_1001441A0);
  v130 = v209;
  sub_100007FDC(v127, v209, &qword_100144130);
  v131 = v128;
  v132 = v210;
  sub_100007FDC(v131, v210, &qword_100144178);
  v133 = sub_100002D44(&qword_1001441A8);
  sub_100007FDC(v129, v132 + v133[12], &qword_100144150);
  v134 = (v132 + v133[16]);
  v135 = v223;
  v136 = v224;
  v226[4] = v223;
  v226[5] = v224;
  v137 = v225[0];
  v227[0] = v225[0];
  v138 = *(v225 + 9);
  *(v227 + 9) = *(v225 + 9);
  v139 = v219;
  v140 = v220;
  v226[0] = v219;
  v226[1] = v220;
  v141 = v222;
  v226[2] = v221;
  v226[3] = v222;
  v134[2] = v221;
  v134[3] = v141;
  *v134 = v139;
  v134[1] = v140;
  *(v134 + 105) = v138;
  v134[5] = v136;
  v134[6] = v137;
  v134[4] = v135;
  sub_100007FDC(v218, v132 + v133[20], &qword_1001441A0);
  sub_100007FDC(v130, v132 + v133[24], &qword_100144130);
  sub_100007FDC(v226, v228, &qword_1001441B0);
  sub_100007E14(v127, &qword_100144130);
  sub_100007E14(&v230, &qword_1001441A0);
  sub_100007E14(v216, &qword_100144150);
  sub_100007E14(v215, &qword_100144178);
  sub_100007E14(v130, &qword_100144130);
  sub_100007E14(v218, &qword_1001441A0);
  v228[4] = v223;
  v228[5] = v224;
  v229[0] = v225[0];
  *(v229 + 9) = *(v225 + 9);
  v228[0] = v219;
  v228[1] = v220;
  v228[2] = v221;
  v228[3] = v222;
  sub_100007E14(v228, &qword_1001441B0);
  sub_100007E14(v213, &qword_100144150);
  return sub_100007E14(v212, &qword_100144178);
}

uint64_t sub_10004B750@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v5 = sub_100002D44(&qword_100144230);
  __chkstk_darwin(v5 - 8);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  v9 = type metadata accessor for TrackPageView();
  v10 = v9 - 8;
  v38 = *(v9 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100002D44(&qword_100144238);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_100002D44(&qword_100144240);
  sub_10004BC30(a1, a2, &v17[*(v18 + 44)]);
  v19 = &v17[*(sub_100002D44(&qword_100144248) + 36)];
  v20 = sub_100002D44(&qword_100144250);
  v21 = *(v20 + 36);
  v22 = enum case for CoordinateSpace.local(_:);
  v23 = type metadata accessor for CoordinateSpace();
  (*(*(v23 - 8) + 104))(&v19[v21], v22, v23);
  *v19 = &type metadata for NavigationBarTitleOffsetPreferenceKey;
  v24 = &v19[*(v20 + 40)];
  *v24 = sub_100052D44;
  v24[1] = 0;
  sub_100051918(a1, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
  v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v26 = swift_allocObject();
  sub_100051EFC(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for TrackPageView);
  v27 = &v17[*(sub_100002D44(&qword_100144258) + 36)];
  *v27 = sub_1000519D4;
  v27[1] = v26;
  v28 = *(a1 + *(v10 + 40));
  swift_getKeyPath();
  v47[0].n128_u64[0] = v28;
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = &v17[*(v13 + 44)];
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  *(v29 + 2) = v46;
  sub_10009E380(v47);
  v31 = v41;
  sub_100046148(v40, v47, v41);
  sub_100051A78(v47);
  v32 = v39;
  sub_100007FDC(v17, v39, &qword_100144238);
  v33 = v42;
  sub_100007FDC(v31, v42, &qword_100144230);
  v34 = v43;
  sub_100007FDC(v32, v43, &qword_100144238);
  v35 = sub_100002D44(&qword_100144260);
  sub_100007FDC(v33, v34 + *(v35 + 48), &qword_100144230);
  sub_100007E14(v31, &qword_100144230);
  sub_100007E14(v17, &qword_100144238);
  sub_100007E14(v33, &qword_100144230);
  return sub_100007E14(v32, &qword_100144238);
}

uint64_t sub_10004BC30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v93 = a2;
  v87 = a3;
  v88 = sub_100002D44(&qword_1001442C8);
  __chkstk_darwin(v88);
  v91 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = (v85 - v6);
  v7 = type metadata accessor for ColorScheme();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100002D44(&qword_1001442D0);
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = (v85 - v11);
  v12 = sub_100002D44(&qword_1001442D8);
  __chkstk_darwin(v12 - 8);
  v90 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v96 = v85 - v15;
  v16 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  *&v102 = v16;
  v17 = sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v94 = a1;
  sub_100043E64(v18, &v102);

  v130 = v115;
  v131 = v116;
  v125 = v110;
  v126 = v111;
  v128 = v113;
  v129 = v114;
  v127 = v112;
  v121 = v106;
  v122 = v107;
  v123 = v108;
  v124 = v109;
  v117 = v102;
  v118 = v103;
  v119 = v104;
  v120 = v105;
  v19 = 1;
  if (*(v16 + 632) == 1)
  {
    sub_10000DC80(v93, v93[3]);
    v20 = *(v8 + 104);
    v20(v10, enum case for ColorScheme.light(_:), v7);
    v85[1] = sub_1000B4010(v10);
    v85[2] = v17;
    v21 = *(v8 + 8);
    v21(v10, v7);
    v20(v10, enum case for ColorScheme.dark(_:), v7);
    sub_1000B4010(v10);
    v21(v10, v7);
    v22 = v96;
    sub_100051D2C();

    v23 = UIColor.init(_:)();

    v24 = UIColor.init(_:)();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    v26 = objc_allocWithZone(UIColor);
    *&v104 = sub_100052D48;
    *(&v104 + 1) = v25;
    *&v102 = _NSConcreteStackBlock;
    *(&v102 + 1) = 1107296256;
    *&v103 = sub_1000C7D7C;
    *(&v103 + 1) = &unk_100136D30;
    v27 = _Block_copy(&v102);
    [v26 initWithDynamicProvider:v27];
    _Block_release(v27);

    v28 = Color.init(_:)();

    v29 = v86;
    sub_10007DD44(v28, v86);
    LOBYTE(v28) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v30 = v29 + *(v92 + 36);
    *v30 = v28;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_10002F250(v29, v22, &qword_1001442D0);
    v19 = 0;
  }

  (*(v89 + 56))(v96, v19, 1, v92);
  v35 = v93[3];
  v36 = v93[11];
  v37 = sub_10000DC80(v93, v35);
  *(&v103 + 1) = v35;
  *&v104 = v36;
  v38 = sub_100023284(&v102);
  (*(*(v35 - 8) + 16))(v38, v37, v35);
  v39 = static VerticalAlignment.top.getter();
  v40 = v95;
  *v95 = v39;
  v40[1] = 0;
  *(v40 + 16) = 1;
  v41 = sub_100002D44(&qword_1001442E0);
  sub_100044ECC(&v102, v94, v40 + *(v41 + 44));
  LOBYTE(v35) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v42 = v40 + *(v88 + 36);
  *v42 = v35;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_100007E74(&v102);
  swift_getKeyPath();
  *&v102 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v16 + 320, &v102, &qword_1001442E8);
  v47 = *(&v103 + 1);
  if (*(&v103 + 1))
  {
    v48 = sub_10000DC80(&v102, *(&v103 + 1));
    v49 = *(v47 - 8);
    v50 = __chkstk_darwin(v48);
    v52 = v85 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52, v50);
    sub_100007E14(&v102, &qword_1001442E8);
    v53 = [*&v52[*(type metadata accessor for TrackPageMetadata() + 20)] shazamCount];
    (*(v49 + 8))(v52, v47);
    v54 = v53 > 0;
  }

  else
  {
    sub_100007E14(&v102, &qword_1001442E8);
    v54 = 0;
  }

  swift_getKeyPath();
  *&v102 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v16 + 320, v100, &qword_1001442E8);
  v55 = v101;
  if (v101)
  {
    v56 = sub_10000DC80(v100, v101);
    v57 = *(v55 - 8);
    v58 = __chkstk_darwin(v56);
    v60 = v85 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60, v58);
    sub_100007E14(v100, &qword_1001442E8);
    [*&v60[*(type metadata accessor for TrackPageMetadata() + 20)] shazamCount];
    (*(v57 + 8))(v60, v55);
  }

  else
  {
    sub_100007E14(v100, &qword_1001442E8);
  }

  sub_100044C10(v54, v98);
  v61 = v90;
  sub_100007FDC(v96, v90, &qword_1001442D8);
  v62 = v95;
  v63 = v91;
  sub_100007FDC(v95, v91, &qword_1001442C8);
  v64 = v130;
  v97[12] = v129;
  v97[13] = v130;
  v65 = v131;
  v97[14] = v131;
  v66 = v125;
  v67 = v126;
  v97[8] = v125;
  v97[9] = v126;
  v68 = v128;
  v69 = v127;
  v97[10] = v127;
  v97[11] = v128;
  v70 = v121;
  v71 = v122;
  v97[4] = v121;
  v97[5] = v122;
  v73 = v123;
  v72 = v124;
  v97[6] = v123;
  v97[7] = v124;
  v74 = v117;
  v75 = v118;
  v97[0] = v117;
  v97[1] = v118;
  v77 = v119;
  v76 = v120;
  v97[2] = v119;
  v97[3] = v120;
  v78 = v87;
  v87[12] = v129;
  v78[13] = v64;
  v78[14] = v65;
  v78[8] = v66;
  v78[9] = v67;
  v78[10] = v69;
  v78[11] = v68;
  v78[4] = v70;
  v78[5] = v71;
  v78[6] = v73;
  v78[7] = v72;
  *v78 = v74;
  v78[1] = v75;
  v78[2] = v77;
  v78[3] = v76;
  v79 = sub_100002D44(&qword_1001442F0);
  sub_100007FDC(v61, v78 + v79[12], &qword_1001442D8);
  sub_100007FDC(v63, v78 + v79[16], &qword_1001442C8);
  v80 = v78 + v79[20];
  v81 = v98[5];
  *(v80 + 4) = v98[4];
  *(v80 + 5) = v81;
  *(v80 + 48) = v99;
  v82 = v98[1];
  *v80 = v98[0];
  *(v80 + 1) = v82;
  v83 = v98[3];
  *(v80 + 2) = v98[2];
  *(v80 + 3) = v83;
  sub_100007FDC(v97, &v102, &qword_1001442F8);
  sub_100007E14(v62, &qword_1001442C8);
  sub_100007E14(v96, &qword_1001442D8);
  sub_100007E14(v63, &qword_1001442C8);
  sub_100007E14(v61, &qword_1001442D8);
  v114 = v129;
  v115 = v130;
  v116 = v131;
  v110 = v125;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v106 = v121;
  v107 = v122;
  v108 = v123;
  v109 = v124;
  v102 = v117;
  v103 = v118;
  v104 = v119;
  v105 = v120;
  return sub_100007E14(&v102, &qword_1001442F8);
}

uint64_t sub_10004C760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = type metadata accessor for TrackPageView();
  v5 = *(a2 + *(result + 32));
  if (*(v5 + 160) == v3)
  {
    *(v5 + 160) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004C88C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  v12 = sub_100002D44(&qword_100144200);
  __chkstk_darwin(v12 - 8);
  v14 = v24 - v13;
  v15 = sub_10000DC80(a2, a2[3]);
  v16 = [*(v15 + *(type metadata accessor for TrackPageMetadata() + 20)) artworkURL];
  if (v16)
  {
    v17 = v16;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  }

  sub_10002F250(v8, v11, &unk_100144630);
  sub_1000442AC(v11, v14);
  sub_100007E14(v11, &unk_100144630);
  v20 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  v24[1] = v20;
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v20 + 200);
  sub_10002F250(v14, a3, &qword_100144200);
  result = sub_100002D44(&qword_100144208);
  v23 = (a3 + *(result + 36));
  *v23 = 0;
  v23[1] = v21;
  return result;
}

uint64_t sub_10004CB58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = type metadata accessor for TrackPageView();
  v5 = *(a2 + *(result + 32));
  if (*(v5 + 168) == v3)
  {
    *(v5 + 168) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004CC84(uint64_t a1, double a2)
{
  v4 = type metadata accessor for TrackPageView();
  v5 = *(a1 + *(v4 + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = -*(v5 + 160);
  v8 = *(a1 + *(v4 + 40) + 8);
  if (v7 > a2 != *(v8 + 16))
  {
    sub_100002D44(&qword_1001420E8);
    sub_100004610(&qword_1001420F0, &qword_1001420E8);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  *(v8 + 16) = v7 > a2;
  return result;
}

uint64_t sub_10004CDE4@<X0>(void *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10004CE10(uint64_t a1)
{
  v2 = type metadata accessor for TrackPageView();
  v3 = (a1 + *(v2 + 44));
  if (*v3)
  {
    (*v3)();
  }

  v4 = *(a1 + *(v2 + 32));
  v5 = *(v4 + 256);
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + 24))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000C3900(v6 | (v5 << 8) | 0x10u, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_10004CF14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a3;
  v131 = sub_100002D44(&qword_100144048);
  __chkstk_darwin(v131);
  v130 = &v100 - v5;
  v119 = sub_100002D44(&qword_100144050);
  v104 = *(v119 - 8);
  __chkstk_darwin(v119);
  v103 = &v100 - v6;
  v118 = sub_100002D44(&qword_100144058);
  v102 = *(v118 - 8);
  __chkstk_darwin(v118);
  v101 = &v100 - v7;
  v117 = sub_100002D44(&qword_100144060);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v100 - v8;
  v116 = sub_100002D44(&qword_100144068);
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v100 - v9;
  v10 = sub_100002D44(&qword_100144070);
  __chkstk_darwin(v10 - 8);
  v128 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v129 = &v100 - v13;
  v126 = sub_100002D44(&qword_100144078);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v109 = &v100 - v14;
  v125 = sub_100002D44(&qword_100144080);
  v108 = *(v125 - 8);
  __chkstk_darwin(v125);
  v107 = &v100 - v15;
  v16 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v16 - 8);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v121 = &v100 - v20;
  v133 = type metadata accessor for URL();
  v122 = *(v133 - 8);
  __chkstk_darwin(v133);
  v106 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002D44(&qword_100144088);
  __chkstk_darwin(v22 - 8);
  v123 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v136 = &v100 - v25;
  v26 = sub_100002D44(&qword_100144090);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v111 = &v100 - v28;
  v29 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v29 - 8);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100002D44(&qword_100144098);
  v110 = *(v120 - 8);
  __chkstk_darwin(v120);
  v33 = &v100 - v32;
  v34 = sub_100002D44(&qword_1001440A0);
  __chkstk_darwin(v34 - 8);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v134 = &v100 - v38;
  sub_10000DC80(a1, a1[3]);
  v39 = sub_1000B4BBC();
  v127 = a2;
  v135 = v31;
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    v43 = static ToolbarItemPlacement.principal.getter();
    v105 = v18;
    __chkstk_darwin(v43);
    *(&v100 - 4) = v41;
    *(&v100 - 3) = v42;
    *(&v100 - 2) = a2;
    sub_100002D44(&qword_1001440F0);
    sub_1000513C0();
    ToolbarItemGroup.init(placement:content:)();

    v18 = v105;
    v44 = sub_100004610(&qword_1001440A8, &qword_100144098);
    v45 = v111;
    v46 = v120;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v27 + 16))(v36, v45, v26);
    (*(v27 + 56))(v36, 0, 1, v26);
    v137 = v46;
    v138 = v44;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007E14(v36, &qword_1001440A0);
    (*(v27 + 8))(v45, v26);
    (*(v110 + 8))(v33, v46);
  }

  else
  {
    (*(v27 + 56))(v36, 1, 1, v26);
    v47 = sub_100004610(&qword_1001440A8, &qword_100144098);
    v137 = v120;
    v138 = v47;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007E14(v36, &qword_1001440A0);
  }

  v48 = sub_10000DC80(a1, a1[3]);
  v49 = [*(v48 + *(type metadata accessor for TrackPageMetadata() + 20)) webURL];
  v50 = v121;
  if (v49)
  {
    v51 = v49;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = v127;
  v54 = v122;
  v55 = v133;
  (*(v122 + 56))(v18, v52, 1, v133);
  sub_10002F250(v18, v50, &unk_100144630);
  if ((*(v54 + 48))(v50, 1, v55) == 1)
  {
    sub_100007E14(v50, &unk_100144630);
    v56 = v123;
    (*(v124 + 56))(v123, 1, 1, v126);
    v57 = sub_100004610(&qword_1001440B0, &qword_100144080);
    v137 = v125;
    v138 = v57;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007E14(v56, &qword_100144088);
  }

  else
  {
    v58 = v106;
    (*(v54 + 32))(v106, v50, v55);
    v59 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v59);
    *(&v100 - 2) = v58;
    *(&v100 - 1) = v53;
    type metadata accessor for ToolbarShareButton();
    sub_1000520B0(&qword_1001440E8, type metadata accessor for ToolbarShareButton);
    v60 = v107;
    ToolbarItem<>.init(placement:content:)();
    v61 = sub_100004610(&qword_1001440B0, &qword_100144080);
    v62 = v109;
    v63 = v125;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v65 = v123;
    v64 = v124;
    v66 = v126;
    (*(v124 + 16))(v123, v62, v126);
    (*(v64 + 56))(v65, 0, 1, v66);
    v137 = v63;
    v138 = v61;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007E14(v65, &qword_100144088);
    (*(v64 + 8))(v62, v66);
    (*(v108 + 8))(v60, v63);
    (*(v54 + 8))(v58, v133);
  }

  type metadata accessor for TrackPageView();
  v67 = sub_10009F310();
  if (v67)
  {
    v68 = v67;
    v69 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v69);
    *(&v100 - 2) = v68;
    *(&v100 - 1) = v53;
    type metadata accessor for ContextMenuForSubscribedUserView();
    sub_1000520B0(&qword_1001440E0, type metadata accessor for ContextMenuForSubscribedUserView);
    v70 = v112;
    ToolbarItem<>.init(placement:content:)();
    v71 = sub_100004610(&qword_1001440C8, &qword_100144068);
    v72 = v114;
    v73 = v116;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v137 = v73;
    v138 = v71;
    swift_getOpaqueTypeConformance2();
    v74 = sub_100004610(&qword_1001440D0, &qword_100144058);
    v137 = v118;
    v138 = v74;
    swift_getOpaqueTypeConformance2();
    v75 = v128;
    v76 = v117;
    static ToolbarContentBuilder.buildEither<A, B>(first:)();
    v77 = sub_100002D44(&qword_1001440B8);
    (*(*(v77 - 8) + 56))(v75, 0, 1, v77);
    sub_100051190();
    v78 = v129;
    static ToolbarContentBuilder.buildIf<A>(_:)();

    sub_100007E14(v75, &qword_100144070);
    (*(v115 + 8))(v72, v76);
    (*(v113 + 8))(v70, v73);
  }

  else
  {
    v79 = sub_1000A0194();
    if (!v79)
    {
      v97 = sub_100002D44(&qword_1001440B8);
      v98 = v128;
      (*(*(v97 - 8) + 56))(v128, 1, 1, v97);
      sub_100051190();
      v99 = v129;
      static ToolbarContentBuilder.buildIf<A>(_:)();
      sub_100007E14(v98, &qword_100144070);
      v90 = v99;
      goto LABEL_15;
    }

    v80 = v79;
    v81 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v81);
    *(&v100 - 2) = v80;
    *(&v100 - 1) = v53;
    type metadata accessor for ContextMenuForUnsubscribedUserView();
    sub_1000520B0(&qword_1001440D8, type metadata accessor for ContextMenuForUnsubscribedUserView);
    v82 = v101;
    ToolbarItem<>.init(placement:content:)();
    v83 = sub_100004610(&qword_1001440D0, &qword_100144058);
    v84 = v103;
    v85 = v118;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v86 = sub_100004610(&qword_1001440C8, &qword_100144068);
    v137 = v116;
    v138 = v86;
    swift_getOpaqueTypeConformance2();
    v137 = v85;
    v138 = v83;
    swift_getOpaqueTypeConformance2();
    v87 = v128;
    v88 = v119;
    static ToolbarContentBuilder.buildEither<A, B>(second:)();
    v89 = sub_100002D44(&qword_1001440B8);
    (*(*(v89 - 8) + 56))(v87, 0, 1, v89);
    sub_100051190();
    v78 = v129;
    static ToolbarContentBuilder.buildIf<A>(_:)();

    sub_100007E14(v87, &qword_100144070);
    (*(v104 + 8))(v84, v88);
    (*(v102 + 8))(v82, v85);
  }

  v90 = v78;
LABEL_15:
  v91 = v130;
  v92 = *(v131 + 48);
  v93 = *(v131 + 64);
  v94 = v134;
  sub_100007FDC(v134, v130, &qword_1001440A0);
  v95 = v136;
  sub_100007FDC(v136, v91 + v92, &qword_100144088);
  sub_100007FDC(v90, v91 + v93, &qword_100144070);
  TupleToolbarContent.init(_:)();
  sub_100007E14(v90, &qword_100144070);
  sub_100007E14(v95, &qword_100144088);
  return sub_100007E14(v94, &qword_1001440A0);
}

uint64_t sub_10004E31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v27[0] = a1;
  *(&v27[0] + 1) = a2;
  sub_10000B730();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.Weight.bold.getter();
  v9 = Text.fontWeight(_:)();
  v11 = v10;
  v13 = v12;
  sub_10000BFBC(v4, v6, v8 & 1);

  if (qword_100141B18 != -1)
  {
    swift_once();
  }

  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10000BFBC(v9, v11, v13 & 1);

  if (*(*(a3 + *(type metadata accessor for TrackPageView() + 40) + 8) + 16))
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v30 = v18 & 1;
  v29 = 0;
  *&v23 = v14;
  *(&v23 + 1) = v16;
  LOBYTE(v24) = v18 & 1;
  *(&v24 + 1) = v20;
  *&v25 = v21;
  *(&v25 + 1) = swift_getKeyPath();
  v26[0] = 1;
  *&v26[8] = swift_getKeyPath();
  *&v26[16] = 1;
  v26[24] = 0;
  sub_100002D44(&qword_100144108);
  sub_10005147C();
  View.accessibilityIdentifier(_:)();
  v27[2] = v25;
  v28[0] = *v26;
  *(v28 + 9) = *&v26[9];
  v27[0] = v23;
  v27[1] = v24;
  return sub_100007E14(v27, &qword_100144108);
}

uint64_t sub_10004E554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TrackPageView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = type metadata accessor for ToolbarShareButton();
  v11 = v10[5];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(a3 + v11, a1, v12);
  v13 = *(a2 + *(v7 + 40));
  v15 = *(v13 + 496);
  v14 = *(v13 + 504);
  v16 = *(v13 + 512);
  v17 = *(v13 + 520);
  sub_100051918(a2, &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TrackPageView);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_100051EFC(&v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for TrackPageView);
  v25[15] = 0;

  result = State.init(wrappedValue:)();
  v21 = v26;
  *a3 = v25[16];
  *(a3 + 8) = v21;
  v22 = (a3 + v10[6]);
  *v22 = 0x694C206572616853;
  v22[1] = 0xEA00000000006B6ELL;
  v23 = a3 + v10[7];
  *v23 = v15;
  *(v23 + 8) = v14;
  *(v23 + 16) = v16;
  *(v23 + 24) = v17;
  v24 = (a3 + v10[8]);
  *v24 = sub_10005177C;
  v24[1] = v19;
  return result;
}

uint64_t sub_10004E768(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 66048;
  }

  else
  {
    v2 = 512;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_10004E848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, void *a6@<X8>)
{
  v12 = type metadata accessor for TrackPageView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_100051918(a2, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackPageView);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_100051EFC(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TrackPageView);
  v17 = *(a3(0) + 24);
  *(a6 + v17) = swift_getKeyPath();
  sub_100002D44(&qword_1001422A0);
  swift_storeEnumTagMultiPayload();
  *a6 = a4;
  a6[1] = v16;
  v20[1] = a1;
  a5(0);

  result = State.init(wrappedValue:)();
  v19 = v20[3];
  a6[2] = v20[2];
  a6[3] = v19;
  return result;
}

uint64_t sub_10004E9F4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TrackPageView() + 32));
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {
    v2 = 66051;
  }

  else
  {
    v2 = 515;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

void sub_10004EAD4(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_10004EAE0(double *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TrackPageView();
  v5 = *(a2 + *(result + 32));
  if (*(v5 + 184) == v3)
  {
    *(v5 + 184) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004EC0C(double *a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a2 + *(type metadata accessor for TrackPageView() + 32));
  if (*(v13 + 176) == v11)
  {
    *(v13 + 176) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v18[1] = v18;
    __chkstk_darwin(KeyPath);
    v18[-2] = v13;
    *&v18[-1] = v11;
    v18[3] = v13;
    sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000413BC(v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, enum case for UserInterfaceSizeClass.regular(_:), v7);
    if (v15(v6, 1, v7) != 1)
    {
      sub_100007E14(v6, &qword_1001420F8);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  if (v11 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v11;
  }

  sub_1000A0BD8(v16);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10004EF08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions;
  swift_beginAccess();
  v5 = type metadata accessor for MusicSubscriptionOffer.Options();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10004F000(uint64_t a1)
{
  v2 = type metadata accessor for MusicSubscriptionOffer.Options();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10009694C(v5);
}

uint64_t sub_10004F0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100050AB8(v3 + 32, a2);
}

double sub_10004F1C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 144);
  *a2 = result;
  return result;
}

double sub_10004F298@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 152);
  *a2 = result;
  return result;
}

double sub_10004F368@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 160);
  *a2 = result;
  return result;
}

double sub_10004F438@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 168);
  *a2 = result;
  return result;
}

double sub_10004F508@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 176);
  *a2 = result;
  return result;
}

double sub_10004F5D8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 184);
  *a2 = result;
  return result;
}

uint64_t sub_10004F6A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000520B0(&qword_100144028, type metadata accessor for TrackPageViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 584);
  return result;
}

uint64_t sub_10004F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_10004F8C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002D44(&qword_100143E20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100002D44(&qword_100143280);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_100002D44(qword_1001438D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for LocationManager();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10004FAB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002D44(&qword_100143E20);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_100002D44(&qword_100143280);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = sub_100002D44(qword_1001438D0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for LocationManager();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_10004FC90()
{
  sub_10004FE50(319, &qword_100143808, type metadata accessor for ViewConfiguration);
  if (v0 <= 0x3F)
  {
    sub_10004FEFC(319, &qword_100143E90, &qword_1001420F8, &unk_1000F52A0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10004FE50(319, &qword_1001432F0, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10004FE50(319, &qword_100143958, &type metadata accessor for ScenePhase);
        if (v3 <= 0x3F)
        {
          type metadata accessor for TrackPageViewModel();
          if (v4 <= 0x3F)
          {
            type metadata accessor for LocationManager();
            if (v5 <= 0x3F)
            {
              sub_10004FEA4();
              if (v6 <= 0x3F)
              {
                sub_10004FEFC(319, &qword_100142230, &qword_100142238, &unk_1000FE070, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
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

void sub_10004FE50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004FEA4()
{
  if (!qword_100143E98)
  {
    v0 = type metadata accessor for ConditionalValue();
    if (!v1)
    {
      atomic_store(v0, &qword_100143E98);
    }
  }
}

void sub_10004FEFC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004370(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10004FF84()
{
  result = qword_100143F00;
  if (!qword_100143F00)
  {
    sub_100004370(&qword_100143EE0);
    sub_100050008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F00);
  }

  return result;
}

unint64_t sub_100050008()
{
  result = qword_100143F08;
  if (!qword_100143F08)
  {
    sub_100004370(&qword_100143F10);
    sub_100050094();
    sub_100050738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F08);
  }

  return result;
}

unint64_t sub_100050094()
{
  result = qword_100143F18;
  if (!qword_100143F18)
  {
    sub_100004370(&qword_100143F20);
    sub_10002D0E0();
    swift_getOpaqueTypeConformance2();
    sub_10005014C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F18);
  }

  return result;
}

unint64_t sub_10005014C()
{
  result = qword_100143F28;
  if (!qword_100143F28)
  {
    sub_100004370(&qword_100143F30);
    sub_1000501D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F28);
  }

  return result;
}

unint64_t sub_1000501D8()
{
  result = qword_100143F38;
  if (!qword_100143F38)
  {
    sub_100004370(&qword_100143F40);
    sub_100050290();
    sub_100004610(&qword_100143FF0, &qword_100143FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F38);
  }

  return result;
}

unint64_t sub_100050290()
{
  result = qword_100143F48;
  if (!qword_100143F48)
  {
    sub_100004370(&qword_100143F50);
    sub_100050348();
    sub_100004610(&qword_100143FE0, &qword_100143FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F48);
  }

  return result;
}

unint64_t sub_100050348()
{
  result = qword_100143F58;
  if (!qword_100143F58)
  {
    sub_100004370(&qword_100143F60);
    sub_100050400();
    sub_100004610(&qword_100143FD0, &qword_100143FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F58);
  }

  return result;
}

unint64_t sub_100050400()
{
  result = qword_100143F68;
  if (!qword_100143F68)
  {
    sub_100004370(&qword_100143F70);
    sub_100004370(&qword_100143F78);
    sub_100004370(&qword_100143F80);
    sub_100004370(&qword_100143F88);
    sub_100004370(&qword_100143F90);
    sub_1000505D4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143FB8, &qword_100143F80);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143FC0, &qword_100143FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F68);
  }

  return result;
}

unint64_t sub_1000505D4()
{
  result = qword_100143F98;
  if (!qword_100143F98)
  {
    sub_100004370(&qword_100143F90);
    sub_100004370(&qword_100143FA0);
    sub_100004610(&qword_100143FA8, &qword_100143FA0);
    sub_1000506E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143F98);
  }

  return result;
}

unint64_t sub_1000506E4()
{
  result = qword_100143FB0;
  if (!qword_100143FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143FB0);
  }

  return result;
}

unint64_t sub_100050738()
{
  result = qword_100144000;
  if (!qword_100144000)
  {
    sub_100004370(&qword_100144008);
    sub_100004610(&qword_100144010, &qword_100144018);
    sub_1000520B0(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144000);
  }

  return result;
}

unint64_t sub_100050820()
{
  result = qword_100144020;
  if (!qword_100144020)
  {
    sub_100004370(&qword_100143EF8);
    sub_10004FF84();
    sub_100004610(&qword_100143380, &qword_100143388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144020);
  }

  return result;
}

uint64_t sub_1000508DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrackPageView();

  return sub_100043D34(a1, a2);
}

uint64_t sub_100050964@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000509C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000509F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100050B14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v3;
  *a2 = v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *(a2 + 96) = *(a1 + 12);
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *(a2 + 48) = v4;
  return a2;
}

uint64_t sub_100050BA8()
{
  v1 = type metadata accessor for TrackPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  sub_100002D44(&qword_1001420D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[6];
  sub_100002D44(&qword_1001420C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_100002D44(&qword_1001420E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ScenePhase();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = (v5 + v1[9]);

  v14 = *(type metadata accessor for LocationManager() + 20);
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  if (*(v5 + v1[11]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100050E98()
{
  v2 = *(type metadata accessor for TrackPageView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012EC8;

  return sub_100042ED8(v4, v5, v0 + v3);
}

uint64_t sub_100050F74(double a1)
{
  v3 = *(type metadata accessor for TrackPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004CC84(v4, a1);
}

uint64_t sub_100051070(double *a1)
{
  v3 = *(type metadata accessor for TrackPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004EAE0(a1, v4);
}

unint64_t sub_100051190()
{
  result = qword_1001440C0;
  if (!qword_1001440C0)
  {
    sub_100004370(&qword_1001440B8);
    sub_100004370(&qword_100144068);
    sub_100004610(&qword_1001440C8, &qword_100144068);
    swift_getOpaqueTypeConformance2();
    sub_100004370(&qword_100144058);
    sub_100004610(&qword_1001440D0, &qword_100144058);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001440C0);
  }

  return result;
}

unint64_t sub_1000513C0()
{
  result = qword_1001440F8;
  if (!qword_1001440F8)
  {
    sub_100004370(&qword_1001440F0);
    sub_10005147C();
    sub_1000520B0(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001440F8);
  }

  return result;
}

unint64_t sub_10005147C()
{
  result = qword_100144100;
  if (!qword_100144100)
  {
    sub_100004370(&qword_100144108);
    sub_100051534();
    sub_100004610(&qword_100142998, &qword_1001429A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144100);
  }

  return result;
}

unint64_t sub_100051534()
{
  result = qword_100144110;
  if (!qword_100144110)
  {
    sub_100004370(&qword_100144118);
    sub_1000515EC();
    sub_100004610(&qword_100143D78, &qword_100143D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144110);
  }

  return result;
}

unint64_t sub_1000515EC()
{
  result = qword_100144120;
  if (!qword_100144120)
  {
    sub_100004370(&qword_100144128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144120);
  }

  return result;
}

uint64_t sub_100051670@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005169C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100051718@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_100051870(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000518E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100051918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000519EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TrackPageView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100051ACC()
{
  result = qword_1001442A0;
  if (!qword_1001442A0)
  {
    sub_100004370(&qword_100144280);
    sub_1000520B0(&qword_100144298, type metadata accessor for PlayInAppleMusicView);
    sub_100004610(&qword_1001442A8, &qword_1001442B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001442A0);
  }

  return result;
}

unint64_t sub_100051BB4()
{
  result = qword_1001442B8;
  if (!qword_1001442B8)
  {
    sub_100004370(&qword_100144270);
    type metadata accessor for PlayInAppleMusicView();
    sub_1000520B0(&qword_100144298, type metadata accessor for PlayInAppleMusicView);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_1001442A8, &qword_1001442B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001442B8);
  }

  return result;
}

uint64_t sub_100051CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100051D2C()
{
  result = qword_100142E20;
  if (!qword_100142E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100142E20);
  }

  return result;
}

uint64_t sub_100051D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100051DF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_100096F58(a1, v4, v5, v6);
}

uint64_t sub_100051EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100051FC8()
{
  result = qword_100144340;
  if (!qword_100144340)
  {
    sub_100004370(&qword_100144320);
    sub_1000520B0(&qword_100144348, type metadata accessor for SongPreviewPlaybackView);
    sub_100004610(&qword_1001442A8, &qword_1001442B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144340);
  }

  return result;
}

uint64_t sub_1000520B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000520F8()
{
  result = qword_100144350;
  if (!qword_100144350)
  {
    sub_100004370(&qword_100144338);
    sub_1000521B0();
    sub_100004610(&qword_1001442A8, &qword_1001442B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144350);
  }

  return result;
}

unint64_t sub_1000521B0()
{
  result = qword_100144358;
  if (!qword_100144358)
  {
    sub_100004370(&qword_100144360);
    sub_100004610(&qword_100144368, &qword_100144370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144358);
  }

  return result;
}

uint64_t sub_100052280(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TrackPageView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100052360()
{
  result = qword_100144398;
  if (!qword_100144398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144398);
  }

  return result;
}

unint64_t sub_1000523B4()
{
  result = qword_1001443A8;
  if (!qword_1001443A8)
  {
    sub_100004370(&qword_1001443A0);
    sub_100052360();
    sub_100004610(&qword_1001442A8, &qword_1001442B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001443A8);
  }

  return result;
}

unint64_t sub_10005246C()
{
  result = qword_1001443B0;
  if (!qword_1001443B0)
  {
    sub_100004370(&qword_100144380);
    sub_100052360();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_1001442A8, &qword_1001442B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001443B0);
  }

  return result;
}

uint64_t sub_100052550@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceTransparency.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000525D8()
{
  v1 = type metadata accessor for TrackPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_100002D44(&qword_1001420D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[6];
  sub_100002D44(&qword_1001420C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_100002D44(&qword_1001420E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ScenePhase();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = (v5 + v1[9]);

  v14 = *(type metadata accessor for LocationManager() + 20);
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  if (*(v5 + v1[11]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100052964()
{
  sub_100004370(&qword_100143EF0);
  sub_100004370(&qword_100143EE8);
  type metadata accessor for ScenePhase();
  sub_100004370(&qword_100143EE0);
  sub_100004370(&qword_100143EF8);
  sub_10004FF84();
  sub_100050820();
  swift_getOpaqueTypeConformance2();
  sub_1000520B0(&qword_100143A58, &type metadata accessor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100052AD0(uint64_t a1)
{
  result = sub_100052AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100052AF8()
{
  result = qword_1001443B8;
  if (!qword_1001443B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001443B8);
  }

  return result;
}

unint64_t sub_100052B4C(uint64_t a1)
{
  result = sub_100052B74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100052B74()
{
  result = qword_1001443C0;
  if (!qword_1001443C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001443C0);
  }

  return result;
}

unint64_t sub_100052BC8(uint64_t a1)
{
  result = sub_100052BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100052BF0()
{
  result = qword_1001443C8;
  if (!qword_1001443C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001443C8);
  }

  return result;
}

unint64_t sub_100052C44(uint64_t a1)
{
  result = sub_100052C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100052C6C()
{
  result = qword_1001443D0;
  if (!qword_1001443D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001443D0);
  }

  return result;
}

uint64_t sub_100052D4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100052DC4()
{
  v1[5] = v0;
  sub_100002D44(&qword_100142878);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_100052E94, v3, v2);
}

uint64_t sub_100052E94()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping recognition", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];

  v7 = type metadata accessor for IntentSystemContext.Source();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100058698(v5, v6 + v8, &qword_100142878);
  swift_endAccess();
  SHManagedSession.cancel()();
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100053074;

  return sub_100066CC8();
}

uint64_t sub_100053074()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100053194, v3, v2);
}

uint64_t sub_100053194()
{

  if (qword_100141D78 != -1)
  {
    swift_once();
  }

  v1 = qword_1001483C0;
  if (qword_1001483C0)
  {
    v2 = String._bridgeToObjectiveC()();
    [v1 setBool:0 forKey:v2];
  }

  type metadata accessor for ControlCenter();
  static ControlCenter.shared.getter();
  dispatch thunk of ControlCenter.reloadControls(ofKind:)();

  sub_100055B48();

  v3 = *(v0 + 8);

  return v3();
}

NSString sub_1000532B8()
{
  result = String._bridgeToObjectiveC()();
  qword_10014FF20 = result;
  return result;
}

uint64_t sub_1000532F0()
{
  type metadata accessor for MusicRecognizer();
  v0 = swift_allocObject();
  result = sub_1000543D8();
  qword_10014FF28 = v0;
  return result;
}

double sub_100053330@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1000533B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100058960(v1, v2, v3);
  return static Published.subscript.setter();
}

BOOL sub_10005344C()
{
  v1 = v0;
  v2 = type metadata accessor for IntentSystemContext.Source();
  v77 = *(v2 - 8);
  v78 = v2;
  __chkstk_darwin(v2);
  v71 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_100002D44(&qword_100144598);
  v4 = __chkstk_darwin(v76);
  v75 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v60[-v6];
  v8 = sub_100002D44(&qword_100142878);
  v9 = __chkstk_darwin(v8 - 8);
  v70 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v74 = &v60[-v12];
  v13 = __chkstk_darwin(v11);
  v72 = &v60[-v14];
  __chkstk_darwin(v13);
  v16 = &v60[-v15];
  v17 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v60[-v18];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v73 = &v60[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v60[-v24];
  v26 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_activityStartDate;
  swift_beginAccess();
  v27 = v1 + v26;
  v28 = v20;
  v29 = v21;
  sub_100007FDC(v27, v19, &qword_100142FE0);
  if ((*(v21 + 48))(v19, 1, v28) == 1)
  {
    sub_100007E14(v19, &qword_100142FE0);
    return 0;
  }

  (*(v21 + 32))(v25, v19, v28);
  if (SBUIIsSystemApertureEnabled())
  {
    (*(v21 + 8))(v25, v28);
    return 0;
  }

  v68 = v28;
  v69 = v25;
  v30 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  v32 = v77;
  v31 = v78;
  v33 = *(v77 + 104);
  v66 = v77 + 104;
  v64 = v33;
  v33(v16, enum case for IntentSystemContext.Source.shortcuts(_:), v78);
  v34 = *(v32 + 56);
  v65 = v32 + 56;
  v63 = v34;
  v34(v16, 0, 1, v31);
  v35 = *(v76 + 48);
  v67 = v30;
  sub_100007FDC(v1 + v30, v7, &qword_100142878);
  v36 = v31;
  sub_100007FDC(v16, &v7[v35], &qword_100142878);
  v37 = *(v32 + 48);
  if (v37(v7, 1, v31) == 1)
  {
    sub_100007E14(v16, &qword_100142878);
    if (v37(&v7[v35], 1, v31) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v38 = v72;
  sub_100007FDC(v7, v72, &qword_100142878);
  if (v37(&v7[v35], 1, v36) == 1)
  {
    sub_100007E14(v16, &qword_100142878);
    (*(v77 + 8))(v38, v36);
LABEL_10:
    v62 = v37;
    sub_100007E14(v7, &qword_100144598);
    goto LABEL_11;
  }

  v62 = v37;
  v46 = v77;
  v47 = v71;
  (*(v77 + 32))(v71, &v7[v35], v36);
  sub_1000587F4(&qword_1001445A0, &type metadata accessor for IntentSystemContext.Source);
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v46 + 8);
  v48(v47, v78);
  sub_100007E14(v16, &qword_100142878);
  v48(v38, v78);
  v36 = v78;
  sub_100007E14(v7, &qword_100142878);
  if (v61)
  {
    goto LABEL_23;
  }

LABEL_11:
  v39 = v74;
  v64(v74, enum case for IntentSystemContext.Source.spotlight(_:), v36);
  v63(v39, 0, 1, v36);
  v40 = *(v76 + 48);
  v41 = v1 + v67;
  v42 = v75;
  sub_100007FDC(v41, v75, &qword_100142878);
  sub_100007FDC(v39, &v42[v40], &qword_100142878);
  v43 = v62;
  if (v62(v42, 1, v36) != 1)
  {
    v44 = v70;
    sub_100007FDC(v42, v70, &qword_100142878);
    if (v43(&v42[v40], 1, v36) != 1)
    {
      v49 = v77;
      v50 = v71;
      (*(v77 + 32))(v71, &v42[v40], v36);
      sub_1000587F4(&qword_1001445A0, &type metadata accessor for IntentSystemContext.Source);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v49 + 8);
      v52(v50, v36);
      sub_100007E14(v39, &qword_100142878);
      v52(v44, v36);
      sub_100007E14(v42, &qword_100142878);
      if (v51)
      {
        goto LABEL_23;
      }

LABEL_18:
      (*(v29 + 8))(v69, v68);
      return 0;
    }

    sub_100007E14(v39, &qword_100142878);
    (*(v77 + 8))(v44, v36);
LABEL_17:
    sub_100007E14(v42, &qword_100144598);
    goto LABEL_18;
  }

  sub_100007E14(v39, &qword_100142878);
  if (v43(&v42[v40], 1, v36) != 1)
  {
    goto LABEL_17;
  }

  v7 = v42;
LABEL_14:
  sub_100007E14(v7, &qword_100142878);
LABEL_23:
  v53 = v73;
  Date.init()();
  v54 = v69;
  Date.timeIntervalSince(_:)();
  v56 = v55;
  v57 = *(v29 + 8);
  v58 = v53;
  v59 = v68;
  v57(v58, v68);
  v57(v54, v59);
  return v56 < 4.0;
}

uint64_t sub_100053DAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_subscriptions;
  swift_beginAccess();
  v21 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_1000587F4(&qword_1001445A8, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v6 = v23;
    v5 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v3;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_18:
      sub_1000589C0();

      *(v1 + v21) = &_swiftEmptySetSingleton;

      sub_100007E14(v1 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin, &qword_100142878);
      v19 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer__result;
      v20 = sub_100002D44(&qword_100142848);
      (*(*(v20 - 8) + 8))(v1 + v19, v20);

      sub_100007E14(v1 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_activityStartDate, &qword_100142FE0);
      return v1;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000540DC()
{
  sub_100053DAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MusicRecognizer()
{
  result = qword_100144438;
  if (!qword_100144438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100054188()
{
  sub_100054378(319, &qword_100143898, &type metadata accessor for IntentSystemContext.Source);
  if (v0 <= 0x3F)
  {
    sub_100054314();
    if (v1 <= 0x3F)
    {
      sub_100054378(319, &unk_100144458, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100054314()
{
  if (!qword_100144448)
  {
    sub_100004370(&qword_100144450);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100144448);
    }
  }
}

void sub_100054378(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1000543D8()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_100002D44(&qword_100142848);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  *(v1 + 24) = 0;
  v9 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  v10 = type metadata accessor for IntentSystemContext.Source();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer__result;
  v23[1] = 0;
  v23[2] = 0;
  v24 = -1;
  sub_100002D44(&qword_100144450);
  Published.init(initialValue:)();
  (*(v6 + 32))(v1 + v11, v8, v5);
  *(v1 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_isRetryAttempt) = 0;
  v12 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_activity;
  type metadata accessor for MusicRecognitionActivity();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = 0;
  *(v1 + v12) = v13;
  *(v1 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_spectralOutputObservers) = &_swiftEmptyArrayStorage;
  v14 = (v1 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_musicRecognitionControlToggleKind);
  *v14 = 0xD00000000000003ALL;
  v14[1] = 0x8000000100100A70;
  *(v1 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_subscriptions) = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_runningBoardAssertion;
  *(v1 + v15) = [objc_allocWithZone(type metadata accessor for RunningBoardAssertion()) init];
  v16 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_activityStartDate;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  type metadata accessor for SHManagedSession();
  swift_allocObject();
  *(v1 + 16) = SHManagedSession.init()();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;

  sub_1000C8AF8(0, 0, v4, &unk_1000F8578, v21);

  sub_100054774();
  return v1;
}

uint64_t sub_100054774()
{
  v0 = sub_100002D44(&qword_100144528);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_100002D44(&qword_100144530);
  v7 = *(v15[0] - 8);
  __chkstk_darwin(v15[0]);
  v9 = v15 - v8;
  sub_1000123E4(0, &qword_100144538);
  v10 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_100141B40 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  sub_1000123E4(0, &qword_100144540);
  v11 = static OS_dispatch_queue.main.getter();
  v15[1] = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_1000587F4(&qword_100144548, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_1000577A8();
  Publisher.receive<A>(on:options:)();
  sub_100007E14(v2, &qword_100144528);

  (*(v4 + 8))(v6, v3);
  sub_100057818();

  v13 = v15[0];
  Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v13);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100054B0C(char a1, uint64_t a2)
{
  *(v3 + 256) = a2;
  *(v3 + 264) = v2;
  *(v3 + 161) = a1;
  sub_100002D44(&qword_100142818);
  *(v3 + 272) = swift_task_alloc();
  sub_100002D44(&qword_100142FE0);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = sub_100002D44(&qword_100142878);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = type metadata accessor for MainActor();
  *(v3 + 312) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 320) = v5;
  *(v3 + 328) = v4;

  return _swift_task_switch(sub_100054C58, v5, v4);
}

uint64_t sub_100054C58()
{
  v30 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  *(v2 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_isRetryAttempt) = *(v0 + 161);
  v3 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100058620(v1, v2 + v3);
  swift_endAccess();
  *(v0 + 336) = *(v2 + 16);
  SHManagedSession.state.getter();
  if (static SHManagedSession.State.== infix(_:_:)())
  {

    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BEC4(v4, qword_10014FEA0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to start recognition when already running", v7, 2u);
    }

    type metadata accessor for SHError(0);
    *(v0 + 248) = 202;
    sub_100002D44(&qword_100144578);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F57C0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v9;
    *(inited + 48) = 0xD000000000000054;
    *(inited + 56) = 0x8000000100100B00;
    sub_1000D5774(inited);
    swift_setDeallocating();
    sub_100007E14(inited + 32, &qword_100144580);
    sub_1000587F4(&qword_100141EF8, type metadata accessor for SHError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = *(v0 + 240);
    v11 = [objc_allocWithZone(SHSignature) init];

    v12 = *(v0 + 8);

    return v12(v10, v11, 2);
  }

  else
  {
    *(v0 + 344) = *(*(v0 + 264) + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_runningBoardAssertion);
    sub_1000CE3BC();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BEC4(v14, qword_10014FEA0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 296);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      sub_100007FDC(v2 + v3, v17, &qword_100142878);
      v20 = Optional.debugDescription.getter();
      v22 = v21;
      sub_100007E14(v17, &qword_100142878);
      v23 = sub_1000BA1EC(v20, v22, &v29);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Starting recognition from source %s", v18, 0xCu);
      sub_100007E74(v19);
    }

    if (qword_100141D78 != -1)
    {
      swift_once();
    }

    v24 = qword_1001483C0;
    *(v0 + 352) = qword_1001483C0;
    if (v24)
    {
      v25 = String._bridgeToObjectiveC()();
      [v24 setBool:1 forKey:v25];
    }

    v26 = *(v0 + 264);
    *(v0 + 360) = type metadata accessor for ControlCenter();
    static ControlCenter.shared.getter();
    v27 = v26 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_musicRecognitionControlToggleKind;
    *(v0 + 368) = *(v26 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_musicRecognitionControlToggleKind);
    *(v0 + 376) = *(v27 + 8);
    dispatch thunk of ControlCenter.reloadControls(ofKind:)();

    sub_100055B48();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 152) = 0;
    *(v0 + 144) = 0;
    *(v0 + 160) = -1;

    static Published.subscript.setter();
    v28 = swift_task_alloc();
    *(v0 + 384) = v28;
    *v28 = v0;
    v28[1] = sub_10005524C;

    return sub_100066134();
  }
}

uint64_t sub_10005524C()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_10005536C, v3, v2);
}

uint64_t sub_10005536C()
{
  v1 = v0[35];
  v2 = v0[33];
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_activityStartDate;
  swift_beginAccess();
  sub_100058698(v1, v2 + v4, &qword_100142FE0);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[49] = v5;
  *v5 = v0;
  v5[1] = sub_100055498;

  return SHManagedSession.result()();
}

uint64_t sub_100055498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 400) = a1;
  *(v5 + 408) = a2;
  *(v5 + 162) = a3;

  v6 = *(v4 + 328);
  v7 = *(v4 + 320);

  return _swift_task_switch(sub_1000555C4, v7, v6);
}

uint64_t sub_1000555C4()
{
  v1 = *(v0 + 162);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = v3;
  *(v0 + 176) = v2;
  *(v0 + 184) = v1;

  static Published.subscript.setter();
  v4 = swift_task_alloc();
  *(v0 + 416) = v4;
  *v4 = v0;
  v4[1] = sub_1000556C4;

  return sub_100055DC4();
}

uint64_t sub_1000556C4()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_1000557E4, v3, v2);
}

uint64_t sub_1000557E4()
{
  v1 = *(v0 + 352);

  if (v1)
  {
    v2 = *(v0 + 352);
    v3 = String._bridgeToObjectiveC()();
    [v2 setBool:0 forKey:v3];
  }

  v4 = *(v0 + 264);
  static ControlCenter.shared.getter();
  dispatch thunk of ControlCenter.reloadControls(ofKind:)();

  if (*(v4 + 24) != 1)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v0 + 232);
  if (v5 == 255)
  {
    goto LABEL_15;
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  if (*(v0 + 232))
  {
    sub_1000120D0(*(v0 + 216), *(v0 + 224), v5);
    goto LABEL_15;
  }

  v8 = [*(v0 + 216) mediaItems];
  sub_1000123E4(0, &qword_100143088);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:
    sub_1000120D0(v7, v6, 0);

    goto LABEL_15;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;
  v13 = *(v0 + 272);

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v12;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1000C8AF8(0, 0, v13, &unk_1000F8638, v17);
  sub_1000120D0(v7, v6, 0);

LABEL_15:
  sub_1000CE854();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 208);

  v21 = *(v0 + 8);

  return v21(v19, v18, v20);
}

uint64_t sub_100055B48()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_spectralOutputObservers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = v3[2];
  if (v4)
  {
    v5 = 0;
    v6 = 5;
    while (1)
    {
      if (v5 >= v3[2])
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_100007FDC(&v3[v6 - 1], v13, &qword_100142820);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_100007E14(v13, &qword_100142820);
      if (!Strong)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v5;
      ++v6;
      if (v4 == v5)
      {
        v5 = v3[2];
        v8 = v5;
        goto LABEL_25;
      }
    }

    v8 = v5 + 1;
    v9 = v3[2];
    if (v9 - 1 == v5)
    {
      goto LABEL_25;
    }

    while (v8 < v9)
    {
      sub_100007FDC(&v3[v6], v13, &qword_100142820);
      v10 = swift_unknownObjectWeakLoadStrong();
      result = sub_100007E14(v13, &qword_100142820);
      if (v10)
      {
        result = swift_unknownObjectRelease();
        if (v8 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v11 = v3[2];
          if (v5 >= v11)
          {
            goto LABEL_29;
          }

          result = sub_100007FDC(&v3[v5 + 4], v13, &qword_100142820);
          if (v8 >= v11)
          {
            goto LABEL_30;
          }

          sub_100007FDC(&v3[v6], v12, &qword_100142820);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v1) = v3;
          if ((result & 1) == 0)
          {
            result = sub_10005845C(v3);
            v3 = result;
            *(v0 + v1) = result;
          }

          if (v5 >= v3[2])
          {
            goto LABEL_31;
          }

          result = sub_100058698(v12, &v3[v5 + 4], &qword_100142820);
          *(v0 + v1) = v3;
          if (v8 >= v3[2])
          {
            goto LABEL_32;
          }

          result = sub_100058698(v13, &v3[v6], &qword_100142820);
          *(v0 + v1) = v3;
        }

        ++v5;
      }

      ++v8;
      v9 = v3[2];
      ++v6;
      if (v8 == v9)
      {
        if (v8 < v5)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v5 = 0;
    v8 = 0;
LABEL_25:
    sub_100058560(v5, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100055DC4()
{
  *(v1 + 40) = v0;
  sub_100002D44(&qword_100142818);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100055E60, 0, 0);
}

uint64_t sub_100055E60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v0 + 33) = v3;
  if (v3 == 255)
  {
LABEL_4:

    v8 = *(v0 + 8);

    return v8();
  }

  if (sub_10005344C())
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v5;
    *(v7 + 40) = v1;
    *(v7 + 48) = v2;
    *(v7 + 56) = v3;

    sub_1000C8AF8(0, 0, v4, &unk_1000F8658, v7);

    goto LABEL_4;
  }

  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_100056064;

  return sub_1000672E4(v1, v2, v3);
}

uint64_t sub_100056064()
{

  return _swift_task_switch(sub_100056160, 0, 0);
}

uint64_t sub_100056160()
{
  sub_1000120D0(*(v0 + 56), *(v0 + 64), *(v0 + 33));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000561CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100056264, v6, v5);
}

uint64_t sub_100056264()
{
  v1 = v0[2];
  type metadata accessor for SHLibrary();
  v0[6] = static SHLibrary.default.getter();
  sub_100002D44(&qword_100142810);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_1000F8490;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100056370;

  return SHLibrary.addItems(_:shouldRetry:retryDelayInterval:)(v2, 1, 5000000000000000000, 0);
}

uint64_t sub_100056370()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100056494;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100043130;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100056494()
{

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to add track to library %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100056654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 80) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  v8 = type metadata accessor for ContinuousClock();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10005671C, 0, 0);
}

uint64_t sub_10005671C()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000567F8;

  return sub_100057934(v1, v3, 0, 0, 1);
}

uint64_t sub_1000567F8()
{
  v2 = *v1;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1000589CC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100056990;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100056990()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100056A38;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 80);

  return sub_1000672E4(v3, v2, v4);
}

uint64_t sub_100056A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100056B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_100002D44(&qword_100144568);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_100002D44(&qword_100144570);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_100056CB4, v8, v7);
}

uint64_t sub_100056CB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  v2 = v0[13];
  if (Strong)
  {
    v3 = v0[11];
    v4 = v0[12];
    SHManagedSession.spectralOutput.getter();
    AsyncStream.makeAsyncIterator()();
    (*(v4 + 8))(v2, v3);
    v0[22] = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_spectralOutputObservers;
    swift_beginAccess();
    v5 = static MainActor.shared.getter();
    v0[23] = v5;
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_100056E5C;
    v7 = v0[14];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v5, &protocol witness table for MainActor, v7);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100056E5C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100056FA0, v3, v2);
}

uint64_t sub_100056FA0()
{
  if (v0[8])
  {
    v1 = *(v0[21] + v0[22]);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 32;

      do
      {
        sub_100007FDC(v3, (v0 + 9), &qword_100142820);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_100007E14((v0 + 9), &qword_100142820);
        if (Strong)
        {
          isa = Array._bridgeToObjectiveC()().super.isa;
          [Strong receivedWithSpectralOutput:isa];
          swift_unknownObjectRelease();
        }

        v3 += 8;
        --v2;
      }

      while (v2);
    }

    v6 = static MainActor.shared.getter();
    v0[23] = v6;
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_100056E5C;
    v8 = v0[14];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v6, &protocol witness table for MainActor, v8);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000571C4()
{
  v0 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_1000C8DF8(0, 0, v2, &unk_1000F8598, v6);
}

uint64_t sub_100057318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1000573B0, v6, v5);
}

uint64_t sub_1000573B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000574B4;

    return sub_100052DC4();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000574B4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000575F8, v3, v2);
}

uint64_t sub_1000575F8()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005766C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000576BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000576F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012EC8;

  return sub_100056B48(a1, v4, v5, v6);
}

unint64_t sub_1000577A8()
{
  result = qword_100144550;
  if (!qword_100144550)
  {
    sub_1000123E4(255, &qword_100144540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144550);
  }

  return result;
}

unint64_t sub_100057818()
{
  result = qword_100144558;
  if (!qword_100144558)
  {
    sub_100004370(&qword_100144530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144558);
  }

  return result;
}

uint64_t sub_100057880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012EC8;

  return sub_100057318(a1, v4, v5, v6);
}

uint64_t sub_100057934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100057A34, 0, 0);
}

uint64_t sub_100057A34()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000587F4(&qword_100144588, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000587F4(&qword_100144590, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100057BC4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100057BC4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100057D80, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100057D80()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100057DEC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002D44(&qword_100144560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_100002D44(&qword_100142820);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_100002D44(&qword_100142820);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002D44(&qword_100142820);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100057F6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(&qword_1001445C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10005808C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(&qword_1001445B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_100058190(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002D44(&qword_1001445C8);
  v10 = *(type metadata accessor for ContextMenuItemSection(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ContextMenuItemSection(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100058368(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(&qword_1001445B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100058470(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = *v3 + 32;
  v9 = v8 + 8 * result;
  sub_100002D44(&qword_100142820);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + 8 * a3;
  v13 = v8 + 8 * a2;
  if (result < v13 || result >= v13 + 8 * (v12 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v7 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_100058560(unint64_t result, uint64_t a2)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100057DEC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100058470(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100058620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142878);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058698(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100002D44(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100058700()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000561CC(a1, v4, v5, v6);
}

uint64_t sub_1000587F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005883C()
{
  swift_unknownObjectRelease();

  sub_1000120E4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100058888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100012EC8;

  return sub_100056654(a1, v4, v5, v6, v7, v8, v9);
}

id sub_100058960(id result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100058974(result, a2, a3);
  }

  return result;
}

id sub_100058974(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    swift_errorRetain();
    result = a2;
  }

  return result;
}

uint64_t sub_1000589D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100058A18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100058A84()
{
  v0 = sub_100002D44(&qword_1001445D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;

  ProgressView<>.init<>(_:)();
  sub_100058BB8();
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100058BB8()
{
  result = qword_1001445D8;
  if (!qword_1001445D8)
  {
    sub_100004370(&qword_1001445D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001445D8);
  }

  return result;
}

unint64_t sub_100058C20()
{
  result = qword_1001445E0;
  if (!qword_1001445E0)
  {
    sub_100004370(&qword_1001445E8);
    sub_100058BB8();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001445E0);
  }

  return result;
}

unint64_t sub_100058CAC()
{
  result = qword_100141FC0;
  if (!qword_100141FC0)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FC0);
  }

  return result;
}

void sub_100058D04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_opt_self() mainBundle];
  v11 = objc_allocWithZone(BSUICAPackageView);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithPackageName:v12 inBundle:v10];

  if (v13)
  {
    *&v4[OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView] = v13;
    v14 = OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView;
    *&v4[v14] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v16.receiver = v4;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
    sub_100058E5C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100058E5C()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  [v2 setClipsToBounds:1];
  [v0 addSubview:v2];
  v4 = *&v0[OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 _setContinuousCornerRadius:4.0];
  [v4 setClipsToBounds:1];
  [v1 addSubview:v4];
  v26 = objc_opt_self();
  sub_100002D44(&qword_100142810);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F6A30;
  v6 = [v2 centerXAnchor];
  v7 = [v1 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v2 centerYAnchor];
  v10 = [v1 centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 heightAnchor];
  v13 = [v12 constraintEqualToConstant:24.0];

  *(v5 + 48) = v13;
  v14 = [v2 widthAnchor];
  v15 = [v14 constraintEqualToConstant:24.0];

  *(v5 + 56) = v15;
  v16 = [v4 centerXAnchor];
  v17 = [v1 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v5 + 64) = v18;
  v19 = [v4 centerYAnchor];
  v20 = [v1 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.5];

  *(v5 + 72) = v21;
  v22 = [v4 heightAnchor];
  v23 = [v22 constraintEqualToConstant:20.5];

  *(v5 + 80) = v23;
  v24 = [v4 widthAnchor];
  v25 = [v24 constraintEqualToConstant:20.5];

  *(v5 + 88) = v25;
  sub_100025014();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];
}

void sub_1000592AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() mainBundle];
  v5 = objc_allocWithZone(BSUICAPackageView);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithPackageName:v6 inBundle:v4];

  if (v7)
  {
    *&v1[OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView] = v7;
    v8 = OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView;
    *&v1[v8] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
    if (v9)
    {
      v10 = v9;
      sub_100058E5C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005948C(void *a1)
{
  v3 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  [*&v1[OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView] setHidden:0];
  [*&v1[OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView] setHidden:1];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v1;
  v8 = a1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  v10[5] = v8;
  sub_1000C8AF8(0, 0, v5, &unk_1000F8760, v10);
}

uint64_t sub_1000595F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100002D44(&unk_100144630);
  v5[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1000596C8, v7, v6);
}

uint64_t sub_1000596C8()
{
  v1 = v0[3];
  v0[8] = *(v0[2] + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView);
  v2 = [v1 artworkURL];
  if (v2)
  {
    v3 = v0[4];
    v4 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    sub_10001719C(v3);
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100059920;

    return sub_1000E9C38();
  }

  else
  {
    v8 = v0[4];

    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_10001719C(v8);
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() imageNamed:v10];

    v12 = v0[8];
    [v12 setImage:v11];

    v13 = String._bridgeToObjectiveC()();
    [v12 setAccessibilityIdentifier:v13];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100059920(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_100059A48, v4, v3);
}

uint64_t sub_100059A48()
{
  v1 = v0[10];

  v2 = v0[8];
  [v2 setImage:v1];

  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100059B1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100059B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_1000595F8(a1, v4, v5, v7, v6);
}

uint64_t sub_100059C24(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v3 = type metadata accessor for URL();
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  sub_100002D44(&unk_100144630);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v4 = type metadata accessor for MusicSubscription();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  sub_100002D44(&qword_100142FA0);
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_100059DC8, 0, 0);
}

uint64_t sub_100059DC8()
{
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  *(v0 + 416) = qword_10014FF90;
  type metadata accessor for MainActor();
  *(v0 + 424) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100059E98, v2, v1);
}

uint64_t sub_100059E98()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);

  swift_getKeyPath();
  *(v0 + 296) = v1;
  sub_10005B1D0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_10005B228(v1 + v5, v2);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = *(v0 + 408);
  if (v6)
  {
    sub_100007E14(*(v0 + 408), &qword_100142FA0);
    v8 = sub_10005A374;
  }

  else
  {
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v11 = *(v0 + 384);
    (*(v10 + 16))(v9, *(v0 + 408), v11);
    sub_100007E14(v7, &qword_100142FA0);
    *(v0 + 488) = MusicSubscription.canPlayCatalogContent.getter() & 1;
    (*(v10 + 8))(v9, v11);
    v8 = sub_10005A030;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10005A030()
{
  if (*(v0 + 488))
  {
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000BEC4(v1, qword_10014FEA0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Customer already subscribed, using standard Apple Music URL for Live Activity", v4, 2u);
    }

    v5 = *(v0 + 328);

    v6 = [v5 appleMusicURL];
    if (v6)
    {
      v7 = v6;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    (*(*(v0 + 344) + 56))(*(v0 + 360), v8, 1, *(v0 + 336));
    sub_100007F6C(*(v0 + 360), *(v0 + 320));

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v9 = [*(v0 + 328) appleMusicURL];
    if (v9)
    {
      v10 = v9;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v15 = *(v0 + 368);
    v14 = *(v0 + 376);
    v16 = *(v0 + 336);
    v17 = *(*(v0 + 344) + 56);
    *(v0 + 432) = v17;
    v17(v15, v11, 1, v16);
    sub_100007F6C(v15, v14);
    v18 = objc_opt_self();
    *(v0 + 440) = v18;
    v19 = [v18 sharedInstance];
    *(v0 + 448) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 304;
    *(v0 + 24) = sub_10005A524;
    v20 = swift_continuation_init();
    *(v0 + 200) = sub_100002D44(&qword_100144640);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10005B2B8;
    *(v0 + 168) = &unk_1001370D8;
    *(v0 + 176) = v20;
    [v19 featureFlagsWithCompletion:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10005A374()
{
  v1 = [*(v0 + 328) appleMusicURL];
  if (v1)
  {
    v2 = v1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 336);
  v7 = *(*(v0 + 344) + 56);
  *(v0 + 432) = v7;
  v7(v5, v3, 1, v6);
  sub_100007F6C(v5, v4);
  v8 = objc_opt_self();
  *(v0 + 440) = v8;
  v9 = [v8 sharedInstance];
  *(v0 + 448) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_10005A524;
  v10 = swift_continuation_init();
  *(v0 + 200) = sub_100002D44(&qword_100144640);
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_10005B2B8;
  *(v0 + 168) = &unk_1001370D8;
  *(v0 + 176) = v10;
  [v9 featureFlagsWithCompletion:v0 + 144];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10005A524()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_10005AB94;
  }

  else
  {
    v2 = sub_10005A634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005A634()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 304);
  v3 = [v2 preferDefaultOfferInLiveActivity];

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Retrieved value from bag of preferDefaultOfferInLiveActivity: %{BOOL}d", v7, 8u);
  }

  if (v3 && (v8 = [objc_opt_self() mainBundle], v9 = objc_msgSend(v8, "bundleIdentifier"), *(v0 + 464) = v9, v8, v9))
  {
    v10 = [*(v0 + 440) sharedInstance];
    *(v0 + 472) = v10;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 312;
    *(v0 + 88) = sub_10005A920;
    v11 = swift_continuation_init();
    *(v0 + 264) = sub_100002D44(&qword_100144648);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10005B2B8;
    *(v0 + 232) = &unk_100137100;
    *(v0 + 240) = v11;
    [v10 offerValuesWithCompletion:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    sub_100007F6C(*(v0 + 376), *(v0 + 320));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10005A920()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 480) = v2;
  if (v2)
  {

    v3 = sub_10005AEEC;
  }

  else
  {
    v3 = sub_10005AA38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005AA38()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[39];
  v4 = [v3 defaultURLForBundleID:v1];

  if (v4)
  {
    v5 = v0[54];
    v6 = v0[47];
    v8 = v0[43];
    v7 = v0[44];
    v9 = v0[42];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100007E14(v6, &unk_100144630);
    (*(v8 + 32))(v6, v7, v9);
    v5(v6, 0, 1, v9);
  }

  sub_100007F6C(v0[47], v0[40]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10005AB94()
{
  v1 = *(v0 + 448);
  swift_willThrow();

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch feature flags for liveActivitySpecificAppleMusicURL %@", v5, 0xCu);
    sub_100007E14(v6, &unk_100142880);
  }

  else
  {
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];
  *(v0 + 464) = v9;

  if (v9)
  {
    v10 = [*(v0 + 440) sharedInstance];
    *(v0 + 472) = v10;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 312;
    *(v0 + 88) = sub_10005A920;
    v11 = swift_continuation_init();
    *(v0 + 264) = sub_100002D44(&qword_100144648);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10005B2B8;
    *(v0 + 232) = &unk_100137100;
    *(v0 + 240) = v11;
    [v10 offerValuesWithCompletion:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    sub_100007F6C(*(v0 + 376), *(v0 + 320));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10005AEEC()
{
  v1 = v0[59];
  swift_willThrow();

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch offer values for liveActivitySpecificAppleMusicURL %@", v5, 0xCu);
    sub_100007E14(v6, &unk_100142880);
  }

  else
  {
  }

  sub_100007F6C(v0[47], v0[40]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005B0F0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000DC80((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100002D44(&qword_100142F78);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_10005B1D0()
{
  result = qword_100142FA8;
  if (!qword_100142FA8)
  {
    type metadata accessor for MusicSubscriptionStatusController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142FA8);
  }

  return result;
}

uint64_t sub_10005B228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B2BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005B3D8, 0, 0);
}

uint64_t sub_10005B3D8()
{
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v0[9] = [objc_opt_self() sharedSession];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10005B4D4;
  v2 = v0[8];

  return NSURLSession.data(for:delegate:)(v2, 0);
}

uint64_t sub_10005B4D4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 72);
  *(*v4 + 88) = v3;

  if (v3)
  {
    v10 = sub_10005B724;
  }

  else
  {

    *(v8 + 96) = a2;
    *(v8 + 104) = a1;
    v10 = sub_10005B630;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10005B630()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  sub_10005B7AC(v2, v1);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10005B724()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005B7AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005B800@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = [objc_allocWithZone(LSApplicationWorkspace) init];
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 applicationWithBundleIdentifier:v5];

  v7 = String._bridgeToObjectiveC()();
  v8 = [v3 applicationIsInstalled:v7];

  if (v8 && (v9 = [objc_allocWithZone(LSApplicationWorkspace) init], v10 = String._bridgeToObjectiveC()(), v11 = objc_msgSend(v4, "applicationWithBundleIdentifier:", v10), v10, LOBYTE(v10) = objc_msgSend(v11, "isHidden"), v11, v9, (v10 & 1) == 0))
  {
    v14 = [objc_allocWithZone(LSApplicationWorkspace) init];
    v15 = String._bridgeToObjectiveC()();

    v16 = type metadata accessor for StreamingService();
    v17 = v16[5];
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 16))(&a2[v17], a1, v18);
    *a2 = 0xD000000000000019;
    *(a2 + 1) = 0x8000000100100C20;
    v19 = &a2[v16[6]];
    *v19 = 0x6C4320656C707041;
    *(v19 + 1) = 0xEF6C616369737361;
    v20 = &a2[v16[7]];
    *v20 = 0x6C632E656C707061;
    *(v20 + 1) = 0xEF6C616369737361;
    a2[v16[8]] = 1;
    return (*(*(v16 - 1) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v12 = type metadata accessor for StreamingService();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

void sub_10005BAD4(void **a1)
{
  v2 = *(type metadata accessor for StreamingService() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10005CF04(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10005BB7C(v5);
  *a1 = v3;
}

void sub_10005BB7C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for StreamingService();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for StreamingService() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10005BED0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10005BCA8(0, v2, 1, a1);
  }
}

void sub_10005BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StreamingService();
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v38 = v18;
    v32 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v36 = v20;
    v37 = a3;
    v34 = v23;
    v35 = v22;
    while (1)
    {
      sub_10005DB30(v23, v17);
      sub_10005DB30(v20, v13);
      v24 = *(v8 + 24);
      v25 = *&v17[v24];
      v26 = *&v17[v24 + 8];
      v27 = &v13[v24];
      if (v25 == *v27 && v26 == *(v27 + 1))
      {
        sub_10005DB94(v13);
        sub_10005DB94(v17);
LABEL_5:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v22 = v35 - 1;
        v23 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10005DB94(v13);
      sub_10005DB94(v17);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_10005DBF0(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_10005DBF0(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10005BED0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v133 = a1;
  v148 = type metadata accessor for StreamingService();
  v9 = *(v148 - 8);
  __chkstk_darwin(v148);
  v139 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v145 = &v128 - v12;
  __chkstk_darwin(v13);
  v15 = &v128 - v14;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v144 = &v128 - v18;
  __chkstk_darwin(v19);
  v143 = &v128 - v20;
  __chkstk_darwin(v21);
  v132 = &v128 - v22;
  __chkstk_darwin(v23);
  v131 = &v128 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_113:
    v5 = *v133;
    if (!*v133)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_145:
      v28 = sub_10005CDE4(v28);
    }

    v149 = v28;
    v123 = *(v28 + 16);
    if (v123 >= 2)
    {
      while (*a3)
      {
        v124 = *(v28 + 16 * v123);
        v125 = v28;
        v126 = *(v28 + 16 * (v123 - 1) + 32);
        v28 = *(v28 + 16 * (v123 - 1) + 40);
        sub_10005C84C(*a3 + *(v9 + 72) * v124, *a3 + *(v9 + 72) * v126, *a3 + *(v9 + 72) * v28, v5);
        if (v6)
        {
          goto LABEL_123;
        }

        if (v28 < v124)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_10005CDE4(v125);
        }

        if (v123 - 2 >= *(v125 + 2))
        {
          goto LABEL_139;
        }

        v127 = &v125[16 * v123];
        *v127 = v124;
        *(v127 + 1) = v28;
        v149 = v125;
        sub_10005CD58(v123 - 1);
        v28 = v149;
        v123 = *(v149 + 16);
        if (v123 <= 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_149;
    }

LABEL_123:

    return;
  }

  v146 = v24;
  v128 = a4;
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v136 = a3;
  v147 = v15;
  v129 = v9;
  while (1)
  {
    v135 = v28;
    v29 = v27;
    v28 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      v40 = v148;
    }

    else
    {
      v140 = v26;
      v30 = *a3;
      v31 = *(v9 + 72);
      v32 = v131;
      sub_10005DB30(*a3 + v31 * v28, v131);
      v134 = v29;
      v142 = v31;
      v33 = v30 + v31 * v29;
      v34 = v132;
      sub_10005DB30(v33, v132);
      v35 = *(v148 + 24);
      v36 = *(v32 + v35);
      v37 = *(v32 + v35 + 8);
      v38 = (v34 + v35);
      v39 = v36 == *v38 && v37 == v38[1];
      v130 = v6;
      if (v39)
      {
        LODWORD(v141) = 0;
      }

      else
      {
        LODWORD(v141) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10005DB94(v132);
      sub_10005DB94(v131);
      v41 = (v134 + 2);
      v42 = v142 * (v134 + 2);
      v43 = v30 + v42;
      v44 = v142 * v28;
      v45 = v30 + v142 * v28;
      v40 = v148;
      do
      {
        a3 = v41;
        v6 = v28;
        v48 = v44;
        v5 = v42;
        if (v41 >= v140)
        {
          break;
        }

        v49 = v143;
        sub_10005DB30(v43, v143);
        v9 = v144;
        sub_10005DB30(v45, v144);
        v50 = *(v40 + 24);
        v51 = *(v49 + v50);
        v52 = *(v49 + v50 + 8);
        v53 = (v9 + v50);
        v54 = v51 == *v53 && v52 == v53[1];
        v46 = v54 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10005DB94(v144);
        sub_10005DB94(v143);
        v47 = v141 ^ v46;
        v41 = (a3 + 1);
        v43 += v142;
        v45 += v142;
        v28 = v6 + 1;
        v44 = v48 + v142;
        v42 = v5 + v142;
        v40 = v148;
      }

      while ((v47 & 1) == 0);
      v15 = v147;
      if (v141)
      {
        if (a3 < v134)
        {
          goto LABEL_142;
        }

        if (v134 >= a3)
        {
          v28 = a3;
          v9 = v129;
          v6 = v130;
          a3 = v136;
          v29 = v134;
          goto LABEL_37;
        }

        v55 = v134 * v142;
        v56 = v134;
        do
        {
          if (v56 != v6)
          {
            v58 = *v136;
            if (!*v136)
            {
              goto LABEL_148;
            }

            sub_10005DBF0(v58 + v55, v139);
            if (v55 < v48 || v58 + v55 >= v58 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10005DBF0(v139, v58 + v48);
            v15 = v147;
            v40 = v148;
          }

          ++v56;
          v48 -= v142;
          v5 -= v142;
          v55 += v142;
        }

        while (v56 < v6--);
      }

      v28 = a3;
      v9 = v129;
      v6 = v130;
      a3 = v136;
      v29 = v134;
    }

LABEL_37:
    v59 = a3[1];
    v142 = v28;
    if (v28 >= v59)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v28, v29))
    {
      goto LABEL_141;
    }

    if (v28 - v29 >= v128)
    {
LABEL_60:
      v28 = v135;
      goto LABEL_61;
    }

    v28 = v135;
    if (__OFADD__(v29, v128))
    {
      goto LABEL_143;
    }

    if (v29 + v128 >= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v29 + v128;
    }

    if (v60 < v29)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v142 != v60)
    {
      break;
    }

LABEL_61:
    if (v142 < v29)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_10005808C(0, *(v28 + 16) + 1, 1, v28);
    }

    v77 = *(v28 + 16);
    v76 = *(v28 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v28 = sub_10005808C((v76 > 1), v77 + 1, 1, v28);
    }

    *(v28 + 16) = v78;
    v79 = v28 + 16 * v77;
    v80 = v142;
    *(v79 + 32) = v29;
    *(v79 + 40) = v80;
    v5 = *v133;
    if (!*v133)
    {
      goto LABEL_150;
    }

    if (v77)
    {
      while (1)
      {
        v81 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v82 = *(v28 + 32);
          v83 = *(v28 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_81:
          if (v85)
          {
            goto LABEL_129;
          }

          v98 = (v28 + 16 * v78);
          v100 = *v98;
          v99 = v98[1];
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_132;
          }

          v104 = (v28 + 32 + 16 * v81);
          v106 = *v104;
          v105 = v104[1];
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_136;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v81 = v78 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v108 = (v28 + 16 * v78);
        v110 = *v108;
        v109 = v108[1];
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_95:
        if (v103)
        {
          goto LABEL_131;
        }

        v111 = v28 + 16 * v81;
        v113 = *(v111 + 32);
        v112 = *(v111 + 40);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_134;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_102:
        v119 = v81 - 1;
        if (v81 - 1 >= v78)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v120 = *(v28 + 32 + 16 * v119);
        v121 = *(v28 + 32 + 16 * v81 + 8);
        sub_10005C84C(*a3 + *(v9 + 72) * v120, *a3 + *(v9 + 72) * *(v28 + 32 + 16 * v81), *a3 + *(v9 + 72) * v121, v5);
        if (v6)
        {
          goto LABEL_123;
        }

        if (v121 < v120)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_10005CDE4(v28);
        }

        if (v119 >= *(v28 + 16))
        {
          goto LABEL_126;
        }

        v122 = v28 + 16 * v119;
        *(v122 + 32) = v120;
        *(v122 + 40) = v121;
        v149 = v28;
        sub_10005CD58(v81);
        v28 = v149;
        v78 = *(v149 + 16);
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = v28 + 32 + 16 * v78;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_127;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_128;
      }

      v93 = (v28 + 16 * v78);
      v95 = *v93;
      v94 = v93[1];
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_130;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_133;
      }

      if (v97 >= v89)
      {
        v115 = (v28 + 32 + 16 * v81);
        v117 = *v115;
        v116 = v115[1];
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_137;
        }

        if (v84 < v118)
        {
          v81 = v78 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v142;
    v15 = v147;
    if (v142 >= v26)
    {
      goto LABEL_113;
    }
  }

  v130 = v6;
  v61 = *a3;
  v62 = *(v9 + 72);
  v63 = *a3 + v62 * (v142 - 1);
  v64 = -v62;
  v134 = v29;
  v65 = v29 - v142;
  v137 = v62;
  v138 = v60;
  v66 = v61 + v142 * v62;
  while (2)
  {
    v5 = v66;
    v140 = v65;
    v141 = v63;
LABEL_50:
    v67 = v146;
    sub_10005DB30(v5, v146);
    sub_10005DB30(v63, v15);
    v68 = *(v40 + 24);
    v69 = *(v67 + v68);
    v70 = *(v67 + v68 + 8);
    v71 = &v15[v68];
    if (v69 == *v71 && v70 == *(v71 + 1))
    {
      sub_10005DB94(v15);
      sub_10005DB94(v67);
LABEL_48:
      v63 = v141 + v137;
      v65 = v140 - 1;
      v66 += v137;
      if (++v142 != v138)
      {
        continue;
      }

      v142 = v138;
      v9 = v129;
      v6 = v130;
      v28 = v135;
      a3 = v136;
      v29 = v134;
      goto LABEL_61;
    }

    break;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10005DB94(v15);
  sub_10005DB94(v67);
  if ((v73 & 1) == 0)
  {
    v40 = v148;
    goto LABEL_48;
  }

  if (v61)
  {
    v74 = v145;
    sub_10005DBF0(v5, v145);
    v40 = v148;
    swift_arrayInitWithTakeFrontToBack();
    sub_10005DBF0(v74, v63);
    v63 += v64;
    v5 += v64;
    v75 = __CFADD__(v65++, 1);
    v15 = v147;
    if (v75)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_10005C84C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for StreamingService();
  __chkstk_darwin(v57);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v51 - v10;
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v20 = (a2 - a1) / v18;
  v60 = a1;
  v59 = a4;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v23;
    if (v23 >= 1)
    {
      v35 = -v18;
      v36 = a4 + v23;
      v54 = -v18;
      while (2)
      {
        while (1)
        {
          v51 = v34;
          v37 = a2;
          v38 = a2 + v35;
          v52 = v37;
          v53 = v38;
          while (1)
          {
            if (v37 <= a1)
            {
              v60 = v37;
              v58 = v51;
              goto LABEL_71;
            }

            v40 = a3;
            v41 = v34;
            v42 = v36 + v35;
            v43 = v55;
            sub_10005DB30(v42, v55);
            v44 = v56;
            sub_10005DB30(v38, v56);
            v45 = *(v57 + 24);
            v46 = *(v43 + v45);
            v47 = *(v43 + v45 + 8);
            v48 = (v44 + v45);
            v49 = v46 == *v48 && v47 == v48[1];
            v50 = v49 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
            a3 = v40 + v54;
            sub_10005DB94(v56);
            sub_10005DB94(v55);
            if (v50)
            {
              break;
            }

            v34 = v42;
            if (v40 < v36 || a3 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v53;
            }

            else
            {
              v38 = v53;
              if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v42;
            v39 = v42 > a4;
            v35 = v54;
            v37 = v52;
            if (!v39)
            {
              a2 = v52;
              goto LABEL_70;
            }
          }

          v34 = v41;
          if (v40 < v52 || a3 >= v52)
          {
            break;
          }

          a2 = v53;
          v35 = v54;
          if (v40 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v36 <= a4)
          {
            goto LABEL_70;
          }
        }

        a2 = v53;
        swift_arrayInitWithTakeFrontToBack();
        v35 = v54;
        if (v36 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v60 = a2;
    v58 = v34;
  }

  else
  {
    v21 = a2;
    v22 = v20 * v18;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v58 = a4 + v22;
    if (v22 >= 1 && v21 < a3)
    {
      v26 = v21;
      while (1)
      {
        v27 = v26;
        sub_10005DB30(v26, v16);
        sub_10005DB30(a4, v13);
        v28 = *(v57 + 24);
        v29 = *&v16[v28];
        v30 = *&v16[v28 + 8];
        v31 = &v13[v28];
        if (v29 == *v31 && v30 == *(v31 + 1))
        {
          break;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10005DB94(v13);
        sub_10005DB94(v16);
        if ((v33 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v27 || a1 >= v27 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v27 + v18;
LABEL_39:
        a1 += v18;
        v60 = a1;
        if (a4 >= v24 || v26 >= a3)
        {
          goto LABEL_71;
        }
      }

      sub_10005DB94(v13);
      sub_10005DB94(v16);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = a4 + v18;
      a4 += v18;
      v26 = v27;
      goto LABEL_39;
    }
  }

LABEL_71:
  sub_10005CDF8(&v60, &v59, &v58);
}

uint64_t sub_10005CD58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005CDE4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10005CDF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for StreamingService();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10005CF18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a5;
  v74 = a6;
  v71 = a3;
  v72 = a4;
  v70 = a2;
  v69 = type metadata accessor for URL();
  v8 = *(v69 - 8);
  __chkstk_darwin(v69);
  v83 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamingService();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (!v13)
  {
    return v14;
  }

  v58[1] = v6;
  v84 = _swiftEmptyArrayStorage;
  sub_100063088(0, v13, 0);
  v14 = v84;
  v15 = a1 + 56;
  v16 = _HashTable.startBucket.getter();
  v17 = *(a1 + 36);
  result = objc_opt_self();
  v66 = result;
  if (v16 < 0 || v16 >= 1 << *(a1 + 32))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v62 = (v8 + 16);
    v61 = (v8 + 8);
    v59 = a1 + 64;
    v19 = 1;
    v64 = v12;
    v60 = v13;
    v65 = a1;
    v63 = a1 + 56;
    while ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v76 = 1 << v16;
      v77 = v16 >> 6;
      v75 = v19;
      v80 = v17;
      v81 = v16;
      v20 = (*(a1 + 48) + 16 * v16);
      v21 = *v20;
      v22 = v20[1];

      v23 = String._bridgeToObjectiveC()();
      v24 = v70;
      v25 = [v70 providerNameForBundleID:v23];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v24 searchURLForBundleID:v29 title:v30 artist:v31];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = [objc_allocWithZone(LSApplicationWorkspace) init];

      v34 = String._bridgeToObjectiveC()();
      v35 = [v66 applicationWithBundleIdentifier:v34];

      v36 = String._bridgeToObjectiveC()();
      LODWORD(v32) = [v33 applicationIsInstalled:v36];

      v82 = v14;
      v78 = v28;
      v79 = v26;
      if (v32)
      {
        v37 = [v35 isHidden] ^ 1;
      }

      else
      {
        v37 = 0;
      }

      v39 = v68;
      v38 = v69;
      v40 = v64;
      v41 = v83;
      (*v62)(v64 + v68[5], v83, v69);

      (*v61)(v41, v38);

      *v40 = v21;
      v40[1] = v22;
      v42 = (v40 + v39[6]);
      v43 = v78;
      *v42 = v79;
      v42[1] = v43;
      v44 = v40 + v39[7];
      strcpy(v44, "arrow.up.right");
      v44[15] = -18;
      v45 = v40;
      *(v40 + v39[8]) = v37;
      v14 = v82;
      v84 = v82;
      v47 = v82[2];
      v46 = v82[3];
      if (v47 >= v46 >> 1)
      {
        v57 = v45;
        sub_100063088(v46 > 1, v47 + 1, 1);
        v45 = v57;
        v14 = v84;
      }

      v14[2] = v47 + 1;
      sub_10005DBF0(v45, v14 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v47);
      a1 = v65;
      v48 = 1 << *(v65 + 32);
      result = v81;
      v15 = v63;
      if (v81 >= v48)
      {
        goto LABEL_28;
      }

      v49 = *(v63 + 8 * v77);
      if ((v49 & v76) == 0)
      {
        goto LABEL_29;
      }

      if (v80 != *(v65 + 36))
      {
        goto LABEL_30;
      }

      v50 = v49 & (-2 << (v81 & 0x3F));
      if (v50)
      {
        v16 = __clz(__rbit64(v50)) | v81 & 0x7FFFFFFFFFFFFFC0;
        v51 = v60;
      }

      else
      {
        v52 = v77 << 6;
        v53 = v77 + 1;
        v54 = (v59 + 8 * v77);
        v51 = v60;
        while (v53 < (v48 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            result = sub_10005DC54(v81, v80, 0);
            v16 = __clz(__rbit64(v55)) + v52;
            goto LABEL_21;
          }
        }

        result = sub_10005DC54(v81, v80, 0);
        v16 = v48;
      }

LABEL_21:
      if (v75 == v51)
      {
        return v14;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(a1 + 36);
        v19 = v75 + 1;
        if (v16 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10005D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = type metadata accessor for StreamingService();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10005D5C0, 0, 0);
}

uint64_t sub_10005D5C0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10005D6DC;
  v2 = swift_continuation_init();
  v0[17] = sub_100002D44(&qword_100144650);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10005B0F0;
  v0[13] = &unk_100137128;
  v0[14] = v2;
  [v1 streamingProviderValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10005D6DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_10005DA98;
  }

  else
  {
    v2 = sub_10005D7EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005D7EC()
{
  v28 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = [v5 availableBundleIdentifiers];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v5;

  v9 = sub_10005CF18(v7, v8, v4, v3, v1, v2);

  v25 = v8;

  v11 = v9[2];
  if (v11)
  {
    v12 = 0;
    v13 = v0[24];
    v14 = v0[25];
    v15 = _swiftEmptyArrayStorage;
    v26 = v13;
    while (v12 < v9[2])
    {
      v16 = v0[27];
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = *(v14 + 72);
      sub_10005DB30(v9 + v17 + v18 * v12, v16);
      v19 = v0[27];
      if (*(v16 + *(v13 + 32)) == 1)
      {
        sub_10005DBF0(v19, v0[26]);
        v27 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100063088(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_100063088(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v22 = v0[26];
        v15[2] = v21 + 1;
        result = sub_10005DBF0(v22, v15 + v17 + v21 * v18);
        v13 = v26;
      }

      else
      {
        result = sub_10005DB94(v19);
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_13:

    v27 = v15;

    sub_10005BAD4(&v27);

    v23 = v27;

    v24 = v0[1];

    return v24(v23);
  }

  return result;
}