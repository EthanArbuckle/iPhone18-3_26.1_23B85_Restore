uint64_t sub_10009A454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  v18 = type metadata accessor for EnvironmentValues();
  v36 = *(v18 - 8);
  v37 = v18;
  v19 = *(v36 + 64);
  __chkstk_darwin(v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v22 = type metadata accessor for GameOverlayTabViewBody();
  v23 = (a1 + *(v22 + 60));
  v24 = *v23;
  v25 = *(v23 + 8);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    v35[1] = a1;
    v27 = v25;
    v28 = v26;
    os_log(_:dso:log:_:_:)();

    v25 = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v36 + 8))(v21, v37);
  }

  sub_10009885C(v22, v17);
  (*(v11 + 104))(v14, enum case for LayoutDirection.leftToRight(_:), v10);
  v29 = static LayoutDirection.== infix(_:_:)();
  v30 = *(v11 + 8);
  v30(v14, v10);
  v30(v17, v10);

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v36 + 8))(v21, v37);
    v24 = v38;
  }

  if (v29)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  v33 = *(v24 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_10007747C(v32, v33);
}

unint64_t sub_10009A7C4()
{
  result = qword_100130FF8;
  if (!qword_100130FF8)
  {
    sub_100005144(&qword_100130FF0, &qword_1000ED398);
    sub_10009A848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FF8);
  }

  return result;
}

unint64_t sub_10009A848()
{
  result = qword_100131000;
  if (!qword_100131000)
  {
    sub_100005144(&qword_100131008, &qword_1000ED3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131000);
  }

  return result;
}

uint64_t sub_10009A908(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for GameOverlayTabViewBody() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_10009A9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v10 = v2[3];
  v11 = v2[5];
  v7 = *(type metadata accessor for GameOverlayTabViewBody() - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_100099C44(a1, v8, v5, v6, a2);
}

unint64_t sub_10009AAE4()
{
  result = qword_100131040;
  if (!qword_100131040)
  {
    sub_100005144(&qword_100131030, &qword_1000ED3D8);
    sub_10009B630(&qword_100131038, type metadata accessor for OverlayTabBar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131040);
  }

  return result;
}

uint64_t sub_10009ABA0(uint64_t a1)
{
  v2 = type metadata accessor for OverlayTabBar();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009ABFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009AC2C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009ACE8()
{
  v1 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = *(v0 + 40);
  v2 = type metadata accessor for GameOverlayTabViewBody();
  v3 = *(*(v2 - 1) + 64);
  v4 = (v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80)));
  v5 = type metadata accessor for Binding();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = *v4;

    v7 = *(v4 + 1);

    (*(*(v1 - 8) + 8))(&v4[*(v5 + 32)], v1);
  }

  (*(*(v14 - 8) + 8))(&v4[v2[13]]);
  v8 = *&v4[v2[14] + 8];

  v9 = *&v4[v2[15]];

  v10 = v2[16];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  return swift_deallocObject();
}

uint64_t sub_10009AF04(uint64_t a1, char *a2)
{
  v5 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v6 = *(*(type metadata accessor for GameOverlayTabViewBody() - 8) + 80);

  return sub_10009A040(a1, a2);
}

unint64_t sub_10009AFC0()
{
  result = qword_100131050;
  if (!qword_100131050)
  {
    sub_100005144(&qword_100131018, &qword_1000ED3C0);
    sub_10009B078();
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131050);
  }

  return result;
}

unint64_t sub_10009B078()
{
  result = qword_100131058;
  if (!qword_100131058)
  {
    sub_100005144(&qword_100131048, &qword_1000ED3E0);
    type metadata accessor for OverlayTabBar();
    sub_100005144(&qword_10012ECE0, &qword_1000EB0D8);
    sub_100005144(&qword_100131030, &qword_1000ED3D8);
    sub_10009B630(&qword_100131038, type metadata accessor for OverlayTabBar);
    sub_100069844();
    swift_getOpaqueTypeConformance2();
    sub_10009AAE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131058);
  }

  return result;
}

unint64_t sub_10009B1E8()
{
  result = qword_100131060;
  if (!qword_100131060)
  {
    sub_100005144(&qword_100131028, &qword_1000ED3D0);
    sub_100005144(&qword_100131018, &qword_1000ED3C0);
    sub_10009AFC0();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012ED20, &qword_10012ED28, &unk_1000ED420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131060);
  }

  return result;
}

uint64_t sub_10009B2F0()
{
  v1 = *(v0 + 48);
  *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v2 = type metadata accessor for GameOverlayTabViewBody();
  return sub_1000987FC(v2);
}

uint64_t sub_10009B364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayTabBar();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009B3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100131008, &qword_1000ED3A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009B438()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100098024() & 1;
}

uint64_t sub_10009B45C(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131068, &unk_1000ED430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009B4D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3 = *(a1 + 8);
  sub_100005144(&qword_100130FF0, &qword_1000ED398);
  sub_10009A7C4();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  sub_100005144(&qword_100131010, &qword_1000ED3A8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10008E268();
  return swift_getWitnessTable();
}

__n128 sub_10009B624(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10009B630(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10009B690()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = &_swiftEmptyDictionarySingleton;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10009B73C()
{
  v0 = type metadata accessor for RemoteAlertHandleObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = &_swiftEmptyDictionarySingleton;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  qword_100135CA8 = result;
  return result;
}

uint64_t sub_10009B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v6 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v5[41] = v6;
  v7 = *(v6 - 8);
  v5[42] = v7;
  v8 = *(v7 + 64) + 15;
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_10009B864, 0, 0);
}

uint64_t sub_10009B864()
{
  v1 = *(v0 + 312);
  sub_1000035B4(v1 + 24, v0 + 176, &qword_100131118, &unk_1000ED6E0);
  if (!*(v0 + 200))
  {
    sub_100005688(v0 + 176, &qword_100131118, &unk_1000ED6E0);
LABEL_7:
    sub_1000035B4(v1 + 24, v0 + 208, &qword_100131118, &unk_1000ED6E0);
    if (*(v0 + 232))
    {
      sub_100002B38(&qword_100131130, &qword_1000EF000);
      if (swift_dynamicCast())
      {
        v21 = *(v0 + 312);
        v20 = *(v0 + 320);
        v22 = *(v0 + 296);
        v23 = [objc_allocWithZone(NSError) initWithDomain:GKErrorDomain code:2 userInfo:0];
        [v22 didFinishOnboardingWithError:v23];

        v24 = *(v21 + 144);
        v25 = *(v21 + 152);

        v11 = sub_1000DFEF0(6, v24, v25);
        v13 = v26;
LABEL_18:
        swift_unknownObjectRelease();

        goto LABEL_21;
      }
    }

    else
    {
      sub_100005688(v0 + 208, &qword_100131118, &unk_1000ED6E0);
    }

    goto LABEL_11;
  }

  sub_100002B38(&qword_100131138, &qword_1000ED598);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  sub_100011E2C();
  v4.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  isa = v4.super.super.isa;
  v6 = *v3;
  if (*v3 != _TtC13GameOverlayUI26DashboardConnectionContext)
  {
    if (v6 == _TtC13GameOverlayUI28AccessPointConnectionContext)
    {
      [v2 isPresentingDashboardFromAccessPoint:v4.super.super.isa];
      v27 = BSValueWithRect();
      if (!v27)
      {
        __break(1u);
        return _swift_task_switch(v27, v28, v29);
      }

      v30 = v27;
      v32 = *(v0 + 312);
      v31 = *(v0 + 320);
      [v2 updateAccessPointFrameCoordinates:v27];

      v33 = *(v32 + 144);
      v34 = *(v32 + 152);

      v35 = 0;
      goto LABEL_17;
    }

    if (v6 == _TtC13GameOverlayUI29InGameBannerConnectionContext)
    {
      v36 = *(v0 + 312);
      v37 = *(v0 + 320);
      v33 = *(v36 + 144);
      v34 = *(v36 + 152);

      v35 = 1;
LABEL_17:
      v11 = sub_1000DFEF0(v35, v33, v34);
      v13 = v38;

      goto LABEL_18;
    }

    swift_unknownObjectRelease();
LABEL_11:
    v11 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v46 = v4.super.super.isa;
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  [v2 didDismissDashboard];
  v9 = *(v8 + 144);
  v10 = *(v8 + 152);

  v11 = sub_1000DFEF0(2, v9, v10);
  v13 = v12;

  swift_beginAccess();
  sub_1000035B4(v8 + 64, v0 + 136, &unk_100131120, &unk_1000EAAF0);
  v14 = *(v0 + 160);
  if (v14)
  {
    v15 = *(v0 + 168);
    v16 = sub_10002D754((v0 + 136), *(v0 + 160));
    v17 = *(v14 - 8);
    v18 = *(v17 + 64) + 15;
    v19 = swift_task_alloc();
    (*(v17 + 16))(v19, v16, v14);
    sub_100005688(v0 + 136, &unk_100131120, &unk_1000EAAF0);
    (*(v15 + 16))(v14, v15);
    (*(v17 + 8))(v19, v14);
  }

  else
  {
    sub_100005688(v0 + 136, &unk_100131120, &unk_1000EAAF0);
  }

  v39 = *(v0 + 336);
  v40 = *(v0 + 344);
  v41 = *(v0 + 328);
  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  (*(v39 + 104))(v40, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v41);
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

  swift_unknownObjectRelease();

  (*(v39 + 8))(v40, v41);
LABEL_21:
  *(v0 + 352) = v11;
  *(v0 + 360) = v13;
  v42 = *(v0 + 312);
  swift_beginAccess();
  sub_1000035B4(v42 + 64, v0 + 56, &unk_100131120, &unk_1000EAAF0);
  if (*(v0 + 80))
  {
    sub_10003FB38((v0 + 56), v0 + 16);
    if (qword_10012CC38 != -1)
    {
      swift_once();
    }

    v28 = qword_100135CD8;
    *(v0 + 368) = qword_100135CD8;
    v27 = sub_10009BE70;
    v29 = 0;

    return _swift_task_switch(v27, v28, v29);
  }

  sub_100005688(v0 + 56, &unk_100131120, &unk_1000EAAF0);
  v43 = *(v0 + 344);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10009BE70()
{
  v1 = v0[46];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_10002D754(v0 + 2, v2);
  sub_1000CFE50(v4, 1, v1, v2, v3);

  return _swift_task_switch(sub_10009BF00, 0, 0);
}

uint64_t sub_10009BF00()
{
  if (v0[45])
  {
    v1 = v0[46];
    v2 = sub_10009C014;
LABEL_5:

    return _swift_task_switch(v2, v1, 0);
  }

  sub_10002E8A8((v0 + 2), (v0 + 12));
  sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
  type metadata accessor for RemoteAlertGameModeBannerContext(0);
  if (swift_dynamicCast())
  {
    v3 = v0[46];
    v4 = v0[36];

    v2 = sub_10009C180;
    v1 = v3;
    goto LABEL_5;
  }

  sub_10002E6CC(v0 + 2);
  v5 = v0[43];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10009C014()
{
  v1 = v0[46];
  sub_1000C6540(v0[44], v0[45]);

  return _swift_task_switch(sub_10009C08C, 0, 0);
}

uint64_t sub_10009C08C()
{
  sub_10002E8A8((v0 + 2), (v0 + 12));
  sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
  type metadata accessor for RemoteAlertGameModeBannerContext(0);
  if (swift_dynamicCast())
  {
    v1 = v0[46];
    v2 = v0[36];

    return _swift_task_switch(sub_10009C180, v1, 0);
  }

  else
  {
    sub_10002E6CC(v0 + 2);
    v3 = v0[43];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10009C180()
{
  v1 = *(v0 + 368);
  sub_1000C75A8();

  return _swift_task_switch(sub_10009C1E8, 0, 0);
}

uint64_t sub_10009C1E8()
{
  sub_10002E6CC(v0 + 2);
  v1 = v0[43];

  v2 = v0[1];

  return v2();
}

uint64_t sub_10009C254(void *a1)
{
  v2 = v1;
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
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
    _os_log_impl(&_mh_execute_header, v9, v10, "RemoteAlertHandle did deactivate.", v11, 2u);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = a1;

  v14 = a1;
  sub_100014BBC(0, 0, v7, &unk_1000ED5A8, v13);
}

uint64_t sub_10009C424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009C4C4, a4, 0);
}

uint64_t sub_10009C4C4()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();
  v3 = sub_1000E106C(v1);
  swift_endAccess();
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[7];
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v3;
      v7[5] = v4;
      v8 = v4;

      sub_100014BBC(0, 0, v5, &unk_1000ED5B0, v7);
    }
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009C65C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100011F80(v10, qword_100135C88);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v13 + 4) = v15;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "RemoteAlertHandle did invalidate. Error: %@", v13, 0xCu);
    sub_100005688(v14, &qword_100131110, &unk_1000EC870);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v3;
  v18[5] = a1;

  v19 = a1;
  sub_100014BBC(0, 0, v9, &unk_1000ED568, v18);
}

uint64_t sub_10009C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009C954, a4, 0);
}

uint64_t sub_10009C954()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();
  v3 = sub_1000E106C(v1);
  swift_endAccess();
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[7];
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v3;
      v7[5] = v4;
      v8 = v4;

      sub_100014BBC(0, 0, v5, &unk_1000ED580, v7);
    }
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009CB38(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_10009CB6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10009C8B4(a1, v4, v5, v7, v6);
}

uint64_t sub_10009CC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10009B7A4(a1, v4, v5, v7, v6);
}

uint64_t sub_10009CCEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10009C424(a1, v4, v5, v7, v6);
}

uint64_t sub_10009CDAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10009CEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricsPipeline();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointAnchoring();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10009D034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MetricsPipeline();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointAnchoring();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AccessPointPageView()
{
  result = qword_1001311A8;
  if (!qword_1001311A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009D1A4()
{
  sub_10009D320();
  if (v0 <= 0x3F)
  {
    sub_10009D378();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricsPipeline();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessPointAnchoring();
        if (v3 <= 0x3F)
        {
          sub_10009D448(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10009D3E4();
            if (v5 <= 0x3F)
            {
              type metadata accessor for GameDashboardLaunchContext();
              if (v6 <= 0x3F)
              {
                sub_10009D448(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for BaseObjectGraph();
                  if (v8 <= 0x3F)
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

void sub_10009D320()
{
  if (!qword_10012CED0)
  {
    type metadata accessor for RemoteAlertAccessPointContext(255);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10012CED0);
    }
  }
}

unint64_t sub_10009D378()
{
  result = qword_1001311B8;
  if (!qword_1001311B8)
  {
    type metadata accessor for AccessPointContainer();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1001311B8);
  }

  return result;
}

void sub_10009D3E4()
{
  if (!qword_10012E3D8)
  {
    sub_100005144(&qword_10012E0C0, &qword_1000EA820);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10012E3D8);
    }
  }
}

void sub_10009D448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10009D4B4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_100002B38(&qword_100131208, &qword_1000ED680);
  v2 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v42 = v37 - v3;
  v43 = type metadata accessor for IntentViewConfiguration();
  v41 = *(v43 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v43);
  v40 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v37 - v7;
  v9 = type metadata accessor for AccessPointPageView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = sub_100002B38(&qword_100131210, &qword_1000ED688);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v39 = v37 - v20;
  sub_1000A151C(v1, v16, type metadata accessor for AccessPointPageView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v38 = swift_allocObject();
  sub_1000A14B4(v16, v38 + v21, type metadata accessor for AccessPointPageView);
  sub_1000A151C(v1, v13, type metadata accessor for AccessPointPageView);
  v22 = swift_allocObject();
  sub_1000A14B4(v13, v22 + v21, type metadata accessor for AccessPointPageView);
  v37[1] = static Transaction._loading.getter();
  IntentViewConfiguration.init()();
  v23 = v1[5];
  v24 = sub_10002D754(v1 + 2, v23);
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  (*(v28 + 16))(v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  type metadata accessor for AccessPointContainer();
  AnyIntentModel.init<A>(_:)();
  v29 = v41;
  v30 = v43;
  (*(v41 + 16))(v40, v8, v43);
  sub_100002B38(&qword_100131218, &qword_1000ED690);
  sub_1000A0F38();
  sub_1000A0F9C();
  v31 = v39;
  IntentView.init(what:transaction:configuration:working:failed:content:)();
  (*(v29 + 8))(v8, v30);
  v32 = v1[7];
  v33 = v1[8];
  v34 = *(v10 + 36);
  sub_1000A13FC(&qword_100131278, &type metadata accessor for AccessPointContainer);
  v35 = v44;
  IntentView<>.pageRenderMetrics(onTopic:pipeline:)();
  return (*(v45 + 8))(v31, v35);
}

uint64_t sub_10009D9DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  *a1 = result;
  return result;
}

void sub_10009DA04()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100011F80(v0, qword_100135C88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Jet View with Startup coordinator failed with error: %@", v2, 0xCu);
    sub_100005688(v3, &qword_100131110, &unk_1000EC870);
  }
}

uint64_t sub_10009DB60@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v69 = sub_100002B38(&qword_100131280, &qword_1000ED6B8);
  v5 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = v55 - v6;
  v7 = sub_100002B38(&qword_100131288, &unk_1000ED6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = v55 - v9;
  v10 = sub_100002B38(&qword_10012DC70, &qword_1000E9E48);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v63 = v55 - v12;
  v13 = type metadata accessor for PageID();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AutomationSemantics();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  __chkstk_darwin(v17);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100002B38(&qword_100131248, &qword_1000ED6A8);
  v21 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v23 = v55 - v22;
  v66 = sub_100002B38(&qword_100131240, &qword_1000ED6A0);
  v60 = *(v66 - 8);
  v24 = *(v60 + 64);
  __chkstk_darwin(v66);
  v59 = v55 - v25;
  v68 = sub_100002B38(&qword_100131290, &qword_1000ED6D0);
  v62 = *(v68 - 8);
  v26 = *(v62 + 64);
  __chkstk_darwin(v68);
  v61 = v55 - v27;
  v28 = sub_100002B38(&qword_100131238, &qword_1000ED698);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v67 = v55 - v30;
  v31 = sub_100002B38(&qword_100131298, &qword_1000ED6D8);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = v55 - v33;
  v35 = a1;
  v36 = a2;
  if (sub_10009E3E4())
  {
    swift_storeEnumTagMultiPayload();
    sub_1000A1028();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v55[2] = v31;
    v55[3] = v28;
    v38 = *(AccessPointContainer.items.getter() + 16);

    if (v38)
    {
      v55[1] = v36;
      sub_10009EC80(v35, v36, v23);
      *&v72[0] = 0;
      *(&v72[0] + 1) = 0xE000000000000000;
      AccessPointContainer.id.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v56 + 8))(v16, v13);
      memset(v72, 0, 32);
      static AutomationSemantics.page(name:id:)();

      sub_100005688(v72, &qword_100131118, &unk_1000ED6E0);
      v39 = sub_1000A1134();
      v40 = v59;
      v41 = v65;
      View.automationSemantics(_:)();
      (*(v57 + 8))(v20, v58);
      sub_100005688(v23, &qword_100131248, &qword_1000ED6A8);
      v42 = v63;
      AccessPointContainer.pageMetrics.getter();
      v43 = type metadata accessor for PageMetrics();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = *(type metadata accessor for AccessPointPageView() + 28);
      v45 = type metadata accessor for ClickLocationConfiguration();
      v46 = v64;
      (*(*(v45 - 8) + 56))(v64, 1, 1, v45);
      *&v72[0] = v41;
      *(&v72[0] + 1) = v39;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v48 = v61;
      v49 = v66;
      View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)();
      sub_100005688(v46, &qword_100131288, &unk_1000ED6C0);
      sub_100005688(v42, &qword_10012DC70, &qword_1000E9E48);
      (*(v60 + 8))(v40, v49);
      v50 = v62;
      v51 = v68;
      (*(v62 + 16))(v70, v48, v68);
      swift_storeEnumTagMultiPayload();
      *&v72[0] = v49;
      *(&v72[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v52 = v67;
      _ConditionalContent<>.init(storage:)();
      (*(v50 + 8))(v48, v51);
    }

    else
    {
      sub_1000A0394();
      swift_storeEnumTagMultiPayload();
      v53 = sub_1000A1134();
      *&v72[0] = v65;
      *(&v72[0] + 1) = v53;
      v54 = swift_getOpaqueTypeConformance2();
      *&v72[0] = v66;
      *(&v72[0] + 1) = v54;
      swift_getOpaqueTypeConformance2();
      v52 = v67;
      _ConditionalContent<>.init(storage:)();
    }

    sub_1000A12A4(v52, v34);
    swift_storeEnumTagMultiPayload();
    sub_1000A1028();
    _ConditionalContent<>.init(storage:)();
    return sub_1000A1314(v52);
  }
}

uint64_t sub_10009E3E4()
{
  v1 = type metadata accessor for AccessPointPageView();
  v67 = *(v1 - 1);
  v2 = *(v67 + 64);
  __chkstk_darwin(v1);
  v68 = v3;
  v69 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v61 - v6;
  v8 = type metadata accessor for AccessPointAnchoring();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[9];
  v70 = v0;
  v17 = (v0 + v16);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v72) = *v17;
  v73 = v19;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  result = v71;
  if (v71 == 1)
  {
    v63 = 1;
    LOBYTE(v72) = v18;
    v73 = v19;
    LOBYTE(v71) = 0;
    State.wrappedValue.setter();
    v21 = *(AccessPointContainer.items.getter() + 16);

    v22 = v70;
    if (v21 >= 3)
    {
      sub_1000035B4(v70 + v1[10], &v72, &unk_100131120, &unk_1000EAAF0);
      if (v74)
      {
        sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
        type metadata accessor for RemoteAlertAccessPointContext(0);
        if (swift_dynamicCast())
        {
          v23 = v71;
          if (*(v71 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) == 1)
          {
            v24 = AccessPointContainer.items.getter();
            v25 = *(AccessPointContainer.items.getter() + 16);

            if (v25)
            {
              v26 = *(v24 + 16);
              if (v26 >= v25)
              {
                if (v26 == v25 - 1)
                {
LABEL_9:
                  v27 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
                  swift_beginAccess();
                  v28 = *(v23 + v27);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v23 + v27) = v28;
                  v62 = v24;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v28 = sub_1000CC1CC(0, v28[2] + 1, 1, v28);
                    *(v23 + v27) = v28;
                  }

                  v31 = v28[2];
                  v30 = v28[3];
                  if (v31 >= v30 >> 1)
                  {
                    v28 = sub_1000CC1CC((v30 > 1), v31 + 1, 1, v28);
                  }

                  v28[2] = v31 + 1;
                  v28[v31 + 4] = v62;
                  *(v23 + v27) = v28;
                  swift_endAccess();
                  v22 = v70;
                  v32 = *v70;
                  v33 = *(v70 + 8);

                  if ((v33 & 1) == 0)
                  {
                    static os_log_type_t.fault.getter();
                    v34 = static Log.runtimeIssuesLog.getter();
                    os_log(_:dso:log:_:_:)();

                    v22 = v70;
                    EnvironmentValues.init()();
                    swift_getAtKeyPath();

                    (*(v64 + 8))(v15, v12);
                    v32 = v72;
                  }

                  swift_getKeyPath();
                  v72 = v32;
                  sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v35 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
                  swift_beginAccess();
                  (*(v65 + 16))(v11, v32 + v35, v66);

                  result = sub_1000BCC80(v11);
                  v36 = *(v23 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion);
                  v37 = __OFADD__(v36, 1);
                  v38 = v36 + 1;
                  if (v37)
                  {
                    __break(1u);
                    return result;
                  }

                  *(v23 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = v38;
                  v39 = (v22 + v1[12]);
                  v40 = v39[1];
                  v41 = v67;
                  if (!v40)
                  {

                    v43 = v69;
                    goto LABEL_23;
                  }

                  v66 = *v39;
                  v42 = type metadata accessor for TaskPriority();
                  (*(*(v42 - 8) + 56))(v7, 1, 1, v42);
                  v43 = v69;
                  sub_1000A151C(v22, v69, type metadata accessor for AccessPointPageView);
                  type metadata accessor for MainActor();

                  v44 = static MainActor.shared.getter();
                  v45 = (*(v41 + 80) + 48) & ~*(v41 + 80);
                  v46 = swift_allocObject();
                  v46[2] = v44;
                  v47 = v66;
                  v46[3] = &protocol witness table for MainActor;
                  v46[4] = v47;
                  v46[5] = v40;
                  sub_1000A14B4(v43, v46 + v45, type metadata accessor for AccessPointPageView);
                  v48 = v46;
                  v22 = v70;
                  sub_100014BBC(0, 0, v7, &unk_1000ED7E0, v48);

                  goto LABEL_22;
                }

LABEL_28:
                sub_1000A1968(v24, v24 + 32, 1, (2 * v25) | 1);
                v60 = v59;

                v24 = v60;
                goto LABEL_9;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_100005688(&v72, &unk_100131120, &unk_1000EAAF0);
      }
    }

    v49 = (v22 + v1[12]);
    v50 = v49[1];
    v43 = v69;
    v41 = v67;
    if (!v50)
    {
LABEL_23:
      v55 = type metadata accessor for TaskPriority();
      (*(*(v55 - 8) + 56))(v7, 1, 1, v55);
      sub_1000A151C(v22, v43, type metadata accessor for AccessPointPageView);
      type metadata accessor for MainActor();
      v56 = static MainActor.shared.getter();
      v57 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = v56;
      *(v58 + 24) = &protocol witness table for MainActor;
      sub_1000A14B4(v43, v58 + v57, type metadata accessor for AccessPointPageView);
      sub_100014EBC(0, 0, v7, &unk_1000ED790, v58);

      return v63;
    }

    v51 = *v49;
    v52 = type metadata accessor for TaskPriority();
    (*(*(v52 - 8) + 56))(v7, 1, 1, v52);
    type metadata accessor for MainActor();

    v53 = static MainActor.shared.getter();
    v54 = swift_allocObject();
    v54[2] = v53;
    v54[3] = &protocol witness table for MainActor;
    v54[4] = v51;
    v54[5] = v50;
    sub_100014BBC(0, 0, v7, &unk_1000ED7A0, v54);
LABEL_22:

    goto LABEL_23;
  }

  return result;
}

id sub_10009EC80@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a1;
  v161 = a3;
  v4 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v145 = &v139 - v6;
  v160 = type metadata accessor for AccessPointAnimationView(0);
  v7 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v9 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v149 = &v139 - v11;
  v158 = sub_100002B38(&qword_1001312A0, &qword_1000ED6F0);
  v12 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v159 = &v139 - v13;
  v140 = type metadata accessor for AccessPointUseCase();
  v144 = *(v140 - 8);
  v14 = *(v144 + 64);
  __chkstk_darwin(v140);
  v156 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v155 = &v139 - v17;
  v146 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  v18 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v147 = &v139 - v19;
  v20 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v148 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v157 = &v139 - v24;
  __chkstk_darwin(v25);
  v164 = &v139 - v26;
  v27 = type metadata accessor for AccessPointAnchoring();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v150 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v165 = &v139 - v32;
  __chkstk_darwin(v33);
  v142 = &v139 - v34;
  __chkstk_darwin(v35);
  v163 = &v139 - v36;
  v168 = type metadata accessor for AccessPointContainer();
  v37 = *(v168 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v168);
  v141 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v167 = &v139 - v41;
  __chkstk_darwin(v42);
  v44 = &v139 - v43;
  v166 = type metadata accessor for AccessPointShaderTransitionView(0);
  v45 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v47 = &v139 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v143 = &v139 - v49;
  result = [objc_opt_self() shared];
  if (result)
  {
    v51 = result;
    v52 = [result accessPointCustomTransition];

    v153 = v37;
    v53 = *(v37 + 16);
    v54 = (v28 + 16);
    v162 = v28;
    v152 = v53;
    v151 = v28 + 16;
    if (v52)
    {
      v53(v44, v154, v168);
      v55 = type metadata accessor for AccessPointPageView();
      v56 = *v54;
      (*v54)(v163, a2 + v55[8], v27);
      sub_10009FF04(v164);
      v57 = *(a2 + v55[11]);
      v58 = *(a2 + v55[13]);
      *v47 = 0;
      type metadata accessor for RemoteAlertAccessPointContext(0);
      sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);

      *(v47 + 1) = Environment.init<A>(_:)();
      v47[16] = v59 & 1;
      *(v47 + 24) = xmmword_1000ED5C0;
      LOBYTE(v169) = 0;
      State.init(wrappedValue:)();
      v60 = *(&v172 + 1);
      v47[40] = v172;
      *(v47 + 6) = v60;
      *&v169 = 0;
      State.init(wrappedValue:)();
      *(v47 + 56) = v172;
      LOBYTE(v169) = 0;
      State.init(wrappedValue:)();
      v61 = *(&v172 + 1);
      v47[72] = v172;
      *(v47 + 10) = v61;
      LOBYTE(v169) = 0;
      State.init(wrappedValue:)();
      v62 = *(&v172 + 1);
      v47[88] = v172;
      *(v47 + 12) = v62;
      type metadata accessor for CGPoint(0);
      v169 = 0uLL;
      State.init(wrappedValue:)();
      v63 = v173;
      *(v47 + 104) = v172;
      *(v47 + 15) = v63;
      LOBYTE(v169) = 0;
      State.init(wrappedValue:)();
      v64 = *(&v172 + 1);
      v47[128] = v172;
      *(v47 + 17) = v64;
      v65 = v27;
      v66 = v166;
      v67 = *(v166 + 64);
      v68 = type metadata accessor for Game();
      v69 = *(*(v68 - 8) + 56);
      LODWORD(v167) = 1;
      v69(&v47[v67], 1, 1, v68);
      v152(&v47[v66[17]], v44, v168);
      sub_1000A138C(v164, &v47[v67]);
      *&v47[v66[18]] = v57;
      *&v47[v66[19]] = v58;
      v70 = v66[15];
      v71 = v65;
      v72 = &v47[v70];
      (v56)(&v47[v70], v163, v65);
      v73 = v146;
      *&v72[*(v146 + 28)] = 0;
      AccessPointContainer.useCase.getter();
      v74 = v144;
      v75 = v140;
      (*(v144 + 104))(v156, enum case for AccessPointUseCase.accessPointOnly(_:), v140);
      sub_1000A13FC(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v172 != v169)
      {
        LODWORD(v167) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v76 = *(v74 + 8);
      v76(v156, v75);
      v76(v155, v75);
      sub_100005688(v164, &qword_100132410, &unk_1000E9F30);
      (*(v153 + 8))(v44, v168);

      v77 = v162;
      v78 = v142;
      if (v167)
      {
        v79 = *(v162 + 32);
        v79(v142, v163, v71);
      }

      else
      {
        (*(v162 + 8))(v163, v71);
        (*(v77 + 104))(v78, enum case for AccessPointAnchoring.topCentered(_:), v71);
        v79 = *(v77 + 32);
      }

      v126 = v147;
      *&v147[*(v73 + 28)] = 0;
      v79(v126, v78, v71);
      sub_1000A1444(v126, &v47[*(v166 + 56)]);
      v127 = v47;
      v128 = v143;
      sub_1000A14B4(v127, v143, type metadata accessor for AccessPointShaderTransitionView);
      sub_1000A151C(v128, v159, type metadata accessor for AccessPointShaderTransitionView);
      swift_storeEnumTagMultiPayload();
      sub_1000A13FC(&qword_100131268, type metadata accessor for AccessPointShaderTransitionView);
      sub_1000A13FC(&qword_100131270, type metadata accessor for AccessPointAnimationView);
      _ConditionalContent<>.init(storage:)();
      v129 = type metadata accessor for AccessPointShaderTransitionView;
    }

    else
    {
      v53(v167, v154, v168);
      v80 = type metadata accessor for AccessPointPageView();
      v81 = a2 + v80[8];
      v163 = *v54;
      (v163)(v165, v81, v27);
      v82 = v157;
      sub_10009FF04(v157);
      v83 = *(a2 + v80[11]);
      v84 = *(a2 + v80[13]);
      *v9 = 0;
      type metadata accessor for RemoteAlertAccessPointContext(0);
      sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
      v164 = v27;
      v156 = v83;

      *(v9 + 1) = Environment.init<A>(_:)();
      v9[16] = v85 & 1;
      v86 = v160;
      v87 = *(v160 + 24);
      *&v9[v87] = swift_getKeyPath();
      sub_100002B38(&qword_100132570, &unk_1000E9C70);
      swift_storeEnumTagMultiPayload();
      v88 = &v9[v86[8]];
      LOBYTE(v169) = 0;
      State.init(wrappedValue:)();
      v89 = *(&v172 + 1);
      *v88 = v172;
      *(v88 + 1) = v89;
      v90 = &v9[v86[9]];
      if (qword_10012CB70 != -1)
      {
        swift_once();
      }

      v91 = qword_100135BA8;
      swift_getKeyPath();
      *&v172 = v91;
      sub_1000A13FC(&qword_10012DC68, type metadata accessor for GameModeNotifier);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LOBYTE(v169) = *(v91 + 16);
      State.init(wrappedValue:)();
      v92 = *(&v172 + 1);
      *v90 = v172;
      *(v90 + 1) = v92;
      v93 = &v9[v86[10]];
      *&v169 = 0x3FF0000000000000;
      State.init(wrappedValue:)();
      v94 = *(&v172 + 1);
      *v93 = v172;
      *(v93 + 1) = v94;
      v95 = v86[11];
      v96 = type metadata accessor for GameOverlayDashboardVisibilityMonitor();
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      *&v9[v95] = GameOverlayDashboardVisibilityMonitor.init()();
      v99 = v86[12];
      v100 = type metadata accessor for Game();
      v101 = *(v100 - 8);
      (*(v101 + 56))(&v9[v99], 1, 1, v100);
      v102 = &v9[v86[15]];
      v103 = type metadata accessor for AccessPointHighlight();
      v104 = v145;
      (*(*(v103 - 8) + 56))(v145, 1, 1, v103);
      static AccessPointHighlight.cornerRadii(highlight:)();
      v106 = v105;
      v108 = v107;
      v110 = v109;
      v112 = v111;
      sub_100005688(v104, &qword_10012DC78, &unk_1000E9E50);
      *&v169 = v106;
      *(&v169 + 1) = v108;
      v170 = v110;
      v171 = v112;
      State.init(wrappedValue:)();
      v113 = v174;
      v114 = v173;
      *v102 = v172;
      *(v102 + 1) = v114;
      *(v102 + 4) = v113;
      sub_1000A138C(v82, &v9[v99]);
      *&v9[v86[13]] = v156;
      *&v9[v86[14]] = v84;
      v115 = v141;
      v152(v141, v167, v168);
      v116 = v150;
      (v163)(v150, v165, v164);
      v117 = type metadata accessor for AccessPointModel(0);
      v118 = *(v117 + 48);
      v119 = *(v117 + 52);
      swift_allocObject();
      v120 = sub_10001651C(v115, v116);
      v121 = &v9[v86[7]];
      *&v169 = v120;
      State.init(wrappedValue:)();
      v122 = v172;
      *v121 = v172;
      v172 = v122;
      sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
      State.wrappedValue.getter();
      v123 = v148;
      sub_1000035B4(v82, v148, &qword_100132410, &unk_1000E9F30);
      if ((*(v101 + 48))(v123, 1, v100) == 1)
      {
        sub_100005688(v123, &qword_100132410, &unk_1000E9F30);
        v124 = 0;
        v125 = 0;
      }

      else
      {
        v130 = Game.bundleID.getter();
        v132 = v131;
        (*(v101 + 8))(v123, v100);
        v125 = v132;
        v124 = v130;
      }

      v133 = v153;
      sub_1000160D4(v124, v125);

      v134 = *(AccessPointContainer.items.getter() + 16);

      v135 = v164;
      v136 = v168;
      v137 = v157;
      if (v134 >= 2)
      {
        v172 = v122;
        State.wrappedValue.getter();
        v138 = v150;
        (*(v162 + 104))(v150, enum case for AccessPointAnchoring.topCentered(_:), v135);
        sub_10001590C(v138);
      }

      sub_100005688(v137, &qword_100132410, &unk_1000E9F30);
      (*(v162 + 8))(v165, v135);
      (*(v133 + 8))(v167, v136);
      v128 = v149;
      sub_1000A14B4(v9, v149, type metadata accessor for AccessPointAnimationView);
      sub_1000A151C(v128, v159, type metadata accessor for AccessPointAnimationView);
      swift_storeEnumTagMultiPayload();
      sub_1000A13FC(&qword_100131268, type metadata accessor for AccessPointShaderTransitionView);
      sub_1000A13FC(&qword_100131270, type metadata accessor for AccessPointAnimationView);
      _ConditionalContent<>.init(storage:)();
      v129 = type metadata accessor for AccessPointAnimationView;
    }

    return sub_1000A1584(v128, v129);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009FF04@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for InGameBannerRequiredData();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_1001312A8, &qword_1000ED760);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for InGameBannerPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002B38(&qword_1001312B0, &qword_1000ED768);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for AccessPointPageIntent();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E8A8(v1 + 16, v38);
  sub_100002B38(&qword_1001312B8, &unk_1000ED770);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v24(v17, 0, 1, v18);
    (*(v19 + 32))(v22, v17, v18);
    v25 = v37;
    AccessPointPageIntent.game.getter();
    (*(v19 + 8))(v22, v18);
    v26 = type metadata accessor for Game();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v28 = v37;
    v24(v17, 1, 1, v18);
    sub_100005688(v17, &qword_1001312B0, &qword_1000ED768);
    sub_10002E8A8(v1 + 16, v38);
    v29 = swift_dynamicCast();
    v30 = *(v10 + 56);
    if (v29)
    {
      v30(v8, 0, 1, v9);
      (*(v10 + 32))(v13, v8, v9);
      v31 = v34;
      InGameBannerPageIntent.requiredData.getter();
      InGameBannerRequiredData.game.getter();
      (*(v35 + 8))(v31, v36);
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      v30(v8, 1, 1, v9);
      sub_100005688(v8, &qword_1001312A8, &qword_1000ED760);
      v32 = type metadata accessor for Game();
      return (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    }
  }
}

void sub_1000A0394()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100011F80(v0, qword_100135C88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "AccessPointContainer did not contain any items to show", v2, 2u);
  }
}

uint64_t sub_1000A047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *(*(sub_100002B38(&qword_10012DC30, &qword_1000EEC90) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for EnvironmentValues();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[14] = v12;
  v6[15] = v11;

  return _swift_task_switch(sub_1000A05AC, v12, v11);
}

uint64_t sub_1000A05AC()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = qword_100135CD8;
  v0[16] = qword_100135CD8;
  v3 = *v1;
  v4 = *(v1 + 8);

  if ((v4 & 1) == 0)
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = v0[5];
  }

  v0[17] = v3;

  return _swift_task_switch(sub_1000A0700, v2, 0);
}

uint64_t sub_1000A0700()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  swift_beginAccess();
  sub_1000E0F14(v5, v4, v3);
  sub_100005688(v3, &qword_10012DC30, &qword_1000EEC90);
  swift_endAccess();

  v6 = v0[14];
  v7 = v0[15];

  return _swift_task_switch(sub_1000A07C8, v6, v7);
}

uint64_t sub_1000A07C8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000A08D4, v7, v6);
}

uint64_t sub_1000A08D4()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 56) = qword_100135CD8;

  return _swift_task_switch(sub_1000A096C, v1, 0);
}

uint64_t sub_1000A096C()
{
  v1 = v0[7];
  sub_1000C88DC(v0[2], v0[3]);
  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_1000268C8, v2, v3);
}

uint64_t sub_1000A09D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A0AC8, v9, v8);
}

uint64_t sub_1000A0AC8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);

  if ((v2 & 1) == 0)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 16);
  }

  swift_getKeyPath();
  *(v0 + 24) = v3;
  sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong invalidate];
  }

  v9 = *(v0 + 64);
  **(v0 + 32) = Strong == 0;

  v10 = *(v0 + 8);

  return v10();
}

void sub_1000A0C94()
{
  v0 = *(*(type metadata accessor for AccessPointPageView() - 8) + 80);

  sub_10009DA04();
}

uint64_t sub_1000A0D2C()
{
  v1 = type metadata accessor for AccessPointPageView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  sub_10002E6CC(v3 + 2);
  v5 = v3[8];

  v6 = v1[7];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for AccessPointAnchoring();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = *(v3 + v1[9] + 8);

  v11 = (v3 + v1[10]);
  if (v11[3])
  {
    sub_10002E6CC(v11);
  }

  v12 = *(v3 + v1[11]);

  v13 = *(v3 + v1[12] + 8);

  v14 = *(v3 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_1000A0EB8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointPageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009DB60(a1, v6, a2);
}

unint64_t sub_1000A0F38()
{
  result = qword_100131220;
  if (!qword_100131220)
  {
    sub_100005144(&qword_100131208, &qword_1000ED680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131220);
  }

  return result;
}

unint64_t sub_1000A0F9C()
{
  result = qword_100131228;
  if (!qword_100131228)
  {
    sub_100005144(&qword_100131218, &qword_1000ED690);
    sub_1000A1028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131228);
  }

  return result;
}

unint64_t sub_1000A1028()
{
  result = qword_100131230;
  if (!qword_100131230)
  {
    sub_100005144(&qword_100131238, &qword_1000ED698);
    sub_100005144(&qword_100131240, &qword_1000ED6A0);
    sub_100005144(&qword_100131248, &qword_1000ED6A8);
    sub_1000A1134();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131230);
  }

  return result;
}

unint64_t sub_1000A1134()
{
  result = qword_100131250;
  if (!qword_100131250)
  {
    sub_100005144(&qword_100131248, &qword_1000ED6A8);
    sub_1000A11B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131250);
  }

  return result;
}

unint64_t sub_1000A11B8()
{
  result = qword_100131258;
  if (!qword_100131258)
  {
    sub_100005144(&qword_100131260, &qword_1000ED6B0);
    sub_1000A13FC(&qword_100131268, type metadata accessor for AccessPointShaderTransitionView);
    sub_1000A13FC(&qword_100131270, type metadata accessor for AccessPointAnimationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131258);
  }

  return result;
}

uint64_t sub_1000A12A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100131238, &qword_1000ED698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1314(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131238, &qword_1000ED698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A138C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A13FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A1444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A14B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A151C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A1584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A15E4()
{
  v1 = type metadata accessor for AccessPointPageView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  sub_10002E6CC((v0 + v2 + 16));
  v7 = *(v0 + v2 + 64);

  v8 = v1[7];
  v9 = type metadata accessor for MetricsPipeline();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for AccessPointAnchoring();
  (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  v12 = *(v0 + v2 + v1[9] + 8);

  v13 = (v0 + v2 + v1[10]);
  if (v13[3])
  {
    sub_10002E6CC(v13);
  }

  v14 = *(v5 + v1[11]);

  v15 = *(v5 + v1[12] + 8);

  v16 = *(v5 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_1000A1778(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointPageView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_1000A09D4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000A1868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1000A18A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000A083C(a1, v4, v5, v7, v6);
}

void sub_1000A1968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100002B38(&qword_1001312C0, &qword_1000ED7F8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1000A1A6C()
{
  v1 = type metadata accessor for AccessPointPageView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = *(v0 + v2);

  sub_10002E6CC((v0 + v2 + 16));
  v8 = *(v0 + v2 + 64);

  v9 = v1[7];
  v10 = type metadata accessor for MetricsPipeline();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  v11 = v1[8];
  v12 = type metadata accessor for AccessPointAnchoring();
  (*(*(v12 - 8) + 8))(v0 + v2 + v11, v12);
  v13 = *(v0 + v2 + v1[9] + 8);

  v14 = (v0 + v2 + v1[10]);
  if (v14[3])
  {
    sub_10002E6CC(v14);
  }

  v15 = *(v6 + v1[11]);

  v16 = *(v6 + v1[12] + 8);

  v17 = *(v6 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_1000A1C08(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointPageView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014BAC;

  return sub_1000A047C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000A1D14()
{
  sub_100005144(&qword_100131208, &qword_1000ED680);
  sub_100005144(&qword_100131218, &qword_1000ED690);
  sub_1000A0F38();
  sub_1000A0F9C();
  sub_1000A13FC(&qword_100131278, &type metadata accessor for AccessPointContainer);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A1E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v55 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v44 - v10;
  v11 = type metadata accessor for DashboardOverlayView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_100002B38(&qword_1001313B8, &unk_1000ED958);
  v19 = *(*(v18 - 1) + 64);
  __chkstk_darwin(v18);
  v21 = (&v44 - v20);
  v22 = a1[1];
  v47 = *a1;
  v45 = v22;
  sub_1000AC6F0(a1, v17, type metadata accessor for DashboardOverlayView);
  v23 = *(v12 + 80);
  v24 = (v23 + 16) & ~v23;
  v46 = swift_allocObject();
  v51 = v17;
  sub_1000AB7F8(v17, v46 + v24, type metadata accessor for DashboardOverlayView);
  v54 = a1;
  sub_1000AC6F0(a1, v14, type metadata accessor for DashboardOverlayView);
  v48 = v23;
  v25 = swift_allocObject();
  sub_1000AB7F8(v14, v25 + v24, type metadata accessor for DashboardOverlayView);
  v26 = objc_opt_self();
  v27 = v45;

  v28 = [v26 standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  v29 = (v21 + v18[14]);
  *v29 = v47;
  v29[1] = v27;
  v30 = v46;
  *v21 = sub_1000AB2FC;
  v21[1] = v30;
  v21[2] = sub_1000482C4;
  v21[3] = 0;
  v21[4] = sub_1000AB600;
  v21[5] = v25;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v31 = *(qword_100135CF0 + 24);
  type metadata accessor for OverlayBootstrap();
  sub_1000AB720(&qword_10012E450, type metadata accessor for OverlayBootstrap);

  v32 = v50;
  Bindable<A>.init(wrappedValue:)();
  v33 = v53;
  Bindable.wrappedValue.getter();
  v34 = *(v59 + 16);

  *(v21 + v18[13]) = v34;
  v35 = v49;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v36 = v21 + v18[11];
  Bindable<A>.subscript.getter();

  v37 = *(v52 + 8);
  v37(v35, v33);
  Bindable.wrappedValue.getter();
  v38 = v21 + v18[12];
  sub_1000BB51C();

  v37(v32, v33);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v39 = v55;
  dispatch thunk of ZoomCoordinator.dashboardVisibility.getter();

  v40 = v51;
  sub_1000AC6F0(v54, v51, type metadata accessor for DashboardOverlayView);
  v41 = swift_allocObject();
  sub_1000AB7F8(v40, v41 + v24, type metadata accessor for DashboardOverlayView);
  sub_1000057D8(&qword_1001313C0, &qword_1001313B8, &unk_1000ED958);
  sub_1000AB720(&qword_1001313C8, &type metadata accessor for ZoomCoordinator.DashboardVisibilityState);
  v42 = v58;
  View.onChange<A>(of:initial:_:)();

  (*(v57 + 8))(v39, v42);
  return sub_100005688(v21, &qword_1001313B8, &unk_1000ED958);
}

uint64_t sub_1000A2480@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = sub_100002B38(&qword_1001313D8, &qword_1000ED998);
  sub_1000A2640(a3, a1, a2, (a4 + *(v8 + 44)));
  v9 = static Alignment.center.getter();
  v11 = v10;
  v12 = static Color.clear.getter();
  v13 = static Alignment.center.getter();
  v15 = v14;
  v16 = static SafeAreaRegions.all.getter();
  v17 = static Edge.Set.all.getter();
  v18 = (a3 + *(type metadata accessor for DashboardOverlayView(0) + 52));
  v19 = *v18;
  v20 = v18[1];
  v32 = v19;
  v33 = v20;
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.getter();
  v21 = 1.0 - *&v27;
  *&v27 = v12;
  *(&v27 + 1) = sub_1000A45FC;
  *&v28 = 0;
  *(&v28 + 1) = v13;
  *&v29 = v15;
  *(&v29 + 1) = v16;
  LOBYTE(v30) = v17;
  *(&v30 + 1) = v21;
  *&v31 = v9;
  *(&v31 + 1) = v11;
  v22 = (a4 + *(sub_100002B38(&qword_1001313E0, &qword_1000ED9A0) + 36));
  v23 = v30;
  v22[2] = v29;
  v22[3] = v23;
  v22[4] = v31;
  v24 = v28;
  *v22 = v27;
  v22[1] = v24;
  v32 = v12;
  v33 = sub_1000A45FC;
  v34 = 0;
  v35 = v13;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v21;
  v40 = v9;
  v41 = v11;
  sub_1000035B4(&v27, &v26, &qword_1001313E8, &qword_1000ED9A8);
  return sub_100005688(&v32, &qword_1001313E8, &qword_1000ED9A8);
}

uint64_t sub_1000A2640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v128 = a3;
  v143 = a4;
  v6 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v141 = v112 - v8;
  v9 = type metadata accessor for DashboardOverlayView(0);
  v121 = *(v9 - 8);
  v122 = *(v121 + 64);
  __chkstk_darwin(v9);
  v119 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for BootstrapResult();
  v116 = *(v117 - 8);
  v118 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v114 = *(v120 - 8);
  v12 = *(v114 + 64);
  __chkstk_darwin(v120);
  v14 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ImpedimentFlowConfig();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v112[2] = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Dependency();
  v18 = *(v142 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v142);
  v21 = v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100002B38(&qword_1001313F0, &qword_1000ED9B0);
  v124 = *(v125 - 8);
  v22 = *(v124 + 64);
  __chkstk_darwin(v125);
  v113 = v112 - v23;
  v123 = sub_100002B38(&qword_1001313F8, &qword_1000ED9B8);
  v24 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v127 = v112 - v25;
  v126 = sub_100002B38(&qword_100131400, &qword_1000ED9C0);
  v26 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v131 = v112 - v27;
  v130 = sub_100002B38(&qword_100131408, &qword_1000ED9C8);
  v28 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v133 = v112 - v29;
  v132 = sub_100002B38(&qword_100131410, &qword_1000ED9D0);
  v30 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v136 = v112 - v31;
  v135 = sub_100002B38(&qword_100131418, &qword_1000ED9D8);
  v32 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v138 = v112 - v33;
  v137 = sub_100002B38(&qword_100131420, &unk_1000ED9E0);
  v34 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v140 = v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v134 = v112 - v37;
  __chkstk_darwin(v38);
  v139 = v112 - v39;
  v40 = objc_opt_self();
  v41 = [v40 currentDevice];
  v129 = [v41 userInterfaceIdiom];

  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v42 = (a1 + *(v9 + 48));
  v44 = *v42;
  v43 = v42[1];
  *&v150 = v44;
  *(&v150 + 1) = v43;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v112[1] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v18 + 8))(v21, v142);
  v142 = v9;
  v45 = *(v9 + 40);
  v46 = a1;
  v112[0] = swift_unknownObjectWeakLoadStrong();
  (*(v114 + 104))(v14, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v120);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v47 = v116;
  v48 = v115;
  v49 = v117;
  (*(v116 + 16))(v115, a2, v117);
  v120 = v46;
  v50 = v119;
  sub_1000AC6F0(v46, v119, type metadata accessor for DashboardOverlayView);
  v51 = v47;
  v52 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v53 = (v118 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v121 + 80) + v53 + 8) & ~*(v121 + 80);
  v55 = swift_allocObject();
  (*(v51 + 32))(v55 + v52, v48, v49);
  v56 = v128;
  *(v55 + v53) = v128;
  v57 = v113;
  v58 = v40;
  sub_1000AB7F8(v50, v55 + v54, type metadata accessor for DashboardOverlayView);
  type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  sub_1000AB720(&qword_10012E638, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v59 = v56;
  ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
  v60 = [v40 currentDevice];
  v61 = [v60 userInterfaceIdiom];

  if (v61)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v62 = v127;
  (*(v124 + 32))(v127, v57, v125);
  v63 = (v62 + *(v123 + 36));
  v64 = v148;
  *v63 = v147;
  v63[1] = v64;
  v63[2] = v149;
  v65 = [v58 currentDevice];
  [v65 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v66 = v131;
  sub_100014830(v62, v131, &qword_1001313F8, &qword_1000ED9B8);
  v67 = (v66 + *(v126 + 36));
  v68 = v155;
  v67[4] = v154;
  v67[5] = v68;
  v67[6] = v156;
  v69 = v151;
  *v67 = v150;
  v67[1] = v69;
  v70 = v153;
  v67[2] = v152;
  v67[3] = v70;
  v71 = static Edge.Set.trailing.getter();
  v72 = [v58 currentDevice];
  v73 = [v72 userInterfaceIdiom];

  v74 = v120;
  v75 = v142;
  v76 = v141;
  v77 = v133;
  if (v73)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.iPadTrailingPadding.getter();
  }

  EdgeInsets.init(_all:)();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  sub_100014830(v66, v77, &qword_100131400, &qword_1000ED9C0);
  v86 = v77 + *(v130 + 36);
  *v86 = v71;
  *(v86 + 8) = v79;
  *(v86 + 16) = v81;
  *(v86 + 24) = v83;
  *(v86 + 32) = v85;
  *(v86 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v88 = [v58 currentDevice];
  v89 = [v88 userInterfaceIdiom];

  if (v89)
  {
    v90 = enum case for UserInterfaceSizeClass.compact(_:);
    v91 = type metadata accessor for UserInterfaceSizeClass();
    v92 = *(v91 - 8);
    (*(v92 + 104))(v76, v90, v91);
    (*(v92 + 56))(v76, 0, 1, v91);
  }

  else
  {
    v93 = v74 + *(v75 + 56);
    sub_10007A224(v76);
  }

  v94 = v129 == 0;
  v95 = v129 != 0;
  v96 = v136;
  v97 = &v136[*(v132 + 36)];
  v98 = sub_100002B38(&qword_100131428, &qword_1000EDA20);
  sub_100014830(v76, v97 + *(v98 + 28), &qword_100132550, &qword_1000EC170);
  *v97 = KeyPath;
  sub_100014830(v77, v96, &qword_100131408, &qword_1000ED9C8);
  v99 = (v74 + *(v75 + 52));
  v101 = v99[1];
  v145 = *v99;
  v100 = v145;
  v146 = v101;
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.getter();
  v102 = 1.0 - v144;
  v103 = v138;
  sub_100014830(v96, v138, &qword_100131410, &qword_1000ED9D0);
  *(v103 + *(v135 + 36)) = v102;
  v145 = v100;
  v146 = v101;
  State.wrappedValue.getter();
  v104 = v144 * -50.0;
  v105 = v134;
  sub_100014830(v103, v134, &qword_100131418, &qword_1000ED9D8);
  v106 = v105 + *(v137 + 36);
  *v106 = 0;
  *(v106 + 8) = v104;
  v107 = v139;
  sub_100014830(v105, v139, &qword_100131420, &unk_1000ED9E0);
  v108 = v140;
  sub_1000035B4(v107, v140, &qword_100131420, &unk_1000ED9E0);
  v109 = v143;
  *v143 = 0;
  *(v109 + 8) = v95;
  *(v109 + 9) = v94;
  v110 = sub_100002B38(&qword_100131430, &qword_1000EDA28);
  sub_1000035B4(v108, v109 + *(v110 + 48), &qword_100131420, &unk_1000ED9E0);
  sub_100005688(v107, &qword_100131420, &unk_1000ED9E0);
  return sub_100005688(v108, &qword_100131420, &unk_1000ED9E0);
}

id sub_1000A34EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v170 = a4;
  v178 = a1;
  v179 = a3;
  v181 = a2;
  v183 = a6;
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v154 = &v148 - v9;
  v10 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v172 = &v148 - v12;
  v176 = type metadata accessor for StoreTab();
  v173 = *(v176 - 8);
  v13 = *(v173 + 64);
  __chkstk_darwin(v176);
  v150 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v157 = &v148 - v16;
  __chkstk_darwin(v17);
  v152 = &v148 - v18;
  __chkstk_darwin(v19);
  v159 = &v148 - v20;
  __chkstk_darwin(v21);
  v160 = &v148 - v22;
  v23 = type metadata accessor for StoreTab.Identifier();
  v174 = *(v23 - 8);
  v175 = v23;
  v24 = *(v174 + 64);
  __chkstk_darwin(v23);
  v153 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v171 = &v148 - v27;
  __chkstk_darwin(v28);
  v155 = &v148 - v29;
  __chkstk_darwin(v30);
  v182 = &v148 - v31;
  v32 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v149 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v151 = &v148 - v36;
  __chkstk_darwin(v37);
  v39 = &v148 - v38;
  v40 = type metadata accessor for CommonOnboardingStatus();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v148 - v47;
  v49 = type metadata accessor for BootstrapResult();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v148 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v50;
  v55 = *(v50 + 16);
  v56 = v179;
  v179 = v57;
  v167 = (v50 + 16);
  v166 = v55;
  (v55)(v54, v56, v52);
  v58 = a5[1];
  v164 = *a5;
  v59 = v178;
  v178 = v48;
  sub_1000035B4(v59, v48, &qword_10012E478, &unk_1000EA8E0);
  v161 = v41;
  v60 = *(v41 + 16);
  v61 = v181;
  v180 = v44;
  v181 = v40;
  v169 = v41 + 16;
  v168 = v60;
  v60(v44, v61, v40);
  v62 = objc_opt_self();
  v165 = v58;

  result = [v62 defaultWorkspace];
  if (!result)
  {
    goto LABEL_23;
  }

  v64 = result;
  v65 = type metadata accessor for DashboardOverlayView(0);
  v66 = (a5 + v65[11]);
  v67 = *v66;
  v68 = v66[1];
  v69 = String._bridgeToObjectiveC()();
  v163 = [v64 applicationIsInstalled:v69];

  sub_1000035B4(a5 + v65[5], v39, &qword_10012E4B0, qword_1000EA960);
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v70 = *(a5 + v65[7]);
  sub_1000035B4(a5 + v65[9], v187, &unk_100131120, &unk_1000EAAF0);
  v71 = (a5 + v65[6]);
  v73 = *v71;
  v72 = v71[1];
  v74 = v65[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  v75 = v39;
  v76 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v77 = v183;
  v78 = v183 + v76[11];
  *(v78 + 32) = 0;
  *v78 = 0u;
  *(v78 + 16) = 0u;
  v79 = v76[12];
  v162 = v76[13];
  v80 = (v77 + v79);
  swift_unknownObjectWeakInit();
  v156 = v54;
  v81 = v54;
  v82 = v76;
  v166(v77, v81, v179);
  v83 = v76[5];
  v84 = v170;
  *(v77 + v83) = v170;
  v85 = (v77 + v82[6]);
  v86 = v165;
  *v85 = v164;
  v85[1] = v86;
  sub_1000035B4(v178, v77 + v82[7], &qword_10012E478, &unk_1000EA8E0);
  v168(v77 + v82[8], v180, v181);
  *(v77 + v82[9]) = v163;
  sub_1000035B4(v75, v77 + v82[10], &qword_10012E4B0, qword_1000EA960);
  sub_10000519C(v73);
  v87 = v84;
  sub_1000AD1EC(v187, v78, &unk_100131120, &unk_1000EAAF0);
  *v80 = v73;
  v80[1] = v72;
  swift_unknownObjectWeakAssign();
  v88 = v176;
  v89 = v75;
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {
    static StoreTab.Identifier.overlaySystemSettingsPage.getter();
    v100 = type metadata accessor for URL();
    (*(*(v100 - 8) + 56))(v172, 1, 1, v100);
    sub_1000D9414(_swiftEmptyArrayStorage);
    v101 = v160;
    StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
    sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
    v102 = v173;
    v103 = *(v173 + 72);
    v104 = (*(v173 + 80) + 32) & ~*(v173 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1000EA7D0;
    v106 = *(v102 + 16);
    v106(v105 + v104, v101, v88);
    v107 = (v77 + v82[15]);
    v184 = v105;
    sub_100002B38(&qword_10012E658, &qword_1000EAB00);
    State.init(wrappedValue:)();
    v108 = v186;
    *v107 = v185;
    v107[1] = v108;
    v109 = v159;
    v106(v159, v101, v88);
    v110 = v82[16];
    v106(v152, v109, v88);
    State.init(wrappedValue:)();
    v111 = *(v102 + 8);
    v111(v109, v88);
    v111(v101, v88);
    v96 = v174;
    v112 = v175;
    v114 = v181;
    v113 = v182;
    v116 = v178;
    v115 = v179;
    v117 = v156;
LABEL_20:
    BootstrapResult.objectGraph.getter();
    type metadata accessor for DismissDashboardNotifier();
    BaseObjectGraph.inject<A>(_:)();

    sub_100005688(v187, &unk_100131120, &unk_1000EAAF0);
    (*(v96 + 8))(v113, v112);
    sub_100005688(v89, &qword_10012E4B0, qword_1000EA960);
    (*(v161 + 8))(v180, v114);
    sub_100005688(v116, &qword_10012E478, &unk_1000EA8E0);
    result = (*(v158 + 8))(v117, v115);
    *(v183 + v82[14]) = v185;
    return result;
  }

  v170 = v82;
  v90 = (v77 + v82[15]);
  v184 = v70;
  v169 = v70;

  sub_100002B38(&qword_10012E658, &qword_1000EAB00);
  State.init(wrappedValue:)();
  v91 = v186;
  *v90 = v185;
  v90[1] = v91;
  v92 = v151;
  sub_1000035B4(v75, v151, &qword_10012E4B0, qword_1000EA960);
  v93 = type metadata accessor for GameDashboardDestination();
  v94 = *(v93 - 8);
  v95 = (*(v94 + 48))(v92, 1, v93);
  v96 = v174;
  v97 = v182;
  v98 = v155;
  v99 = v153;
  if (v95 != 1)
  {
    v118 = v149;
    sub_1000035B4(v92, v149, &qword_10012E4B0, qword_1000EA960);
    v119 = (*(v94 + 88))(v118, v93);
    if (v119 == enum case for GameDashboardDestination.friendInvites(_:))
    {
      static StoreTab.Identifier.overlaySocialPage.getter();
      goto LABEL_10;
    }

    if (v119 == enum case for GameDashboardDestination.systemSettings(_:))
    {
      static StoreTab.Identifier.overlaySystemSettingsPage.getter();
      goto LABEL_10;
    }

    (*(v94 + 8))(v118, v93);
  }

  (*(v96 + 16))(v98, v97, v175);
LABEL_10:
  v148 = v75;
  sub_100005688(v92, &qword_10012E4B0, qword_1000EA960);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  sub_100011F80(v120, qword_100135C88);
  v121 = *(v96 + 16);
  v112 = v175;
  v121(v99, v98, v175);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v167 = v121;
    v126 = v125;
    v185 = v125;
    *v124 = 136315138;
    v127 = StoreTab.Identifier.rawValue.getter();
    v128 = v99;
    v130 = v129;
    v168 = *(v96 + 8);
    (v168)(v128, v112);
    v131 = sub_1000BA5C8(v127, v130, &v185);

    *(v124 + 4) = v131;
    _os_log_impl(&_mh_execute_header, v122, v123, "OverlayContentView: initial tab set to %s", v124, 0xCu);
    sub_10002E6CC(v126);
    v121 = v167;
  }

  else
  {

    v168 = *(v96 + 8);
    (v168)(v99, v112);
  }

  v132 = v154;
  v121(v171, v98, v112);
  v133 = type metadata accessor for URL();
  (*(*(v133 - 8) + 56))(v172, 1, 1, v133);
  sub_1000D9414(_swiftEmptyArrayStorage);
  v134 = StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  __chkstk_darwin(v134);
  v135 = v169;
  sub_1000979E8(sub_10004DA04, v169, v132);
  v136 = v173;
  v137 = v176;
  if ((*(v173 + 48))(v132, 1, v176) != 1)
  {
    v143 = v150;
    (*(v136 + 32))(v150, v132, v137);
    v144 = *(v136 + 16);
    v145 = v160;
    v144(v160, v143, v137);
    v146 = v170[16];
    v144(v159, v145, v137);
    State.init(wrappedValue:)();
    v142 = *(v136 + 8);
    v142(v145, v137);
    v147 = v143;
    v98 = v155;
    v142(v147, v137);
    goto LABEL_19;
  }

  result = sub_100005688(v132, &qword_10012E650, &qword_1000EDA30);
  if (*(v135 + 16))
  {
    v138 = *(v136 + 16);
    v139 = v135 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v140 = v160;
    v138(v160, v139, v137);
    v141 = v170[16];
    v138(v159, v140, v137);
    State.init(wrappedValue:)();
    v142 = *(v136 + 8);
    v142(v140, v137);
LABEL_19:
    (v168)(v98, v112);
    v142(v157, v137);
    v114 = v181;
    v113 = v182;
    v116 = v178;
    v115 = v179;
    v117 = v156;
    v82 = v170;
    v89 = v148;
    goto LABEL_20;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000A45FC()
{
  v0 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  (*(v1 + 104))(v4, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v0);
  dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
}

uint64_t sub_1000A46E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v48 = a1;
  v5 = type metadata accessor for FallbackDashboardOverlayView(0);
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - v11;
  v14 = *a2;
  v13 = a2[1];
  v15 = type metadata accessor for DashboardOverlayView(0);
  v16 = *(a2 + v15[7]);
  sub_1000035B4(a2 + v15[9], v50, &unk_100131120, &unk_1000EAAF0);
  v17 = a2 + v15[5];
  v47 = v12;
  sub_1000035B4(v17, v12, &qword_10012E4B0, qword_1000EA960);
  v18 = v15[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = (a2 + v15[6]);
  v20 = *v19;
  v21 = v19[1];
  a3[3] = v5;
  a3[4] = sub_1000AB720(&qword_1001313D0, type metadata accessor for FallbackDashboardOverlayView);
  v22 = sub_100012854(a3);
  v23 = v8 + v5[8];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  v43 = v23;
  v44 = v5[10];
  swift_unknownObjectWeakInit();
  v41 = v14;
  *v8 = v14;
  v8[1] = v13;
  swift_bridgeObjectRetain_n();
  v46 = v16;

  v45 = v21;
  sub_10000519C(v20);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100011F80(v24, qword_100135C88);

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = v22;
    v28 = v27;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v30;
    *v28 = 136315394;
    if (v13)
    {
      v31 = v41;
    }

    else
    {
      v31 = 0;
    }

    if (!v13)
    {
      v13 = 0xE000000000000000;
    }

    v32 = v20;
    v33 = sub_1000BA5C8(v31, v13, &v49);

    *(v28 + 4) = v33;
    v20 = v32;
    *(v28 + 12) = 2112;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v34;
    *v29 = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "FallbackDashboardOverlayView: Initialized for gameBundleId: %s, error: %@", v28, 0x16u);
    sub_100005688(v29, &qword_100131110, &unk_1000EC870);

    sub_10002E6CC(v30);

    v22 = v40;
  }

  else
  {
  }

  *(v8 + v5[7]) = v46;
  sub_10003EF48(v50, v43);
  v35 = (v8 + v5[6]);
  v36 = v45;
  *v35 = v20;
  v35[1] = v36;
  sub_100014830(v47, v8 + v5[5], &qword_10012E4B0, qword_1000EA960);
  v37 = Strong;
  swift_unknownObjectWeakAssign();

  *(v8 + v5[9]) = v48;
  sub_1000AB7F8(v8, v22, type metadata accessor for FallbackDashboardOverlayView);
  return swift_errorRetain();
}

uint64_t sub_1000A4B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AnimationCompletionCriteria();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DashboardOverlayView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a2, v12, v15);
  LODWORD(a2) = (*(v13 + 88))(v17, v12);
  v18 = enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:);
  result = (*(v13 + 8))(v17, v12);
  if (a2 == v18)
  {
    v20 = static Animation.easeIn(duration:)();
    __chkstk_darwin(v20);
    *(&v23 - 2) = a3;
    sub_1000AC6F0(a3, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView);
    v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v22 = swift_allocObject();
    sub_1000AB7F8(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for DashboardOverlayView);
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v24 + 8))(v8, v25);
  }

  return result;
}

uint64_t sub_1000A4E5C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DashboardOverlayView(0) + 52));
  v3 = *v1;
  v4 = v1[1];
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_1000A4ED8()
{
  v0 = type metadata accessor for StoreTab.Identifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  StoreTab.identifier.getter();
  StoreTab.identifier.getter();
  sub_1000AB720(&qword_100130080, &type metadata accessor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11[2] == v11[0] && v11[3] == v11[1])
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

  return v8 & 1;
}

uint64_t sub_1000A50AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v140 = a1;
  v3 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v4 = (v1 + *(v3 + 60));
  v6 = *v4;
  v5 = v4[1];
  v149 = v6;
  v150 = v5;
  sub_100002B38(&qword_100131528, &qword_1000EDB90);
  v7 = State.wrappedValue.getter();
  v145 = v153;
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DashboardOverlayView.OverlayContentView;
  v147 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1000AC6F0(v2, v10, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v148 = *(v8 + 80);
  v11 = (v148 + 16) & ~v148;
  v143 = v11;
  v144 = swift_allocObject();
  v139 = type metadata accessor for DashboardOverlayView.OverlayContentView;
  sub_1000AB7F8(v10, v144 + v11, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v12 = sub_100002B38(&qword_100131530, &qword_1000EDB98);
  v137 = *(v12 - 8);
  v138 = v12;
  v13 = *(v137 + 64);
  __chkstk_darwin(v12);
  v136 = &v124 - v14;
  v15 = sub_100002B38(&qword_10012CC88, &unk_1000EDBA0);
  v134 = *(v15 - 8);
  v135 = v15;
  v16 = *(v134 + 64);
  __chkstk_darwin(v15);
  v142 = &v124 - v17;
  v133 = sub_100002B38(&qword_10012CC70, &unk_1000E8E70);
  v18 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v141 = (&v124 - v19);
  v131 = sub_100002B38(&qword_100131538, &qword_1000EDBB0);
  v20 = *(*(v131 - 1) + 64);
  __chkstk_darwin(v131);
  v132 = &v124 - v21;
  v22 = sub_100002B38(&qword_100131540, &qword_1000EDBB8);
  v23 = (v22 - 8);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = &v124 - v25;
  v27 = type metadata accessor for BootstrapResult();
  (*(*(v27 - 8) + 16))(v26, v2, v27);
  v28 = *(v2 + *(v3 + 20));
  sub_1000035B4(v2 + *(v3 + 28), &v26[v23[12]], &qword_10012E478, &unk_1000EA8E0);
  v29 = v23[14];
  v30 = sub_100002B38(&qword_100131548, &unk_1000EDBC0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v124 - v32;
  v34 = *(v3 + 64);
  v130 = v28;

  sub_100002B38(&qword_100131438, &qword_1000EDA38);
  State.projectedValue.getter();
  Binding.wrappedValue.getter();
  sub_100005688(v33, &qword_100131548, &unk_1000EDBC0);
  v35 = type metadata accessor for StoreTab();
  (*(*(v35 - 8) + 56))(&v26[v29], 0, 1, v35);
  v36 = *(v3 + 32);
  v37 = v23[16];
  v38 = type metadata accessor for CommonOnboardingStatus();
  v39 = (*(*(v38 - 8) + 16))(&v26[v37], v2 + v36, v38);
  __chkstk_darwin(v39);
  v40 = &v124 - v147;
  sub_1000AC6F0(v2, &v124 - v147, v146);
  v146 = v9;
  v41 = v143;
  v42 = swift_allocObject();
  sub_1000AB7F8(v40, v42 + v41, v139);
  v43 = &v26[v23[20]];
  v44 = sub_100002B38(&qword_10012E490, &qword_1000EA900);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v153 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  v47 = v150;
  *v43 = v149;
  *(v43 + 1) = v47;
  v48 = &v26[v23[21]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  *&v26[v23[11]] = v130;
  *&v26[v23[15]] = 0;
  v49 = &v26[v23[13]];
  v50 = v144;
  *v49 = v145;
  *(v49 + 1) = sub_1000AC75C;
  *(v49 + 2) = v50;
  v51 = &v26[v23[17]];
  *v51 = sub_1000ACADC;
  *(v51 + 1) = v42;
  v52 = &v26[v23[18]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = &v26[v23[19]];
  *v53 = 0;
  *(v53 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v139 = v3;
  v55 = *(v3 + 44);
  v147 = v2;
  sub_1000035B4(v2 + v55, &v149, &unk_100131120, &unk_1000EAAF0);
  v56 = v151;
  if (v151)
  {
    v57 = v152;
    sub_10002D754(&v149, v151);
    v58 = (*(v57 + 16))(v56, v57);
    v56 = v59;
    sub_10002E6CC(&v149);
  }

  else
  {
    sub_100005688(&v149, &unk_100131120, &unk_1000EAAF0);
    v58 = 0;
  }

  v60 = v148;
  v61 = v132;
  sub_100014830(v26, v132, &qword_100131540, &qword_1000EDBB8);
  v62 = (v61 + *(v131 + 9));
  *v62 = KeyPath;
  v62[1] = v58;
  v62[2] = v56;
  v63 = static Edge.Set.bottom.getter();
  v64 = [objc_opt_self() currentDevice];
  v65 = [v64 userInterfaceIdiom];

  v66 = v141;
  if (v65)
  {
    v63 = Edge.Set.init(rawValue:)();
  }

  v67 = static SafeAreaRegions.all.getter();
  v68 = sub_100014830(v61, v66, &qword_100131538, &qword_1000EDBB0);
  v130 = &v124;
  v69 = v66 + *(v133 + 36);
  *v69 = v67;
  *(v69 + 8) = v63;
  v70 = v146;
  __chkstk_darwin(v68);
  sub_1000AC6F0(v147, &v124 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v129 = type metadata accessor for MainActor();
  v71 = static MainActor.shared.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = &protocol witness table for MainActor;
  v131 = ((v60 + 32) & ~v60);
  sub_1000AB7F8(&v124 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), v131 + v72, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v73 = type metadata accessor for TaskPriority();
  v127 = &v124;
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v124 - v76;
  static TaskPriority.userInitiated.getter();
  v128 = sub_1000E13F8(2, 26, 4, 0);
  v133 = v73;
  v132 = v74;
  if (v128)
  {
    v125 = type metadata accessor for _TaskModifier2();
    v126 = &v124;
    v124 = *(v125 - 8);
    v78 = *(v124 + 64);
    __chkstk_darwin(v125);
    v80 = &v124 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    v149 = 0;
    v150 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v149 = 0xD000000000000035;
    v150 = 0x80000001000E7CC0;
    v153 = 415;
    v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v81);

    v83 = __chkstk_darwin(v82);
    (*(v74 + 16))(&v124 - v76, v77, v73, v83);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v74 + 8))(v77, v73);
    v84 = v142;
    sub_100014830(v141, v142, &qword_10012CC70, &unk_1000E8E70);
    v85 = sub_100002B38(&qword_10012CC78, &qword_1000EDC40);
    v86 = (*(v124 + 32))(v84 + *(v85 + 36), v80, v125);
  }

  else
  {
    v87 = sub_100002B38(&qword_10012CC80, &unk_1000E8E80);
    v88 = v142;
    v89 = (v142 + *(v87 + 36));
    v90 = type metadata accessor for _TaskModifier();
    (*(v74 + 32))(&v89[*(v90 + 20)], v77, v73);
    *v89 = &unk_1000EDC38;
    *(v89 + 1) = v72;
    v86 = sub_100014830(v66, v88, &qword_10012CC70, &unk_1000E8E70);
  }

  v91 = v146;
  __chkstk_darwin(v86);
  sub_1000AC6F0(v147, &v124 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v92 = static MainActor.shared.getter();
  v93 = v131;
  v94 = swift_allocObject();
  *(v94 + 16) = v92;
  *(v94 + 24) = &protocol witness table for MainActor;
  v95 = sub_1000AB7F8(&v124 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v93 + v94, type metadata accessor for DashboardOverlayView.OverlayContentView);
  __chkstk_darwin(v95);
  v96 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v124 - v96;
  static TaskPriority.userInitiated.getter();
  if (v128)
  {
    v129 = type metadata accessor for _TaskModifier2();
    v130 = &v124;
    v98 = *(v129 - 8);
    v99 = *(v98 + 64);
    __chkstk_darwin(v129);
    v141 = &v124;
    v101 = &v124 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    v149 = 0;
    v150 = 0xE000000000000000;
    v131 = &v124;
    _StringGuts.grow(_:)(17);

    v149 = 0xD000000000000035;
    v150 = 0x80000001000E7CC0;
    v153 = 418;
    v102._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v102);

    v104 = __chkstk_darwin(v103);
    v105 = v132;
    v106 = &v124 - v96;
    v107 = &v124 - v96;
    v108 = v133;
    (*(v132 + 16))(v106, v107, v133, v104);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v105 + 8))(v97, v108);
    v109 = v136;
    (*(v134 + 32))(v136, v142, v135);
    v110 = sub_100002B38(&qword_10012CC90, &qword_1000E8E90);
    (*(v98 + 32))(&v109[*(v110 + 36)], v101, v129);
  }

  else
  {
    v111 = sub_100002B38(&qword_10012CC98, &qword_1000E8E98);
    v109 = v136;
    v112 = &v136[*(v111 + 36)];
    v113 = type metadata accessor for _TaskModifier();
    (*(v132 + 32))(&v112[*(v113 + 20)], v97, v133);
    *v112 = &unk_1000EDC50;
    *(v112 + 1) = v94;
    (*(v134 + 32))(v109, v142, v135);
  }

  v114 = v147;
  v115 = *(v147 + *(v139 + 14));
  v116 = dispatch thunk of DismissDashboardNotifier.dismissalPublisher.getter();

  v118 = v146;
  __chkstk_darwin(v117);
  sub_1000AC6F0(v114, &v124 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v119 = v143;
  v120 = swift_allocObject();
  sub_1000AB7F8(&v124 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0), v120 + v119, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v121 = v140;
  (*(v137 + 32))(v140, v109, v138);
  result = sub_100002B38(&qword_100131550, &unk_1000EDC60);
  *(v121 + *(result + 52)) = v116;
  v123 = (v121 + *(result + 56));
  *v123 = sub_1000AD080;
  v123[1] = v120;
  return result;
}

uint64_t sub_1000A6158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v60[1] = a1;
  v78 = a3;
  v3 = type metadata accessor for FlowOrigin();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  __chkstk_darwin(v3);
  v77 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FlowAnimationBehavior();
  v71 = *(v73 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v73);
  v74 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  __chkstk_darwin(v8);
  v72 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v70 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v65 = v60 - v16;
  v17 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v64 = v60 - v19;
  v20 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v63 = v60 - v22;
  v61 = type metadata accessor for FlowPage();
  v23 = *(v61 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v61);
  v26 = v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StoreTab.Identifier();
  v62 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v60 - v33;
  StoreTab.identifier.getter();
  v35 = StoreTab.Identifier.rawValue.getter();
  v37 = v36;
  v38 = *(v28 + 8);
  v39 = v34;
  v40 = v65;
  v38(v39, v27);
  *&v79 = v35;
  *(&v79 + 1) = v37;
  v41 = v64;
  AnyHashable.init<A>(_:)();
  v42 = *(v23 + 104);
  v66 = v26;
  v43 = v63;
  v42(v26, enum case for FlowPage.games(_:), v61);
  v44 = type metadata accessor for URL();
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
  v45 = type metadata accessor for ReferrerData();
  (*(*(v45 - 8) + 56))(v41, 1, 1, v45);
  StoreTab.identifier.getter();
  v46 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v47 = (v67 + v46[6]);
  v48 = *v47;
  v49 = v47[1];
  v50 = v46[8];
  v51 = *(v67 + v46[9]);
  v52 = v67 + v46[7];
  StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();
  v38(v31, v62);
  v53 = type metadata accessor for FlowDestination();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v40, 1, v53) == 1)
  {
    sub_100005688(v40, &qword_10012E4A0, &unk_1000EA940);
    v79 = 0u;
    v80 = 0u;
  }

  else
  {
    *(&v80 + 1) = v53;
    v55 = sub_100012854(&v79);
    (*(v54 + 32))(v55, v40, v53);
  }

  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v68 + 104))(v72, enum case for FlowPresentationContext.infer(_:), v69);
  (*(v71 + 104))(v74, enum case for FlowAnimationBehavior.infer(_:), v73);
  (*(v75 + 104))(v77, enum case for FlowOrigin.inapp(_:), v76);
  v56 = type metadata accessor for FlowAction();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  *v78 = result;
  return result;
}

uint64_t sub_1000A6898@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100002B38(&qword_100131558, &qword_1000EDC80);
  return sub_1000A6900(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_1000A6900@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v203 = a1;
  v188 = a3;
  v189 = sub_100002B38(&qword_100131560, &qword_1000EDC88);
  v187 = *(v189 - 8);
  v4 = *(v187 + 64);
  __chkstk_darwin(v189);
  v186 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v5;
  __chkstk_darwin(v6);
  v184 = &v162 - v7;
  v183 = sub_100002B38(&qword_10012CCB8, &unk_1000EDC90);
  v182 = *(v183 - 8);
  v8 = *(v182 + 64);
  __chkstk_darwin(v183);
  v181 = &v162 - v9;
  v10 = sub_100002B38(&qword_10012CCA0, &qword_1000E8EA0);
  v11 = *(v10 - 8);
  v180 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v200 = &v162 - v13;
  v178 = sub_100002B38(&qword_100131568, &qword_1000EDCA0);
  v179 = *(v178 - 8);
  v14 = *(v179 + 64);
  __chkstk_darwin(v178);
  v177 = &v162 - v15;
  v16 = type metadata accessor for DashboardContentView(0);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for OverlayFlowAuthorityProvider();
  BaseObjectGraph.inject<A>(_:)();
  v192 = v209;
  v20 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v21 = (a2 + v20[15]);
  v23 = *v21;
  v22 = v21[1];
  v207 = v23;
  v208 = v22;
  sub_100002B38(&qword_100131528, &qword_1000EDB90);
  State.wrappedValue.getter();
  v175 = v205;
  v202 = type metadata accessor for StoreTab();
  v194 = *(v202 - 8);
  v173 = *(v194 + 64);
  __chkstk_darwin(v202);
  v174 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v199 = &v162 - v174;
  v25 = v20[16];
  sub_100002B38(&qword_100131438, &qword_1000EDA38);
  State.wrappedValue.getter();
  v26 = v20[7];
  v27 = (a2 + v20[6]);
  v29 = *v27;
  v28 = v27[1];
  v195 = v29;
  v190 = v28;
  v30 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v169 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v170 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = &v162 - v170;
  sub_1000035B4(a2 + v26, &v162 - v170, &qword_10012E478, &unk_1000EA8E0);
  v32 = v20[8];
  v193 = type metadata accessor for CommonOnboardingStatus();
  v198 = *(v193 - 1);
  v33 = v198;
  v166 = *(v198 + 64);
  v34 = __chkstk_darwin(v193);
  v167 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = &v162 - v167;
  v36 = *(v33 + 16);
  v164 = v33 + 16;
  v165 = v36;
  v36(v34);
  v172 = *(a2 + v20[9]);
  v37 = v20[11];
  v176 = v20;
  v201 = a2;
  sub_1000035B4(a2 + v37, &v207, &unk_100131120, &unk_1000EAAF0);
  v38 = v20[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  v39 = (a2 + v20[12]);
  v40 = *v39;
  v163 = v39[1];
  v41 = v16[6];
  v42 = type metadata accessor for Player();
  (*(*(v42 - 8) + 56))(&v19[v41], 1, 1, v42);
  v43 = &v19[v16[7]];
  v44 = &v19[v16[8]];
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v45 = v16[9];
  swift_unknownObjectWeakInit();
  v46 = v16[10];
  *&v19[v46] = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v47 = v16[13];
  v168 = v16;
  sub_1000AB720(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  v48 = v190;

  Bindable<A>.init(wrappedValue:)();
  v49 = v195;
  *v19 = v203;
  *(v19 + 1) = v49;
  *(v19 + 2) = v48;

  v50 = v191;
  sub_1000AD1EC(v191, &v19[v41], &qword_10012E478, &unk_1000EA8E0);
  sub_1000AD1EC(&v207, v44, &unk_100131120, &unk_1000EAAF0);
  v162 = v19;
  swift_unknownObjectWeakAssign();
  v51 = v163;
  *v43 = v40;
  v43[1] = v51;
  v52 = &v19[v16[11]];
  sub_10000519C(v40);
  type metadata accessor for FlowAction();
  sub_1000AB720(&qword_10012CCD8, &type metadata accessor for FlowAction);
  sub_1000AB720(&qword_10012CCE0, &type metadata accessor for FlowAction);
  FlowFullScreenCoverAuthority.init()();
  v53 = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  *&v52[*(v53 + 28)] = 0;
  __chkstk_darwin(v53);
  v54 = &v162 - v170;
  v55 = sub_1000035B4(v50, &v162 - v170, &qword_10012E478, &unk_1000EA8E0);
  v56 = __chkstk_darwin(v55);
  v57 = &v162 - v167;
  v58 = (v165)(&v162 - v167, v197, v193, v56);
  v59 = __chkstk_darwin(v58);
  v60 = &v162 - v174;
  v61 = v194;
  v62 = v202;
  (*(v194 + 16))(&v162 - v174, v199, v202, v59);
  v63 = type metadata accessor for DashboardTabViewState(0);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v66 = swift_allocObject();
  *(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = 0;
  v67 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  v68 = *(v61 + 56);
  v68(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab, 1, 1, v62);
  type metadata accessor for GameControllerObserver();
  *(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver) = static GameControllerObserver.shared.getter();
  ObservationRegistrar.init()();
  sub_100014830(v54, v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_player, &qword_10012E478, &unk_1000EA8E0);
  v69 = (v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID);
  v70 = v190;
  *v69 = v195;
  v69[1] = v70;
  v71 = v57;
  v72 = v193;
  (*(v198 + 32))(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_commonOnboardingStatus, v71, v193);
  *(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_isGamesAppInstalled) = v172;
  *(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs) = v175;
  v73 = *(v61 + 32);
  v74 = v202;
  v73(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab, v60, v202);
  *(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = 0;
  v75 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v76 = *(*(v75 - 8) + 64);
  v77 = __chkstk_darwin(v75 - 8);
  v79 = &v162 - v78;
  (v68)(&v162 - v78, 1, 1, v74, v77);
  sub_100005688(v66 + v67, &qword_10012E650, &qword_1000EDA30);
  sub_100014830(v79, v66 + v67, &qword_10012E650, &qword_1000EDA30);
  v80 = v203;
  *(v66 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph) = v203;
  v81 = v168;
  v82 = v162;
  v83 = (v162 + v168[12]);
  v204 = v66;
  v84 = v80;

  State.init(wrappedValue:)();

  sub_100005688(&v207, &unk_100131120, &unk_1000EAAF0);
  (*(v198 + 8))(v197, v72);
  sub_100005688(v191, &qword_10012E478, &unk_1000EA8E0);
  (*(v194 + 8))(v199, v202);
  v85 = v206;
  *v83 = v205;
  v83[1] = v85;
  v86 = sub_1000AB720(&qword_100131570, type metadata accessor for DashboardContentView);
  v87 = v177;
  View.optOutFromMetricsValidations()();
  sub_1000AD254(v82, type metadata accessor for DashboardContentView);
  v205 = v84;

  v207 = v81;
  v208 = v86;
  swift_getOpaqueTypeConformance2();
  sub_1000AD2B4();
  v88 = v200;
  v89 = v178;
  View._navigationStackStyle<A>(_:)();
  (*(v179 + 8))(v87, v89);

  KeyPath = swift_getKeyPath();
  v91 = sub_100002B38(&qword_100131580, &qword_1000EDD10);
  v92 = v88 + *(v91 + 36);
  v93 = v88;
  *v92 = KeyPath;
  *(v92 + 8) = 1;
  v94 = *(v176 - 1);
  v95 = *(v94 + 64);
  __chkstk_darwin(v91);
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v201;
  sub_1000AC6F0(v201, &v162 - v96, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v98 = *(v94 + 80);
  v197 = ~v98;
  v99 = swift_allocObject();
  v100 = sub_1000AB7F8(&v162 - v96, v99 + ((v98 + 16) & ~v98), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v101 = (v93 + *(v180 + 44));
  *v101 = sub_1000AD360;
  v101[1] = v99;
  v101[2] = 0;
  v101[3] = 0;
  __chkstk_darwin(v100);
  v102 = &v162 - v96;
  sub_1000AC6F0(v97, v102, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v103 = type metadata accessor for MainActor();
  v104 = v203;

  v105 = static MainActor.shared.getter();
  v106 = (v98 + 32) & ~v98;
  v198 = v95;
  v107 = swift_allocObject();
  *(v107 + 16) = v105;
  *(v107 + 24) = &protocol witness table for MainActor;
  sub_1000AB7F8(v102, v107 + v106, type metadata accessor for DashboardOverlayView.OverlayContentView);
  *(v107 + ((v95 + v106 + 7) & 0xFFFFFFFFFFFFFFF8)) = v104;
  v108 = type metadata accessor for TaskPriority();
  v109 = *(v108 - 8);
  v110 = *(v109 + 8);
  __chkstk_darwin(v108);
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = &v162 - v111;
  static TaskPriority.userInitiated.getter();
  LODWORD(Strong) = sub_1000E13F8(2, 26, 4, 0);
  v202 = v108;
  v199 = v109;
  if (Strong)
  {
    v192 = type metadata accessor for _TaskModifier2();
    v193 = &v162;
    v191 = *(v192 - 8);
    v113 = *(v191 + 64);
    __chkstk_darwin(v192);
    v194 = v103;
    v195 = v110;
    v115 = &v162 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
    v207 = 0;
    v208 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v207 = 0xD000000000000035;
    v208 = 0x80000001000E7CC0;
    v205 = 366;
    v116._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v116);

    v118 = __chkstk_darwin(v117);
    (*(v109 + 2))(&v162 - v111, v112, v108, v118);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v109 + 1))(v112, v108);
    v119 = v181;
    sub_100014830(v200, v181, &qword_10012CCA0, &qword_1000E8EA0);
    v120 = sub_100002B38(&qword_10012CCA8, &qword_1000E8EA8);
    v121 = v115;
    v110 = v195;
    v122 = (*(v191 + 32))(v119 + *(v120 + 36), v121, v192);
  }

  else
  {
    v123 = sub_100002B38(&qword_10012CCB0, &unk_1000E8EB0);
    v119 = v181;
    v124 = (v181 + *(v123 + 36));
    v125 = type metadata accessor for _TaskModifier();
    (*(v109 + 4))(&v124[*(v125 + 20)], &v162 - v111, v108);
    *v124 = &unk_1000EDD20;
    *(v124 + 1) = v107;
    v122 = sub_100014830(v200, v119, &qword_10012CCA0, &qword_1000E8EA0);
  }

  v126 = v198;
  __chkstk_darwin(v122);
  v127 = &v162 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AC6F0(v201, v127, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v128 = v203;

  v129 = static MainActor.shared.getter();
  v130 = (v98 + 40) & v197;
  v131 = swift_allocObject();
  v131[2] = v129;
  v131[3] = &protocol witness table for MainActor;
  v131[4] = v128;
  v132 = sub_1000AB7F8(v127, v131 + v130, type metadata accessor for DashboardOverlayView.OverlayContentView);
  __chkstk_darwin(v132);
  v133 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v134 = &v162 - v133;
  static TaskPriority.userInitiated.getter();
  if (Strong)
  {
    v200 = type metadata accessor for _TaskModifier2();
    v201 = &v162;
    v198 = *(v200 - 8);
    v135 = *(v198 + 64);
    __chkstk_darwin(v200);
    v203 = &v162;
    v137 = &v162 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    v207 = 0;
    v208 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v207 = 0xD000000000000035;
    v208 = 0x80000001000E7CC0;
    v205 = 385;
    v138._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v138);

    v197 = &v162;
    v140 = __chkstk_darwin(v139);
    v141 = v199;
    v142 = &v162 - v133;
    v143 = &v162 - v133;
    v144 = v202;
    (*(v199 + 2))(v142, v143, v202, v140);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v141 + 1))(v134, v144);
    v145 = v184;
    (*(v182 + 32))(v184, v119, v183);
    v146 = sub_100002B38(&qword_10012CCC0, &unk_1000E8EC0);
    (*(v198 + 32))(&v145[*(v146 + 36)], v137, v200);
  }

  else
  {
    v147 = sub_100002B38(&qword_10012CCC8, &unk_1000EDD50);
    v145 = v184;
    v148 = &v184[*(v147 + 36)];
    v149 = type metadata accessor for _TaskModifier();
    (*(v199 + 4))(&v148[*(v149 + 20)], &v162 - v133, v202);
    *v148 = &unk_1000EDD38;
    *(v148 + 1) = v131;
    (*(v182 + 32))(v145, v119, v183);
  }

  v150 = v187;
  v151 = v186;
  v152 = v189;
  v153 = (*(v187 + 32))(v186, v145, v189);
  v154 = __chkstk_darwin(v153);
  v156 = &v162 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = *(v150 + 16);
  v157(v156, v151, v152, v154);
  v158 = v188;
  (v157)(v188, v156, v152);
  v159 = v158 + *(sub_100002B38(&qword_100131588, &qword_1000EDD48) + 48);
  *v159 = 0;
  *(v159 + 8) = 1;
  v160 = *(v150 + 8);
  v160(v151, v152);
  return (v160)(v156, v152);
}

uint64_t sub_1000A7F64(uint64_t a1)
{
  v2 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  sub_1000035B4(a1 + *(v7 + 44), v12, &unk_100131120, &unk_1000EAAF0);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    sub_10002D754(v12, v13);
    (*(v9 + 16))(v8, v9);
    sub_10002E6CC(v12);
  }

  else
  {
    sub_100005688(v12, &unk_100131120, &unk_1000EAAF0);
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  (*(v3 + 104))(v6, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v2);
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000A8110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v5 = *(*(sub_100002B38(&qword_100131590, &unk_1000EDD60) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for StoreTab.Identifier();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = type metadata accessor for StoreTab();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = *(*(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v13 = type metadata accessor for Player();
  v4[13] = v13;
  v14 = *(v13 - 8);
  v4[14] = v14;
  v15 = *(v14 + 64) + 15;
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v17;
  v4[18] = v16;

  return _swift_task_switch(sub_1000A832C, v17, v16);
}

uint64_t sub_1000A832C()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayContentView: Fetching LocalPlayerProvider to perform deeplink action", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[3];

  v9 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v0[20] = v9;
  sub_1000035B4(v8 + *(v9 + 28), v7, &qword_10012E478, &unk_1000EA8E0);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = v0[16];
    v11 = v0[12];

    sub_100005688(v11, &qword_10012E478, &unk_1000EA8E0);
    v12 = v0[15];
    v13 = v0[11];
    v14 = v0[12];
    v15 = v0[8];
    v16 = v0[5];

    v17 = v0[1];

    return v17();
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v19 = type metadata accessor for LocalPlayerProvider();
    v20 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
    v21 = swift_task_alloc();
    v0[21] = v21;
    *v21 = v0;
    v21[1] = sub_1000A85A8;
    v22 = v0[4];

    return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 2, v19, v19);
  }
}

uint64_t sub_1000A85A8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = sub_1000A8C3C;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = sub_1000A86CC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000A86CC()
{
  v1 = v0[2];
  v0[22] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: Successfully fetched LocalPlayerProvider", v5, 2u);
    }

    v6 = v0[20];
    v8 = v0[10];
    v7 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[5];
    v12 = v0[3];

    v13 = v6[16];
    sub_100002B38(&qword_100131438, &qword_1000EDA38);
    State.wrappedValue.getter();
    StoreTab.identifier.getter();
    (*(v8 + 8))(v7, v9);
    v14 = type metadata accessor for Page.Background();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = v6[8];
    v16 = (v12 + v6[6]);
    v18 = *v16;
    v17 = v16[1];
    v19 = v6[10];
    v20 = async function pointer to StoreTab.Identifier.performDeepLinkAction(background:player:commonOnboardingStatus:bundleID:destination:objectGraph:)[1];
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_1000A89C8;
    v22 = v0[15];
    v23 = v0[8];
    v24 = v0[4];
    v25 = v0[5];

    return StoreTab.Identifier.performDeepLinkAction(background:player:commonOnboardingStatus:bundleID:destination:objectGraph:)(v25, v22, v12 + v15, v18, v17, v12 + v19, v24);
  }

  else
  {
    v26 = v0[16];

    v27 = v0[19];
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[14];
    v31 = v0[15];
    v33 = v0[13];
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "OverlayContentView: LocalPlayerProvider not available in the object graph", v34, 2u);
    }

    (*(v32 + 8))(v31, v33);
    v35 = v0[15];
    v36 = v0[11];
    v37 = v0[12];
    v38 = v0[8];
    v39 = v0[5];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_1000A89C8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v10 = *v0;

  sub_100005688(v6, &qword_100131590, &unk_1000EDD60);
  (*(v4 + 8))(v3, v5);
  v7 = *(v1 + 144);
  v8 = *(v1 + 136);

  return _swift_task_switch(sub_1000A8B78, v8, v7);
}

uint64_t sub_1000A8B78()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];

  (*(v5 + 8))(v3, v4);
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A8C3C()
{
  v1 = v0[16];

  v2 = v0[19];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: LocalPlayerProvider not available in the object graph", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[8];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000A8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v5 = *(*(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1000A8E40, v7, v6);
}

uint64_t sub_1000A8E40()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayContentView: Fetching LocalPlayerProvider to prefetch social tab data", v4, 2u);
  }

  v5 = type metadata accessor for LocalPlayerProvider();
  v6 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1000A8FB0;
  v8 = v0[3];

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 2, v5, v5);
}

uint64_t sub_1000A8FB0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_1000A967C;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_1000A90D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000A90D4()
{
  v1 = v0[2];
  v0[11] = v1;
  v2 = v0[9];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: Successfully fetched LocalPlayerProvider", v6, 2u);
    }

    v7 = v0[4];

    v8 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
    v9 = v8[7];
    v10 = (v7 + v8[6]);
    v12 = *v10;
    v11 = v10[1];
    v13 = v8[8];
    v14 = async function pointer to static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)[1];
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_1000A932C;
    v16 = v0[3];
    v17 = v7 + v9;
    v18 = v7 + v13;
  }

  else
  {
    if (v5)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: LocalPlayerProvider not available in the object graph", v19, 2u);
    }

    v21 = v0[4];
    v20 = v0[5];

    v22 = type metadata accessor for Player();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    v23 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
    v24 = (v21 + *(v23 + 24));
    v12 = *v24;
    v11 = v24[1];
    v25 = *(v23 + 32);
    v26 = async function pointer to static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)[1];
    v27 = swift_task_alloc();
    v0[13] = v27;
    *v27 = v0;
    v27[1] = sub_1000A94C0;
    v16 = v0[3];
    v18 = v21 + v25;
    v17 = v0[5];
  }

  return static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)(v17, v12, v11, v18, v16);
}

uint64_t sub_1000A932C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_1000A944C, v4, v3);
}

uint64_t sub_1000A944C()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A94C0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v7 = *v0;

  sub_100005688(v3, &qword_10012E478, &unk_1000EA8E0);
  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_1000A9614, v5, v4);
}

uint64_t sub_1000A9614()
{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A967C()
{
  v1 = v0[9];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayContentView: LocalPlayerProvider not available in the object graph", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];

  v7 = type metadata accessor for Player();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v9 = (v6 + *(v8 + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v8 + 32);
  v13 = async function pointer to static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)[1];
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_1000A94C0;
  v15 = v0[5];
  v16 = v0[3];

  return static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)(v15, v11, v10, v6 + v12, v16);
}

uint64_t sub_1000A97F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(*(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v5 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v3[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A9904, v8, v7);
}

uint64_t sub_1000A9904()
{
  v36 = v0;
  v1 = v0[7];

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  sub_1000AC6F0(v4, v3, type metadata accessor for DashboardOverlayView.OverlayContentView);
  sub_1000AC6F0(v4, v2, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = (v9 + *(v10 + 24));
    if (v12[1])
    {
      v13 = *v12;
      v14 = v12[1];
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = v0[5];
    v17 = v0[6];
    v19 = v0[3];
    v18 = v0[4];

    sub_1000AD254(v17, type metadata accessor for DashboardOverlayView.OverlayContentView);
    v20 = sub_1000BA5C8(v13, v14, &v35);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2080;
    sub_1000035B4(v16 + *(v18 + 28), v19, &qword_10012E478, &unk_1000EA8E0);
    v21 = type metadata accessor for Player();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 48))(v19, 1, v21);
    v24 = v0[3];
    if (v23 == 1)
    {
      sub_100005688(v0[3], &qword_10012E478, &unk_1000EA8E0);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v27 = v0[3];
      v26 = Player.playerID.getter();
      v25 = v28;
      (*(v22 + 8))(v24, v21);
    }

    sub_1000AD254(v0[5], type metadata accessor for DashboardOverlayView.OverlayContentView);
    v29 = sub_1000BA5C8(v26, v25, &v35);

    *(v11 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v6, v7, "rendering tabbed dashboard overlay with: bundleID %s for playerID %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[5];

    sub_1000AD254(v15, type metadata accessor for DashboardOverlayView.OverlayContentView);
    sub_1000AD254(v9, type metadata accessor for DashboardOverlayView.OverlayContentView);
  }

  v31 = v0[5];
  v30 = v0[6];
  v32 = v0[3];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1000A9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3[3] = v4;
  v3[4] = *(v4 + 64);
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A9DCC, v7, v6);
}

uint64_t sub_1000A9DCC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1000AC6F0(v5, v3, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1000AB7F8(v3, v9 + v8, type metadata accessor for DashboardOverlayView.OverlayContentView);
  sub_1000947BC(0, 0, v2, &unk_1000EDC78, v9);

  sub_100005688(v2, &unk_100130F10, &qword_1000EA660);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000A9F60()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100036924;

  return sub_1000C0D0C(v4, v3, 0xD000000000000014, 0x80000001000ED8A0);
}

char *sub_1000AA04C(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(CCUIOverlayBackgroundView) init];
  *&v2[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView] = v5;
  v6 = &v2[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_dismissAction];
  *v6 = a1;
  v6[1] = a2;
  sub_10000519C(a1);
  v26.receiver = v2;
  v26.super_class = type metadata accessor for DashboardBackgroundView.BackgroundContainerView();
  v7 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView;
  v9 = *&v7[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView];
  v10 = v7;
  [v10 addSubview:v9];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [*&v7[v8] leadingAnchor];
  v12 = [v10 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  [v13 setActive:1];
  v14 = [*&v7[v8] trailingAnchor];
  v15 = [v10 trailingAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [*&v7[v8] topAnchor];
  v18 = [v10 topAnchor];

  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [*&v7[v8] bottomAnchor];
  v21 = [v10 bottomAnchor];

  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  [*&v7[v8] setPresentationProgress:1.0];
  v23 = [objc_opt_self() blackColor];
  v24 = [v23 colorWithAlphaComponent:0.001];

  [v10 setBackgroundColor:v24];
  sub_10006C574(a1);

  return v10;
}

id sub_1000AA3F8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for DashboardBackgroundView.BackgroundContainerView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = 0.0;
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v0, "semanticContentAttribute")}] != 1)
  {
    [v0 bounds];
    MaxX = CGRectGetMaxX(v18);
    v3 = [objc_opt_self() currentTraitCollection];
    if ([v3 verticalSizeClass] == 1)
    {
      [v0 bounds];
      v4 = CGRectGetMaxX(v19);
    }

    else
    {
      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.overlayContentWidth.getter();
      v6 = v5;
      static ZoomCoordinator.iPadTrailingPadding.getter();
      v8 = v7;

      v4 = v6 + v8 + 20.0;
    }

    v1 = MaxX - v4;
  }

  v9 = *&v0[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView];
  v10 = [objc_opt_self() currentTraitCollection];
  if ([v10 verticalSizeClass] == 1)
  {
    [v0 bounds];
    v11 = CGRectGetMaxX(v20);
  }

  else
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v13 = v12;
    static ZoomCoordinator.iPadTrailingPadding.getter();
    v15 = v14;

    v11 = v13 + v15 + 20.0;
  }

  [v0 bounds];
  return [v9 setContentFrame:{v1, 0.0, v11, CGRectGetHeight(v21)}];
}

uint64_t sub_1000AA634(void *a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a1;
  if ([v6 type])
  {
LABEL_3:

    return 0;
  }

  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v3, "semanticContentAttribute")}] != 1)
  {
    [v3 bounds];
    MaxX = CGRectGetMaxX(v33);
    v10 = [objc_opt_self() currentTraitCollection];
    if ([v10 verticalSizeClass] == 1)
    {
      [v3 bounds];
      v11 = CGRectGetMaxX(v34);
    }

    else
    {
      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.overlayContentWidth.getter();
      v17 = v16;
      static ZoomCoordinator.iPadTrailingPadding.getter();
      v19 = v18;

      v11 = v17 + v19 + 20.0;
    }

    if (MaxX - v11 > a2)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  if ([v7 verticalSizeClass] != 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v13 = v12;
    static ZoomCoordinator.iPadTrailingPadding.getter();
    v15 = v14;

    if (v13 + v15 + 20.0 < a2)
    {
      goto LABEL_17;
    }

LABEL_14:
    [v3 safeAreaInsets];
    if (v20 <= a3)
    {
      [v3 safeAreaInsets];
      if (v21 <= a2)
      {
        [v3 bounds];
        v22 = CGRectGetMaxX(v35);
        [v3 safeAreaInsets];
        if (v22 - v23 >= a2)
        {
          goto LABEL_3;
        }
      }
    }

    goto LABEL_17;
  }

  [v3 bounds];
  v8 = CGRectGetMaxX(v32);

  if (v8 >= a2)
  {
    goto LABEL_14;
  }

LABEL_17:
  v24 = *&v3[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_dismissAction];
  if (!v24)
  {
    goto LABEL_3;
  }

  v25 = *&v3[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_dismissAction + 8];
  v26 = qword_10012CC18;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100011F80(v27, qword_100135C88);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "BackgroundContainerView: Overlay background view was dismissed", v30, 2u);
  }

  v24();
  sub_10006C574(v24);
  return 0;
}

id sub_1000AAA34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardBackgroundView.BackgroundContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000AAADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "BackgroundContainerView: Overlay background view is about to be presented", v8, 2u);
  }

  v9 = objc_allocWithZone(type metadata accessor for DashboardBackgroundView.BackgroundContainerView());
  sub_10000519C(a2);
  return sub_1000AA04C(a2, a3);
}

uint64_t sub_1000AAC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000ADBE4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000AACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000ADBE4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000AAD0C()
{
  sub_1000ADBE4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000AAD48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

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
    v13 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[14];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000AAE9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[14];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_1000AAFFC()
{
  sub_1000AB28C(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000AC4D0(319, &qword_10012E520, &type metadata accessor for GameDashboardDestination, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000AC46C(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AC4D0(319, &qword_10012E538, &type metadata accessor for StoreTab, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1000AC46C(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000AC4D0(319, &qword_10012E3B0, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_1000AB28C(319, &qword_10012DD08, &type metadata for Double, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_1000AC46C(319, &qword_10012E158, &qword_100132550, &qword_1000EC170, &type metadata accessor for Environment);
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

void sub_1000AB28C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000AB2FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1000A2480(a1, a2, v8, a3);
}

uint64_t sub_1000AB384()
{
  v1 = type metadata accessor for DashboardOverlayView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = type metadata accessor for GameDashboardDestination();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = (v3 + v1[6]);
  if (*v8)
  {
    v9 = v8[1];
  }

  v10 = *(v3 + v1[7]);

  v11 = v1[8];
  swift_unknownObjectWeakDestroy();
  v12 = (v3 + v1[9]);
  if (v12[3])
  {
    sub_10002E6CC(v12);
  }

  v13 = v1[10];
  swift_unknownObjectWeakDestroy();
  v14 = *(v3 + v1[11] + 8);

  v15 = (v3 + v1[12]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v3 + v1[13] + 8);

  v19 = v1[14];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for UserInterfaceSizeClass();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v3 + v19, 1, v20))
    {
      (*(v21 + 8))(v3 + v19, v20);
    }
  }

  else
  {
    v22 = *(v3 + v19);
  }

  return swift_deallocObject();
}

uint64_t sub_1000AB600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1000A46E4(a1, v6, a2);
}

uint64_t sub_1000AB6A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000A4B30(a1, a2, v6);
}

uint64_t sub_1000AB720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AB784()
{
  v1 = type metadata accessor for DashboardOverlayView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_1000AB7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AB860()
{
  v1 = type metadata accessor for BootstrapResult();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for DashboardOverlayView(0);
  v6 = (v4 + *(*(v5 - 1) + 80) + 8) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v8 = v0 + v6;
  v9 = *(v0 + v6 + 8);

  v10 = v5[5];
  v11 = type metadata accessor for GameDashboardDestination();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = (v8 + v5[6]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = *(v8 + v5[7]);

  v16 = v5[8];
  swift_unknownObjectWeakDestroy();
  v17 = (v8 + v5[9]);
  if (v17[3])
  {
    sub_10002E6CC(v17);
  }

  v18 = v5[10];
  swift_unknownObjectWeakDestroy();
  v19 = *(v8 + v5[11] + 8);

  v20 = (v8 + v5[12]);
  v21 = *v20;

  v22 = v20[1];

  v23 = *(v8 + v5[13] + 8);

  v24 = v5[14];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = type metadata accessor for UserInterfaceSizeClass();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v8 + v24, 1, v25))
    {
      (*(v26 + 8))(v8 + v24, v25);
    }
  }

  else
  {
    v27 = *(v8 + v24);
  }

  return swift_deallocObject();
}

id sub_1000ABB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for BootstrapResult() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v11 = *(v3 + v9);
  v12 = (v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));

  return sub_1000A34EC(a1, a2, v3 + v8, v11, v12, a3);
}

uint64_t sub_1000ABC90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000ABCEC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000ABD60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

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

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for CommonOnboardingStatus();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = sub_100002B38(&qword_100131438, &qword_1000EDA38);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[16];

  return v19(v20, a2, v18);
}

uint64_t sub_1000ABF9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for BootstrapResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for CommonOnboardingStatus();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = sub_100002B38(&qword_100131438, &qword_1000EDA38);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[16];

  return v19(v20, a2, a2, v18);
}

void sub_1000AC1C4()
{
  type metadata accessor for BootstrapResult();
  if (v0 <= 0x3F)
  {
    sub_1000926C0();
    if (v1 <= 0x3F)
    {
      sub_1000AB28C(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000AC4D0(319, &qword_10012FC08, &type metadata accessor for Player, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonOnboardingStatus();
          if (v4 <= 0x3F)
          {
            sub_1000AC4D0(319, &qword_10012E520, &type metadata accessor for GameDashboardDestination, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000AC46C(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1000AC46C(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for DismissDashboardNotifier();
                  if (v8 <= 0x3F)
                  {
                    sub_1000AC46C(319, &qword_1001314A8, &qword_10012E658, &qword_1000EAB00, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_1000AC4D0(319, &unk_1001314B0, &type metadata accessor for StoreTab, &type metadata accessor for State);
                      if (v10 <= 0x3F)
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

void sub_1000AC46C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000AC4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000AC538()
{
  result = qword_100131510;
  if (!qword_100131510)
  {
    sub_100005144(&qword_100131518, &qword_1000EDA58);
    sub_100005144(&qword_1001313B8, &unk_1000ED958);
    type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
    sub_1000057D8(&qword_1001313C0, &qword_1001313B8, &unk_1000ED958);
    sub_1000AB720(&qword_1001313C8, &type metadata accessor for ZoomCoordinator.DashboardVisibilityState);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131510);
  }

  return result;
}

unint64_t sub_1000AC680()
{
  result = qword_100131520;
  if (!qword_100131520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131520);
  }

  return result;
}

uint64_t sub_1000AC6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1000AC75C(uint64_t a1)
{
  v3 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v5[2] = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_100047C68(sub_1000ADBC4, v5, a1);
}

uint64_t sub_1000AC7F0()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = type metadata accessor for BootstrapResult();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = *(v3 + v1[6] + 8);

  v6 = v1[7];
  v7 = type metadata accessor for Player();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v1[8];
  v10 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = v1[10];
  v12 = type metadata accessor for GameDashboardDestination();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = (v3 + v1[11]);
  if (v14[3])
  {
    sub_10002E6CC(v14);
  }

  v15 = (v3 + v1[12]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = v1[13];
  swift_unknownObjectWeakDestroy();
  v18 = *(v3 + v1[14]);

  v19 = (v3 + v1[15]);
  v20 = *v19;

  v21 = v19[1];

  v22 = v3 + v1[16];
  v23 = type metadata accessor for StoreTab();
  (*(*(v23 - 8) + 8))(v22, v23);
  v24 = *(v22 + *(sub_100002B38(&qword_100131438, &qword_1000EDA38) + 28));

  return swift_deallocObject();
}

uint64_t sub_1000ACADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000A6898(a1, v6, a2);
}

uint64_t sub_1000ACB64@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.dashboardID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000ACB90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.dashboardID.setter();
}

uint64_t sub_1000ACBD4()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014BAC;

  return sub_1000A97F8(v4, v5, v0 + v3);
}

uint64_t sub_1000ACCB0()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = type metadata accessor for BootstrapResult();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = *(v0 + v2 + v1[6] + 8);

  v8 = v1[7];
  v9 = type metadata accessor for Player();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[8];
  v12 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[10];
  v14 = type metadata accessor for GameDashboardDestination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = (v5 + v1[11]);
  if (v16[3])
  {
    sub_10002E6CC(v16);
  }

  v17 = (v5 + v1[12]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = v1[13];
  swift_unknownObjectWeakDestroy();
  v20 = *(v5 + v1[14]);

  v21 = (v5 + v1[15]);
  v22 = *v21;

  v23 = v21[1];

  v24 = v5 + v1[16];
  v25 = type metadata accessor for StoreTab();
  (*(*(v25 - 8) + 8))(v24, v25);
  v26 = *(v24 + *(sub_100002B38(&qword_100131438, &qword_1000EDA38) + 28));

  return swift_deallocObject();
}

uint64_t sub_1000ACFA4()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014BAC;

  return sub_1000A9C9C(v4, v5, v0 + v3);
}

uint64_t sub_1000AD080()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 56) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_1000AD0F4(uint64_t a1)
{
  v4 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000A9F40(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000AD1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000AD254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000AD2B4()
{
  result = qword_100131578;
  if (!qword_100131578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131578);
  }

  return result;
}

uint64_t sub_1000AD308@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresentedInOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AD360()
{
  v1 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000A7F64(v2);
}

uint64_t sub_1000AD3C0()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = type metadata accessor for BootstrapResult();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = *(v0 + v2 + v1[6] + 8);

  v8 = v1[7];
  v9 = type metadata accessor for Player();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[8];
  v12 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[10];
  v14 = type metadata accessor for GameDashboardDestination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = (v5 + v1[11]);
  if (v16[3])
  {
    sub_10002E6CC(v16);
  }

  v17 = (v5 + v1[12]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[13];
  swift_unknownObjectWeakDestroy();
  v21 = *(v5 + v1[14]);

  v22 = (v5 + v1[15]);
  v23 = *v22;

  v24 = v22[1];

  v25 = v5 + v1[16];
  v26 = type metadata accessor for StoreTab();
  (*(*(v26 - 8) + 8))(v25, v26);
  v27 = *(v25 + *(sub_100002B38(&qword_100131438, &qword_1000EDA38) + 28));

  v28 = *(v0 + v19);

  return swift_deallocObject();
}

uint64_t sub_1000AD6C8()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100011720;

  return sub_1000A8110(v4, v5, v0 + v3, v6);
}

uint64_t sub_1000AD7DC()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for BootstrapResult();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  v8 = *(v0 + v2 + v1[6] + 8);

  v9 = v1[7];
  v10 = type metadata accessor for Player();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[8];
  v13 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = v1[10];
  v15 = type metadata accessor for GameDashboardDestination();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v6 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  v17 = (v6 + v1[11]);
  if (v17[3])
  {
    sub_10002E6CC(v17);
  }

  v18 = (v6 + v1[12]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = v1[13];
  swift_unknownObjectWeakDestroy();
  v21 = *(v6 + v1[14]);

  v22 = (v6 + v1[15]);
  v23 = *v22;

  v24 = v22[1];

  v25 = v6 + v1[16];
  v26 = type metadata accessor for StoreTab();
  (*(*(v26 - 8) + 8))(v25, v26);
  v27 = *(v25 + *(sub_100002B38(&qword_100131438, &qword_1000EDA38) + 28));

  return swift_deallocObject();
}

uint64_t sub_1000ADAD8()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014BAC;

  return sub_1000A8D70(v4, v5, v6, v0 + v3);
}

unint64_t sub_1000ADBE4()
{
  result = qword_100131598;
  if (!qword_100131598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131598);
  }

  return result;
}

uint64_t sub_1000ADCB0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for AccessPointAnchoring();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for AccessPointUseCase();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_1000ADE3C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AccessPointAnchoring();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for AccessPointUseCase();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for AccessPointView()
{
  result = qword_100131600;
  if (!qword_100131600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AE000()
{
  sub_1000AE1A4(319, &qword_10012E3A8, &type metadata accessor for GameDashboardLaunchContext, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1000AE1A4(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessPointAnchoring();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessPointUseCase();
        if (v3 <= 0x3F)
        {
          sub_10009D3E4();
          if (v4 <= 0x3F)
          {
            sub_100049AF0();
            if (v5 <= 0x3F)
            {
              sub_1000AE1A4(319, &qword_10012E3B0, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
              if (v6 <= 0x3F)
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

void sub_1000AE1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000AE224@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = sub_100002B38(&qword_100131660, &qword_1000EDDF0);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v63 = &v51 - v3;
  v4 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v51 - v8;
  v9 = type metadata accessor for AccessPointView();
  v10 = v9 - 8;
  v55 = *(v9 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v9);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100002B38(&qword_10012E448, &qword_1000EA898);
  v12 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v14 = (&v51 - v13);
  v15 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v51 - v17;
  v19 = type metadata accessor for Game();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v62 = &v51 - v23;
  v24 = *(v10 + 28);
  v25 = v1;
  v27 = v26;
  sub_1000035B4(v1 + v24, v18, &qword_100132410, &unk_1000E9F30);
  if ((*(v27 + 48))(v18, 1, v19) == 1)
  {
    sub_100005688(v18, &qword_100132410, &unk_1000E9F30);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012E4A8, &qword_10012E448, &qword_1000EA898);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v52 = *(v27 + 32);
    v29 = v62;
    v52(v62, v18, v19);
    v30 = Game.bundleID.getter();
    v53 = v31;
    v54 = v30;
    v32 = v25;
    v33 = v27;
    v34 = v56;
    sub_1000B0C98(v32, v56);
    (*(v33 + 16))(v21, v29, v19);
    v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v36 = (v11 + *(v33 + 80) + v35) & ~*(v33 + 80);
    v37 = swift_allocObject();
    sub_1000B1EE8(v34, v37 + v35, type metadata accessor for AccessPointView);
    v52((v37 + v36), v21, v19);
    v38 = [objc_opt_self() standardUserDefaults];
    NSUserDefaults.registerGamesDefaults()();

    v39 = v61;
    v40 = (v14 + *(v61 + 56));
    v41 = v53;
    *v40 = v54;
    v40[1] = v41;
    *v14 = sub_1000B0F54;
    v14[1] = v37;
    v14[2] = sub_100049778;
    v14[3] = 0;
    v14[4] = sub_100049778;
    v14[5] = 0;
    v42 = v19;
    if (qword_10012CC40 != -1)
    {
      swift_once();
    }

    v43 = *(qword_100135CF0 + 24);
    type metadata accessor for OverlayBootstrap();
    sub_1000B1F74(&qword_10012E450, type metadata accessor for OverlayBootstrap);

    v44 = v58;
    Bindable<A>.init(wrappedValue:)();
    v45 = v60;
    Bindable.wrappedValue.getter();
    v46 = *(v66 + 16);

    *(v14 + v39[13]) = v46;
    v47 = v57;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v48 = v14 + v39[11];
    Bindable<A>.subscript.getter();

    v49 = *(v59 + 8);
    v49(v47, v45);
    Bindable.wrappedValue.getter();
    v50 = v14 + v39[12];
    sub_1000BB51C();

    v49(v44, v45);
    sub_1000035B4(v14, v63, &qword_10012E448, &qword_1000EA898);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012E4A8, &qword_10012E448, &qword_1000EA898);
    _ConditionalContent<>.init(storage:)();
    sub_100005688(v14, &qword_10012E448, &qword_1000EA898);
    return (*(v33 + 8))(v62, v42);
  }
}

uint64_t sub_1000AE960@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v54 = a2;
  v55 = a5;
  v43[0] = a1;
  v52 = type metadata accessor for BootstrapResult();
  v57 = *(v52 - 8);
  v53 = *(v57 + 64);
  __chkstk_darwin(v52);
  v56 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointView();
  v8 = v7 - 8;
  v50 = *(v7 - 8);
  v49 = *(v50 + 64);
  __chkstk_darwin(v7);
  v48 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Game();
  v45 = *(v10 - 8);
  v46 = v10;
  v47 = *(v45 + 64);
  __chkstk_darwin(v10);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImpedimentFlowConfig();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v43[1] = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Dependency();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v24 = (a3 + *(v8 + 64));
  v26 = *v24;
  v25 = v24[1];
  v58 = v26;
  v59 = v25;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v43[3] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v20 + 8))(v23, v19);
  v27 = *(v8 + 60);
  v43[2] = swift_unknownObjectWeakLoadStrong();
  sub_1000AEE8C(v15);
  sub_1000AF188();
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v29 = v44;
  v28 = v45;
  v30 = v46;
  (*(v45 + 16))(v44, v51, v46);
  v31 = v48;
  sub_1000B0C98(a3, v48);
  v32 = v57;
  v33 = v52;
  (*(v57 + 16))(v56, v43[0], v52);
  v34 = v28;
  v35 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v36 = (v47 + *(v50 + 80) + v35) & ~*(v50 + 80);
  v37 = (v49 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v53 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v34 + 32))(v39 + v35, v29, v30);
  sub_1000B1EE8(v31, v39 + v36, type metadata accessor for AccessPointView);
  (*(v57 + 32))(v39 + v37, v56, v33);
  v40 = v54;
  *(v39 + v38) = v54;
  v41 = v40;
  sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  sub_1000057D8(&qword_10012E470, &qword_10012E468, &qword_1000EA8D8);
  return ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
}

uint64_t sub_1000AEE8C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for AccessPointUseCase();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for AccessPointView() + 28);
  v10 = v3[13];
  v10(v8, enum case for AccessPointUseCase.welcomeBannerOnly(_:), v2);
  sub_1000B1F74(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
  v19 = v9;
  v20 = v1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v25 == v23 && v26 == v24)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12 = v3[1];
  v12(v8, v2);

  v13 = &enum case for ImpedimentFlowConfig.UseCase.welcomeBanner(_:);
  if ((v11 & 1) == 0)
  {
    v14 = v21;
    v10(v21, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v25 == v23 && v26 == v24)
    {
      v12(v14, v2);
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12(v14, v2);

      if ((v15 & 1) == 0)
      {
        v13 = &enum case for ImpedimentFlowConfig.UseCase.inGame(_:);
      }
    }
  }

  v16 = *v13;
  v17 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  return (*(*(v17 - 8) + 104))(v22, v16, v17);
}

uint64_t sub_1000AF188()
{
  v1 = type metadata accessor for AccessPointUseCase();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v17 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v15 - v6;
  v8 = *(type metadata accessor for AccessPointView() + 28);
  v9 = v2[13];
  v9(v7, enum case for AccessPointUseCase.welcomeBannerOnly(_:), v1);
  sub_1000B1F74(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
  v15[1] = v8;
  v16 = v0;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20 == v18 && v21 == v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = v2[1];
  v11(v7, v1);

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v13 = v17;
    v9(v17, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v1);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v20 == v18 && v21 == v19)
    {
      v12 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v11(v13, v1);
  }

  return v12 & 1;
}

id sub_1000AF414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v93 = a5;
  v94 = a6;
  v102 = a2;
  v103 = a4;
  v100 = a3;
  v101 = a7;
  v98 = a1;
  v7 = type metadata accessor for AccessPointView();
  v91 = *(v7 - 8);
  v104 = *(v91 + 64);
  __chkstk_darwin(v7 - 8);
  v99 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = type metadata accessor for CommonOnboardingStatus();
  v88 = *(v90 - 8);
  v9 = *(v88 + 8);
  __chkstk_darwin(v90);
  v76 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = type metadata accessor for Game();
  v105 = *(v97 - 8);
  v96 = *(v105 + 64);
  __chkstk_darwin(v97);
  v11 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = v11;
  v12 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v75[-v14];
  v16 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v75[-v18];
  v20 = type metadata accessor for StoreTab.Identifier();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
  v89 = type metadata accessor for StoreTab();
  v87 = *(v89 - 8);
  v22 = *(v87 + 72);
  v23 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000EA7D0;
  v92 = v24;
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v25 = type metadata accessor for URL();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v26 = v15;
  v77 = v15;
  sub_1000035B4(v98, v15, &qword_10012E478, &unk_1000EA8E0);
  v27 = v105;
  v28 = *(v105 + 16);
  v85 = v105 + 16;
  v86 = v28;
  v29 = v11;
  v30 = v97;
  v28(v29, v100, v97);
  v31 = v88;
  v32 = *(v88 + 2);
  v80 = v88 + 16;
  v82 = v32;
  v33 = v90;
  v32(&v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v102, v90);
  sub_1000B0C98(v103, v99);
  v34 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v35 = *(v84 + 80);
  v78 = v35;
  v36 = *(v27 + 80);
  v84 = v13 + v36;
  v37 = (v13 + v36 + v34) & ~v36;
  v81 = v36;
  v38 = (v96 + *(v31 + 80) + v37) & ~*(v31 + 80);
  v39 = *(v91 + 80);
  v79 = v35 | v36 | v39 | 7;
  v40 = swift_allocObject();
  v41 = v40 + v34;
  v42 = v40;
  v91 = v40;
  sub_1000490F8(v26, v41);
  v43 = *(v27 + 32);
  v105 = v27 + 32;
  v83 = v43;
  v43(v42 + v37, v95, v30);
  (*(v31 + 4))(v42 + v38, v76, v33);
  v88 = type metadata accessor for AccessPointView;
  v44 = v42 + ((v9 + v39 + v38) & ~v39);
  v45 = v99;
  sub_1000B1EE8(v99, v44, type metadata accessor for AccessPointView);
  v46 = type metadata accessor for BootstrapResult();
  v47 = v101;
  (*(*(v46 - 8) + 16))(v101, v93, v46);
  v48 = sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  v49 = v98;
  sub_1000035B4(v98, v47 + v48[10], &qword_10012E478, &unk_1000EA8E0);
  v50 = v47;
  (*(v87 + 56))(v47 + v48[12], 1, 1, v89);
  v51 = v103;
  v52 = v103[1];
  v107 = *v103;
  v108 = v52;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v93 = v106;
  v82(v50 + v48[14], v102, v33);
  sub_1000B0C98(v51, v45);
  v53 = v77;
  sub_1000035B4(v49, v77, &qword_10012E478, &unk_1000EA8E0);
  v54 = v95;
  v55 = v97;
  v86(v95, v100, v97);
  v56 = (v39 + 16) & ~v39;
  v57 = (v104 + v78 + v56) & ~v78;
  v58 = (v84 + v57) & ~v81;
  v59 = swift_allocObject();
  sub_1000B1EE8(v45, v59 + v56, v88);
  sub_1000490F8(v53, v59 + v57);
  v83(v59 + v58, v54, v55);
  v60 = v101;
  v61 = (v101 + v48[18]);
  v62 = sub_100002B38(&qword_10012E490, &qword_1000EA900);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v106 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  v65 = v108;
  *v61 = v107;
  v61[1] = v65;
  v66 = v60 + v48[19];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  v68 = v93;
  v67 = v94;
  *(v60 + v48[9]) = v94;
  *(v60 + v48[13]) = v68;
  v69 = (v60 + v48[11]);
  v70 = v91;
  *v69 = v92;
  v69[1] = sub_1000B189C;
  v69[2] = v70;
  v71 = (v60 + v48[15]);
  *v71 = sub_1000B1D94;
  v71[1] = v59;
  v72 = (v60 + v48[16]);
  *v72 = sub_100049778;
  v72[1] = 0;
  v73 = (v60 + v48[17]);
  *v73 = sub_100049778;
  v73[1] = 0;

  return v67;
}

id sub_1000AFCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v62 = a4;
  v76 = a3;
  v61 = a2;
  v74 = a1;
  v73 = a5;
  v5 = type metadata accessor for FlowOrigin();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  __chkstk_darwin(v5);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  __chkstk_darwin(v8);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for FlowPresentationContext();
  v63 = *(v64 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v64);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v59 = &v58 - v18;
  v19 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v79 = &v58 - v21;
  v22 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v58 - v24;
  v75 = type metadata accessor for FlowPage();
  v26 = *(v75 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v75);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StoreTab.Identifier();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v58 - v36;
  StoreTab.identifier.getter();
  v38 = StoreTab.Identifier.rawValue.getter();
  v40 = v39;
  v41 = *(v31 + 8);
  v58 = v30;
  v42 = v30;
  v43 = v41;
  v41(v37, v42);
  *&v77 = v38;
  *(&v77 + 1) = v40;
  AnyHashable.init<A>(_:)();
  v44 = *(v26 + 104);
  v60 = v29;
  v44(v29, enum case for FlowPage.games(_:), v75);
  v45 = type metadata accessor for URL();
  v46 = *(*(v45 - 8) + 56);
  v75 = v25;
  v46(v25, 1, 1, v45);
  v47 = type metadata accessor for ReferrerData();
  (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  StoreTab.identifier.getter();
  Game.bundleID.getter();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v49 = result;
    v50 = String._bridgeToObjectiveC()();
    [v49 applicationIsInstalled:v50];

    v51 = v59;
    StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();

    v43(v34, v58);
    v52 = type metadata accessor for FlowDestination();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_100005688(v51, &qword_10012E4A0, &unk_1000EA940);
      v77 = 0u;
      v78 = 0u;
    }

    else
    {
      *(&v78 + 1) = v52;
      v54 = sub_100012854(&v77);
      (*(v53 + 32))(v54, v51, v52);
    }

    static ActionMetrics.notInstrumented.getter();
    static FlowActionPresentation.tabSelect.getter();
    (*(v63 + 104))(v68, enum case for FlowPresentationContext.infer(_:), v64);
    (*(v66 + 104))(v69, enum case for FlowAnimationBehavior.infer(_:), v67);
    (*(v70 + 104))(v72, enum case for FlowOrigin.inapp(_:), v71);
    v55 = type metadata accessor for FlowAction();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    *v73 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B04B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a4;
  v63 = a3;
  v78 = a5;
  v79 = a1;
  v6 = type metadata accessor for AccessPointAnchoring();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  __chkstk_darwin(v6);
  v81 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricsPipeline();
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v80 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bag();
  v14 = *(v13 - 8);
  v70 = v13;
  v71 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Game();
  v67 = *(v68 - 8);
  v17 = *(v67 + 64);
  __chkstk_darwin(v68);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Player();
  v20 = *(v64 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v64);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v62 - v26;
  v28 = type metadata accessor for AccessPointUseCase();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AccessPointPageView();
  v33 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AccessPointView();
  (*(v29 + 16))(v32, &a2[v36[7]], v28);
  v37 = v36[9];
  v66 = a2[v36[8]];
  v65 = a2[v37];
  type metadata accessor for LocalPlayerProvider();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v85[0])
  {
    LocalPlayerProvider.current.getter();

    v38 = v64;
    (*(v20 + 32))(v27, v23, v64);
    (*(v20 + 56))(v27, 0, 1, v38);
  }

  else
  {
    sub_1000035B4(v63, v27, &qword_10012E478, &unk_1000EA8E0);
  }

  (*(v67 + 16))(v19, v72, v68);
  v85[3] = type metadata accessor for AccessPointPageIntent();
  v85[4] = sub_1000B1F74(&qword_100131668, &type metadata accessor for AccessPointPageIntent);
  sub_100012854(v85);
  AccessPointPageIntent.init(useCase:showHighlights:newToGameCenter:player:game:)();
  v40 = v69;
  v39 = v70;
  BaseObjectGraph.inject<A>(_:)();
  v72 = Bag.metricsPageRenderTopic.getter();
  v68 = v41;
  (*(v71 + 8))(v40, v39);
  v42 = v74;
  BaseObjectGraph.inject<A>(_:)();
  v44 = v76;
  v43 = v77;
  v45 = *(v76 + 16);
  v45(v81, &a2[v36[6]], v77);
  v46 = *(a2 + 1);
  v83 = *a2;
  v84 = v46;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v70 = v82;
  v47 = v36[11];
  LODWORD(v69) = a2[v36[10]];
  v48 = v73;
  sub_1000035B4(&a2[v47], &v35[*(v73 + 40)], &unk_100131120, &unk_1000EAAF0);
  v49 = &a2[v36[12]];
  v50 = *(v49 + 1);
  v71 = *v49;
  v67 = v50;
  type metadata accessor for RemoteAlertAccessPointContext(0);
  sub_1000B1F74(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);

  *v35 = Environment.init<A>(_:)();
  v35[8] = v51 & 1;
  v52 = &v35[v48[12]];
  sub_10002E8A8(v85, (v35 + 16));
  v53 = v81;
  v45(&v35[v48[8]], v81, v43);
  v54 = v68;
  *(v35 + 7) = v72;
  *(v35 + 8) = v54;
  v55 = v75;
  v56 = v80;
  (*(v75 + 16))(&v35[v48[7]], v80, v42);
  *&v35[v48[11]] = v70;
  v57 = &v35[v48[9]];
  LOBYTE(v82) = v69;
  State.init(wrappedValue:)();
  (*(v44 + 8))(v53, v43);
  (*(v55 + 8))(v56, v42);
  sub_10002E6CC(v85);
  v58 = v84;
  *v57 = v83;
  *(v57 + 1) = v58;
  v59 = v67;
  *v52 = v71;
  *(v52 + 1) = v59;
  v60 = v78;
  *&v35[v48[13]] = v79;
  sub_1000B1EE8(v35, v60, type metadata accessor for AccessPointPageView);
}

uint64_t sub_1000B0C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B0CFC()
{
  v1 = type metadata accessor for AccessPointView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for Game();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v23 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = *(v0 + v3 + 8);

  v11 = v1[5];
  if (!(*(v6 + 48))(v0 + v3 + v11, 1, v5))
  {
    (*(v6 + 8))(v8 + v11, v5);
  }

  v12 = v1[6];
  v13 = type metadata accessor for AccessPointAnchoring();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = v1[7];
  v15 = type metadata accessor for AccessPointUseCase();
  (*(*(v15 - 8) + 8))(v8 + v14, v15);
  v16 = (v8 + v1[11]);
  if (v16[3])
  {
    sub_10002E6CC(v16);
  }

  v17 = *(v8 + v1[12] + 8);

  v18 = v1[13];
  swift_unknownObjectWeakDestroy();
  v19 = (v8 + v1[14]);
  v20 = *v19;

  v21 = v19[1];

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1000B0F54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AccessPointView() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Game() - 8);
  v11 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1000AE960(a1, a2, v3 + v8, v11, a3);
}

uint64_t sub_1000B1048()
{
  v1 = type metadata accessor for Game();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AccessPointView();
  v28 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v28) & ~v28;
  v27 = *(*(v5 - 1) + 64);
  v29 = type metadata accessor for BootstrapResult();
  v7 = *(v29 - 8);
  v8 = *(v7 + 80);
  v26 = *(v7 + 64);
  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v30 = v0;
  v10 = v0 + v6;
  v11 = *(v0 + v6);

  v12 = *(v0 + v6 + 8);

  v13 = v5[5];
  if (!(*(v2 + 48))(v10 + v13, 1, v1))
  {
    v9(v10 + v13, v1);
  }

  v14 = v5[6];
  v15 = type metadata accessor for AccessPointAnchoring();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  v16 = v5[7];
  v17 = type metadata accessor for AccessPointUseCase();
  (*(*(v17 - 8) + 8))(v10 + v16, v17);
  v18 = (v10 + v5[11]);
  if (v18[3])
  {
    sub_10002E6CC(v18);
  }

  v19 = (v6 + v27 + v8) & ~v8;
  v20 = *(v10 + v5[12] + 8);

  v21 = v5[13];
  swift_unknownObjectWeakDestroy();
  v22 = (v10 + v5[14]);
  v23 = *v22;

  v24 = v22[1];

  (*(v7 + 8))(v30 + v19, v29);

  return swift_deallocObject();
}

id sub_1000B134C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for Game() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for AccessPointView() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for BootstrapResult() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v3 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AF414(a1, a2, v3 + v8, (v3 + v11), v3 + v14, v15, a3);
}

uint64_t sub_1000B14C8()
{
  v1 = v0;
  v2 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Game();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for CommonOnboardingStatus();
  v10 = *(v9 - 8);
  v33 = v7;
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = type metadata accessor for AccessPointView();
  v34 = *(*(v13 - 1) + 80);
  v32 = (v11 + v12 + v34) & ~v34;
  v35 = *(*(v13 - 1) + 64);
  v14 = type metadata accessor for Player();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v1 + v3, 1, v14))
  {
    (*(v15 + 8))(v1 + v3, v14);
  }

  v16 = *(v6 + 8);
  v16(v1 + v33, v5);
  (*(v10 + 8))(v1 + v11, v9);
  v17 = v1 + v32;
  v18 = *(v1 + v32);

  v19 = *(v1 + v32 + 8);

  v20 = v13[5];
  if (!(*(v6 + 48))(v1 + v32 + v20, 1, v5))
  {
    v16(v17 + v20, v5);
  }

  v21 = v13[6];
  v22 = type metadata accessor for AccessPointAnchoring();
  (*(*(v22 - 8) + 8))(v17 + v21, v22);
  v23 = v13[7];
  v24 = type metadata accessor for AccessPointUseCase();
  (*(*(v24 - 8) + 8))(v17 + v23, v24);
  v25 = (v17 + v13[11]);
  if (v25[3])
  {
    sub_10002E6CC(v25);
  }

  v26 = *(v17 + v13[12] + 8);

  v27 = v13[13];
  swift_unknownObjectWeakDestroy();
  v28 = (v17 + v13[14]);
  v29 = *v28;

  v30 = v28[1];

  return swift_deallocObject();
}

void *sub_1000B189C(uint64_t a1)
{
  v3 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Game() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for CommonOnboardingStatus() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for AccessPointView() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v15[2] = v1 + v4;
  v15[3] = v1 + v7;
  v15[4] = v1 + v10;
  v15[5] = v1 + v13;
  return sub_100047C68(sub_1000B1F50, v15, a1);
}

uint64_t sub_1000B1A5C()
{
  v1 = type metadata accessor for AccessPointView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*(v1 - 1) + 64);
  v5 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v6 = *(v5 + 80);
  v7 = v4 + v6;
  v30 = *(v5 + 64);
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v29 = *(v9 + 64);
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = v1[5];
  if (!(*(v9 + 48))(&v11[v14], 1, v8))
  {
    (*(v9 + 8))(&v11[v14], v8);
  }

  v15 = v7 & ~v6;
  v16 = v1[6];
  v17 = type metadata accessor for AccessPointAnchoring();
  (*(*(v17 - 8) + 8))(&v11[v16], v17);
  v18 = v1[7];
  v19 = type metadata accessor for AccessPointUseCase();
  (*(*(v19 - 8) + 8))(&v11[v18], v19);
  v20 = &v11[v1[11]];
  if (v20[3])
  {
    sub_10002E6CC(v20);
  }

  v21 = *&v11[v1[12] + 8];

  v22 = v1[13];
  swift_unknownObjectWeakDestroy();
  v23 = &v11[v1[14]];
  v24 = *v23;

  v25 = *(v23 + 1);

  v26 = type metadata accessor for Player();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v15, 1, v26))
  {
    (*(v27 + 8))(v0 + v15, v26);
  }

  (*(v9 + 8))(v0 + ((v15 + v30 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_1000B1D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Game() - 8);
  v12 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1000B04B4(a1, (v2 + v6), v2 + v9, v12, a2);
}

uint64_t sub_1000B1EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B1F74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B1FC0()
{
  result = qword_100131670;
  if (!qword_100131670)
  {
    sub_100005144(&qword_100131678, &unk_1000EDE50);
    sub_1000057D8(&qword_10012E4A8, &qword_10012E448, &qword_1000EA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131670);
  }

  return result;
}

uint64_t OverlayTabsInfoProvider.setupFlowAuthority(asPartOf:defaultTab:selectedTabId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v29[1] = a7;
  v30 = a6;
  v31 = a1;
  v32 = a5;
  v29[0] = a4;
  v8 = type metadata accessor for StoreTab.Identifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v29 - v15;
  v17 = type metadata accessor for StoreTab();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B4(a3, v16, &qword_10012E650, &qword_1000EDA30);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = v32;

    sub_1000B23C8(v16);
    v23 = v29[0];
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v22 = v32;

    StoreTab.identifier.getter();
    v24 = StoreTab.Identifier.rawValue.getter();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v33 = v24;
    v34 = v26;
    AnyHashable.init<A>(_:)();
    sub_100002B38(&qword_10012FB90, &qword_1000EC300);
    v27 = v29[0];
    Binding.wrappedValue.setter();
    (*(v18 + 8))(v21, v17);
    v23 = v27;
  }

  v30(v22);
  sub_1000035B4(v23, v35, &qword_10012FB90, &qword_1000EC300);
  type metadata accessor for FlowAction();
  sub_1000B2430(&qword_10012CCD8);
  sub_1000B2430(&qword_10012CCE0);
  FlowAuthority.init(tabSelection:tabContent:)();
  return v22;
}

uint64_t sub_1000B23C8(uint64_t a1)
{
  v2 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B2430(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B2474(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000B24BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B2520()
{
  result = BaseObjectGraph.optional<A>(_:)();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    v1 = type metadata accessor for ASDInAppPurchaseStateProvider();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    ASDInAppPurchaseStateProvider.init()();
    v4 = type metadata accessor for InAppPurchaseStateDataSource();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    InAppPurchaseStateDataSource.init(withStateProvider:)();
    InAppPurchaseStateDataSource.refreshData()();
    type metadata accessor for InAppPurchaseInstallPagePresenter();
    static InAppPurchaseInstallPagePresenter.use(stateDataSource:)();
    type metadata accessor for InAppPurchaseOfferButtonPresenter();
    static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
    type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
  }

  return result;
}

uint64_t sub_1000B260C(void *a1)
{
  v76 = a1;
  v1 = type metadata accessor for ModernAppStateDataSource();
  v2 = *(v1 - 8);
  v74 = v1;
  v75 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v80 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = v65 - v6;
  v68 = type metadata accessor for AppStoreType();
  v7 = *(v68 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v68);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeviceAppQuery();
  v67 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ASDDeviceAppFetcher();
  v73 = *(v16 - 8);
  v17 = v73;
  v18 = *(v73 + 64);
  __chkstk_darwin(v16);
  v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B2520();
  updated = type metadata accessor for DeviceUpdateRegistry();
  v79 = DeviceUpdateRegistry.__allocating_init()();
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  ASDDeviceAppFetcher.init(regulatoryLogger:)();
  v77 = type metadata accessor for DeviceAppStateDataSource();
  v21 = v12 + 104;
  v22 = *(v12 + 104);
  *&v66 = v21;
  v23 = v15;
  v22(v15, enum case for DeviceAppQuery.betaApps(_:), v11);
  v78 = v16;
  *(&v87 + 1) = v16;
  v88 = &protocol witness table for ASDDeviceAppFetcher;
  v24 = sub_100012854(&v86);
  v25 = *(v17 + 16);
  v70 = v20;
  v25(v24, v20, v16);
  v71 = v25;
  v72 = v17 + 16;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v26 = enum case for AppStoreType.default(_:);
  v27 = v7 + 104;
  v28 = *(v7 + 104);
  v65[1] = v27;
  v29 = v68;
  v28(v10, enum case for AppStoreType.default(_:), v68);
  v65[0] = v23;
  v69 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  v22(v23, enum case for DeviceAppQuery.allStoreApps(_:), v67);
  v30 = v78;
  *(&v87 + 1) = v78;
  v88 = &protocol witness table for ASDDeviceAppFetcher;
  v31 = sub_100012854(&v86);
  v25(v31, v20, v30);
  *(&v84 + 1) = updated;
  v85 = &protocol witness table for DeviceUpdateRegistry;
  *&v83 = v79;
  v28(v10, v26, v29);

  v67 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  type metadata accessor for PurchaseHistoryAppStateDataSource();

  v32 = PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)();
  sub_100002B38(&qword_100131680, &qword_1000EDF28);
  v33 = type metadata accessor for App.Kind();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v66 = xmmword_1000EA7D0;
  *(v37 + 16) = xmmword_1000EA7D0;
  v38 = enum case for App.Kind.store(_:);
  v39 = *(v34 + 104);
  v39(v37 + v36, enum case for App.Kind.store(_:), v33);
  v68 = v32;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  type metadata accessor for RemotePersonalizationAppStateDataSource();

  v40 = RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)();
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  v39(v41 + v36, v38, v33);
  v76 = v40;
  v42 = v80;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  sub_100002B38(&qword_100131688, &unk_1000EDF30);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000EDEC0;
  v44 = type metadata accessor for WaitingAppStateDataSource();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = WaitingAppStateDataSource.init()();
  *(v43 + 56) = v44;
  *(v43 + 64) = &protocol witness table for WaitingAppStateDataSource;
  *(v43 + 32) = v47;
  v48 = v77;
  *(v43 + 96) = v77;
  *(v43 + 104) = &protocol witness table for DeviceAppStateDataSource;
  *(v43 + 72) = v69;
  *(v43 + 136) = v48;
  *(v43 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v43 + 112) = v67;
  v49 = v74;
  *(v43 + 176) = v74;
  v50 = sub_1000B2E14();
  *(v43 + 184) = v50;
  v51 = sub_100012854((v43 + 152));
  v52 = v75;
  v53 = *(v75 + 16);
  v53(v51, v82, v49);
  *(v43 + 216) = v49;
  *(v43 + 224) = v50;
  v54 = sub_100012854((v43 + 192));
  v53(v54, v42, v49);
  v55 = type metadata accessor for DefaultAppStateDataSource();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  v58 = DefaultAppStateDataSource.init()();
  *(v43 + 256) = v55;
  *(v43 + 264) = &protocol witness table for DefaultAppStateDataSource;
  *(v43 + 232) = v58;
  v59 = v78;
  *(&v87 + 1) = v78;
  v88 = &protocol witness table for ASDDeviceAppFetcher;
  v60 = sub_100012854(&v86);
  v61 = v70;
  v71(v60, v70, v59);
  *(&v84 + 1) = updated;
  v85 = &protocol witness table for DeviceUpdateRegistry;
  *&v83 = v79;

  v62 = makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)();

  v63 = *(v52 + 8);
  v63(v80, v49);
  v63(v82, v49);
  (*(v73 + 8))(v61, v59);
  sub_10002E6CC(&v83);
  sub_10002E6CC(&v86);
  return v62;
}

unint64_t sub_1000B2E14()
{
  result = qword_100131690;
  if (!qword_100131690)
  {
    type metadata accessor for ModernAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131690);
  }

  return result;
}

uint64_t sub_1000B2E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a1;
  a5(v8, v10, v11, a4);
}

void sub_1000B2F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RemoteAlertRequest();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(FBSSystemService) init];
  v13 = [v12 isPasscodeLockedOrBlocked];

  if (v13)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100011F80(v14, qword_100135C88);
    v27 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v27, v15, "Skipping onboarding flow request because device is locked or blocked.", v16, 2u);
    }

    v17 = v27;
  }

  else
  {
    v18 = [objc_opt_self() currentContext];
    type metadata accessor for AuthenticationConnectionContext();
    v19 = swift_allocObject();
    v19[20] = a1;
    v19[21] = a2;
    v19[22] = 0;
    v19[23] = 0;

    v20 = sub_1000E0554(v18);
    v21 = *(v20 + 152);
    *(v20 + 144) = a3;
    *(v20 + 152) = a4;

    v22 = enum case for GameOverlayUIConfig.ServiceKind.auth(_:);
    v23 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    (*(*(v23 - 8) + 104))(v11, v22, v23);
    v11[v8[5]] = 6;
    *&v11[v8[6]] = v20;
    v24 = &v11[v8[7]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v11[v8[8]];
    *v25 = 0;
    *(v25 + 1) = 0;
    sub_1000D0750(v11, 0, 0, 0);
    sub_10002D820(v11);
  }
}

uint64_t sub_1000B31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RemoteAlertRequest();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentContext];
  type metadata accessor for AuthenticationConnectionContext();
  v14 = swift_allocObject();
  v14[20] = 0;
  v14[21] = 0;
  v14[22] = a1;
  v14[23] = a2;

  v15 = sub_1000E0554(v13);
  v16 = *(v15 + 152);
  *(v15 + 144) = a3;
  *(v15 + 152) = a4;

  v17 = enum case for GameOverlayUIConfig.ServiceKind.auth(_:);
  v18 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v18 - 8) + 104))(v12, v17, v18);
  v12[v9[7]] = 7;
  *&v12[v9[8]] = v15;
  v19 = &v12[v9[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v12[v9[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_1000D0750(v12, 0, 0, 0);
  return sub_10002D820(v12);
}

GameOverlayUI::DeviceLanguageSource __swiftcall DeviceLanguageSource.init(languages:)(Swift::OpaquePointer_optional languages)
{
  if (languages.value._rawValue)
  {
    rawValue = languages.value._rawValue;
    if (Array.isNotEmpty.getter())
    {
      return rawValue;
    }
  }

  return static Locale.preferredLanguages.getter();
}

uint64_t DeviceLanguageSource.fetchLanguages()()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t DeviceLanguageSource.locale(forLanguage:)@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = type metadata accessor for Calendar.Identifier();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Calendar();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;

  Locale.init(identifier:)();
  static Calendar.current.getter();
  v26 = 0;
  v27 = 0xE000000000000000;
  v17._countAndFlagsBits = Locale.identifier.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x61646E656C616340;
  v18._object = 0xEA00000000003D72;
  String.append(_:)(v18);
  Calendar.identifier.getter();
  v19 = v23;
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v4, v19);
  Locale.init(identifier:)();
  (*(v5 + 8))(v8, v24);
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_1000B3914(v16, v25);
  return (v20)(v16, v9);
}

uint64_t sub_1000B372C()
{
  v0 = type metadata accessor for Calendar.Identifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v10._countAndFlagsBits = Locale.identifier.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x61646E656C616340;
  v11._object = 0xEA00000000003D72;
  String.append(_:)(v11);
  Calendar.identifier.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v4, v0);
  Locale.init(identifier:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000B3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for Locale();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_100002B38(&qword_100131698, &qword_1000EDFC8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v42 = a1;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  v20 = *(v7 + 8);
  v41 = v6;
  v20(v12, v6);
  v21 = type metadata accessor for Locale.LanguageCode();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v19, 1, v21) != 1)
  {
    v24 = Locale.LanguageCode.identifier.getter();
    v26 = v25;
    v27 = v19;
    v28 = *(v22 + 8);
    v28(v27, v21);
    if (v24 == 29281 && v26 == 0xE200000000000000)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        return (*(v44 + 16))(v43, v42, v45);
      }
    }

    v31 = v40;
    static Locale.current.getter();
    v32 = v39;
    Locale.language.getter();
    (*(v44 + 8))(v31, v45);
    Locale.Language.languageCode.getter();
    v20(v32, v41);
    if (v23(v16, 1, v21) != 1)
    {
      v34 = Locale.LanguageCode.identifier.getter();
      v36 = v35;
      v28(v16, v21);
      if (v34 == 29281 && v36 == 0xE200000000000000)
      {
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v37 & 1) == 0)
        {
          return (*(v44 + 16))(v43, v42, v45);
        }
      }

      return static Locale.current.getter();
    }

    v19 = v16;
  }

  sub_1000B3EB0(v19);
  return (*(v44 + 16))(v43, v42, v45);
}

uint64_t sub_1000B3CFC()
{
  v2 = *v0;
  v5 = *(v1 + 8);

  return v5(v3);
}

uint64_t sub_1000B3D68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;

  Locale.init(identifier:)();
  sub_1000B372C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_1000B3914(v9, a1);
  return (v10)(v9, v2);
}

uint64_t sub_1000B3EB0(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131698, &qword_1000EDFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000B40E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000B4154()
{
  type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

uint64_t sub_1000B41E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B42D0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B4244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B42D0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B42A8()
{
  sub_1000B42D0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000B42D0()
{
  result = qword_1001316C8[0];
  if (!qword_1001316C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001316C8);
  }

  return result;
}

void sub_1000B432C()
{
  type metadata accessor for BootstrapResult();
  if (v0 <= 0x3F)
  {
    sub_1000926C0();
    if (v1 <= 0x3F)
    {
      sub_1000B490C(319, &qword_10012FC08, &type metadata accessor for Player);
      if (v2 <= 0x3F)
      {
        sub_1000B490C(319, &unk_10012FC10, &type metadata accessor for StoreTab);
        if (v3 <= 0x3F)
        {
          sub_1000B490C(319, &qword_100131750, &type metadata accessor for GameDashboardLaunchContext);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CommonOnboardingStatus();
            if (v5 <= 0x3F)
            {
              sub_100013388();
              if (v6 <= 0x3F)
              {
                sub_1000B4960(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000B4960(319, &qword_100131758, &qword_10012E490, &qword_1000EA900, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_1000B49C4();
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

uint64_t sub_1000B4538(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BootstrapResult();
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
    v11 = *(a1 + a3[9]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[12];
    goto LABEL_11;
  }

  v17 = type metadata accessor for CommonOnboardingStatus();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_1000B4720(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for BootstrapResult();
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
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  v17 = type metadata accessor for CommonOnboardingStatus();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

void sub_1000B490C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000B4960(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000B49C4()
{
  if (!qword_10012EAA8)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EAA8);
    }
  }
}

uint64_t sub_1000B4A58()
{
  v0 = type metadata accessor for MediaArtwork.BundleImageProtocol.Configuration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  MediaArtwork.BundleImageProtocol.Configuration.init()();
  sub_100002B38(&qword_1001317E8, &qword_1000EE1C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000EE0F0;
  *(v6 + 32) = [objc_opt_self() mainBundle];
  sub_1000B9B18();
  *(v6 + 40) = static NSBundle.currentStoreKit.getter();
  v8[1] = v6;
  sub_100002B38(&qword_1001317F8, &qword_1000EE1C8);
  sub_1000057D8(&qword_100131800, &qword_1001317F8, &qword_1000EE1C8);
  MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)();

  (*(v1 + 8))(v4, v0);
  return MediaArtwork.BundleImageProtocol.init(_:)();
}

uint64_t sub_1000B4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v225 = a1;
  v219 = a2;
  v230 = type metadata accessor for MediaArtwork.BundleImageProtocol();
  v218 = *(v230 - 8);
  v3 = *(v218 + 64);
  __chkstk_darwin(v230);
  v217 = v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for PlayerMonogramProtocol();
  v216 = *(v232 - 8);
  v5 = *(v216 + 64);
  __chkstk_darwin(v232);
  v214 = v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_100002B38(&qword_100131760, &qword_1000EE188);
  v215 = *(v228 - 8);
  v7 = *(v215 + 64);
  __chkstk_darwin(v228);
  v213 = v157 - v8;
  v231 = type metadata accessor for AppIconProtocol();
  v212 = *(v231 - 8);
  v9 = *(v212 + 64);
  __chkstk_darwin(v231);
  v210 = v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_100002B38(&qword_100131768, &qword_1000EE190);
  v211 = *(v223 - 8);
  v11 = *(v211 + 64);
  __chkstk_darwin(v223);
  v209 = v157 - v12;
  v224 = type metadata accessor for ContactAvatarProtocol();
  v208 = *(v224 - 8);
  v13 = *(v208 + 64);
  __chkstk_darwin(v224);
  v205 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_100002B38(&qword_100131770, &qword_1000EE198);
  v207 = *(v222 - 8);
  v15 = *(v207 + 64);
  __chkstk_darwin(v222);
  v206 = v157 - v16;
  started = type metadata accessor for JetStartUpDecoration();
  v203 = *(started - 8);
  v17 = *(v203 + 64);
  __chkstk_darwin(started);
  v202 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = *(a1 - 8);
  v235 = *(v234 + 64);
  __chkstk_darwin(v19);
  v201 = v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v200 = v157 - v22;
  v220 = type metadata accessor for JetStartUpProcedure();
  v199 = *(v220 - 1);
  v23 = *(v199 + 64);
  __chkstk_darwin(v220);
  v229 = v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = *(a1 + 16);
  type metadata accessor for _TaskModifier();
  v25 = type metadata accessor for ModifiedContent();
  v226 = *(a1 + 24);
  v26 = v226;
  v27 = sub_1000BAC3C(&qword_10012CC50, &type metadata accessor for _TaskModifier);
  v243 = v26;
  v244 = v27;
  WitnessTable = swift_getWitnessTable();
  v237 = v25;
  v238 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = sub_100005144(&qword_100131778, &qword_1000EE1A0);
  v237 = v25;
  v238 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v33 = sub_100005144(&qword_10012E490, &qword_1000EA900);
  v233 = v33;
  v34 = sub_1000BAC3C(&qword_100131780, &type metadata accessor for MediaArtwork.URLImageProtocol);
  v35 = sub_1000057D8(&qword_100131788, &qword_10012E490, &qword_1000EA900);
  v237 = v32;
  v238 = v33;
  v239 = v34;
  v240 = v35;
  v36 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v237 = OpaqueTypeMetadata2;
  v238 = v30;
  v239 = OpaqueTypeConformance2;
  v240 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v193 = v38;
  v39 = sub_100005144(&qword_100131790, &qword_1000EE1A8);
  v192 = v39;
  v40 = sub_100005144(&qword_100131798, &qword_1000EE1B0);
  v191 = v40;
  v237 = OpaqueTypeMetadata2;
  v238 = v30;
  v239 = OpaqueTypeConformance2;
  v240 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v190 = v41;
  v42 = sub_1000B973C();
  v189 = v42;
  v187 = sub_1000B97F8();
  v237 = v38;
  v238 = v39;
  v239 = v40;
  v240 = v41;
  v241 = v42;
  v242 = v187;
  v43 = type metadata accessor for Jet();
  v195 = *(v43 - 8);
  v44 = *(v195 + 64);
  __chkstk_darwin(v43);
  v186 = v157 - v45;
  v46 = swift_getWitnessTable();
  v237 = v43;
  v238 = v46;
  v47 = v43;
  v177 = v43;
  v48 = v46;
  v178 = v46;
  v49 = swift_getOpaqueTypeMetadata2();
  v198 = *(v49 - 8);
  v50 = *(v198 + 64);
  __chkstk_darwin(v49);
  v221 = v157 - v51;
  v237 = v47;
  v238 = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v188 = sub_1000BAC3C(&qword_1001317C0, &type metadata accessor for ContactAvatarProtocol);
  v53 = v233;
  v237 = v224;
  v238 = v233;
  v239 = v188;
  v240 = v36;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v49;
  v181 = v49;
  v237 = v49;
  v56 = v222;
  v238 = v222;
  v239 = v52;
  v183 = v52;
  v240 = v54;
  v57 = v54;
  v182 = v54;
  v58 = swift_getOpaqueTypeMetadata2();
  v197 = *(v58 - 8);
  v59 = *(v197 + 64);
  __chkstk_darwin(v58);
  v180 = v157 - v60;
  v237 = v55;
  v238 = v56;
  v239 = v52;
  v240 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v185 = sub_1000BAC3C(&qword_1001317C8, &type metadata accessor for AppIconProtocol);
  v237 = v231;
  v238 = v53;
  v62 = v53;
  v239 = v185;
  v240 = v36;
  v63 = v36;
  v157[2] = v36;
  v64 = swift_getOpaqueTypeConformance2();
  v174 = v58;
  v65 = v223;
  v237 = v58;
  v238 = v223;
  v239 = v61;
  v240 = v64;
  v66 = v61;
  v176 = v61;
  v67 = v64;
  v175 = v64;
  v68 = swift_getOpaqueTypeMetadata2();
  v196 = *(v68 - 8);
  v69 = *(v196 + 64);
  __chkstk_darwin(v68);
  v173 = v157 - v70;
  v237 = v58;
  v238 = v65;
  v239 = v66;
  v240 = v67;
  v71 = swift_getOpaqueTypeConformance2();
  v184 = sub_1000BAC3C(&qword_1001317D0, &type metadata accessor for PlayerMonogramProtocol);
  v237 = v232;
  v238 = v62;
  v239 = v184;
  v240 = v63;
  v72 = swift_getOpaqueTypeConformance2();
  v170 = v68;
  v73 = v228;
  v237 = v68;
  v238 = v228;
  v239 = v71;
  v240 = v72;
  v172 = v71;
  v74 = v72;
  v171 = v72;
  v75 = swift_getOpaqueTypeMetadata2();
  v194 = *(v75 - 8);
  v76 = *(v194 + 64);
  __chkstk_darwin(v75);
  v169 = v157 - v77;
  v237 = v68;
  v238 = v73;
  v239 = v71;
  v240 = v74;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_1000BAC3C(&qword_1001317D8, &type metadata accessor for MediaArtwork.BundleImageProtocol);
  v161 = v75;
  v80 = v230;
  v237 = v75;
  v238 = v230;
  v239 = v78;
  v240 = v79;
  v81 = v78;
  v163 = v78;
  v82 = v79;
  v162 = v79;
  v83 = swift_getOpaqueTypeMetadata2();
  v165 = v83;
  v179 = *(v83 - 8);
  v84 = *(v179 + 64);
  __chkstk_darwin(v83);
  v160 = v157 - v85;
  v237 = v75;
  v238 = v80;
  v239 = v81;
  v240 = v82;
  v164 = swift_getOpaqueTypeConformance2();
  v237 = v83;
  v238 = v164;
  v166 = &opaque type descriptor for <<opaque return type of View.limitDynamicTypeSizeForSeedBuild()>>;
  v167 = swift_getOpaqueTypeMetadata2();
  v168 = *(v167 - 8);
  v86 = *(v168 + 64);
  __chkstk_darwin(v167);
  v158 = v157 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v88);
  v159 = v157 - v90;
  (*(v199 + 104))(v229, enum case for JetStartUpProcedure.lazy(_:), v220, v89);
  v91 = v234;
  v220 = *(v234 + 16);
  v92 = v200;
  v93 = v236;
  v94 = v225;
  v220(v200, v236, v225);
  v95 = v91;
  v96 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v97 = swift_allocObject();
  v199 = v97;
  v98 = v226;
  v99 = v227;
  *(v97 + 16) = v227;
  *(v97 + 24) = v98;
  v100 = *(v95 + 32);
  v100(v97 + v96, v92, v94);
  v234 = v95 + 32;
  v157[0] = v100;
  v101 = v201;
  v102 = v93;
  v103 = v220;
  v220(v201, v102, v94);
  v104 = swift_allocObject();
  v200 = v104;
  v105 = v226;
  *(v104 + 16) = v99;
  *(v104 + 24) = v105;
  v100(v104 + v96, v101, v94);
  v106 = v101;
  v107 = v236;
  v108 = v94;
  v103(v101, v236, v94);
  v109 = swift_allocObject();
  v157[1] = v109;
  v110 = v227;
  *(v109 + 16) = v227;
  *(v109 + 24) = v105;
  v111 = v101;
  v112 = v157[0];
  (v157[0])(v109 + v96, v111, v108);
  v113 = v107;
  v114 = v108;
  v220(v106, v113, v108);
  v115 = swift_allocObject();
  *(v115 + 16) = v110;
  *(v115 + 24) = v105;
  v116 = v114;
  v112(v115 + v96, v106, v114);
  static Transaction._loading.getter();
  v117 = v186;
  Jet.init(startUpProcedure:transaction:makeObjects:working:failed:content:)();
  v118 = v203;
  v119 = v202;
  v120 = started;
  (*(v203 + 104))(v202, enum case for JetStartUpDecoration.none(_:), started);
  v121 = v177;
  View.startUpDecoration(_:)();
  (*(v118 + 8))(v119, v120);
  (*(v195 + 8))(v117, v121);
  v122 = v205;
  ContactAvatarProtocol.init()();
  v123 = (v236 + *(v116 + 72));
  v125 = *v123;
  v124 = v123[1];
  v234 = v125;
  v235 = v124;
  v237 = v125;
  v238 = v124;
  sub_100002B38(&qword_1001317E0, &qword_1000EE1B8);
  State.wrappedValue.getter();
  v126 = v206;
  v127 = v224;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v208 + 8))(v122, v127);
  v128 = v180;
  v129 = v181;
  v130 = v222;
  v131 = v221;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v207 + 8))(v126, v130);
  (*(v198 + 8))(v131, v129);
  v132 = v210;
  AppIconProtocol.init()();
  v237 = v125;
  v133 = v235;
  v238 = v235;
  State.wrappedValue.getter();
  v134 = v209;
  v135 = v231;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v212 + 8))(v132, v135);
  v136 = v173;
  v137 = v174;
  v138 = v223;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v211 + 8))(v134, v138);
  (*(v197 + 8))(v128, v137);
  v139 = v214;
  PlayerMonogramProtocol.init()();
  v237 = v234;
  v238 = v133;
  State.wrappedValue.getter();
  v140 = v213;
  v141 = v232;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v216 + 8))(v139, v141);
  v142 = v169;
  v143 = v170;
  v144 = v228;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v215 + 8))(v140, v144);
  (*(v196 + 8))(v136, v143);
  v145 = v217;
  sub_1000B4A58();
  v146 = v160;
  v147 = v161;
  v148 = v230;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v218 + 8))(v145, v148);
  (*(v194 + 8))(v142, v147);
  v149 = v158;
  v150 = v165;
  v151 = v164;
  View.limitDynamicTypeSizeForSeedBuild()();
  (*(v179 + 8))(v146, v150);
  v237 = v150;
  v238 = v151;
  v152 = swift_getOpaqueTypeConformance2();
  v153 = v159;
  v154 = v167;
  sub_10009B680(v149, v167, v152);
  v155 = *(v168 + 8);
  v155(v149, v154);
  sub_10009B680(v153, v154, v152);
  return (v155)(v153, v154);
}

uint64_t sub_1000B63A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for DefaultOverlayJetView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Dependency();
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = *(v21 + 64);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaseObjectGraph();
  BootstrapResult.objectGraph.getter();
  BaseObjectGraph.__allocating_init(_:)();
  type metadata accessor for OverlayFlowAuthorityProvider();
  (*(v6 + 16))(v9, a1, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = a2;
  *(v15 + 24) = v16;
  (*(v6 + 32))(v15 + v14, v9, v5);

  Dependency.init<A>(satisfying:with:)();
  sub_1000B6778(v5);

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v17 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  (*(v21 + 8))(v13, v22);
  return v17;
}

uint64_t sub_1000B6630@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for DefaultOverlayJetView();
  v9 = (a1 + *(v8 + 44));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  sub_1000035B4(a1 + *(v8 + 48), v7, &qword_10012E650, &qword_1000EDA30);
  type metadata accessor for BaseObjectGraph();

  static BaseObjectGraph.current.getter();
  v13 = type metadata accessor for OverlayFlowAuthorityProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_100071D1C(v10, v11, v12, v7);

  *a2 = v16;
  return result;
}

uint64_t sub_1000B6778(uint64_t a1)
{
  v2 = v1;
  v119 = type metadata accessor for EnvironmentValues();
  v118 = *(v119 - 8);
  v4 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PlayerID();
  v6 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v126 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShimGameServicesRoot();
  v146 = *(v8 - 8);
  v147 = v8;
  v9 = *(v146 + 64);
  __chkstk_darwin(v8);
  v125 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v10;
  __chkstk_darwin(v11);
  v145 = &v117 - v12;
  v13 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  v137 = *(v13 - 8);
  v138 = v13;
  v14 = *(v137 + 64);
  __chkstk_darwin(v13);
  v121 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v117 - v17;
  v143 = type metadata accessor for Player();
  v151 = *(v143 - 8);
  v18 = *(v151 + 64);
  __chkstk_darwin(v143);
  v123 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v19;
  __chkstk_darwin(v20);
  v150 = &v117 - v21;
  v22 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v128 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v117 - v26;
  v28 = *(a1 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  v136 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v31;
  __chkstk_darwin(v32);
  v34 = &v117 - v33;
  v35 = type metadata accessor for Dependency();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v141 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v131 = &v117 - v40;
  __chkstk_darwin(v41);
  v130 = &v117 - v42;
  __chkstk_darwin(v43);
  v129 = &v117 - v44;
  __chkstk_darwin(v45);
  v47 = &v117 - v46;
  sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v140 = v47;
  Dependency.init<A>(satisfying:with:)();
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v49 = sub_100011F80(v48, qword_100135C88);
  v50 = *(v28 + 16);
  v133 = v28 + 16;
  v132 = v50;
  v50(v34, v1, a1);
  v120 = v49;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  v53 = os_log_type_enabled(v51, v52);
  v142 = v35;
  v148 = a1;
  v149 = v1;
  v139 = v36;
  v144 = v28;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = a1;
    v57 = v55;
    v152[0] = v55;
    *v54 = 136315138;
    sub_1000035B4(&v34[*(v56 + 40)], v27, &qword_10012E478, &unk_1000EA8E0);
    v58 = v151;
    v59 = v143;
    if ((*(v151 + 48))(v27, 1, v143) == 1)
    {
      sub_100005688(v27, &qword_10012E478, &unk_1000EA8E0);
      v60 = 0xE700000000000000;
      v61 = 0x6E776F6E6B6E75;
    }

    else
    {
      v61 = Player.playerID.getter();
      v60 = v63;
      (*(v58 + 8))(v27, v59);
    }

    v62 = v59;
    v64 = v148;
    (*(v144 + 8))(v34, v148);
    v65 = sub_1000BA5C8(v61, v60, v152);

    *(v54 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v51, v52, "DefaultOverlayJetView: player found: %s", v54, 0xCu);
    sub_10002E6CC(v57);
    a1 = v64;

    v35 = v142;
    v2 = v149;
    v36 = v139;
  }

  else
  {

    (*(v28 + 8))(v34, a1);
    v62 = v143;
  }

  v67 = v150;
  v66 = v151;
  v68 = v128;
  sub_1000035B4(v2 + *(a1 + 40), v128, &qword_10012E478, &unk_1000EA8E0);
  v69 = (*(v66 + 48))(v68, 1, v62);
  v70 = v145;
  if (v69 == 1)
  {
    sub_100005688(v68, &qword_10012E478, &unk_1000EA8E0);
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();

    goto LABEL_19;
  }

  v71 = v66 + 32;
  v72 = *(v66 + 32);
  v72(v67, v68, v62);
  Player.playerID.getter();
  v73 = v135;
  Ref<A>.init(internalID:)();
  (*(v137 + 16))(v121, v73, v138);
  ShimGameServicesRoot.init(localPlayer:)();
  v121 = v72;
  v128 = v71;
  sub_100002B38(&qword_100131818, &qword_1000EE1F8);
  v74 = v147;
  v152[3] = v147;
  v152[4] = sub_1000BAC3C(&qword_100131820, &type metadata accessor for ShimGameServicesRoot);
  v75 = sub_100012854(v152);
  v76 = *(v146 + 16);
  v76(v75, v70, v74);
  Dependency.init<A>(satisfying:with:)();
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "DefaultOverlayJetView: adding LPP to objectGraph", v79, 2u);
  }

  type metadata accessor for LocalPlayerProvider();
  v80 = v151 + 16;
  v81 = v123;
  (*(v151 + 16))(v123, v150, v62);
  v82 = v125;
  v83 = v70;
  v84 = v147;
  v76(v125, v83, v147);
  v85 = (*(v80 + 64) + 16) & ~*(v80 + 64);
  v86 = v146;
  v87 = (v122 + *(v146 + 80) + v85) & ~*(v146 + 80);
  v88 = swift_allocObject();
  (v121)(v88 + v85, v81, v62);
  (*(v86 + 32))(v88 + v87, v82, v84);
  Dependency.init<A>(satisfying:with:)();
  Player.playerID.getter();
  PlayerID.init(playerID:)();
  Dependency.init<A>(satisfying:with:)();
  v89 = v149 + *(v148 + 76);
  v90 = *v89;
  if (*(v89 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v91 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v92 = v117;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000682AC(v90, 0);
    (*(v118 + 8))(v92, v119);
    v35 = v142;
    v36 = v139;
    if ((v152[0] & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();
    goto LABEL_18;
  }

  v35 = v142;
  v36 = v139;
  if (v90)
  {
    goto LABEL_17;
  }

LABEL_15:
  BootstrapResult.metricsPipelineTransformer.getter();
  static GameObjectGraphBuilder.playerDependentMetricsPipelineDependencies(player:bootstrapResult:metricsPipelineTransformer:)();

LABEL_18:
  type metadata accessor for BaseObjectGraph();
  sub_100002B38(&qword_10012E690, &qword_1000EAB50);
  v93 = *(v36 + 72);
  v94 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1000EA7D0;
  v96 = v129;
  (*(v36 + 16))(v95 + v94, v129, v35);

  BaseObjectGraph.__allocating_init(name:_:)();
  v97 = v130;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v98 = v131;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v99 = *(v36 + 8);

  v99(v98, v35);
  v99(v97, v35);
  v99(v96, v35);
  (*(v146 + 8))(v145, v147);
  (*(v137 + 8))(v135, v138);
  (*(v151 + 8))(v150, v143);
  a1 = v148;
  v2 = v149;
LABEL_19:
  BootstrapResult.metricsPipelineTransformer.getter();
  v100 = v136;
  v132(v136, v2, a1);
  v101 = v144;
  v102 = a1;
  v103 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = *(v102 + 16);
  (*(v101 + 32))(v104 + v103, v100, v102);
  MetricsPipelineTransformer.transform(_:)();

  v105 = *(v2 + *(v102 + 52));
  if (v105)
  {
    type metadata accessor for GameDashboardLaunchContext();
    v152[0] = v105;
    swift_retain_n();
    v106 = v141;
    Dependency.init<A>(satisfying:with:)();
    type metadata accessor for BaseObjectGraph();
    sub_100002B38(&qword_10012E690, &qword_1000EAB50);
    v107 = *(v36 + 72);
    v108 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1000EA7D0;
    (*(v36 + 16))(v109 + v108, v106, v35);
    BaseObjectGraph.__allocating_init(name:_:)();
    (*(v36 + 8))(v106, v35);
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();
    v106 = v141;
  }

  type metadata accessor for NetworkConnectionMonitor();

  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002B38(&qword_10012E690, &qword_1000EAB50);
  v110 = *(v36 + 72);
  v111 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1000EA7D0;
  v113 = v140;
  (*(v36 + 16))(v112 + v111, v140, v35);
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v114 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v115 = *(v36 + 8);
  v115(v106, v35);
  v115(v113, v35);
  return v114;
}

uint64_t sub_1000B78DC(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131810, &unk_1000EE1E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v24[-1] - v4);
  v6 = type metadata accessor for _JetViewDefaultWorking();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for DefaultOverlayJetView() + 64);
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);

    v12(v24, v14);
    v15 = v25;
    v16 = sub_10002D754(v24, v25);
    v17 = *(*(v15 - 8) + 64);
    v18 = __chkstk_darwin(v16);
    (*(v20 + 16))(&v24[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    v21 = AnyView.init<A>(_:)();
    sub_10002E6CC(v24);
    *v5 = v21;
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317A8, &type metadata accessor for _JetViewDefaultWorking);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v12);
  }

  else
  {
    _JetViewDefaultWorking.init()();
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317A8, &type metadata accessor for _JetViewDefaultWorking);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1000B7C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v29 = sub_100002B38(&qword_100131808, &qword_1000EE1E0);
  v9 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for _JetViewDefaultFailed();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4 + *(type metadata accessor for DefaultOverlayJetView() + 68);
  v18 = *v17;
  if (*v17)
  {
    v19 = *(v17 + 8);

    v18(v31, a1, a2, a3);
    v20 = v32;
    v21 = sub_10002D754(v31, v32);
    v22 = *(*(v20 - 8) + 64);
    v23 = __chkstk_darwin(v21);
    (*(v25 + 16))(&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v26 = AnyView.init<A>(_:)();
    sub_10002E6CC(v31);
    *v11 = v26;
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317B8, &type metadata accessor for _JetViewDefaultFailed);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v18);
  }

  else
  {
    swift_errorRetain();

    _JetViewDefaultFailed.init(error:retry:)();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317B8, &type metadata accessor for _JetViewDefaultFailed);
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1000B7FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a1;
  v122 = a5;
  v8 = sub_100002B38(&qword_100131778, &qword_1000EE1A0);
  v102 = v8;
  v121 = *(v8 - 8);
  v9 = *(v121 + 64);
  __chkstk_darwin(v8);
  v120 = &v83 - v10;
  v11 = type metadata accessor for TaskPriority();
  v118 = *(v11 - 8);
  v119 = v11;
  v12 = *(v118 + 64);
  __chkstk_darwin(v11);
  v116 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4;
  v92 = a4;
  v107 = type metadata accessor for DefaultOverlayJetView();
  v108 = *(v107 - 8);
  v110 = *(v108 + 64);
  __chkstk_darwin(v107);
  v106 = &v83 - v15;
  v16 = a3;
  v115 = *(a3 - 8);
  v17 = *(v115 + 64);
  __chkstk_darwin(v18);
  v96 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _TaskModifier();
  v20 = type metadata accessor for ModifiedContent();
  v114 = *(v20 - 8);
  v21 = *(v114 + 64);
  __chkstk_darwin(v20);
  v105 = &v83 - v22;
  v23 = sub_1000BAC3C(&qword_10012CC50, &type metadata accessor for _TaskModifier);
  v129 = v14;
  v130 = v23;
  WitnessTable = swift_getWitnessTable();
  v125 = v20;
  v126 = WitnessTable;
  v93 = v20;
  v25 = WitnessTable;
  v95 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = OpaqueTypeMetadata2;
  v117 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v117 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v94 = &v83 - v28;
  v125 = v20;
  v126 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = OpaqueTypeConformance2;
  v30 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v90 = v30;
  v31 = sub_100005144(&qword_10012E490, &qword_1000EA900);
  v99 = v31;
  v32 = sub_1000BAC3C(&qword_100131780, &type metadata accessor for MediaArtwork.URLImageProtocol);
  v98 = v32;
  v97 = sub_1000057D8(&qword_100131788, &qword_10012E490, &qword_1000EA900);
  v125 = v30;
  v126 = v31;
  v127 = v32;
  v128 = v97;
  v100 = swift_getOpaqueTypeConformance2();
  v125 = OpaqueTypeMetadata2;
  v126 = v8;
  v127 = OpaqueTypeConformance2;
  v128 = v100;
  v109 = &opaque type descriptor for <<opaque return type of View.mediaArtworkProtocol<A>(_:)>>;
  v33 = swift_getOpaqueTypeMetadata2();
  v34 = *(v33 - 8);
  v111 = v33;
  v112 = v34;
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v91 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v104 = &v83 - v38;
  v39 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration();
  v123 = v39;
  v84 = *(v39 - 8);
  v40 = v84;
  v41 = *(v84 + 64);
  __chkstk_darwin(v39);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v43;
  __chkstk_darwin(v44);
  v86 = &v83 - v45;
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ArtworkLoaderURLSession();
  BaseObjectGraph.inject<A>(_:)();

  v46 = v125;
  v89 = v125;
  MediaArtwork.URLImageProtocol.Configuration.init()();
  v47 = [v46 session];
  MediaArtwork.URLImageProtocol.Configuration.withURLSession(_:takeOwnership:)();

  v48 = *(v40 + 8);
  v87 = v40 + 8;
  v88 = v48;
  v48(v43, v39);
  v49 = v107;
  v50 = *(v107 + 60);
  v85 = a2;
  v51 = a2 + v50;
  v52 = *(v51 + 8);
  v53 = v96;
  v54 = v113;
  (*v51)(v113);
  v55 = v108;
  v56 = v106;
  (*(v108 + 16))(v106, a2, v49);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v58 = (v110 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v16;
  *(v59 + 24) = v92;
  (*(v55 + 32))(v59 + v57, v56, v49);
  *(v59 + v58) = v54;

  v60 = v116;
  static TaskPriority.userInitiated.getter();
  v61 = v105;
  View.task(priority:_:)();

  (*(v118 + 8))(v60, v119);
  (*(v115 + 8))(v53, v16);
  v62 = v94;
  v63 = v93;
  View.componentContentBuilder(with:)();
  (*(v114 + 8))(v61, v63);
  v64 = v86;
  (*(v84 + 16))(v83, v86, v123);
  v65 = swift_checkMetadataState();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = MediaArtwork.URLImageProtocol.init(_:)();
  v69 = (v85 + *(v49 + 72));
  v71 = *v69;
  v70 = v69[1];
  v124 = v68;
  v125 = v71;
  v126 = v70;
  sub_100002B38(&qword_1001317E0, &qword_1000EE1B8);
  State.wrappedValue.getter();
  v72 = v120;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  v73 = v91;
  v74 = v103;
  v75 = v102;
  v76 = v101;
  v77 = v100;
  View.mediaArtworkProtocol<A>(_:)();

  (*(v121 + 8))(v72, v75);
  (*(v117 + 8))(v62, v74);
  v88(v64, v123);
  v125 = v74;
  v126 = v75;
  v127 = v76;
  v128 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v104;
  v80 = v111;
  sub_10009B680(v73, v111, v78);
  v81 = *(v112 + 8);
  v81(v73, v80);
  sub_10009B680(v79, v80, v78);
  return (v81)(v79, v80);
}

uint64_t sub_1000B8A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B8B38, v6, v5);
}

uint64_t sub_1000B8B38()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = *(v5 + *(type metadata accessor for DefaultOverlayJetView() + 36));

  JSNativeIntentDispatcher.objectGraph.setter();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1000B8BCC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100002B38(&qword_10012FFD0, &qword_1000EC530);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_100002B38(&qword_100131838, &unk_1000EE210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v29 = &v26 - v9;
  v30 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v30);
  v12 = &v26 - v11;
  v13 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for OverlayFlowAuthorityProvider();
  BaseObjectGraph.inject<A>(_:)();

  sub_1000BAC3C(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  v27 = v20;
  Bindable<A>.init(wrappedValue:)();
  ActionDispatcher.init()();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v21 = *(v14 + 8);
  v26 = v14 + 8;
  v21(v17, v13);
  v22 = v29;
  static GameObjectGraphBuilder.actionDispatcher<A>(following:window:)();
  sub_100005688(v4, &qword_10012FFD0, &qword_1000EC530);
  v23 = v28;
  v24 = v30;
  (*(v28 + 56))(v22, 0, 1, v30);
  (*(v23 + 16))(v32, v12, v24);
  sub_1000035B4(v22, v31, &qword_100131838, &unk_1000EE210);
  ActionDispatcher.next.setter();
  sub_100005688(v22, &qword_100131838, &unk_1000EE210);
  (*(v23 + 8))(v12, v24);
  return (v21)(v27, v13);
}

uint64_t sub_1000B8FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  v7[2] = a1;
  v7[3] = a2;
  result = sub_1000B921C(sub_1000BABCC, v7, "GameOverlayUI/DefaultOverlayJetView.swift", 41);
  *a3 = result;
  return result;
}

uint64_t sub_1000B9060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Player();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  (*(v10 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ArcadeSubscription();
  BaseObjectGraph.inject<A>(_:)();

  v11 = type metadata accessor for ShimGameServicesRoot();
  v17[3] = v11;
  v17[4] = sub_1000BAC3C(&qword_100131820, &type metadata accessor for ShimGameServicesRoot);
  v12 = sub_100012854(v17);
  (*(*(v11 - 8) + 16))(v12, a2, v11);
  v13 = type metadata accessor for LocalPlayerProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  result = LocalPlayerProvider.init(current:gameServices:arcadeSubscription:)();
  *a3 = result;
  return result;
}

uint64_t sub_1000B921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1000BABF8(v15);
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
  v12._object = 0x80000001000E7DF0;
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

uint64_t sub_1000B93D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a3;
  v21[1] = a1;
  v22 = type metadata accessor for MetricsFieldExclusionRequest();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommonOnboardingStatus();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GameOverlayPreConsentFieldsProvider();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DefaultOverlayJetView();
  (*(v8 + 16))(v11, v21[0] + *(v17 + 56), v7);
  GameOverlayPreConsentFieldsProvider.init(commonOnboardingStatus:)();
  v24[3] = v12;
  v24[4] = sub_1000BAC3C(&qword_100131830, &type metadata accessor for GameOverlayPreConsentFieldsProvider);
  v18 = sub_100012854(v24);
  (*(v13 + 16))(v18, v16, v12);
  static MetricsFieldExclusionRequest.gameOverlayPreConsent.getter();
  v19 = MetricsPipelineTransformer.State.aggregator.modify();
  MetricsFieldsAggregator.addOptOutProvider(_:forRequest:)();
  (*(v3 + 8))(v6, v22);
  v19(v23, 0);
  (*(v13 + 8))(v16, v12);
  return sub_10002E6CC(v24);
}

uint64_t sub_1000B96A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v2 = type metadata accessor for NetworkConnectionMonitor();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = NetworkConnectionMonitor.init(bagContract:)();

  *a1 = v5;
  return result;
}

unint64_t sub_1000B973C()
{
  result = qword_1001317A0;
  if (!qword_1001317A0)
  {
    sub_100005144(&qword_100131790, &qword_1000EE1A8);
    sub_1000BAC3C(&qword_1001317A8, &type metadata accessor for _JetViewDefaultWorking);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001317A0);
  }

  return result;
}

unint64_t sub_1000B97F8()
{
  result = qword_1001317B0;
  if (!qword_1001317B0)
  {
    sub_100005144(&qword_100131798, &qword_1000EE1B0);
    sub_1000BAC3C(&qword_1001317B8, &type metadata accessor for _JetViewDefaultFailed);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001317B0);
  }

  return result;
}

uint64_t sub_1000B98B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000B63A4(v4, v1, v2);
}

uint64_t sub_1000B993C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000B78DC(v4);
}

uint64_t sub_1000B99C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_1000B7C28(a1, a2, a3, v12, a4);
}

uint64_t sub_1000B9A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000B7FA8(a1, v8, v5, v6, a2);
}

unint64_t sub_1000B9B18()
{
  result = qword_1001317F0;
  if (!qword_1001317F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001317F0);
  }

  return result;
}

uint64_t sub_1000B9B64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for DefaultOverlayJetView();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = v0 + v4;
  v7 = type metadata accessor for BootstrapResult();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);

  v8 = v3[10];
  v9 = type metadata accessor for Player();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = (v6 + v3[11]);
  v12 = *v11;

  v13 = v11[2];

  v14 = v3[12];
  v15 = type metadata accessor for StoreTab();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v6 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  v17 = *(v6 + v3[13]);

  v18 = v3[14];
  v19 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v19 - 8) + 8))(v6 + v18, v19);
  v20 = *(v6 + v3[15] + 8);

  v21 = (v6 + v3[16]);
  if (*v21)
  {
    v22 = v21[1];
  }

  v23 = (v6 + v3[17]);
  if (*v23)
  {
    v24 = v23[1];
  }

  v25 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v6 + v3[18]);
  v27 = *v26;

  v28 = v26[1];

  sub_1000682AC(*(v6 + v3[19]), *(v6 + v3[19] + 8));
  v29 = *(v0 + v25);

  return swift_deallocObject();
}

uint64_t sub_1000B9E2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100011720;

  return sub_1000B8A9C(v0 + v5, v6, v2, v3);
}

uint64_t sub_1000B9F4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000B6630(v6, a1);
}

uint64_t sub_1000BA000(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000BA5C8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000BA05C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for DefaultOverlayJetView();
  v4 = *(*(v3 - 1) + 64);
  v5 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  v6 = type metadata accessor for BootstrapResult();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v3[10];
  v8 = type metadata accessor for Player();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + v3[11]);
  v11 = *v10;

  v12 = v10[2];

  v13 = v3[12];
  v14 = type metadata accessor for StoreTab();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = *(v5 + v3[13]);

  v17 = v3[14];
  v18 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = *(v5 + v3[15] + 8);

  v20 = (v5 + v3[16]);
  if (*v20)
  {
    v21 = v20[1];
  }

  v22 = (v5 + v3[17]);
  if (*v22)
  {
    v23 = v22[1];
  }

  v24 = (v5 + v3[18]);
  v25 = *v24;

  v26 = v24[1];

  sub_1000682AC(*(v5 + v3[19]), *(v5 + v3[19] + 8));

  return swift_deallocObject();
}

uint64_t sub_1000BA310(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DefaultOverlayJetView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000B93D4(a1, a2, v8);
}

uint64_t sub_1000BA3AC()
{
  v1 = type metadata accessor for Player();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ShimGameServicesRoot();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000BA4F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Player() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShimGameServicesRoot() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000B8FDC(v1 + v4, v7, a1);
}

uint64_t sub_1000BA5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000BA694(v11, 0, 0, 1, a1, a2);
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
    sub_1000BA7A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002E6CC(v11);
  return v7;
}