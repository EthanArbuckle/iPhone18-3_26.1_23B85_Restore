uint64_t sub_100052D1C()
{
  v2 = *(type metadata accessor for AdminSceneView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002E558;

  return sub_1000517E0(v0 + v3);
}

uint64_t sub_100052DF0()
{
  v1 = (type metadata accessor for AdminSceneView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_100040CA0(*(v0 + v2 + 176), *(v0 + v2 + 184), *(v0 + v2 + 192));
  sub_10003FA78();
  v4 = v1[20];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100052F48(uint64_t a1)
{
  v4 = *(type metadata accessor for AdminSceneView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E558;

  return sub_1000513F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10005311C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100053150()
{
  result = qword_10032D270;
  if (!qword_10032D270)
  {
    sub_10002CAF8(&qword_10032D268);
    sub_100053208();
    sub_10002CD18(&qword_10032C750, &qword_10032C758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D270);
  }

  return result;
}

unint64_t sub_100053208()
{
  result = qword_10032D278;
  if (!qword_10032D278)
  {
    sub_10002CAF8(&qword_10032D280);
    sub_1000532C0();
    sub_10002CD18(&qword_10032C6F8, &qword_10032C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D278);
  }

  return result;
}

unint64_t sub_1000532C0()
{
  result = qword_10032D288;
  if (!qword_10032D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D288);
  }

  return result;
}

unint64_t sub_10005332C()
{
  result = qword_10032D298;
  if (!qword_10032D298)
  {
    sub_10002CAF8(&qword_10032D290);
    sub_1000533E4();
    sub_10002CD18(&qword_10032C6F8, &qword_10032C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D298);
  }

  return result;
}

unint64_t sub_1000533E4()
{
  result = qword_10032D2A0;
  if (!qword_10032D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D2A0);
  }

  return result;
}

double sub_100053438(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100053540()
{
  result = qword_10032D2D8;
  if (!qword_10032D2D8)
  {
    sub_10002CAF8(&qword_10032D2D0);
    sub_1000535F8();
    sub_10002CD18(&qword_10032C750, &qword_10032C758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D2D8);
  }

  return result;
}

unint64_t sub_1000535F8()
{
  result = qword_10032D2E0;
  if (!qword_10032D2E0)
  {
    sub_10002CAF8(&qword_10032D2E8);
    sub_1000536B0();
    sub_10002CD18(&qword_10032C6F8, &qword_10032C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D2E0);
  }

  return result;
}

unint64_t sub_1000536B0()
{
  result = qword_10032D2F0;
  if (!qword_10032D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D2F0);
  }

  return result;
}

unint64_t sub_100053808()
{
  result = qword_10032D328;
  if (!qword_10032D328)
  {
    sub_10002CAF8(&qword_10032D318);
    sub_100053894();
    sub_1000538E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D328);
  }

  return result;
}

unint64_t sub_100053894()
{
  result = qword_10032D330;
  if (!qword_10032D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D330);
  }

  return result;
}

unint64_t sub_1000538E8()
{
  result = qword_10032D338;
  if (!qword_10032D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D338);
  }

  return result;
}

unint64_t sub_10005393C()
{
  result = qword_10032D340;
  if (!qword_10032D340)
  {
    sub_10002CAF8(&qword_10032D320);
    sub_10002CD18(&qword_10032D348, &qword_10032D350);
    sub_1000538E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D340);
  }

  return result;
}

uint64_t sub_100053A30()
{
  v1 = (type metadata accessor for AdminSceneView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100040CA0(*(v0 + v2 + 176), *(v0 + v2 + 184), *(v0 + v2 + 192));
  sub_10003FA78();
  v4 = v1[20];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100053B98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AdminSceneView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100053CD4()
{
  result = qword_10032D358;
  if (!qword_10032D358)
  {
    sub_10002CAF8(&qword_10032D1C8);
    sub_10002CAF8(&qword_10032D190);
    sub_100052C64();
    swift_getOpaqueTypeConformance2();
    sub_100053DE0(&qword_10032B538, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D358);
  }

  return result;
}

uint64_t sub_100053DE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100053E48()
{
  result = qword_10032D378;
  if (!qword_10032D378)
  {
    sub_10002CAF8(&qword_10032D370);
    sub_100053ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D378);
  }

  return result;
}

unint64_t sub_100053ED4()
{
  result = qword_10032D380;
  if (!qword_10032D380)
  {
    sub_10002CAF8(&qword_10032D368);
    sub_10002CD18(&qword_10032D388, &qword_10032D360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D380);
  }

  return result;
}

id sub_10005408C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistiveTouchPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005416C()
{
  sub_100034D44(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_delegate);
  sub_10003FA80(*(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source), *(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8));
  v1 = *(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene);
}

id sub_1000541C0()
{
  sub_100056890();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationSceneViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000542A0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v64 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v62 - v10;
  if (a2 < 0)
  {
    v12 = [a1 application];
  }

  else
  {
    v12 = a1;
  }

  v13 = v12;
  v14 = &v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source];
  v15 = *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source];
  if ((*&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8] & 0x8000000000000000) != 0)
  {
    v16 = [v15 application];
  }

  else
  {
    v16 = v15;
  }

  v17 = v16;
  sub_10002C9FC(0, &qword_10032B730);
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
    v20 = *v14;
    v19 = *(v14 + 1);
    if (a2 < 0)
    {
      if (v19 < 0)
      {
        sub_10002C9FC(0, &qword_10032BD30);
        v30 = v20;
        v31 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_18;
        }

LABEL_20:
        sub_10003FA80(v20, v19);
      }
    }

    else if ((v19 & 0x8000000000000000) == 0)
    {
      sub_10002C9FC(0, &qword_10032BD30);
      v21 = v20;
      v22 = v19;
      if (static NSObject.== infix(_:_:)())
      {
LABEL_18:
        v32 = static NSObject.== infix(_:_:)();
        sub_10003FA80(v20, v19);
        if (v32)
        {
          return;
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_21:
    v33 = Logger.common.unsafeMutableAddressor();
    v34 = v64;
    (*(v64 + 16))(v9, v33, v6);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Performing scene update for current app due to source change.", v37, 2u);
    }

    (*(v34 + 8))(v9, v6);
    v38 = *(v14 + 1);
    v39 = *v14;
    v40 = v39;
    if (v38 < 0)
    {
      v42 = [v39 application];
      v43 = [v42 displayStyle];

      v41 = [objc_allocWithZone(CLBSceneUpdate) initWithRequest:v40 displayStyle:v43 activationMetricsInfo:0];
    }

    else
    {
      v41 = [objc_allocWithZone(CLBSceneUpdate) initWithApplication:v39 activationMetricsInfo:0];
    }

    v44 = v41;

    return;
  }

  v23 = Logger.common.unsafeMutableAddressor();
  v24 = v64;
  (*(v64 + 16))(v11, v23, v6);
  v25 = v3;
  sub_10003FEE0(a1, a2);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  sub_10003FA80(a1, a2);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v28 = 136315650;
    v63 = v6;
    if (a2 < 0)
    {
      v29 = [a1 application];
    }

    else
    {
      v29 = a1;
    }

    v45 = v29;
    v46 = [v29 bundleIdentifier];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_10005766C(v47, v49, &v65);

    *(v28 + 4) = v50;
    *(v28 + 12) = 2080;
    v51 = *v14;
    if ((*(v14 + 1) & 0x8000000000000000) != 0)
    {
      v52 = [v51 application];
    }

    else
    {
      v52 = v51;
    }

    v53 = v52;
    v54 = [v52 bundleIdentifier];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_10005766C(v55, v57, &v65);

    *(v28 + 14) = v58;
    *(v28 + 22) = 1024;
    v59 = v25[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared];

    *(v28 + 24) = v59;
    _os_log_impl(&_mh_execute_header, v26, v27, "Updating scene in view controller due to app change: %s => %s. Is appeared: %{BOOL}d", v28, 0x1Cu);
    swift_arrayDestroy();

    (*(v64 + 8))(v11, v63);
  }

  else
  {

    (*(v24 + 8))(v11, v6);
  }

  v60 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared;
  if (v25[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared] == 1)
  {
    sub_1000554F0();
  }

  sub_100056890();
  v61 = *&v25[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene];
  *&v25[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene] = 0;

  sub_100056318();
  if (v25[v60] == 1)
  {
    sub_100054D14();
  }

  sub_100055994();
}

void sub_100054900(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets];
  v15 = *&v5[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 8];
  v16 = *&v5[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 16];
  v17 = *&v5[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 24];
  if (v14 != a1 || v15 != a2 || v16 != a3 || v17 != a4)
  {
    v21 = Logger.common.unsafeMutableAddressor();
    (*(v11 + 16))(v13, v21, v10);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218752;
      *(v24 + 4) = v14;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v15;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v16;
      *(v24 + 32) = 2048;
      *(v24 + 34) = v17;
      _os_log_impl(&_mh_execute_header, v22, v23, "Scene view controller safe area insets changed to top: %f, left: %f, bottom: %f, right: %f", v24, 0x2Au);
    }

    (*(v11 + 8))(v13, v10);
    v25 = type metadata accessor for SceneViewControllerBase();
    v37.receiver = v5;
    v37.super_class = v25;
    v26 = objc_msgSendSuper2(&v37, "view");
    if (v26)
    {
      v27 = v26;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setRealSafeAreaInsets:{v14, v15, v16, v17}];

      v28 = *&v5[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene];
      if (v28)
      {
        v29 = objc_allocWithZone(CLBSceneUpdate);
        v30 = v28;
        v31 = [v29 initWithScene:v30];
        v32 = swift_allocObject();
        *(v32 + 16) = v5;
        aBlock[4] = sub_10005764C;
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100055450;
        aBlock[3] = &unk_1002FF158;
        v33 = _Block_copy(aBlock);
        v34 = v5;

        [v31 setSettingsUpdateBlock:v33];
        _Block_release(v33);
        v35 = [v31 performUpdate];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_100054C64()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene);
  v2 = v1;
  return v1;
}

id sub_100054CAC(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  if ((*(v1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8) & 0x8000000000000000) != 0)
  {
    v4 = [v3 application];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  v6 = [v4 *a1];

  return v6;
}

void sub_100054D14()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v49 - v8;
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v12 = *&v1[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets];
  v51 = *&v1[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 16];
  v52 = v12;
  v13 = *&v1[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source];
  v14 = *&v1[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8];
  v54 = v3;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v15 = v13;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = Logger.common.unsafeMutableAddressor();
    v53 = *(v3 + 16);
    v53(v9, v24, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v50 = v1;
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Sending scene update with request.", v27, 2u);
      v1 = v50;
    }

    v22 = *(v3 + 8);
    v22(v9, v2);
    v28 = [v15 application];
    v29 = [v28 displayStyle];

    v23 = [objc_allocWithZone(CLBSceneUpdate) initWithRequest:v15 displayStyle:v29 activationMetricsInfo:v16];
  }

  else
  {
    v15 = v13;
    v16 = v14;
    v17 = Logger.common.unsafeMutableAddressor();
    v53 = *(v3 + 16);
    v53(v11, v17, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v50 = v1;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sending scene update with application.", v20, 2u);
      v1 = v50;
    }

    v21 = v11;
    v22 = *(v3 + 8);
    v22(v21, v2);
    v23 = [objc_allocWithZone(CLBSceneUpdate) initWithApplication:v15 activationMetricsInfo:v16];
  }

  v30 = v23;

  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v58 = sub_100057ED4;
  v59 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v57 = sub_100055450;
  *(&v57 + 1) = &unk_1002FF220;
  v32 = _Block_copy(&aBlock);
  v33 = v30;
  v34 = v1;

  [v33 setSettingsUpdateBlock:v32];
  _Block_release(v32);
  v35 = [v33 performUpdate];

  v36 = Logger.common.unsafeMutableAddressor();
  v53(v6, v36, v2);
  v37 = v35;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v53 = v22;
    v41 = v40;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55 = v43;
    *v41 = 138412546;
    *(v41 + 4) = v37;
    *v42 = v37;
    *(v41 + 12) = 2080;
    aBlock = v52;
    v57 = v51;
    type metadata accessor for UIEdgeInsets(0);
    *&v52 = v2;
    *&v51 = v6;
    v44 = v37;
    v45 = String.init<A>(describing:)();
    v47 = v34;
    v48 = sub_10005766C(v45, v46, &v55);

    *(v41 + 14) = v48;
    v34 = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Bringing scene %@ to foreground. Safe area insets: %s", v41, 0x16u);
    sub_10002E7BC(v42);

    sub_10002C9B0(v43);

    (v53)(v51, v52);
  }

  else
  {

    v22(v6, v2);
  }

  if (!*&v34[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene])
  {
    sub_10005662C(v37);
  }
}

void sub_100055354(void *a1, uint64_t a2, void *a3)
{
  [a1 setForeground:1];
  sub_1000A4B60(a1);
  sub_1000A4958(a1);
  if (qword_10032B4D0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100057C5C(a1, v5);

  sub_100056CB8(a1, a3);
}

void sub_100055450(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_1000554F0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 1);
  v3 = __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = *(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene);
  if (!v8)
  {
LABEL_6:
    v18 = Logger.common.unsafeMutableAddressor();
    (*(v2 + 16))(v5, v18, v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Attempted to bring scene to background, but it was already gone.", v21, 2u);
    }

    return (*(v2 + 8))(v5, v1);
  }

  v9 = v8;
  v10 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v7, v10, v1);
  v5 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v5;
    *v14 = v8;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v11, v12, "Bringing scene %@ to background.", v13, 0xCu);
    sub_10002E7BC(v14);
  }

  v16 = *(v2 + 8);
  v2 += 8;
  v16(v7, v1);
  aBlock[4] = sub_100055838;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100078744;
  aBlock[3] = &unk_1002FF1D0;
  v1 = _Block_copy(aBlock);

  [v5 updateSettingsWithBlock:v1];

  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_6;
  }

  return result;
}

void sub_100055848(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene];
  if (v2)
  {
    v4 = objc_allocWithZone(CLBSceneUpdate);
    v5 = v2;
    v6 = [v4 initWithScene:v5];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = a1;
    v12[4] = sub_100057C54;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100055450;
    v12[3] = &unk_1002FF1A8;
    v8 = _Block_copy(v12);
    v9 = v1;
    v10 = a1;

    [v6 setSettingsUpdateBlock:v8];
    _Block_release(v8);
    v11 = [v6 performUpdate];
  }
}

void sub_100055994()
{
  v1 = type metadata accessor for SceneViewControllerBase();
  v16.receiver = v0;
  v16.super_class = v1;
  v2 = objc_msgSendSuper2(&v16, "view");
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *&v0[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source];
  if ((*&v0[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8] & 0x8000000000000000) != 0)
  {
    v6 = [v5 application];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = [v6 displayStyle];

  [v4 setShouldPresentWithinSafeArea:v8 == 1];
  v15.receiver = v0;
  v15.super_class = v1;
  v9 = objc_msgSendSuper2(&v15, "view");
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  v12 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
  if (!*&v0[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation])
  {
    v13 = v11;
    v14 = sub_1000A4DBC(0, 1);
    v11 = v13;
    *&v0[v12] = v14;
  }

  [v11 setSceneInterfaceOrientation:?];
}

void sub_100055B10(void *a1)
{
  sub_1000A4B60(a1);
  sub_1000A4958(a1);
  v3 = *(v1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene);
  if (v3)
  {
    v4 = v3;
    sub_100056CB8(a1, v4);
  }
}

void sub_100055C60(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ApplicationSceneViewController();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene];
  if (v3)
  {
    v7.receiver = v1;
    v7.super_class = type metadata accessor for SceneViewControllerBase();
    v4 = v3;
    v5 = objc_msgSendSuper2(&v7, "view");
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setScene:{v4, v7.receiver, v7.super_class}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100055DF8(void *a1, void *a2)
{
  v36[0] = type metadata accessor for Logger();
  v5 = *(v36[0] - 8);
  __chkstk_darwin(v36[0]);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = objc_opt_self();
  aBlock[4] = sub_100057EF4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_1002FF270;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  [v9 animateWithDuration:v10 animations:0.25];
  _Block_release(v10);

  v12 = type metadata accessor for SceneViewControllerBase();
  v37.receiver = v11;
  v37.super_class = v12;
  v13 = objc_msgSendSuper2(&v37, "view");
  if (v13)
  {
    v14 = v13;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setScene:0];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtCV12ClarityBoard20ApplicationSceneView11Coordinator_applicationSceneView + 48);

      v16(v17);
      swift_unknownObjectRelease();
    }

    v18 = *&v11[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene];
    *&v11[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene] = 0;

    v19 = Logger.common.unsafeMutableAddressor();
    v20 = v36[0];
    (*(v5 + 16))(v7, v19, v36[0]);
    v21 = a2;
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v25 = 138412546;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2080;
      v28 = v22;
      if (a2)
      {
        v29 = [v21 error];
      }

      else
      {
        v29 = 0;
      }

      v36[1] = v29;
      sub_10002B6CC(&unk_10032C158);
      v30 = String.init<A>(describing:)();
      v32 = sub_10005766C(v30, v31, aBlock);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Did deactivate scene: %@, error: %s", v25, 0x16u);
      sub_10002E7BC(v26);

      sub_10002C9B0(v27);

      (*(v5 + 8))(v7, v36[0]);
    }

    else
    {

      (*(v5 + 8))(v7, v20);
    }

    v33 = [objc_opt_self() sharedInstance];
    if (v33)
    {
      v34 = v33;
      v35 = String._bridgeToObjectiveC()();
      [v34 setIdleTimerDisabled:0 forReason:v35];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100056318()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  if ((*(v0 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8) & 0x8000000000000000) != 0)
  {
    v6 = [v5 application];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = [v6 defaultSceneIdentifier];

  v9 = v8;
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = [qword_100336870 sceneManager];
  v14 = [v13 workspace];

  v22 = [v14 sceneWithIdentifier:v9];
  if (v22)
  {

    sub_10005662C(v22);
    v15 = v22;
  }

  else
  {
    v16 = Logger.common.unsafeMutableAddressor();
    (*(v2 + 16))(v4, v16, v1);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      v21 = sub_10005766C(v10, v12, &v23);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "No scene (yet) for identifier %s.", v19, 0xCu);
      sub_10002C9B0(v20);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_10005662C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.common.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Set up scene: %@", v12, 0xCu);
    sub_10002E7BC(v13);
  }

  (*(v5 + 8))(v7, v4);
  v15 = *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene];
  *&v2[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene] = v9;
  v16 = v9;

  [v16 addObserver:v2];
  if (v2[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared] == 1)
  {
    v17 = type metadata accessor for SceneViewControllerBase();
    v20.receiver = v2;
    v20.super_class = v17;
    v18 = objc_msgSendSuper2(&v20, "view");
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setScene:v16];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100056890()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene);
  if (v9)
  {
    v10 = v9;
    v11 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v8, v11, v2);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v9;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Tear down scene: %@", v15, 0xCu);
      sub_10002E7BC(v16);
    }

    (*(v3 + 8))(v8, v2);
    [v12 removeObserver:v1];
  }

  else
  {
    v18 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v18, v2);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No scene to tear down.", v21, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_100056B3C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.common.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating safe area and keyboard insets.", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  sub_100056CB8(a1, a3);
}

void sub_100056CB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  if ((*(v3 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8) & 0x8000000000000000) != 0)
  {
    v11 = [v10 application];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = [v11 displayStyle];

  if (v13 == 1)
  {
    v14 = &UIEdgeInsetsZero;
  }

  else
  {
    v14 = (v3 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets);
  }

  bottom = v14->bottom;
  right = v14->right;
  top = v14->top;
  left = v14->left;
  [a1 setSafeAreaInsetsPortrait:{v14->top, left, bottom, right}];
  v19 = Logger.common.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v19, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v7;
    v24 = v23;
    v38 = v23;
    *v22 = 136315138;
    v34 = top;
    v35 = left;
    v36 = bottom;
    v37 = right;
    type metadata accessor for UIEdgeInsets(0);
    v25 = String.init<A>(describing:)();
    v27 = sub_10005766C(v25, v26, &v38);
    v32 = v6;
    v28 = a1;
    v29 = a2;
    v30 = v27;

    *(v22 + 4) = v30;
    a2 = v29;
    a1 = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Applying safe area insets: %s", v22, 0xCu);
    sub_10002C9B0(v24);

    (*(v33 + 8))(v9, v32);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_10005729C(a1, a2);
  sub_100056F90(a1, a2);
}

void sub_100056F90(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source;
  v10 = *(v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  if ((*(v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8) & 0x8000000000000000) != 0)
  {
    v11 = [v10 application];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = [v11 supportsClarityUI];

  if ((v13 & 1) == 0)
  {
    v14 = *v9;
    v15 = (*(v9 + 8) & 0x8000000000000000) != 0 ? [v14 application] : v14;
    v16 = v15;
    v17 = [v15 wantsFullScreenInClarityUI];

    if (v17)
    {
      v18 = [a2 _displayHostComponent];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_opt_self() clb_thisDeviceDisplayEdgeInfo];
        [v20 clb_displayBasedSafeAreaInsets];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [v19 setDisplayBasedSafeAreaInsets:a1 forSettings:?];
        v29 = Logger.common.unsafeMutableAddressor();
        (*(v6 + 16))(v8, v29, v5);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v38[0] = v20;
          v33 = v32;
          v34 = swift_slowAlloc();
          v39 = v34;
          *v33 = 136315138;
          v38[1] = v22;
          v38[2] = v24;
          v38[3] = v26;
          v38[4] = v28;
          type metadata accessor for UIEdgeInsets(0);
          v35 = String.init<A>(describing:)();
          v37 = sub_10005766C(v35, v36, &v39);

          *(v33 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "Applying display based safe area insets: %s.", v33, 0xCu);
          sub_10002C9B0(v34);
        }

        else
        {
        }

        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_10005729C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source;
  v10 = *(v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  if ((*(v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8) & 0x8000000000000000) != 0)
  {
    v11 = [v10 application];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = [v11 displayStyle];

  if (!v13)
  {
    v14 = *v9;
    v15 = (*(v9 + 8) & 0x8000000000000000) != 0 ? [v14 application] : v14;
    v16 = v15;
    v17 = [v15 canCoverBackButtonWithKeyboard];

    if ((v17 & 1) == 0)
    {
      v18 = [a2 _keyboardHostComponent];
      if (v18)
      {
        v19 = v18;
        v20 = *(v2 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 16);
        v21 = [qword_100336870 systemInterfaceOrientation];
        v22 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
        v23 = *(v2 + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation);
        if (!v23)
        {
          v23 = sub_1000A4DBC(0, 1);
          *(v2 + v22) = v23;
        }

        left = UIEdgeInsetsZero.left;
        right = UIEdgeInsetsZero.right;
        if (v23 != v21)
        {
          if (!v23)
          {
            v23 = sub_1000A4DBC(0, 1);
            *(v2 + v22) = v23;
          }

          bottom = UIEdgeInsetsZero.bottom;
          v27 = sub_100057EE4(v23);
          if (v27 != sub_100057EE4(v21))
          {
            right = v20;
            left = v20;
          }

          v20 = bottom;
        }

        [v19 setMinimumKeyboardPadding:a1 forSettings:{UIEdgeInsetsZero.top, left, v20, right}];
        [v19 setKeyboardDockDisabled:1 forSettings:a1];
        v28 = Logger.common.unsafeMutableAddressor();
        (*(v6 + 16))(v8, v28, v5);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v37 = v32;
          *v31 = 136315138;
          v36[1] = *&UIEdgeInsetsZero.top;
          *&v36[2] = left;
          *&v36[3] = v20;
          *&v36[4] = right;
          type metadata accessor for UIEdgeInsets(0);
          v33 = String.init<A>(describing:)();
          v35 = sub_10005766C(v33, v34, &v37);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "Disabling keyboard dock and applying minimum keyboard padding: %s.", v31, 0xCu);
          sub_10002C9B0(v32);
        }

        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

uint64_t sub_100057614()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100057654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005766C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100057738(v11, 0, 0, 1, a1, a2);
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
    sub_10002C5D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002C9B0(v11);
  return v7;
}

unint64_t sub_100057738(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100057844(a5, a6);
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

char *sub_100057844(uint64_t a1, unint64_t a2)
{
  v3 = sub_100057890(a1, a2);
  sub_1000579C0(&off_1002FD650);
  return v3;
}

char *sub_100057890(uint64_t a1, unint64_t a2)
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

  v6 = sub_100057AAC(v5, 0);
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
        v7 = sub_100057AAC(v10, 0);
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

uint64_t sub_1000579C0(uint64_t result)
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

  result = sub_100057B20(result, v11, 1, v3);
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

void *sub_100057AAC(uint64_t a1, uint64_t a2)
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

  sub_10002B6CC(&qword_10032D400);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100057B20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002B6CC(&qword_10032D400);
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

uint64_t sub_100057C14()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100057C5C(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MultimodalListStyle.Layout();
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v11 = a1;
    sub_100067CBC(v10);
    dispatch thunk of ClarityUIMutableApplicationSceneSettingsProtocol.listLayout.setter();
  }

  v12 = Logger.common.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v12, v4);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    v18 = CLFListLayout.description.getter();
    v20 = sub_10005766C(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Applying list layout for scene: %s.", v16, 0xCu);
    sub_10002C9B0(v17);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100057EFC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.common.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = [v9 transitionContext];
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Scene did update settings with %@.", v12, 0xCu);
    sub_10002E7BC(v13);
  }

  (*(v5 + 8))(v7, v4);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  v16 = objc_opt_self();
  aBlock[4] = sub_1000581C4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_1002FF2C0;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  [v16 animateWithDuration:v17 animations:0.25];
  _Block_release(v17);
}

uint64_t sub_1000581F8@<X0>(uint64_t a1@<X8>)
{
  result = static HorizontalAlignment.center.getter();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

__n128 sub_100058264@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_1000581F8(v5);
  *&v4[71] = v5[4];
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *(a1 + 81) = *&v4[64];
  result = *v4;
  *(a1 + 17) = *v4;
  v4[87] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 97) = *&v4[80];
  *(a1 + 33) = *&v4[16];
  return result;
}

uint64_t sub_100058380@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = type metadata accessor for DynamicTypeSize();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v3);
  v4 = sub_10002B6CC(&qword_10032D418);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  *&v41 = _swiftEmptyArrayStorage;
  sub_100058914();
  sub_10002B6CC(&qword_10032D428);
  sub_10002CD18(&qword_10032D430, &qword_10032D428);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  v10 = Text.init(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = static Edge.Set.all.getter();
  v40 = v14 & 1;
  v39 = 1;
  *&v41 = v10;
  *(&v41 + 1) = v12;
  LOBYTE(v42) = v14 & 1;
  *(&v42 + 1) = v16;
  *&v43 = KeyPath;
  BYTE8(v43) = 1;
  v44[0] = v18;
  memset(&v44[8], 0, 32);
  v44[40] = 1;
  v19 = v36;
  v20 = v37;
  (*(v36 + 104))(v2, enum case for DynamicTypeSize.large(_:), v37);
  sub_10002B6CC(&qword_10032D438);
  sub_100058974();
  v21 = v38;
  View.dynamicTypeSize(_:)();
  (*(v19 + 8))(v2, v20);
  v46[2] = v43;
  v46[3] = *v44;
  v47[0] = *&v44[16];
  *(v47 + 9) = *&v44[25];
  v46[0] = v41;
  v46[1] = v42;
  sub_100058AB8(v46);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = (v21 + *(sub_10002B6CC(&qword_10032D468) + 36));
  v23 = *&v44[32];
  v22[4] = *&v44[16];
  v22[5] = v23;
  v22[6] = v45;
  v24 = v42;
  *v22 = v41;
  v22[1] = v24;
  v25 = *v44;
  v22[2] = v43;
  v22[3] = v25;
  v26 = (v21 + *(sub_10002B6CC(&qword_10032D470) + 36));
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #15.0 }

  *v26 = _Q0;
  result = sub_10002B6CC(&qword_10032C270);
  *&v26[*(result + 36)] = 256;
  return result;
}

unint64_t sub_100058914()
{
  result = qword_10032D420;
  if (!qword_10032D420)
  {
    type metadata accessor for AttributedString.FormattingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D420);
  }

  return result;
}

unint64_t sub_100058974()
{
  result = qword_10032D440;
  if (!qword_10032D440)
  {
    sub_10002CAF8(&qword_10032D438);
    sub_100058A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D440);
  }

  return result;
}

unint64_t sub_100058A00()
{
  result = qword_10032D448;
  if (!qword_10032D448)
  {
    sub_10002CAF8(&qword_10032D450);
    sub_10002CD18(&qword_10032D458, &qword_10032D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D448);
  }

  return result;
}

uint64_t sub_100058AB8(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032D438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100058B24()
{
  result = qword_10032D478;
  if (!qword_10032D478)
  {
    sub_10002CAF8(&qword_10032D470);
    sub_100058BDC();
    sub_10002CD18(&unk_10032FEB0, &qword_10032C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D478);
  }

  return result;
}

unint64_t sub_100058BDC()
{
  result = qword_10032D480;
  if (!qword_10032D480)
  {
    sub_10002CAF8(&qword_10032D488);
    sub_100058C68();
    sub_100058D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D480);
  }

  return result;
}

unint64_t sub_100058C68()
{
  result = qword_10032D490;
  if (!qword_10032D490)
  {
    sub_10002CAF8(&qword_10032D468);
    sub_10002CAF8(&qword_10032D438);
    sub_100058974();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D490);
  }

  return result;
}

unint64_t sub_100058D30()
{
  result = qword_10032D498;
  if (!qword_10032D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D498);
  }

  return result;
}

void sub_100058D84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_100058DFC()
{
  result = [objc_allocWithZone(type metadata accessor for BiometricInterface()) init];
  qword_1003368B0 = result;
  return result;
}

uint64_t sub_100058E88()
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v8 = *(v6 + 32);
  }

  v1 = v8;
  v23 = 0;
  v9 = [v8 identitiesWithError:&v23];
  v10 = v23;
  if (v9)
  {
    v11 = v9;
    sub_10002C9FC(0, &qword_10032D4E0);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v10;

    if (!(v12 >> 62))
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      return v14 != 0;
    }

LABEL_19:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_9;
  }

  v15 = v23;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v16 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v16, v2);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching enrolled identities: %@", v19, 0xCu);
    sub_10002E7BC(v20);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1000591C8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v31[-v7];
  __chkstk_darwin(v6);
  v10 = &v31[-v9];
  v11 = *(v0 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices);
  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
      }

      v12 = *(v11 + 32);
    }

    v13 = v12;
    v32 = 0;
    if ([v12 forceBioLockoutForAllUsersWithError:&v32])
    {
      v14 = v32;
      v15 = Logger.common.unsafeMutableAddressor();
      (*(v2 + 16))(v10, v15, v1);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Successfully disabled biometry", v18, 2u);
      }
    }

    else
    {
      v19 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v20 = Logger.common.unsafeMutableAddressor();
      (*(v2 + 16))(v5, v20, v1);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Error disabling biometry: %@", v23, 0xCu);
        sub_10002E7BC(v24);
      }

      else
      {
      }

      v10 = v5;
    }

    return (*(v2 + 8))(v10, v1);
  }

  v26 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v8, v26, v1);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Not a biometry capable device", v29, 2u);
  }

  v10 = v8;
  return (*(v2 + 8))(v10, v1);
}

void sub_1000596A8(char a1)
{
  v2 = OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_needsAuthentication;
  v3 = *(v1 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_needsAuthentication);
  *(v1 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_needsAuthentication) = a1;
  if (v3 != (a1 & 1) && (sub_100058E88() & 1) != 0)
  {
    if (*(v1 + v2) == 1)
    {

      sub_100059B60();
    }

    else
    {

      sub_10005A244();
    }
  }
}

id sub_10005972C()
{
  p_align = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_matchOperation) = 0;
  *(v0 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_needsAuthentication) = 0;
  v6 = [objc_opt_self() availableDevices];
  sub_10002C9FC(0, &qword_10032D4E8);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_18:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_3:
  v35 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v8 < 0)
  {
    __break(1u);
  }

  v28 = v5;
  v29 = v3;
  v30 = v2;
  v31 = p_align;
  v5 = objc_opt_self();
  v9 = 0;
  v2 = v7 & 0xC000000000000001;
  v32 = v7 & 0xFFFFFFFFFFFFFF8;
  p_align = &stru_100322FE8.align;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v2)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v32 + 16))
      {
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v34 = 0;
    if (![v5 deviceWithDescriptor:v10 error:&v34])
    {
      break;
    }

    v12 = v34;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v9;
    if (v3 == v8)
    {

      v13 = v35;
      p_align = v31;
      goto LABEL_21;
    }
  }

  v14 = v34;

  _convertNSErrorToError(_:)();

  swift_willThrow();

  v15 = Logger.common.unsafeMutableAddressor();
  v17 = v28;
  v16 = v29;
  v18 = v30;
  (*(v29 + 16))(v28, v15, v30);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  v21 = os_log_type_enabled(v19, v20);
  p_align = v31;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "BiometricInterface: Error fetching devices: %@", v22, 0xCu);
    sub_10002E7BC(v23);
  }

  (*(v16 + 8))(v17, v18);

LABEL_20:
  v13 = _swiftEmptyArrayStorage;
LABEL_21:
  *(p_align + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices) = v13;
  v25 = type metadata accessor for BiometricInterface();
  v33.receiver = p_align;
  v33.super_class = v25;
  return objc_msgSendSuper2(&v33, "init");
}

void sub_100059B60()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = Logger.common.unsafeMutableAddressor();
  v9 = *(v3 + 16);
  v9(v7, v8, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "BiometricInterface: Authenticating", v12, 2u);
  }

  v13 = *(v3 + 8);
  v13(v7, v2);
  v14 = *(v1 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices);
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
  aBlock[0] = 0;
  v17 = [v15 createMatchOperationWithError:aBlock];

  v18 = aBlock[0];
  if (!v17)
  {
    v19 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v9(v32, v8, v2);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "BiometricInterface: Error creating match operation: %@", v22, 0xCu);
      sub_10002E7BC(v23);
    }

    else
    {
    }

    v13(v32, v2);
    return;
  }

LABEL_15:
  v25 = OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_matchOperation;
  v26 = *(v1 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_matchOperation);
  *(v1 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_matchOperation) = v17;
  v27 = v17;

  if (v17)
  {
    [v27 setPurpose:2];
  }

  v28 = *(v1 + v25);
  if (v28)
  {
    aBlock[4] = sub_100059FA8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100058D84;
    aBlock[3] = &unk_1002FF328;
    v29 = _Block_copy(aBlock);
    v30 = v28;
    [v30 startWithReply:v29];
    _Block_release(v29);
  }
}

uint64_t sub_100059FA8(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  if (a2)
  {
    swift_errorRetain();
    v12 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v11, v12, v4);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "BiometricInterface: Error starting match operation: %@", v15, 0xCu);
      sub_10002E7BC(v16);
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      return result;
    }

    v18 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v18, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "BiometricInterface: Failed to start match operation, but no error was provided.", v21, 2u);
    }

    v11 = v8;
  }

  return (*(v5 + 8))(v11, v4);
}

void sub_10005A244()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "BiometricInterface: Stopped authenticating", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_matchOperation;
  v11 = *(v1 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_matchOperation);
  if (v11)
  {
    [v11 cancel];
    v12 = *(v1 + v10);
  }

  else
  {
    v12 = 0;
  }

  *(v1 + v10) = 0;
}

id sub_10005A3D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiometricInterface();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005A474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10005A57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DruidPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005A5D4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___CLBMousePointerManager_hasConnectedPointer;
  if (v2[OBJC_IVAR___CLBMousePointerManager_hasConnectedPointer] != v3)
  {
    v10 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v10, v4);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v2[v9];

      _os_log_impl(&_mh_execute_header, v12, v13, "Has connected pointer: %{BOOL}d", v14, 8u);
    }

    else
    {

      v12 = v11;
    }

    (*(v5 + 8))(v8, v4);
    return sub_10005C094();
  }

  return result;
}

char *sub_10005A780()
{
  v1 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = OBJC_IVAR___CLBMousePointerManager_mousePointerService;
  *&v0[v4] = [objc_opt_self() sharedInstance];
  v5 = OBJC_IVAR___CLBMousePointerManager_pointerClientController;
  *&v0[v5] = [objc_allocWithZone(PSPointerClientController) init];
  v6 = OBJC_IVAR___CLBMousePointerManager_systemClientController;
  *&v0[v6] = [objc_allocWithZone(PSPointerSystemClientController) init];
  *&v0[OBJC_IVAR___CLBMousePointerManager_mousePointerDeviceObserverToken] = 0;
  *&v0[OBJC_IVAR___CLBMousePointerManager_serviceKeepAliveAssertion] = 0;
  *&v0[OBJC_IVAR___CLBMousePointerManager_suppressEventsAssertion] = 0;
  v0[OBJC_IVAR___CLBMousePointerManager_hasConnectedPointer] = 0;
  v7 = type metadata accessor for MousePointerManager();
  v17.receiver = v0;
  v17.super_class = v7;
  v8 = objc_msgSendSuper2(&v17, "init");
  v9 = *&v8[OBJC_IVAR___CLBMousePointerManager_mousePointerService];
  v10 = v8;
  v11 = [v9 addPointerDeviceObserver:v10];
  *&v10[OBJC_IVAR___CLBMousePointerManager_mousePointerDeviceObserverToken] = v11;
  swift_unknownObjectRelease();
  [*&v10[OBJC_IVAR___CLBMousePointerManager_systemClientController] setDelegate:v10];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;

  sub_1000B85D8(0, 0, v3, &unk_1002995F8, v15);

  return v10;
}

uint64_t sub_10005A9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = type metadata accessor for Logger();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  sub_10002B6CC(&qword_10032D650);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for Notification();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[24] = swift_task_alloc();
  v7 = sub_10002B6CC(&qword_10032D658);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = sub_10002B6CC(&qword_10032D660);
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for MainActor();
  v4[32] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v10;
  v4[34] = v9;

  return _swift_task_switch(sub_10005AC84, v10, v9);
}

uint64_t sub_10005AC84(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (kAXSAssistiveTouchEnabledNotification)
  {
    v4 = v3[27];
    v13 = v3[26];
    v5 = v3[25];
    v6 = kAXSAssistiveTouchEnabledNotification;
    v7 = [objc_opt_self() defaultCenter];
    v8 = NSNotificationCenter.notifications(named:object:)();

    v3[13] = v8;
    type metadata accessor for NSNotificationCenter.Notifications();
    sub_10002B6CC(&qword_10032D668);
    sub_10005D054(&qword_10032D670, &type metadata accessor for NSNotificationCenter.Notifications);
    AsyncMapSequence.init(_:transform:)();

    AsyncMapSequence.base.getter();
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    AsyncMapSequence.transform.getter();
    (*(v13 + 8))(v4, v5);
    AsyncMapSequence.Iterator.init(_:transform:)();
    swift_beginAccess();
    v9 = static MainActor.shared.getter();
    v3[35] = v9;
    if (v9)
    {
      swift_getObjectType();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      a3 = v11;
    }

    else
    {
      v10 = 0;
      a3 = 0;
    }

    v3[36] = v10;
    v3[37] = a3;
    a1 = sub_10005AED4;
    a2 = v10;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005AED4()
{
  v1 = v0[35];
  v0[38] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10005D054(&qword_10032D678, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10005AFDC;
  v3 = v0[19];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10005AFDC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_10005B2CC;
  }

  else
  {
    (*(v2 + 304))();
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_10005B104;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005B104()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10002C51C(v3, &qword_10032D650);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);

    return _swift_task_switch(sub_10005B4E8, v4, v5);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 176), v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 320) = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_10005B2E4;
    v9 = *(v0 + 176);

    return v11(v0 + 16, v9);
  }
}

uint64_t sub_10005B2E4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 296);
  v6 = *(v1 + 288);

  return _swift_task_switch(sub_10005B484, v6, v5);
}

uint64_t sub_10005B484()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_10005B4E8, v1, v2);
}

uint64_t sub_10005B4E8()
{
  if (v0[5])
  {
    v2 = v0[17];
    v1 = v0[18];
    v3 = v0[16];
    v4 = Logger.common.unsafeMutableAddressor();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = _AXSAssistiveTouchEnabled() != 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Updated AssistiveTouch enabled: %{BOOL}d", v7, 8u);
    }

    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];

    (*(v9 + 8))(v8, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_10005C094();
    }

    sub_10002C51C((v0 + 2), &unk_10032D680);
    v13 = static MainActor.shared.getter();
    v0[35] = v13;
    if (v13)
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v0[36] = v14;
    v0[37] = v16;

    return _swift_task_switch(sub_10005AED4, v14, v16);
  }

  else
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v17 = v0[1];

    return v17();
  }
}

id sub_10005B760()
{
  v1 = *&v0[OBJC_IVAR___CLBMousePointerManager_mousePointerDeviceObserverToken];
  if (v1)
  {
    [v1 invalidate];
  }

  [*&v0[OBJC_IVAR___CLBMousePointerManager_pointerClientController] invalidate];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MousePointerManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005B8E0(uint64_t a1)
{
  v3 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = v6 > 0;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  sub_1000B85D8(0, 0, v5, &unk_1002995C8, v11);
}

uint64_t sub_10005BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005BAD8, v7, v6);
}

uint64_t sub_10005BAD8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v2 + OBJC_IVAR___CLBMousePointerManager_hasConnectedPointer);
  *(v2 + OBJC_IVAR___CLBMousePointerManager_hasConnectedPointer) = v1;
  sub_10005A5D4(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005BD80, v6, v5);
}

uint64_t sub_10005BD80()
{
  v1 = *(v0 + 16);

  v2 = [qword_100336870 sceneManager];
  [v2 addPointerScene:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005BEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005BF44, v6, v5);
}

uint64_t sub_10005BF44()
{
  v1 = *(v0 + 16);

  v2 = [qword_100336870 sceneManager];
  [v2 removePointerScene:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005C094()
{
  v1 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  if ((AXDeviceIsPad() & 1) == 0 && !_AXSAssistiveTouchEnabled())
  {
    v8 = OBJC_IVAR___CLBMousePointerManager_suppressEventsAssertion;
    if (!*&v0[OBJC_IVAR___CLBMousePointerManager_suppressEventsAssertion])
    {
      v9 = *&v0[OBJC_IVAR___CLBMousePointerManager_mousePointerService];
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 suppressPointerEventsForReason:v10];

      *&v0[v8] = v11;
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  v4 = OBJC_IVAR___CLBMousePointerManager_suppressEventsAssertion;
  v5 = *&v0[OBJC_IVAR___CLBMousePointerManager_suppressEventsAssertion];
  if (v5)
  {
    [v5 invalidate];
    *&v0[v4] = 0;
    swift_unknownObjectRelease();
  }

  if (v0[OBJC_IVAR___CLBMousePointerManager_hasConnectedPointer] != 1)
  {
LABEL_10:
    v12 = OBJC_IVAR___CLBMousePointerManager_serviceKeepAliveAssertion;
    v13 = *&v0[OBJC_IVAR___CLBMousePointerManager_serviceKeepAliveAssertion];
    if (!v13)
    {
      v7 = 0;
      goto LABEL_15;
    }

    [v13 invalidate];
    v7 = 0;
    *&v0[v12] = 0;
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v6 = OBJC_IVAR___CLBMousePointerManager_serviceKeepAliveAssertion;
  if (!*&v0[OBJC_IVAR___CLBMousePointerManager_serviceKeepAliveAssertion])
  {
    *&v0[v6] = [*&v0[OBJC_IVAR___CLBMousePointerManager_pointerClientController] acquireServiceKeepAliveAssertion];
    v7 = 1;
    goto LABEL_14;
  }

  v7 = 1;
LABEL_15:
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v0;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v15;
  *(v17 + 40) = v7;
  sub_1000B85D8(0, 0, v3, &unk_1002995B8, v17);
}

uint64_t sub_10005C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005C39C, v7, v6);
}

uint64_t sub_10005C39C()
{
  v1 = *(v0 + 32);

  sub_10005C408(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_10005C408(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  BSDispatchQueueAssertMain();
  v11 = Logger.common.unsafeMutableAddressor();
  v12 = *(v5 + 16);
  if (a1)
  {
    v12(v10, v11, v4);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v14, v15))
    {
      v20 = &selRef_prepareScenesForPointerForDisplayConfiguration_;
      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = *&v13[OBJC_IVAR___CLBMousePointerManager_systemClientController];
    *(v16 + 4) = v18;
    *v17 = v18;
    v19 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Activating pointer scenes. systemClientController: %@", v16, 0xCu);
    v20 = &selRef_prepareScenesForPointerForDisplayConfiguration_;
  }

  else
  {
    v12(v8, v11, v4);
    v21 = v2;
    v14 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v14, v22))
    {
      v20 = &selRef_invalidateScenesForPointerForDisplayConfiguration_;
      v10 = v8;
      goto LABEL_9;
    }

    v23 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v23 = 138412290;
    v24 = *&v21[OBJC_IVAR___CLBMousePointerManager_systemClientController];
    *(v23 + 4) = v24;
    *v17 = v24;
    v25 = v24;
    _os_log_impl(&_mh_execute_header, v14, v22, "Invalidating pointer scenes. systemClientController: %@", v23, 0xCu);
    v20 = &selRef_invalidateScenesForPointerForDisplayConfiguration_;
    v10 = v8;
  }

  sub_10002C51C(v17, &qword_10032B670);

LABEL_9:

  (*(v5 + 8))(v10, v4);
  v26 = *&v2[OBJC_IVAR___CLBMousePointerManager_systemClientController];
  v27 = [objc_opt_self() mainConfiguration];
  [v26 *v20];
}

uint64_t sub_10005C724(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005D0A4;

  return sub_10005C300(a1, v4, v5, v6, v7);
}

uint64_t sub_10005C7E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E558;

  return sub_10005BA3C(a1, v4, v5, v6, v7);
}

uint64_t sub_10005C8AC(void *a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.common.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
    sub_10002C51C(v13, &qword_10032B670);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10005CA68(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.common.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[0] = a4;
    v29[1] = a3;
    v20 = v19;
    v21 = a2;
    v22 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v22 = v16;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, v21, v20, 0xCu);
    sub_10002C51C(v22, &qword_10032B670);

    a4 = v29[0];
  }

  (*(v12 + 8))(v14, v11);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  type metadata accessor for MainActor();
  v25 = v16;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  sub_1000B85D8(0, 0, v10, a4, v27);
}

uint64_t sub_10005CD28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_10005BEAC(a1, v4, v5, v6);
}

uint64_t sub_10005CDDC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10005CE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_10005BCE8(a1, v4, v5, v6);
}

unint64_t sub_10005CEDC()
{
  result = qword_10032D640;
  if (!qword_10032D640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032D640);
  }

  return result;
}

uint64_t sub_10005CF28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10005CF60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10005CFA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_10005A9F8(a1, v4, v5, v6);
}

uint64_t sub_10005D054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonStyleConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = static Color.clarityUIButtonBackground.getter();
  v6 = static Color.primary.getter();
  result = sub_10002B6CC(qword_10032D750);
  *(a2 + *(result + 36)) = v5;
  *(a2 + *(result + 40)) = v6;
  return result;
}

uint64_t sub_10005D178()
{
  result = type metadata accessor for ButtonStyleConfiguration();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005D208(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonStyleConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_10005D43C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonStyleConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + v18) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v16 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v16 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v16)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v16;
    }

    if (v20)
    {
      v26 = ~v16 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v16)
  {
    v27 = *(v9 + 56);

    v27(a1, a2, v10, v8);
  }

  else
  {
    v28 = (a1 + v17) & ~v14;
    if (v12 == v16)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v30;
    }
  }
}

uint64_t sub_10005D750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_10002CAF8(&qword_10032D7E0);
  v3 = *(a1 + 24);
  v17 = *(a1 + 16);
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032D7E8);
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032D7F0);
  v4 = type metadata accessor for ModifiedContent();
  v31 = sub_10002CD18(&qword_10032D7F8, &qword_10032D7E0);
  WitnessTable = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v30 = sub_10002CD18(&qword_10032D800, &qword_10032D7E8);
  v27 = swift_getWitnessTable();
  v28 = sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
  v23 = v4;
  v24 = &type metadata for Circle;
  v25 = swift_getWitnessTable();
  v26 = sub_10005E044();
  v5 = type metadata accessor for PlatterShadowedContent();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = v18;
  ButtonStyleConfiguration.isPressed.getter();
  v20 = v17;
  v21 = v3;
  v22 = v12;
  PlatterShadowedContent.init(shape:isPressed:content:)();
  v13 = swift_getWitnessTable();
  sub_100086FE8(v9, v5, v13);
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_100086FE8(v11, v5, v13);
  return (v14)(v11, v5);
}

uint64_t sub_10005DAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v32 = sub_10002B6CC(&qword_10032D7E0);
  __chkstk_darwin(v32);
  v8 = &v30 - v7;
  v35 = type metadata accessor for _BackgroundStyleModifier();
  v9 = type metadata accessor for ModifiedContent();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v30 - v10;
  sub_10002CAF8(&qword_10032D7E8);
  v36 = type metadata accessor for ModifiedContent();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v30 - v11;
  sub_10002CAF8(&qword_10032D7F0);
  v12 = type metadata accessor for ModifiedContent();
  v40 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v37 = &v30 - v15;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_10002B6CC(&qword_10032D818);
  ButtonStyleConfiguration.label.getter();
  v30 = type metadata accessor for KeypadButtonStyleView();
  static Edge.Set.all.getter();
  v16 = sub_10002CD18(&qword_10032D7F8, &qword_10032D7E0);
  v17 = v31;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  sub_10005E0A4(v8);
  v42 = a2;
  v43 = a3;
  v44 = a1;
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v49 = v16;
  v50 = WitnessTable;
  v19 = swift_getWitnessTable();
  v20 = v33;
  View.overlay<A>(alignment:content:)();
  (*(v38 + 8))(v17, v9);
  v21 = sub_10002CD18(&qword_10032D800, &qword_10032D7E8);
  v47 = v19;
  v48 = v21;
  v22 = v36;
  v23 = swift_getWitnessTable();
  v24 = v34;
  View.foregroundColor(_:)();
  (*(v39 + 8))(v20, v22);
  v25 = sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
  v45 = v23;
  v46 = v25;
  v26 = swift_getWitnessTable();
  v27 = v37;
  sub_100086FE8(v24, v12, v26);
  v28 = *(v40 + 8);
  v28(v24, v12);
  sub_100086FE8(v27, v12, v26);
  return (v28)(v27, v12);
}

uint64_t sub_10005E004@<X0>(uint64_t *a1@<X8>)
{
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    result = static Color.clarityUIPressedButtonOverlay.getter();
  }

  else
  {
    result = static Color.clear.getter();
  }

  *a1 = result;
  return result;
}

unint64_t sub_10005E044()
{
  result = qword_10032D810;
  if (!qword_10032D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D810);
  }

  return result;
}

uint64_t sub_10005E0A4(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032D7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005E118()
{
  sub_10002CAF8(&qword_10032D7E0);
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032D7E8);
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032D7F0);
  type metadata accessor for ModifiedContent();
  sub_10002CD18(&qword_10032D7F8, &qword_10032D7E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032D800, &qword_10032D7E8);
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
  swift_getWitnessTable();
  sub_10005E044();
  type metadata accessor for PlatterShadowedContent();
  return swift_getWitnessTable();
}

uint64_t sub_10005E338@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10005E38C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002B6CC(&qword_10032CEF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LockScreenView();
  sub_10003AFFC(v1 + *(v10 + 24), v9, &qword_10032CEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005E594()
{
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for LockState();
  swift_allocObject();
  return LockState.init(mobileKeybagManager:)();
}

uint64_t sub_10005E608(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_10002B6CC(&qword_10032D838);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10002B6CC(&qword_10032D840);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

char *sub_10005E7A0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_10002B6CC(&qword_10032D838);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10002B6CC(&qword_10032D840);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[18]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LockScreenView()
{
  result = qword_10032D8A0;
  if (!qword_10032D8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005E970()
{
  sub_100052974();
  if (v0 <= 0x3F)
  {
    sub_10005ECBC(319, &qword_10032D8B0, &qword_10032D8B8, &unk_100299748, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10005EC58(319, &qword_10032D8C0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10005EE48(319, &qword_10032CF90, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10005EC58(319, &qword_10032D8C8, &type metadata accessor for Date, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10005EE48(319, &qword_10032D8D0, &_s8TapStageON, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10005ECBC(319, &qword_10032D8D8, &qword_10032D8E0, &unk_100299750, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10005ED20();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for BiometricInterface();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Applications(319);
                    if (v9 <= 0x3F)
                    {
                      sub_10005EDB4();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for NSNotificationCenter.Publisher();
                        if (v11 <= 0x3F)
                        {
                          sub_10005EE48(319, &unk_10032D900, &_s17UnlockButtonStyleON, &type metadata accessor for Optional);
                          if (v12 <= 0x3F)
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

void sub_10005EC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10005ECBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10002CAF8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10005ED20()
{
  if (!qword_10032D8E8)
  {
    type metadata accessor for LockState();
    sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032D8E8);
    }
  }
}

void sub_10005EDB4()
{
  if (!qword_10032D8F8)
  {
    type metadata accessor for LockScreenWallpaperMetadataProvider();
    sub_100066C84(&qword_10032EA70, type metadata accessor for LockScreenWallpaperMetadataProvider);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032D8F8);
    }
  }
}

void sub_10005EE48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10005EEB4()
{
  v0 = sub_10005EFC0();
  if (!v0)
  {
    return LocalizedStringKey.init(stringLiteral:)();
  }

  if (v0 == 1)
  {
    type metadata accessor for LockScreenView();
    sub_10002B6CC(&qword_10032D9C0);
    State.wrappedValue.getter();
    return LocalizedStringKey.init(stringLiteral:)();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10005EFC0()
{
  v1 = type metadata accessor for LockScreenView();
  result = *(v0 + *(v1 + 88));
  if (result == 3)
  {
    v3 = *(v0 + *(v1 + 56));
    if ((sub_100058E88() & 1) == 0)
    {
      sub_10002C9FC(0, &qword_10032BF60);
      v8 = [swift_getObjCClassFromMetadata() sharedInstance];
      v9 = [v8 oneTapUnlock];

      return v9 ^ 1;
    }

    v4 = *(v3 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices);
    if (v4 >> 62)
    {
      v10 = *(v3 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices);
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = v10;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();

    if (v7)
    {
      return 2 * (sub_1000227C0() != 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005F104()
{
  result = static ClarityUIMetrics.minimumComponentHeight.getter();
  qword_10032D820 = v1;
  return result;
}

uint64_t sub_10005F124@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LockScreenView();
  v4 = *(v3 - 8);
  v5 = v3 - 8;
  v44 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v41 = v6;
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = static Alignment.center.getter();
  a1[1] = v8;
  v9 = sub_10002B6CC(&qword_10032D988);
  sub_10005F540(v1, a1 + *(v9 + 44));
  v10 = *(v5 + 80);
  sub_1000654EC(v1, v7);
  v45 = *(v4 + 80);
  v11 = (v45 + 16) & ~v45;
  v12 = swift_allocObject();
  v40 = type metadata accessor for LockScreenView;
  sub_10006710C(v7, v12 + v11, type metadata accessor for LockScreenView);
  v13 = sub_10002B6CC(&qword_10032D990);
  v14 = *(v13 + 52);
  v42 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(v42 - 8);
  v16 = *(v15 + 16);
  v17 = v15 + 16;
  v16(a1 + v14, v1 + v10, v42);
  v43 = v16;
  v18 = (a1 + *(v13 + 56));
  *v18 = sub_100065560;
  v18[1] = v12;
  v39[0] = *(v44 + 84);
  v39[1] = v17;
  sub_1000654EC(v1, v7);
  v19 = swift_allocObject();
  v20 = v40;
  sub_10006710C(v7, v19 + v11, v40);
  v21 = sub_10002B6CC(&qword_10032D998);
  v16(a1 + *(v21 + 52), v1 + v39[0], v42);
  v22 = (a1 + *(v21 + 56));
  *v22 = sub_100065578;
  v22[1] = v19;
  v23 = v44;
  v24 = *(v44 + 88);
  sub_1000654EC(v1, v7);
  v25 = swift_allocObject();
  sub_10006710C(v7, v25 + v11, v20);
  v26 = sub_10002B6CC(&qword_10032D9A0);
  v27 = v1 + v24;
  v28 = v42;
  v43(a1 + *(v26 + 52), v27, v42);
  v29 = (a1 + *(v26 + 56));
  *v29 = sub_1000655F4;
  v29[1] = v25;
  v44 = *(v23 + 92);
  sub_1000654EC(v1, v7);
  v30 = swift_allocObject();
  v31 = v40;
  sub_10006710C(v7, v30 + v11, v40);
  v32 = sub_10002B6CC(&qword_10032D9A8);
  v43(a1 + *(v32 + 52), v1 + v44, v28);
  v33 = (a1 + *(v32 + 56));
  *v33 = sub_1000655FC;
  v33[1] = v30;
  v34 = *v1;
  sub_1000654EC(v1, v7);
  v35 = swift_allocObject();
  sub_10006710C(v7, v35 + v11, v31);
  v36 = sub_10002B6CC(&qword_10032D9B0);
  *(a1 + *(v36 + 52)) = v34;
  v37 = (a1 + *(v36 + 56));
  *v37 = sub_100065698;
  v37[1] = v35;
}

uint64_t sub_10005F540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = sub_10002B6CC(&qword_10032D9D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v41 - v11);
  v13 = sub_10002B6CC(&qword_10032D9E0);
  v14 = __chkstk_darwin(v13 - 8);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = type metadata accessor for LockScreenView();
  v19 = *(v18 + 28);
  v45 = a1;
  v20 = (a1 + v19);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v47) = v21;
  v48 = v22;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  if (v46 == 1)
  {
    *v12 = static Alignment.center.getter();
    v12[1] = v23;
    v24 = sub_10002B6CC(&qword_10032D9F0);
    sub_10005FFA4(v45, v12 + *(v24 + 44));
    OpacityTransition.init()();
    (*(v4 + 16))(v42, v8, v3);
    sub_100066C84(&qword_10032D260, &type metadata accessor for OpacityTransition);
    v25 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v8, v3);
    *(v12 + *(v9 + 36)) = v25;
    sub_1000404F8(v12, v17, &qword_10032D9D8);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = 1;
  (*(v10 + 56))(v17, v26, 1, v9);
  v28 = (v45 + *(v18 + 36));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v47) = v29;
  v48 = v30;
  State.wrappedValue.getter();
  if (v46 == 1)
  {
    v31 = [objc_opt_self() sharedInstance];
    [v31 backOffTime];
    v33 = v32;

    v46 = v33;
    State.init(wrappedValue:)();
    v34 = v47;
    v27 = v48;
    v46 = 1;
    State.init(wrappedValue:)();
    v35 = v47;
    v36 = v48;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  v37 = v43;
  sub_10003AFFC(v17, v43, &qword_10032D9E0);
  v38 = v44;
  sub_10003AFFC(v37, v44, &qword_10032D9E0);
  v39 = (v38 + *(sub_10002B6CC(&qword_10032D9E8) + 48));
  sub_1000658B8(v34, v27);
  sub_100065900(v34, v27);
  *v39 = v34;
  v39[1] = v27;
  v39[2] = v35;
  v39[3] = v36;
  sub_10002C51C(v17, &qword_10032D9E0);
  sub_100065900(v34, v27);
  return sub_10002C51C(v37, &qword_10032D9E0);
}

uint64_t sub_10005FA10()
{
  type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();
  sub_10002B6CC(&qword_10032D9C0);
  return State.wrappedValue.setter();
}

uint64_t sub_10005FACC()
{
  type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032B720);
  return State.wrappedValue.setter();
}

void sub_10005FB40()
{
  Notification.object.getter();
  if (v2)
  {
    sub_10002C9FC(0, &qword_10032CB68);
    if (swift_dynamicCast())
    {
      if ([v0 keyCode] == 44)
      {
        sub_10005FC04();
      }
    }
  }

  else
  {
    sub_10002C51C(v1, &qword_10032B680);
  }
}

uint64_t sub_10005FC04()
{
  v1 = sub_10005EFC0();
  if (v1)
  {
    if (v1 == 1)
    {
LABEL_6:
      __chkstk_darwin(v1);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = type metadata accessor for LockScreenView();
    type metadata accessor for LockState();
    sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
    v3 = StateObject.wrappedValue.getter();
    v4 = (*(*v3 + 128))(v3);

    if ((v4 & 1) != 0 || *(v0 + *(v2 + 92)) == 1)
    {
      goto LABEL_6;
    }

    return sub_100064F80();
  }

  return result;
}

uint64_t sub_10005FE3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LockScreenView();
  type metadata accessor for LockState();
  sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
  v4 = StateObject.wrappedValue.getter();
  v5 = (*(*v4 + 128))(v4);

  if ((v5 & 1) == 0 && *(a2 + *(v3 + 92)) != 1)
  {
    return sub_100064F80();
  }

  __chkstk_darwin(v6);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10005FFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v110 = sub_10002B6CC(&qword_10032D9F8);
  __chkstk_darwin(v110);
  v112 = (v108 - v3);
  v111 = sub_10002B6CC(&qword_10032DA00);
  __chkstk_darwin(v111);
  v115 = v108 - v4;
  v127 = sub_10002B6CC(&qword_10032DA08);
  v126 = *(v127 - 8);
  v5 = __chkstk_darwin(v127);
  v114 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = v108 - v7;
  v8 = sub_10002B6CC(&qword_10032DA10);
  v9 = __chkstk_darwin(v8 - 8);
  v128 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v134 = v108 - v11;
  v132 = type metadata accessor for LockScreenView();
  v124 = *(v132 - 8);
  v12 = __chkstk_darwin(v132);
  v109 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v13;
  __chkstk_darwin(v12);
  v130 = v108 - v14;
  v15 = sub_10002B6CC(&qword_10032DA18);
  __chkstk_darwin(v15 - 8);
  v17 = v108 - v16;
  v18 = sub_10002B6CC(&qword_10032DA20);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v108 - v20;
  v118 = sub_10002B6CC(&qword_10032DA28);
  __chkstk_darwin(v118);
  v23 = v108 - v22;
  v116 = sub_10002B6CC(&qword_10032DA30);
  v117 = *(v116 - 8);
  v24 = *(v117 + 64);
  v25 = __chkstk_darwin(v116);
  v119 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v108 - v26;
  v121 = sub_10002B6CC(&qword_10032DA38);
  __chkstk_darwin(v121);
  v29 = (v108 - v28);
  v120 = sub_10002B6CC(&qword_10032DA40);
  __chkstk_darwin(v120);
  v122 = v108 - v30;
  v123 = sub_10002B6CC(&qword_10032DA48);
  __chkstk_darwin(v123);
  v32 = v108 - v31;
  v33 = sub_10002B6CC(&qword_10032DA50);
  v34 = __chkstk_darwin(v33 - 8);
  v125 = v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v135 = v108 - v36;
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0x4014000000000000;
  v17[16] = 0;
  v37 = &v17[*(sub_10002B6CC(&qword_10032DA58) + 44)];
  v133 = a1;
  sub_100060F98(a1, v37);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000404F8(v17, v21, &qword_10032DA18);
  v38 = &v21[*(v19 + 44)];
  v39 = v143;
  *(v38 + 4) = v142;
  *(v38 + 5) = v39;
  *(v38 + 6) = v144;
  v40 = v139;
  *v38 = v138;
  *(v38 + 1) = v40;
  v41 = v141;
  *(v38 + 2) = v140;
  *(v38 + 3) = v41;
  if (qword_10032B520 != -1)
  {
    swift_once();
  }

  v42 = qword_1003368F8;
  v43 = type metadata accessor for LockScreenWallpaperMetadataProvider();
  v44 = sub_100066C84(&qword_10032EA70, type metadata accessor for LockScreenWallpaperMetadataProvider);

  v108[2] = v42;
  v108[1] = v43;
  v108[0] = v44;
  v45 = ObservedObject.init(wrappedValue:)();
  v47 = v46;
  v48 = static Alignment.center.getter();
  v50 = v49;
  sub_1000404F8(v21, v23, &qword_10032DA20);
  v51 = &v23[*(v118 + 36)];
  *v51 = v45;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v50;
  v52 = static Edge.Set.bottom.getter();
  sub_1000404F8(v23, v27, &qword_10032DA28);
  v27[*(v116 + 36)] = v52;
  v53 = v119;
  sub_1000404F8(v27, v119, &qword_10032DA30);
  v54 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v55 = swift_allocObject();
  sub_1000404F8(v53, v55 + v54, &qword_10032DA30);
  *v29 = swift_getKeyPath();
  v119 = sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  v56 = (v29 + *(v121 + 36));
  *v56 = sub_100065DEC;
  v56[1] = v55;
  v57 = v122;
  sub_1000404F8(v29, v122, &qword_10032DA38);
  *(v57 + *(v120 + 36)) = 0x3FF0000000000000;
  v58 = [objc_opt_self() defaultCenter];
  v59 = v123;
  NSNotificationCenter.publisher(for:object:)();

  v60 = v133;
  v61 = v130;
  sub_1000654EC(v133, v130);
  v62 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v63 = swift_allocObject();
  sub_10006710C(v61, v63 + v62, type metadata accessor for LockScreenView);
  sub_1000404F8(v57, v32, &qword_10032DA40);
  v64 = &v32[*(v59 + 56)];
  *v64 = sub_100065E70;
  v64[1] = v63;
  v65 = v60 + *(v132 + 32);
  v67 = *(v65 + 8);
  LOBYTE(v145) = *v65;
  v66 = v145;
  *(&v145 + 1) = v67;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  sub_10002CD18(&qword_10032DA80, &qword_10032DA48);
  View.accessibilityHidden(_:)();
  sub_10002C51C(v32, &qword_10032DA48);
  LOBYTE(v145) = v66;
  *(&v145 + 1) = v67;
  State.wrappedValue.getter();
  v68 = 1;
  v69 = v127;
  if (v136 == 1)
  {
    v70 = sub_1000088C8();
    v71 = 6;
    if (v70 != 1)
    {
      v71 = 0;
    }

    if (!v70)
    {
      v71 = 4;
    }

    v124 = v71;
    v72 = v133;
    v73 = v130;
    sub_1000654EC(v133, v130);
    v74 = swift_allocObject();
    sub_10006710C(v73, v74 + v62, type metadata accessor for LockScreenView);
    v75 = v109;
    sub_1000654EC(v72, v109);
    v76 = swift_allocObject();
    sub_10006710C(v75, v76 + v62, type metadata accessor for LockScreenView);
    type metadata accessor for NamespaceWrapper();
    v131 = sub_100066C84(&qword_10032DA90, type metadata accessor for NamespaceWrapper);
    v77 = EnvironmentObject.init()();
    v78 = v112;
    *v112 = v77;
    *(v78 + 8) = v79;
    *(v78 + 16) = swift_getKeyPath();
    *(v78 + 24) = 0;
    v80 = type metadata accessor for LockScreenPasscodeView();
    v81 = v80[6];
    *(v78 + v81) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v82 = v78 + v80[7];
    v136 = 0;
    v137 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v83 = v146;
    *v82 = v145;
    *(v82 + 16) = v83;
    v84 = v80[8];
    v136 = 0;
    State.init(wrappedValue:)();
    *(v78 + v84) = v145;
    v85 = (v78 + v80[9]);

    *v85 = ObservedObject.init(wrappedValue:)();
    v85[1] = v86;
    *(v78 + v80[10]) = v124;
    v87 = (v78 + v80[11]);
    *v87 = sub_100065E88;
    v87[1] = v74;
    v88 = (v78 + v80[12]);
    *v88 = sub_100065F08;
    v88[1] = v76;
    *(v78 + *(v110 + 36)) = 0x4000000000000000;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v89 = v115;
    sub_1000404F8(v78, v115, &qword_10032D9F8);
    v90 = (v89 + *(v111 + 36));
    v91 = v150;
    v90[4] = v149;
    v90[5] = v91;
    v90[6] = v151;
    v92 = v146;
    *v90 = v145;
    v90[1] = v92;
    v93 = v148;
    v90[2] = v147;
    v90[3] = v93;
    v94 = Namespace.wrappedValue.getter();
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    v96 = static ObservableObject.environmentStore.getter();
    v97 = v114;
    sub_1000404F8(v89, v114, &qword_10032DA00);
    v98 = (v97 + *(v69 + 36));
    *v98 = v96;
    v98[1] = v95;
    v99 = v97;
    v100 = v113;
    sub_1000404F8(v99, v113, &qword_10032DA08);
    sub_1000404F8(v100, v134, &qword_10032DA08);
    v68 = 0;
  }

  v101 = v134;
  (*(v126 + 56))(v134, v68, 1, v69);
  v102 = v135;
  v103 = v125;
  sub_10003AFFC(v135, v125, &qword_10032DA50);
  v104 = v128;
  sub_10003AFFC(v101, v128, &qword_10032DA10);
  v105 = v129;
  sub_10003AFFC(v103, v129, &qword_10032DA50);
  v106 = sub_10002B6CC(&qword_10032DA88);
  sub_10003AFFC(v104, v105 + *(v106 + 48), &qword_10032DA10);
  sub_10002C51C(v101, &qword_10032DA10);
  sub_10002C51C(v102, &qword_10032DA50);
  sub_10002C51C(v104, &qword_10032DA10);
  return sub_10002C51C(v103, &qword_10032DA50);
}

uint64_t sub_100060F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v199 = sub_10002B6CC(&qword_10032DA98);
  __chkstk_darwin(v199);
  v182 = &v174 - v3;
  v4 = sub_10002B6CC(&qword_10032DA78);
  v200 = *(v4 - 8);
  v201 = v4;
  v5 = __chkstk_darwin(v4);
  v181 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v180 = &v174 - v7;
  v8 = sub_10002B6CC(&qword_10032DAA0);
  v9 = __chkstk_darwin(v8 - 8);
  v204 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = &v174 - v11;
  v12 = type metadata accessor for LockScreenView();
  v196 = *(v12 - 1);
  __chkstk_darwin(v12);
  v197 = v13;
  v198 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Material();
  v194 = *(v14 - 8);
  v195 = v14;
  __chkstk_darwin(v14);
  v193 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v16 - 8);
  v192 = &v174 - v17;
  v189 = type metadata accessor for Date();
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v186 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v19 - 8);
  v206 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_10002B6CC(&qword_10032DAA8);
  __chkstk_darwin(v176);
  v179 = &v174 - v21;
  v22 = sub_10002B6CC(&qword_10032DA68);
  v183 = *(v22 - 8);
  v184 = v22;
  v23 = __chkstk_darwin(v22);
  v178 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v177 = &v174 - v25;
  v26 = sub_10002B6CC(&qword_10032DAB0);
  v27 = __chkstk_darwin(v26 - 8);
  v203 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v213 = &v174 - v29;
  v30 = type metadata accessor for ColorScheme();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v174 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LockState();
  sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
  v34 = StateObject.wrappedValue.getter();
  v202 = (*(*v34 + 128))(v34);

  v35 = *(a1 + v12[17] + 8);
  sub_10005E38C(v33);
  v208 = v35;
  v211 = sub_1000B8C94();
  v36 = *(v31 + 8);
  v188 = v33;
  v190 = v31 + 8;
  v191 = v30;
  v185 = v36;
  v36(v33, v30);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v249 = 0;
  v209 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v250 = 0;
  v45 = *(a1 + v12[24]);
  p_align = &stru_100322FE8.align;
  v207 = a1;
  if (v45 == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v47);
    v175 = v12;
    sub_10002B6CC(&qword_10032D840);
    v48 = v186;
    State.wrappedValue.getter();
    if (qword_10032B4F0 != -1)
    {
      swift_once();
    }

    v49 = qword_10032D830;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v51 = [v49 stringFromDate:isa];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    (*(v187 + 8))(v48, v189);
    v55._countAndFlagsBits = v52;
    v55._object = v54;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v55);

    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v56);
    LocalizedStringKey.init(stringInterpolation:)();
    v57 = Text.init(_:tableName:bundle:comment:)();
    v59 = v58;
    v61 = v60;
    static Font.Weight.medium.getter();
    v62 = enum case for Font.Design.rounded(_:);
    v63 = type metadata accessor for Font.Design();
    v64 = *(v63 - 8);
    v65 = v192;
    (*(v64 + 104))(v192, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    static Font.system(size:weight:design:)();
    sub_10002C51C(v65, &qword_10032D048);
    v66 = Text.font(_:)();
    v68 = v67;
    LOBYTE(v62) = v69;

    sub_100047B84(v57, v59, v61 & 1);

    v70 = v188;
    sub_10005E38C(v188);
    sub_1000B8C94();
    v185(v70, v191);
    *v243 = Color.init(_:)();
    v71 = Text.foregroundStyle<A>(_:)();
    v73 = v72;
    LOBYTE(v59) = v74;
    sub_100047B84(v66, v68, v62 & 1);

    v75 = v193;
    static Material.ultraThick.getter();
    v76 = v195;
    v77 = Text.foregroundStyle<A>(_:)();
    v79 = v78;
    LOBYTE(v52) = v80;
    v174 = v81;
    sub_100047B84(v71, v73, v59 & 1);

    (*(v194 + 8))(v75, v76);
    v82 = v207;
    v83 = v198;
    sub_1000654EC(v207, v198);
    v84 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v85 = swift_allocObject();
    sub_10006710C(v83, v85 + v84, type metadata accessor for LockScreenView);
    v241[0] = v52 & 1;
    *v243 = v77;
    *&v243[8] = v79;
    v243[16] = v52 & 1;
    *&v243[17] = v242[0];
    *&v243[20] = *(v242 + 3);
    *&v243[24] = v174;
    *&v243[32] = sub_100066430;
    *&v243[40] = v85;
    *&v243[56] = 0;
    *&v243[48] = 0;
    sub_10002B6CC(&qword_10032DB38);
    sub_10006633C();
    v86 = v179;
    View.accessibilityIdentifier(_:)();
    sub_100047B84(v77, v79, v52 & 1);

    LOBYTE(v52) = static Edge.Set.top.getter();
    static ClarityUIMetrics.titleTopPadding.getter();
    EdgeInsets.init(_all:)();
    v87 = &v86[*(v199 + 36)];
    *v87 = v52;
    *(v87 + 1) = v88;
    *(v87 + 2) = v89;
    *(v87 + 3) = v90;
    *(v87 + 4) = v91;
    v87[40] = 0;
    LOBYTE(v52) = static Edge.Set.horizontal.getter();
    static ClarityUIMetrics.componentHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v92 = &v86[*(v176 + 36)];
    *v92 = v52;
    *(v92 + 1) = v93;
    *(v92 + 2) = v94;
    *(v92 + 3) = v95;
    *(v92 + 4) = v96;
    v92[40] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v97 = *&v243[8] >> 60;
    a1 = v82;
    if (*&v243[8] >> 60 != 15)
    {
      sub_1000663C8(*v243, *&v243[8]);
    }

    v98 = v86;
    v99 = v178;
    sub_1000404F8(v98, v178, &qword_10032DAA8);
    v100 = v184;
    *(v99 + *(v184 + 36)) = v97 < 0xF;
    v101 = v99;
    v102 = v177;
    sub_1000404F8(v101, v177, &qword_10032DA68);
    v103 = v213;
    sub_1000404F8(v102, v213, &qword_10032DA68);
    (*(v183 + 56))(v103, 0, 1, v100);
    v12 = v175;
    p_align = (&stru_100322FE8 + 24);
  }

  else
  {
    v103 = v213;
    (*(v183 + 56))(v213, 1, 1, v184);
  }

  if (*(a1 + v12[25]) == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v104);
    sub_10002B6CC(&qword_10032D840);
    v105 = v186;
    State.wrappedValue.getter();
    if (qword_10032B4E8 != -1)
    {
      swift_once();
    }

    v106 = qword_10032D828;
    v107 = Date._bridgeToObjectiveC()().super.isa;
    v108 = [v106 *(p_align + 449)];

    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    (*(v187 + 8))(v105, v189);
    v112._countAndFlagsBits = v109;
    v112._object = v111;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v112);

    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v113);
    LocalizedStringKey.init(stringInterpolation:)();
    v114 = Text.init(_:tableName:bundle:comment:)();
    v116 = v115;
    v118 = v117;
    static Font.Weight.semibold.getter();
    v119 = enum case for Font.Design.rounded(_:);
    v120 = type metadata accessor for Font.Design();
    v121 = *(v120 - 8);
    v122 = v192;
    (*(v121 + 104))(v192, v119, v120);
    (*(v121 + 56))(v122, 0, 1, v120);
    static Font.system(size:weight:design:)();
    sub_10002C51C(v122, &qword_10032D048);
    v123 = Text.font(_:)();
    v125 = v124;
    LOBYTE(v122) = v126;

    sub_100047B84(v114, v116, v118 & 1);

    v127 = v188;
    sub_10005E38C(v188);
    sub_1000B8C94();
    v185(v127, v191);
    *v243 = Color.init(_:)();
    v128 = Text.foregroundStyle<A>(_:)();
    v130 = v129;
    LOBYTE(v114) = v131;
    sub_100047B84(v123, v125, v122 & 1);

    v132 = v193;
    static Material.ultraThick.getter();
    v133 = v195;
    v134 = Text.foregroundStyle<A>(_:)();
    v136 = v135;
    LOBYTE(v109) = v137;
    v206 = v138;
    sub_100047B84(v128, v130, v114 & 1);

    (*(v194 + 8))(v132, v133);
    v139 = v207;
    v140 = v198;
    sub_1000654EC(v207, v198);
    v141 = (*(v196 + 80) + 16) & ~*(v196 + 80);
    v142 = swift_allocObject();
    sub_10006710C(v140, v142 + v141, type metadata accessor for LockScreenView);
    v241[0] = v109 & 1;
    *v243 = v134;
    *&v243[8] = v136;
    v243[16] = v109 & 1;
    *&v243[17] = v242[0];
    *&v243[20] = *(v242 + 3);
    *&v243[24] = v206;
    *&v243[32] = sub_100066314;
    *&v243[40] = v142;
    *&v243[56] = 0;
    *&v243[48] = 0;
    sub_10002B6CC(&qword_10032DB38);
    sub_10006633C();
    v143 = v182;
    View.accessibilityIdentifier(_:)();
    sub_100047B84(v134, v136, v109 & 1);

    LOBYTE(v109) = static Edge.Set.horizontal.getter();
    static ClarityUIMetrics.componentHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v144 = v143 + *(v199 + 36);
    *v144 = v109;
    *(v144 + 8) = v145;
    *(v144 + 16) = v146;
    *(v144 + 24) = v147;
    *(v144 + 32) = v148;
    *(v144 + 40) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v149 = *&v243[8] >> 60;
    if (*&v243[8] >> 60 != 15)
    {
      sub_1000663C8(*v243, *&v243[8]);
    }

    v150 = v181;
    sub_1000404F8(v143, v181, &qword_10032DA98);
    v151 = v201;
    *(v150 + *(v201 + 36)) = v149 < 0xF;
    v152 = v150;
    v153 = v180;
    sub_1000404F8(v152, v180, &qword_10032DA78);
    v154 = v153;
    v155 = v212;
    sub_1000404F8(v154, v212, &qword_10032DA78);
    (*(v200 + 56))(v155, 0, 1, v151);
    a1 = v139;
    v103 = v213;
  }

  else
  {
    (*(v200 + 56))(v212, 1, 1, v201);
  }

  if (sub_10005EFC0())
  {
    if (sub_10005EFC0() == 1)
    {
      v156 = static Alignment.bottom.getter();
      v158 = v157;
      sub_100062DC8(a1, v243);
      v219 = *&v243[128];
      v220 = *&v243[144];
      v221 = *&v243[160];
      v222 = *&v243[176];
      v215[3] = *&v243[64];
      v216 = *&v243[80];
      v217 = *&v243[96];
      v218 = *&v243[112];
      v214 = *v243;
      v215[0] = *&v243[16];
      v215[1] = *&v243[32];
      v215[2] = *&v243[48];
      *&v235[128] = *&v243[128];
      *&v235[144] = *&v243[144];
      *&v235[160] = *&v243[160];
      *&v235[176] = *&v243[176];
      *&v235[64] = *&v243[64];
      *&v235[80] = *&v243[80];
      *&v235[96] = *&v243[96];
      *&v235[112] = *&v243[112];
      *v235 = *v243;
      *&v235[16] = *&v243[16];
      *&v235[32] = *&v243[32];
      *&v235[48] = *&v243[48];
      sub_10003AFFC(&v214, v242, &qword_10032DAC8);
      sub_10002C51C(v235, &qword_10032DAC8);
      v231 = v219;
      v232 = v220;
      v233 = v221;
      v234 = v222;
      v227 = v215[3];
      v228 = v216;
      v229 = v217;
      v230 = v218;
      v223 = v214;
      v224 = v215[0];
      v225 = v215[1];
      v226 = v215[2];
      if (qword_10032B4E0 != -1)
      {
        swift_once();
      }

      static ClarityUIMetrics.standardSpacing.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *v241 = v156;
      *&v241[8] = v158;
      *&v241[144] = v231;
      *&v241[160] = v232;
      *&v241[176] = v233;
      *&v241[192] = v234;
      *&v241[80] = v227;
      *&v241[96] = v228;
      *&v241[112] = v229;
      *&v241[128] = v230;
      *&v241[16] = v223;
      *&v241[32] = v224;
      *&v241[48] = v225;
      *&v241[64] = v226;
      sub_100066024(v241);
      memcpy(v242, v241, 0x101uLL);
      sub_10002B6CC(&qword_10032DAD0);
      sub_10002B6CC(&qword_10032DAD8);
      sub_100066030();
      sub_100066254();
      _ConditionalContent<>.init(storage:)();
      memcpy(v242, v243, 0x101uLL);
      nullsub_4(v242);
      memcpy(v243, v242, sizeof(v243));
    }

    else
    {
      sub_100065FF4(v243);
    }
  }

  else
  {
    sub_100062AA0(v241);
    sub_10006630C(v241);
    memcpy(v242, v241, 0x101uLL);
    sub_10002B6CC(&qword_10032DAD0);
    sub_10002B6CC(&qword_10032DAD8);
    sub_100066030();
    sub_100066254();
    _ConditionalContent<>.init(storage:)();
    memcpy(v242, v243, 0x101uLL);
    nullsub_4(v242);
    memcpy(v243, v242, sizeof(v243));
  }

  v159 = (v202 & 1) == 0;
  LODWORD(v208) = v159;
  v160 = v203;
  sub_10003AFFC(v103, v203, &qword_10032DAB0);
  v161 = v212;
  v162 = v204;
  sub_10003AFFC(v212, v204, &qword_10032DAA0);
  memcpy(v235, v243, sizeof(v235));
  *&v236 = KeyPath;
  BYTE8(v236) = 0;
  BYTE9(v236) = v159;
  *(&v236 + 10) = v247;
  HIWORD(v236) = v248;
  *&v237[0] = v211;
  *(v237 + 8) = v244;
  *(&v237[1] + 8) = v245;
  *(&v237[2] + 8) = v246;
  BYTE8(v237[3]) = v209;
  HIDWORD(v237[3]) = *(v251 + 3);
  *(&v237[3] + 9) = v251[0];
  *&v238 = v38;
  *(&v238 + 1) = v40;
  *&v239 = v42;
  *(&v239 + 1) = v44;
  v240 = 0;
  v164 = v237[3];
  v163 = v238;
  v165 = v239;
  v166 = v205;
  *(v205 + 112) = 0;
  v166[5] = v163;
  v166[6] = v165;
  v167 = v236;
  v168 = v237[0];
  v169 = v237[1];
  v166[3] = v237[2];
  v166[4] = v164;
  v166[1] = v168;
  v166[2] = v169;
  *v166 = v167;
  v170 = sub_10002B6CC(&qword_10032DA60);
  sub_10003AFFC(v160, v166 + v170[12], &qword_10032DAB0);
  sub_10003AFFC(v162, v166 + v170[16], &qword_10032DAA0);
  v171 = v166 + v170[20];
  *v171 = 0;
  v171[8] = 1;
  v172 = v170[24];
  memcpy(v241, v235, sizeof(v241));
  memcpy(v166 + v172, v235, 0x101uLL);
  sub_10003AFFC(&v236, v242, &qword_10032DAB8);
  sub_10003AFFC(v241, v242, &qword_10032DAC0);
  sub_10002C51C(v161, &qword_10032DAA0);
  sub_10002C51C(v213, &qword_10032DAB0);
  memcpy(v242, v235, 0x101uLL);
  sub_10002C51C(v242, &qword_10032DAC0);
  sub_10002C51C(v162, &qword_10032DAA0);
  sub_10002C51C(v160, &qword_10032DAB0);
  *(v215 + 8) = v244;
  *&v214 = KeyPath;
  BYTE8(v214) = 0;
  BYTE9(v214) = v208;
  *(&v214 + 10) = v247;
  HIWORD(v214) = v248;
  *&v215[0] = v211;
  *(&v215[1] + 8) = v245;
  *(&v215[2] + 8) = v246;
  BYTE8(v215[3]) = v209;
  HIDWORD(v215[3]) = *(v251 + 3);
  *(&v215[3] + 9) = v251[0];
  *&v216 = v38;
  *(&v216 + 1) = v40;
  *&v217 = v42;
  *(&v217 + 1) = v44;
  LOBYTE(v218) = 0;
  return sub_10002C51C(&v214, &qword_10032DAB8);
}

void sub_100062900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LockScreenView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = objc_opt_self();
  sub_1000654EC(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_10006710C(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for LockScreenView);
  aBlock[4] = a3;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100068FF4;
  aBlock[3] = a4;
  v13 = _Block_copy(aBlock);

  v14 = [v10 scheduledTimerWithTimeInterval:1 repeats:v13 block:1.0];
  _Block_release(v13);
}

double sub_100062AA0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LockScreenView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = v1 + *(__chkstk_darwin(v4 - 8) + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  v44[1] = v8;
  *&v44[9] = v9;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  v10 = v6 + 7;
  v11 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v33 == 1)
  {
    sub_1000654EC(v2, v11);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = (v10 + v12) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    sub_10006710C(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for LockScreenView);
    v15 = (v14 + v13);
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    KeyPath = swift_getKeyPath();
    static ClarityUIMetrics.backButtonPadding.getter();
    LOBYTE(v12) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    *v44 = 0;
    v33 = sub_100067424;
    v34 = v14;
    v35 = KeyPath;
    v36 = 0;
    v37 = 0;
    v38 = v12;
    v39 = v17;
    v40 = v18;
    v41 = v19;
    v42 = v20;
    v43 = 0;
  }

  else
  {
    sub_1000654EC(v2, v11);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = (v10 + v21) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_10006710C(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21, type metadata accessor for LockScreenView);
    strcpy((v23 + v22), "passcodeButton");
    *(v23 + v22 + 15) = -18;
    v24 = swift_getKeyPath();
    static ClarityUIMetrics.backButtonPadding.getter();
    LOBYTE(v21) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    *v44 = 1;
    v33 = sub_10006654C;
    v34 = v23;
    v35 = v24;
    v36 = 0;
    v37 = 0;
    v38 = v21;
    v39 = v25;
    v40 = v26;
    v41 = v27;
    v42 = v28;
    v43 = 256;
  }

  sub_10002B6CC(&qword_10032DAF0);
  sub_10002B6CC(&qword_10032DB00);
  sub_1000660BC();
  sub_100066148();
  _ConditionalContent<>.init(storage:)();
  v29 = v47;
  v30 = v48;
  *(a1 + 32) = v46;
  *(a1 + 48) = v29;
  *(a1 + 64) = v30;
  *(a1 + 80) = v49;
  result = *&v44[1];
  v32 = v45;
  *a1 = *&v44[1];
  *(a1 + 16) = v32;
  return result;
}

uint64_t sub_100062DC8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for LockScreenView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000654EC(a1, &v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10006710C(&v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LockScreenView);
  KeyPath = swift_getKeyPath();
  static ClarityUIMetrics.backButtonPadding.getter();
  v10 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v67[0]) = 0;
  LOBYTE(v63[0]) = 0;
  sub_100062AA0(&v71);
  if (qword_10032B4E0 != -1)
  {
    swift_once();
  }

  v19 = *&qword_10032D820;
  static ClarityUIMetrics.standardSpacing.getter();
  v21 = v20;
  v22 = a1 + *(v4 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v67[0]) = v23;
  *(&v67[0] + 1) = v24;
  sub_10002B6CC(&qword_10032D9C0);
  State.wrappedValue.getter();
  if (LOBYTE(v63[0]))
  {
    v25 = v19 + v21;
    if (LOBYTE(v63[0]) == 1)
    {
      v26 = -v25;
    }

    else
    {
      v26 = v25 * -2.0;
    }
  }

  else
  {
    v26 = 0.0;
  }

  v53[9] = v73;
  v53[10] = v74;
  v54 = v75;
  LOWORD(v55) = v76;
  v53[7] = v71;
  v53[8] = v72;
  *&v56 = sub_10006709C;
  *(&v56 + 1) = v8;
  v57 = KeyPath;
  v58 = 0;
  LOBYTE(v59) = 0;
  BYTE8(v59) = v10;
  *&v60 = v12;
  *(&v60 + 1) = v14;
  *&v61 = v16;
  *(&v61 + 1) = v18;
  v48 = v56;
  v49 = KeyPath;
  v51 = v60;
  v52 = v61;
  v50 = v59;
  v27 = v71;
  v28 = v72;
  v63[0] = v71;
  v63[1] = v72;
  v29 = v74;
  v30 = v73;
  v63[3] = v74;
  v63[4] = v75;
  v63[2] = v73;
  v31 = v55;
  v64 = v55;
  v65 = 0;
  *(&v53[2] + 8) = v73;
  *(&v53[1] + 8) = v72;
  *(v53 + 8) = v71;
  *(&v53[5] + 8) = v55;
  v66 = v26;
  *(&v53[6] + 1) = v26;
  LOBYTE(v53[0]) = 0;
  *(&v53[4] + 8) = v75;
  *(&v53[3] + 8) = v74;
  v32 = v60;
  a2[2] = v59;
  a2[3] = v32;
  v33 = v49;
  *a2 = v48;
  a2[1] = v33;
  v34 = v53[2];
  a2[6] = v53[1];
  a2[7] = v34;
  v35 = v53[0];
  a2[4] = v52;
  a2[5] = v35;
  v36 = v53[6];
  a2[10] = v53[5];
  a2[11] = v36;
  v37 = v53[4];
  a2[8] = v53[3];
  a2[9] = v37;
  v62 = 0;
  v67[2] = v30;
  v67[3] = v29;
  v67[4] = v54;
  v67[0] = v27;
  v67[1] = v28;
  v68 = v31;
  v69 = 0;
  v70 = v26;
  sub_10003AFFC(&v56, v40, &qword_10032DBB8);
  sub_10003AFFC(v63, v40, &qword_10032DBC0);
  sub_10002C51C(v67, &qword_10032DBC0);
  v40[0] = sub_10006709C;
  v40[1] = v8;
  v40[2] = KeyPath;
  v40[3] = 0;
  v41 = 0;
  v42 = v10;
  v43 = v12;
  v44 = v14;
  v45 = v16;
  v46 = v18;
  v47 = 0;
  return sub_10002C51C(v40, &qword_10032DBB8);
}

uint64_t sub_1000631A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LockScreenView();
  result = sub_100058E88();
  if (result)
  {
    type metadata accessor for LockState();
    sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
    v5 = StateObject.wrappedValue.getter();
    v6 = (*(*v5 + 128))(v5);

    if ((v6 & 1) != 0 || *(a2 + *(v3 + 92)) == 1)
    {
      __chkstk_darwin(v7);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    else
    {
      return sub_100064F80();
    }
  }

  return result;
}

uint64_t sub_100063320(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LockScreenView();
  type metadata accessor for LockState();
  sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
  v4 = StateObject.wrappedValue.getter();
  v5 = (*(*v4 + 192))(a1, a2);

  if (v5)
  {
    sub_100064F80();
  }

  return v5 & 1;
}

uint64_t sub_100063420()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10006348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v5 = type metadata accessor for LockScreenView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10002B6CC(&qword_10032DB50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v27 = sub_10002B6CC(&qword_10032DB58);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v28 = sub_10002B6CC(&qword_10032DB60);
  __chkstk_darwin(v28);
  v15 = &v26 - v14;
  v26 = a1;
  sub_1000654EC(a1, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_10006710C(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LockScreenView);
  v32 = a1;
  sub_10002B6CC(&qword_10032DB68);
  sub_10002CD18(&qword_10032DB70, &qword_10032DB68);
  Button.init(action:label:)();
  sub_10002CD18(&qword_10032DB78, &qword_10032DB50);
  View.accessibilityIdentifier(_:)();
  (*(v9 + 8))(v11, v8);
  v18 = static Color.clarityUIContentBackground.getter();
  v19 = static Color.primary.getter();
  v33 = v18;
  v34 = v19;
  sub_10002B6CC(&qword_10032B7A0);
  sub_100066A18();
  sub_10002CD18(&qword_10032B7B0, &qword_10032B7A0);
  View.buttonStyle<A>(_:)();

  sub_10002C51C(v13, &qword_10032DB58);
  v20 = Namespace.wrappedValue.getter();
  LODWORD(v18) = static MatchedGeometryProperties.position.getter();
  static UnitPoint.top.getter();
  v21 = &v15[*(v28 + 36)];
  v22 = v30;
  *v21 = v29;
  *(v21 + 1) = v22;
  *(v21 + 2) = v20;
  *(v21 + 6) = v18;
  *(v21 + 4) = v23;
  *(v21 + 5) = v24;
  v21[48] = 1;

  sub_100063A0C();
  sub_100066B00();
  View.badge(_:)();
  return sub_10002C51C(v15, &qword_10032DB60);
}

uint64_t sub_100063900@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v3 = Image.init(systemName:)();
  sub_10005EEB4();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_100047B94(v4, v6, v8);

  sub_100047B84(v4, v6, v8);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  return result;
}

id *sub_100063A0C()
{
  v1 = v0;
  v2 = type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032D9C0);
  State.wrappedValue.getter();
  if (v22)
  {
    return 0;
  }

  sub_10002C9FC(0, &qword_10032BF60);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 notificationsEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = *(v1 + *(v2 + 60));
  swift_getKeyPath();
  sub_100066C84(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 16);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {

    result = sub_100066C5C(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      swift_getKeyPath();
      sub_100066C84(&qword_10032DBA8, type metadata accessor for Application);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v10 + 24);
      v12 = *(v10 + 32);

      if ((v12 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100066C5C((v14 > 1), (v15 + 1), 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v13 == 0;
    }
  }

  v16 = _swiftEmptyArrayStorage[2];
  v17 = &_swiftEmptyArrayStorage[4];
  do
  {
    v18 = v16-- != 0;
    v19 = v18;
    if (!v18)
    {
      break;
    }

    v20 = *v17;
    v17 = (v17 + 1);
  }

  while ((v20 & 1) != 0);
  v21 = v19;

  return v21;
}

uint64_t sub_100063D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032DBC8);
  __chkstk_darwin(v4);
  v6 = &v48[-v5];
  v7 = type metadata accessor for EnvironmentValues();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v52 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v9);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for RoundedRectangle._Inset();
  __chkstk_darwin(v54);
  v55 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = sub_10002B6CC(&qword_10032DBD0);
  __chkstk_darwin(v56);
  v14 = &v48[-v13];
  v15 = *(a1 + 8);
  if (*(a1 + 17) == 1)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      v16 = *(a1 + 8);
      goto LABEL_6;
    }

LABEL_7:
    static ClarityUIMetrics.fallbackDisplayCornerRadius.getter();
    v16 = v21;
    goto LABEL_8;
  }

  v49 = *(a1 + 16);

  static os_log_type_t.fault.getter();
  v50 = v7;
  v17 = static Log.runtimeIssuesLog.getter();
  v51 = v9;
  v18 = v17;
  os_log(_:dso:log:_:_:)();

  v9 = v51;
  v19 = v52;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100065554(v15, v49, 0);
  (*(v53 + 8))(v19, v50);
  if (BYTE8(v89[0]))
  {
    goto LABEL_7;
  }

  v16 = *v89;
LABEL_6:
  static ClarityUIMetrics.minimumDisplayCornerRadius.getter();
  if (v20 > v16)
  {
    goto LABEL_7;
  }

LABEL_8:
  static ClarityUIMetrics.backButtonPadding.getter();
  v23 = v16 - v22;
  v24 = *(v9 + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(v11 + v24, v25, v26);
  *v11 = v23;
  v11[1] = v23;
  v27 = type metadata accessor for LockScreenView();
  v28 = -*(a1 + *(v27 + 104));
  v29 = v55;
  sub_10006710C(v11, v55, &type metadata accessor for RoundedRectangle);
  *&v29[*(v54 + 20)] = v28;
  static Color.black.getter();
  v30 = a1 + *(v27 + 44);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v89[0]) = v31;
  *(&v89[0] + 1) = v32;
  sub_10002B6CC(&qword_10032D9C0);
  State.wrappedValue.getter();
  v33 = Color.opacity(_:)();

  static Color.black.getter();
  static ShadowStyle.inner(color:radius:x:y:)();

  *v6 = v33;
  sub_10006710C(v29, v14, &type metadata accessor for RoundedRectangle._Inset);
  v34 = v56;
  sub_1000404F8(v6, &v14[*(v56 + 52)], &qword_10032DBC8);
  *&v14[*(v34 + 56)] = 256;
  v35 = static Alignment.center.getter();
  v37 = v36;
  sub_100064310(a1, &v58);
  v85 = v70;
  v86 = v71;
  v87 = v72;
  v81 = v66;
  v82 = v67;
  v83 = v68;
  v84 = v69;
  v77 = v62;
  v78 = v63;
  v79 = v64;
  v80 = v65;
  v73 = v58;
  v74 = v59;
  v75 = v60;
  v76 = v61;
  *&v88 = v35;
  *(&v88 + 1) = v37;
  sub_1000404F8(v14, a2, &qword_10032DBD0);
  v38 = (a2 + *(sub_10002B6CC(&qword_10032DBD8) + 36));
  v39 = v86;
  v38[12] = v85;
  v38[13] = v39;
  v40 = v88;
  v38[14] = v87;
  v38[15] = v40;
  v41 = v82;
  v38[8] = v81;
  v38[9] = v41;
  v42 = v84;
  v38[10] = v83;
  v38[11] = v42;
  v43 = v78;
  v38[4] = v77;
  v38[5] = v43;
  v44 = v80;
  v38[6] = v79;
  v38[7] = v44;
  v45 = v74;
  *v38 = v73;
  v38[1] = v45;
  v46 = v76;
  v38[2] = v75;
  v38[3] = v46;
  v89[12] = v70;
  v89[13] = v71;
  v89[14] = v72;
  v89[8] = v66;
  v89[9] = v67;
  v89[10] = v68;
  v89[11] = v69;
  v89[4] = v62;
  v89[5] = v63;
  v89[6] = v64;
  v89[7] = v65;
  v89[0] = v58;
  v89[1] = v59;
  v89[2] = v60;
  v89[3] = v61;
  v90 = v35;
  v91 = v37;
  sub_10003AFFC(&v73, &v57, &qword_10032DBE0);
  return sub_10002C51C(v89, &qword_10032DBE0);
}

__n128 sub_100064310@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LockScreenView() + 44));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v88) = v4;
  *(&v88 + 1) = v5;
  sub_10002B6CC(&qword_10032D9C0);
  State.wrappedValue.getter();
  if (v64)
  {
    static Color.white.getter();
    v6 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v36[6] = v79;
    *&v36[22] = v80;
    *&v36[38] = v81;
    if (qword_10032B4E0 != -1)
    {
      swift_once();
    }

    v7 = *&qword_10032D820;
    static ClarityUIMetrics.standardSpacing.getter();
    v9 = v7 + v8;
    static Color.white.getter();
    v10 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v35[6] = v82;
    *&v35[22] = v83;
    *&v35[38] = v84;
    static Color.white.getter();
    v11 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v34[6] = v85;
    *&v34[22] = v86;
    *&v34[38] = v87;
    static ClarityUIMetrics.standardSpacing.getter();
    *v37 = v6;
    *&v37[8] = 256;
    *&v37[10] = *v36;
    *&v37[26] = *&v36[16];
    *&v37[42] = *&v36[32];
    *&v37[56] = *(&v81 + 1);
    *&v38 = 0;
    *(&v38 + 1) = v9;
    v22 = *&v37[32];
    v23 = *&v37[48];
    v20 = *v37;
    v21 = *&v37[16];
    *v39 = v10;
    *&v39[8] = 256;
    *&v39[56] = *(&v84 + 1);
    *&v39[42] = *&v35[32];
    *&v39[26] = *&v35[16];
    *&v39[10] = *v35;
    v40 = 0uLL;
    v24 = v38;
    v25 = *v39;
    v28 = *&v39[48];
    v26 = *&v39[16];
    v27 = *&v39[32];
    *v41 = v11;
    *&v41[8] = 256;
    *&v41[56] = *(&v87 + 1);
    *&v41[42] = *&v34[32];
    *&v41[26] = *&v34[16];
    *&v41[10] = *v34;
    *&v42 = 0;
    *(&v42 + 1) = -(v7 + v12);
    v32 = *&v41[48];
    v33 = v42;
    v30 = *&v41[16];
    v31 = *&v41[32];
    v29 = *v41;
    v43 = v11;
    v44 = 256;
    *&v47[14] = *(&v87 + 1);
    *v47 = *&v34[32];
    v46 = *&v34[16];
    v45 = *v34;
    v48 = 0;
    v49 = *(&v42 + 1);
    sub_10003AFFC(v37, &v88, &qword_10032DBE8);
    sub_10003AFFC(v39, &v88, &qword_10032DBE8);
    sub_10003AFFC(v41, &v88, &qword_10032DBE8);
    sub_10002C51C(&v43, &qword_10032DBE8);
    v50 = v10;
    v51 = 256;
    v52 = *v35;
    v53 = *&v35[16];
    *v54 = *&v35[32];
    v56 = 0;
    *&v54[14] = *&v35[46];
    v55 = 0;
    sub_10002C51C(&v50, &qword_10032DBE8);
    v57 = v6;
    v58 = 256;
    v59 = *v36;
    v60 = *&v36[16];
    *v61 = *&v36[32];
    *&v61[14] = *&v36[46];
    v62 = 0;
    v63 = v9;
    sub_10002C51C(&v57, &qword_10032DBE8);
    v76 = v31;
    v77 = v32;
    v78 = v33;
    v73 = 0uLL;
    v75 = v30;
    v74 = v29;
    v68 = v24;
    v69 = v25;
    v71 = v27;
    v72 = v28;
    v70 = v26;
    v64 = v20;
    v65 = v21;
    v66 = v22;
    v67 = v23;
    nullsub_4(&v64);
    v100 = v76;
    v101 = v77;
    v102 = v78;
    v96 = v72;
    v97 = v73;
    v99 = v75;
    v98 = v74;
    v92 = v68;
    v93 = v69;
    v95 = v71;
    v94 = v70;
    v88 = v64;
    v89 = v65;
    v91 = v67;
    v90 = v66;
  }

  else
  {
    sub_100067174(&v88);
  }

  v13 = v101;
  *(a2 + 192) = v100;
  *(a2 + 208) = v13;
  *(a2 + 224) = v102;
  v14 = v97;
  *(a2 + 128) = v96;
  *(a2 + 144) = v14;
  v15 = v99;
  *(a2 + 160) = v98;
  *(a2 + 176) = v15;
  v16 = v93;
  *(a2 + 64) = v92;
  *(a2 + 80) = v16;
  v17 = v95;
  *(a2 + 96) = v94;
  *(a2 + 112) = v17;
  v18 = v89;
  *a2 = v88;
  *(a2 + 16) = v18;
  result = v91;
  *(a2 + 32) = v90;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100064804(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LockScreenView();
  v29 = *(v5 - 1);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v38 = type metadata accessor for DispatchTime();
  v31 = *(v38 - 8);
  v7 = __chkstk_darwin(v38);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v28 - v10;
  aBlock = *(a1 + v5[12]);
  v45 = 0;
  sub_10002B6CC(&qword_10032D9B8);
  State.wrappedValue.setter();
  v11 = a1 + v5[11];
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(aBlock) = *v11;
  *(&aBlock + 1) = v13;
  sub_10002B6CC(&qword_10032D9C0);
  State.wrappedValue.getter();
  if (!v45)
  {
    v14 = 1;
    goto LABEL_5;
  }

  if (v45 == 1)
  {
    v14 = 2;
LABEL_5:
    LOBYTE(aBlock) = v12;
    *(&aBlock + 1) = v13;
    LOBYTE(v45) = v14;
    return State.wrappedValue.setter();
  }

  v16 = sub_100008A40();
  if ((v16 & 1) != 0 || *(a1 + v5[23]) == 1)
  {
    __chkstk_darwin(v16);
    *(&v28 - 2) = a1;
    static Animation.default.getter();
    v17 = v39;
    withAnimation<A>(_:_:)();
    v39 = v17;
  }

  else
  {
    type metadata accessor for LockState();
    sub_100066C84(&qword_10032D8F0, &type metadata accessor for LockState);
    v26 = StateObject.wrappedValue.getter();
    v27 = (*(*v26 + 192))(0, 0xE000000000000000);

    if (v27)
    {
      sub_100064F80();
    }
  }

  sub_10002C9FC(0, &qword_10032D9C8);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v18 = v30;
  + infix(_:_:)();
  v31 = *(v31 + 8);
  (v31)(v9, v38);
  sub_1000654EC(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v20 = swift_allocObject();
  sub_10006710C(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LockScreenView);
  v43 = sub_1000657F4;
  v44 = v20;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v41 = sub_1000357AC;
  v42 = &unk_1002FF5D0;
  v21 = _Block_copy(&aBlock);

  v22 = v32;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100066C84(&qword_10032E980, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002B6CC(&qword_10032D9D0);
  sub_10002CD18(&qword_10032E990, &qword_10032D9D0);
  v23 = v34;
  v24 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v22, v35);
  return (v31)(v18, v38);
}

uint64_t sub_100064E8C()
{
  type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032D9C0);
  return State.wrappedValue.setter();
}

uint64_t sub_100064EFC()
{
  type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032B720);
  return State.wrappedValue.setter();
}

uint64_t sub_100064F80()
{
  v1 = v0;
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LockScreenView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = [objc_opt_self() defaultCenter];
  [v9 postNotificationName:CLBLockScreenDidCompleteNotification object:0];

  v14 = v1;
  sub_1000654EC(v1, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_10006710C(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for LockScreenView);
  static Animation.default.getter();
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000651DC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  Date.init()();
  type metadata accessor for LockScreenView();
  (*(v1 + 16))(v4, v6, v0);
  sub_10002B6CC(&qword_10032D840);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v6, v0);
}

void sub_100065340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setLocalizedDateFormatFromTemplate:v6];

  *a4 = v5;
}

uint64_t sub_1000653B8()
{
  type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032B720);
  return State.wrappedValue.setter();
}

uint64_t sub_100065430()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:CLBLockScreenDidAnimateOutNotification object:0];

  type metadata accessor for LockScreenView();
  sub_10002B6CC(&qword_10032B720);
  return State.wrappedValue.setter();
}

uint64_t sub_1000654EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockScreenView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065554(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100065614(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LockScreenView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100065698(uint64_t a1)
{
  v3 = *(type metadata accessor for LockScreenView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10005FE3C(a1, v4);
}

double sub_10006573C@<D0>(_OWORD *a1@<X8>)
{
  sub_100066960();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10006580C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LockScreenView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100065880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000658B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100065900(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100065948()
{
  v1 = *(sub_10002B6CC(&qword_10032DA30) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2 + *(sub_10002B6CC(&qword_10032DA58) + 44);
  sub_10004A5B4(*v4, *(v4 + 8));

  v5 = sub_10002B6CC(&qword_10032DA60);
  v6 = v4 + v5[12];
  v7 = sub_10002B6CC(&qword_10032DA68);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_100047B84(*v6, *(v6 + 8), *(v6 + 16));

    if (*(v6 + 32))
    {
    }

    if (*(v6 + 48))
    {
    }

    v8 = *(sub_10002B6CC(&qword_10032DA70) + 36);
    v9 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v4 + v5[16];
  v11 = sub_10002B6CC(&qword_10032DA78);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100047B84(*v10, *(v10 + 8), *(v10 + 16));

    if (*(v10 + 32))
    {
    }

    if (*(v10 + 48))
    {
    }

    v12 = *(sub_10002B6CC(&qword_10032DA70) + 36);
    v13 = type metadata accessor for AccessibilityAttachmentModifier();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  v14 = v4 + v5[24];
  v15 = *(v14 + 256);
  if (v15 != 255)
  {
    v17 = *(v14 + 208);
    sub_100065C90(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112), *(v14 + 120), *(v14 + 128), *(v14 + 136), *(v14 + 144), *(v14 + 152), *(v14 + 160), *(v14 + 168), *(v14 + 176), *(v14 + 184), *(v14 + 192), *(v14 + 200), v17, *(&v17 + 1), *(v14 + 224), *(v14 + 232), *(v14 + 240), *(v14 + 248), v15 & 1);
  }

  sub_10002B6CC(&qword_10032DA28);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100065C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a33)
  {
    v35 = a5;

    sub_100065554(v35, a6, a7 & 1);
    a1 = a14;
    a2 = a15;
    a3 = a16;
    a4 = a17;
    LOBYTE(a5) = a18;
  }

  return sub_100065D98(a1, a2, a3, a4, a5);
}

uint64_t sub_100065D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_100065554(a3, a4, a5 & 1);
}

uint64_t sub_100065DEC()
{
  v1 = *(sub_10002B6CC(&qword_10032DA30) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100069BD8(v2);
}

uint64_t sub_100065E88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LockScreenView();

  return sub_100063320(a1, a2);
}

uint64_t sub_100065F08()
{
  type metadata accessor for LockScreenView();

  return sub_100063420();
}

uint64_t sub_100065FA0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

double sub_100065FF4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 256) = -1;
  return result;
}

unint64_t sub_100066030()
{
  result = qword_10032DAE0;
  if (!qword_10032DAE0)
  {
    sub_10002CAF8(&qword_10032DAD0);
    sub_1000660BC();
    sub_100066148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DAE0);
  }

  return result;
}

unint64_t sub_1000660BC()
{
  result = qword_10032DAE8;
  if (!qword_10032DAE8)
  {
    sub_10002CAF8(&qword_10032DAF0);
    sub_100066148();
    sub_100066200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DAE8);
  }

  return result;
}

unint64_t sub_100066148()
{
  result = qword_10032DAF8;
  if (!qword_10032DAF8)
  {
    sub_10002CAF8(&qword_10032DB00);
    sub_10002CD18(&qword_10032DB08, &qword_10032DB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DAF8);
  }

  return result;
}

unint64_t sub_100066200()
{
  result = qword_10032DB18;
  if (!qword_10032DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DB18);
  }

  return result;
}

unint64_t sub_100066254()
{
  result = qword_10032DB20;
  if (!qword_10032DB20)
  {
    sub_10002CAF8(&qword_10032DAD8);
    sub_10002CD18(&qword_10032DB28, &qword_10032DB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DB20);
  }

  return result;
}

unint64_t sub_10006633C()
{
  result = qword_10032DB40;
  if (!qword_10032DB40)
  {
    sub_10002CAF8(&qword_10032DB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DB40);
  }

  return result;
}

uint64_t sub_1000663C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000663DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000663DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000664D8()
{
  type metadata accessor for LockScreenView();

  return sub_1000651DC();
}

double sub_100066550@<D0>(_OWORD *a1@<X8>)
{
  sub_100066960();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000665EC()
{
  v1 = type metadata accessor for LockScreenView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  sub_100065554(*(v4 + 8), *(v4 + 16), *(v4 + 17));
  v5 = v1[6];
  sub_10002B6CC(&qword_10032CEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v4 + v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10002B6CC(&qword_10032D840);

  sub_10003FA78();

  v10 = v1[18];
  v11 = type metadata accessor for NSNotificationCenter.Publisher();
  v12 = *(*(v11 - 8) + 8);
  v12(v4 + v10, v11);
  v12(v4 + v1[19], v11);
  v12(v4 + v1[20], v11);
  v12(v4 + v1[21], v11);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1000668C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LockScreenView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10006348C(v1 + v4, v6, v7, a1);
}

unint64_t sub_100066960()
{
  result = qword_10032DB48;
  if (!qword_10032DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DB48);
  }

  return result;
}

unint64_t sub_100066A18()
{
  result = qword_10032DB80;
  if (!qword_10032DB80)
  {
    sub_10002CAF8(&qword_10032DB58);
    sub_10002CD18(&qword_10032DB78, &qword_10032DB50);
    sub_100066C84(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DB80);
  }

  return result;
}

unint64_t sub_100066B00()
{
  result = qword_10032DB88;
  if (!qword_10032DB88)
  {
    sub_10002CAF8(&qword_10032DB60);
    sub_10002CAF8(&qword_10032DB58);
    sub_10002CAF8(&qword_10032B7A0);
    sub_100066A18();
    sub_10002CD18(&qword_10032B7B0, &qword_10032B7A0);
    swift_getOpaqueTypeConformance2();
    sub_10002CD18(&qword_10032DB90, &qword_10032DB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DB88);
  }

  return result;
}

id *sub_100066C5C(id *a1, int64_t a2, char a3)
{
  result = sub_100066CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100066C84(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_100066CCC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000671E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100066CEC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002B6CC(&qword_10032DBB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100066DE0()
{
  v1 = type metadata accessor for LockScreenView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  sub_100065554(*(v4 + 8), *(v4 + 16), *(v4 + 17));
  v5 = v1[6];
  sub_10002B6CC(&qword_10032CEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + v1[10];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_10002B6CC(&qword_10032D840);

  sub_10003FA78();

  v9 = v1[18];
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(*(v10 - 8) + 8);
  v11(v4 + v9, v10);
  v11(v4 + v1[19], v10);
  v11(v4 + v1[20], v10);
  v11(v4 + v1[21], v10);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10006709C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LockScreenView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100063D18(v4, a1);
}

uint64_t sub_10006710C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_100067174(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

size_t sub_1000671E0(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10002B6CC(&qword_10032DBF8);
  v10 = *(type metadata accessor for MultimodalNavigationTitle() - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(type metadata accessor for MultimodalNavigationTitle() - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_100067580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000675D8()
{
  result = qword_10032DC28;
  if (!qword_10032DC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032DC28);
  }

  return result;
}

id sub_100067788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivationMetricsInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000679D8()
{
  v1 = type metadata accessor for MultimodalListStyle.Layout();
  __chkstk_darwin(v1 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NavigationBarHost();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
    swift_getObjectType();
    (*(v5 + 104))(v7, enum case for NavigationBarHost.systemShell(_:), v4);
    v8 = v0;
    dispatch thunk of ClarityUIMutableApplicationSceneSettingsProtocol.navigationBarHost.setter();
    if (qword_10032B4D0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = v12[1];
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v8;
      sub_100067CBC(v3);
      dispatch thunk of ClarityUIMutableApplicationSceneSettingsProtocol.listLayout.setter();
    }

    sub_10002C9FC(0, &qword_10032BF60);
    v11 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v11 notificationsEnabled];

    dispatch thunk of ClarityUIMutableApplicationSceneSettingsProtocol.areBadgesEnabled.setter();
  }
}

uint64_t sub_100067CBC@<X0>(uint64_t a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v8 = &enum case for MultimodalListStyle.Layout.grid(_:);
LABEL_8:

    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    v8 = &enum case for MultimodalListStyle.Layout.grid(_:);
    goto LABEL_9;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    v8 = &enum case for MultimodalListStyle.Layout.stack(_:);
    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v8 = &enum case for MultimodalListStyle.Layout.stack(_:);
LABEL_9:
  v9 = *v8;
  v10 = type metadata accessor for MultimodalListStyle.Layout();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t sub_100067ED8(void *a1)
{
  v2 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.common.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = [v10 bundleIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v5;
    v19 = v18;

    v20 = sub_10005766C(v17, v19, &v29);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Retrieving icon image for %s after first unlock.", v14, 0xCu);
    sub_10002C9B0(v15);

    v4 = v28;

    (*(v6 + 8))(v8, v27);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  type metadata accessor for MainActor();
  v22 = v10;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;
  sub_1000B85D8(0, 0, v4, &unk_100299B20, v24);
}

uint64_t sub_1000681E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006827C, v6, v5);
}

uint64_t sub_10006827C()
{
  v1 = *(v0 + 16);

  [v1 setNeedsIconImageUpdate];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100068398()
{
  v1 = *(v0 + 16);
  v1[3] = &type metadata for String;
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return (*(v0 + 8))();
}

uint64_t sub_1000683C4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100068404()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100068444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E558;

  return sub_1000681E4(a1, v4, v5, v6);
}

id *sub_100068500(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v6 = a1;
    v7 = dispatch thunk of ClarityUIApplicationSceneClientSettingsProtocol.navigationTitles.getter();

    return v7;
  }

  else
  {
    v9 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v9, v2);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unexpected type for client settings: %@", v13, 0xCu);
      sub_10002E7BC(v14);
    }

    (*(v3 + 8))(v5, v2);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100068708(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v56 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v56 - v11;
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = [a1 clientSettings];
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {

    v17 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v9, v17, v2);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = [v18 clientSettings];
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unexpected type for client settings: %@", v21, 0xCu);
      sub_10002E7BC(v22);
    }

    (*(v3 + 8))(v9, v2);
  }

  else
  {
    v24 = [a1 clientHandle];
    if (v24)
    {
      v25 = v24;
      swift_getObjectType();
      if (dispatch thunk of ClarityUIApplicationSceneClientSettingsProtocol.chromeVisible.getter())
      {
      }

      else
      {
        v34 = [v25 processHandle];
        if (v34)
        {
          v35 = v34;
          [v34 auditToken];
          v56 = v60;
          v57 = v59;

          v36 = objc_opt_self();
          v37 = String._bridgeToObjectiveC()();
          v58 = 0;
          v59 = v57;
          v60 = v56;
          v38 = [v36 authenticateAuditToken:&v59 forEntitlement:v37 error:&v58];

          if (v38)
          {
            v39 = v58;

            return 0;
          }

          v49 = v58;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v50 = Logger.common.unsafeMutableAddressor();
          (*(v3 + 16))(v6, v50, v2);
          swift_errorRetain();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *v53 = 138412290;
            swift_errorRetain();
            v55 = _swift_stdlib_bridgeErrorToNSError();
            *(v53 + 4) = v55;
            *v54 = v55;
            _os_log_impl(&_mh_execute_header, v51, v52, "Unable to authenticate client for chrome visibility change: %@", v53, 0xCu);
            sub_10002E7BC(v54);
          }

          else
          {
          }

          (*(v3 + 8))(v6, v2);
        }

        else
        {
          v41 = Logger.common.unsafeMutableAddressor();
          (*(v3 + 16))(v14, v41, v2);
          v42 = a1;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 138412290;
            *(v45 + 4) = v42;
            *v46 = v42;
            v47 = v42;
            _os_log_impl(&_mh_execute_header, v43, v44, "Scene does not have required entitlement: %@", v45, 0xCu);
            sub_10002E7BC(v46);

            v48 = v15;
          }

          else
          {
            v48 = v43;
            v43 = v15;
          }

          (*(v3 + 8))(v14, v2);
        }
      }
    }

    else
    {
      v26 = Logger.common.unsafeMutableAddressor();
      (*(v3 + 16))(v12, v26, v2);
      v27 = a1;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Tried to check chrome visibility for scene with no client handle: %@", v30, 0xCu);
        sub_10002E7BC(v31);

        v33 = v15;
      }

      else
      {
        v33 = v28;
        v28 = v15;
      }

      (*(v3 + 8))(v12, v2);
    }
  }

  return 1;
}

Class sub_100068DDC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !a1)
  {
    v8 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v8, v2);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected type for client settings: %@", v12, 0xCu);
      sub_10002E7BC(v13);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  swift_getObjectType();
  v6 = a1;
  dispatch thunk of ClarityUIApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress.getter();
  if (v7)
  {

    return 0;
  }

  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;

  return isa;
}

void sub_100068FF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000690A0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VolumeHUD();
  v37 = *(v5 - 1);
  v6 = *(v37 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v36 - v9);
  v38 = sub_10002B6CC(&qword_10032DCD8);
  v11 = __chkstk_darwin(v38);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v36 - v14);
  v16 = v1;
  v17 = [v1 delegate];
  if (v17)
  {
    v18 = [v17 createWindowForVolumeManager:v1];
    swift_unknownObjectRelease();
    [v1 volume];
    v39 = v19;
    State.init(wrappedValue:)();
    v20 = v41;
    *v10 = v40;
    v10[1] = v20;
    v21 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    *(v10 + v5[6]) = 0x403E000000000000;
    *(v10 + v5[7]) = 0x406B800000000000;
    *(v10 + v5[8]) = 0x402E000000000000;
    *(v10 + v5[9]) = 0x4049000000000000;
    sub_10003AE78(v10, v8);
    v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_10003AE78(v8, v23 + v22);
    *v15 = swift_getKeyPath();
    sub_10002B6CC(&qword_10032CEF0);
    swift_storeEnumTagMultiPayload();
    v24 = (v15 + *(v38 + 36));
    *v24 = sub_100069DBC;
    v24[1] = v23;
    v25 = objc_allocWithZone(sub_10002B6CC(&qword_10032DCE0));
    sub_100069E34(v15, v13);
    v26 = UIHostingController.init(rootView:)();
    sub_100069EA4(v15);
    v27 = v26;
    v28 = [v27 view];
    if (v28)
    {
      v29 = v28;
      v30 = [objc_opt_self() clearColor];
      [v29 setBackgroundColor:v30];

      [v16 setWindow:v18];
      [v18 setRootViewController:v27];

      [v18 makeKeyAndVisible];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v31 = Logger.common.unsafeMutableAddressor();
    v32 = v36;
    (*(v36 + 16))(v4, v31, v2);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Missing delegate for volume manager", v35, 2u);
    }

    (*(v32 + 8))(v4, v2);
  }
}

void sub_100069598()
{
  v1 = [v0 debouncerTimer];
  [v1 invalidate];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1000698F8;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100068FF4;
  v6[3] = &unk_1002FF8A0;
  v4 = _Block_copy(v6);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:2.0];
  _Block_release(v4);
  [v0 setDebouncerTimer:v5];
}

uint64_t sub_10006975C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

void sub_100069794(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v10 = sub_10006999C;
  v11 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000357AC;
  v9 = &unk_1002FF8C8;
  v4 = _Block_copy(&v6);

  v10 = sub_100069A6C;
  v11 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000814A4;
  v9 = &unk_1002FF8F0;
  v5 = _Block_copy(&v6);

  [v3 animateWithDuration:v4 animations:v5 completion:0.3];
  _Block_release(v5);
  _Block_release(v4);
}

uint64_t sub_100069900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100069918()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];

    if (v2)
    {
      [v2 setAlpha:0.0];
    }
  }
}

void sub_1000699A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];
    if (v2)
    {
      v3 = v2;
      [v3 alpha];
      if (v4 == 0.0)
      {
        [v3 setHidden:1];

        [v1 setWindow:0];
      }

      else
      {

        v1 = v3;
      }
    }

    else
    {
      v3 = v1;
    }
  }
}

uint64_t sub_100069AD4(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_10002B6CC(a2);
  sub_10002CD18(a4, a2);
  return View.clarityUIIdiom()();
}

uint64_t sub_100069B80(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_10002B6CC(a2);
  a4();
  return View.clarityUIIdiom()();
}

uint64_t sub_100069C00()
{
  type metadata accessor for VolumeHUD();
  sub_10006A060(&qword_10032DCE8, type metadata accessor for VolumeHUD);
  return View.clarityUIIdiom()();
}

uint64_t sub_100069CD4()
{
  v1 = (type metadata accessor for VolumeHUD() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100069DBC()
{
  type metadata accessor for VolumeHUD();

  return sub_100069C00();
}

uint64_t sub_100069E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032DCD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069EA4(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032DCD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100069F0C()
{
  result = qword_10032DD00;
  if (!qword_10032DD00)
  {
    sub_10002CAF8(&qword_10032C638);
    sub_10002CAF8(&qword_10032C630);
    sub_10002CAF8(&qword_10032C650);
    sub_10002CD18(&qword_10032C658, &qword_10032C630);
    sub_10003FC14();
    swift_getOpaqueTypeConformance2();
    sub_10002CD18(&qword_10032DD08, &qword_10032DD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DD00);
  }

  return result;
}

uint64_t sub_10006A060(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006A0A8()
{
  result = qword_10032DD28;
  if (!qword_10032DD28)
  {
    sub_10002CAF8(&qword_10032DA30);
    sub_10006A134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DD28);
  }

  return result;
}

unint64_t sub_10006A134()
{
  result = qword_10032DD30;
  if (!qword_10032DD30)
  {
    sub_10002CAF8(&qword_10032DA28);
    sub_10006A1EC();
    sub_10002CD18(&qword_10032DD48, &qword_10032DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DD30);
  }

  return result;
}

unint64_t sub_10006A1EC()
{
  result = qword_10032DD38;
  if (!qword_10032DD38)
  {
    sub_10002CAF8(&qword_10032DA20);
    sub_10002CD18(&qword_10032DD40, &qword_10032DA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DD38);
  }

  return result;
}

unint64_t sub_10006A2A4()
{
  result = qword_10032DD60;
  if (!qword_10032DD60)
  {
    sub_10002CAF8(&qword_10032DD58);
    sub_10002CD18(&qword_10032DD68, &qword_10032DD70);
    sub_10002CD18(&qword_10032DD78, qword_10032DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DD60);
  }

  return result;
}

uint64_t sub_10006A3A0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006A410(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10006A550(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_10006A7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10006B080();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10006A820()
{
  sub_100066960();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10006A85C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v6 = *(a1 + 24);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 24) = v6;
  (*(v2 + 32))(v5 + v4, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032DE08);
  type metadata accessor for ModifiedContent();
  v17 = v6;
  v18 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10006AF20();
  v15 = WitnessTable;
  v16 = v8;
  swift_getWitnessTable();
  v13 = GeometryReader.init(content:)();
  v14 = v9;
  v10 = type metadata accessor for GeometryReader();
  v11 = swift_getWitnessTable();
  sub_100086FE8(&v13, v10, v11);

  v13 = v19;
  v14 = v20;
  sub_100086FE8(&v13, v10, v11);
}

uint64_t sub_10006AAA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v4 = type metadata accessor for ModifiedContent();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  sub_10002CAF8(&qword_10032DE08);
  v7 = type metadata accessor for ModifiedContent();
  v30 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  swift_getKeyPath();
  GeometryProxy.size.getter();
  v14 = v13;
  GeometryProxy.safeAreaInsets.getter();
  v16 = v14 + v15;
  GeometryProxy.safeAreaInsets.getter();
  v18 = v16 + v17;
  GeometryProxy.size.getter();
  v20 = v19;
  GeometryProxy.safeAreaInsets.getter();
  v22 = v20 + v21;
  GeometryProxy.safeAreaInsets.getter();
  v37 = v18;
  v38 = v22 + v23;
  v35 = a2;
  v36 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v31 + 8))(v6, v4);
  v25 = sub_10006AF20();
  v33 = WitnessTable;
  v34 = v25;
  v26 = swift_getWitnessTable();
  sub_100086FE8(v10, v7, v26);
  v27 = *(v30 + 8);
  v27(v10, v7);
  sub_100086FE8(v12, v7, v26);
  return (v27)(v12, v7);
}

uint64_t sub_10006ADB0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SceneSizeView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10006AE84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SceneSizeView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_10006AAA4(v5, v3, a1);
}

unint64_t sub_10006AF20()
{
  result = qword_10032DE10;
  if (!qword_10032DE10)
  {
    sub_10002CAF8(&qword_10032DE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DE10);
  }

  return result;
}

uint64_t sub_10006AF9C()
{
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032DE08);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10006AF20();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

unint64_t sub_10006B080()
{
  result = qword_10032DE18;
  if (!qword_10032DE18)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DE18);
  }

  return result;
}

uint64_t sub_10006B0D8()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10006B134@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmergencyModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10006B170(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(TUCallProviderManager) init];
  v8 = [v7 emergencyProvider];
  v9 = [objc_allocWithZone(TUDialRequest) initWithProvider:v8];
  [v9 setOriginatingUIType:2];
  [v9 setDialType:1];
  if (a2)
  {
    v10 = objc_allocWithZone(TUHandle);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithType:2 value:v11];

    [v9 setHandle:v12];
  }

  if ([v9 isValid])
  {
    v24 = [objc_opt_self() sharedInstance];
    v13 = [v24 dialWithRequest:v9];

    v14 = v24;
  }

  else
  {
    v15 = Logger.common.unsafeMutableAddressor();
    (*(v4 + 16))(v6, v15, v3);
    v16 = v9;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to start emergency call, dial request is invalid: %@", v19, 0xCu);
      sub_10002E7BC(v20);

      v22 = v8;
    }

    else
    {
      v22 = v17;
      v17 = v7;
      v7 = v8;
    }

    (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_10006B4B0(uint64_t a1, __int128 *a2)
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

uint64_t sub_10006B4D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10006B51C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10006B5A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_10002B6CC(&qword_10032DED8);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = __chkstk_darwin(v2);
  v38 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = v33 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.largeTitle.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_100047B84(v6, v8, v10 & 1);

  v43 = static Color.white.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v34 = v19;
  v35 = v20;
  sub_100047B84(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v33[1] = KeyPath;
  v42 = v37;
  sub_10002B6CC(&qword_10032DEE0);
  sub_10002CD18(&qword_10032DEE8, &qword_10032DEE0);
  v22 = v41;
  List<>.init(content:)();
  v23 = v38;
  v24 = v39;
  v25 = *(v39 + 16);
  v26 = v40;
  v25(v38, v22, v40);
  v28 = v35;
  v27 = v36;
  *v36 = v16;
  v27[1] = v18;
  LOBYTE(v22) = v34 & 1;
  *(v27 + 16) = v34 & 1;
  v27[3] = v28;
  v27[4] = KeyPath;
  *(v27 + 40) = 1;
  v29 = v27;
  v30 = sub_10002B6CC(&qword_10032DEF0);
  v25(v29 + *(v30 + 48), v23, v26);
  sub_100047B94(v16, v18, v22);
  v31 = *(v24 + 8);

  v31(v41, v26);
  v31(v23, v26);
  sub_100047B84(v16, v18, v22);
}

uint64_t sub_10006B924@<X0>(uint64_t a1@<X8>)
{
  v35 = LocalizedStringKey.init(stringLiteral:)();
  v43 = v2;
  v34 = v3;
  v39 = v4;
  sub_10002B6CC(&qword_10032DEF8);
  Binding.projectedValue.getter();
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v44 = 0;
    v37 = 0;
    v38 = 0;
    v7 = 0;
    v42 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v44 = LocalizedStringKey.init(stringLiteral:)();
    v37 = v9;
    v38 = v8;
    v11 = v10;
    Binding.projectedValue.getter();
    v42 = v45;
    v40 = v46;
    v7 = v11 & 1;
    v41 = v47;
  }

  sub_100035D1C();
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 allowAccessibilityShortcut];

  if (v13)
  {
    v14 = LocalizedStringKey.init(stringLiteral:)();
    v32 = v15;
    v33 = v14;
    v17 = v16;
    v36 = v18;
    Binding.projectedValue.getter();
    v30 = v46;
    v31 = v45;
    v19 = v17 & 1;
    v29 = v47;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v19 = 0;
    v36 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  v20 = LocalizedStringKey.init(stringLiteral:)();
  v27 = v21;
  v28 = v20;
  v23 = v22;
  v26 = v24;
  Binding.projectedValue.getter();
  *a1 = v35;
  *(a1 + 8) = v43;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v45;
  *(a1 + 40) = v46;
  *(a1 + 48) = v47;
  *(a1 + 56) = v44;
  *(a1 + 64) = v38;
  *(a1 + 72) = v7;
  *(a1 + 80) = v37;
  *(a1 + 88) = v42;
  *(a1 + 96) = v40;
  *(a1 + 104) = v41;
  *(a1 + 112) = v33;
  *(a1 + 120) = v32;
  *(a1 + 128) = v19;
  *(a1 + 136) = v36;
  *(a1 + 144) = v31;
  *(a1 + 152) = v30;
  *(a1 + 160) = v29;
  *(a1 + 168) = v28;
  *(a1 + 176) = v27;
  *(a1 + 184) = v23 & 1;
  *(a1 + 192) = v26;
  *(a1 + 200) = v45;
  *(a1 + 208) = v46;
  *(a1 + 216) = v47;

  sub_10006BFD8(v44, v38);
  sub_10006BFD8(v33, v32);
  sub_10006C03C(v33, v32);
  sub_10006C03C(v44, v38);
}

uint64_t sub_10006BD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v13 = v1[6];
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_10002B6CC(&qword_10032DEC8);
  sub_10006B5A4(v12, (a1 + *(v6 + 44)));
  v7 = v13;
  v8 = static Color.clarityUIContentBackground.getter();
  v9 = static Color.primary.getter();
  v10 = a1 + *(sub_10002B6CC(&qword_10032DED0) + 36);
  *v10 = v7;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
}

uint64_t sub_10006BE04()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10006BE70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v9[2] = *(v1 + 32);
  v10 = *(v1 + 48);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = *(v1 + 48);

  sub_10006C34C(v9, v8);
  Button<>.init(_:action:)();
  if (qword_10032B528 != -1)
  {
    swift_once();
  }

  v8[0] = qword_100336900;

  v6 = AnyView.init<A>(_:)();
  result = sub_10002B6CC(&qword_10032DF38);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_10006BFD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10006C03C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_10006C0A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10006C0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10006C104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006C168()
{
  result = qword_10032DF00;
  if (!qword_10032DF00)
  {
    sub_10002CAF8(&qword_10032DED0);
    sub_10006C220();
    sub_10002CD18(&qword_10032DF28, &qword_10032DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DF00);
  }

  return result;
}

unint64_t sub_10006C220()
{
  result = qword_10032DF08;
  if (!qword_10032DF08)
  {
    sub_10002CAF8(&qword_10032DF10);
    sub_10002CD18(&qword_10032DF18, &qword_10032DF20);
    sub_100058D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DF08);
  }

  return result;
}

uint64_t sub_10006C2F4()
{

  return _swift_deallocObject(v0, 65);
}

unint64_t sub_10006C3F4()
{
  result = qword_10032DF40;
  if (!qword_10032DF40)
  {
    sub_10002CAF8(&qword_10032DF38);
    sub_10002CD18(&unk_10032CFF8, &qword_10032CFD8);
    sub_10002CD18(&qword_10032DF48, &qword_10032DF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032DF40);
  }

  return result;
}

id sub_10006C590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilityUIServerPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10006C5E8()
{
  result = [objc_allocWithZone(type metadata accessor for SystemSettings()) init];
  qword_1003368B8 = result;
  return result;
}

id sub_10006C64C()
{
  result = *(v0 + OBJC_IVAR____TtC12ClarityBoard14SystemSettings_radiosPreferences);
  if (result)
  {
    return [result airplaneMode];
  }

  return result;
}

char *sub_10006C67C()
{
  v1 = v0;
  v2 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleArbiter;
  *&v1[v5] = [objc_opt_self() sharedInstance];
  v6 = OBJC_IVAR____TtC12ClarityBoard14SystemSettings_radiosPreferences;
  sub_10006E710();
  v7 = static OS_dispatch_queue.main.getter();
  v8 = [objc_allocWithZone(RadiosPreferences) initWithQueue:v7];

  *&v1[v6] = v8;
  *&v1[OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleSubscription] = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard14SystemSettings_textSizeSubscription] = 0;
  v9 = type metadata accessor for SystemSettings();
  v22.receiver = v1;
  v22.super_class = v9;
  v10 = objc_msgSendSuper2(&v22, "init");
  v11 = type metadata accessor for TaskPriority();
  v12 = *(*(v11 - 8) + 56);
  v12(v4, 1, 1, v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v14 = v10;

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;

  *&v14[OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleSubscription] = sub_1000AB448(0, 0, v4, &unk_100299FC0, v16);

  v12(v4, 1, 1, v11);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;

  *&v14[OBJC_IVAR____TtC12ClarityBoard14SystemSettings_textSizeSubscription] = sub_1000AB448(0, 0, v4, &unk_100299FD0, v19);

  v20 = *&v14[OBJC_IVAR____TtC12ClarityBoard14SystemSettings_radiosPreferences];
  if (v20)
  {
    [v20 setDelegate:v14];
  }

  return v14;
}

uint64_t sub_10006C994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_10002B6CC(&qword_10032D650);
  v4[19] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[24] = swift_task_alloc();
  v6 = sub_10002B6CC(&qword_10032D658);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = sub_10002B6CC(&qword_10032D660);
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for MainActor();
  v4[32] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v9;
  v4[34] = v8;

  return _swift_task_switch(sub_10006CBC4, v9, v8);
}

uint64_t sub_10006CBC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleArbiter);
  }

  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = [objc_opt_self() defaultCenter];
  v8 = NSNotificationCenter.notifications(named:object:)();

  v0[16] = v8;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10002B6CC(&qword_10032D668);
  sub_10006E940(&qword_10032D670, 255, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();
  swift_unknownObjectRelease();
  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v4 + 8))(v5, v6);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v9 = static MainActor.shared.getter();
  v0[35] = v9;
  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v0[36] = v10;
  v0[37] = v12;

  return _swift_task_switch(sub_10006CE44, v10, v12);
}

uint64_t sub_10006CE44()
{
  v1 = v0[35];
  v0[38] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10006E940(&qword_10032D678, 255, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10006CF50;
  v3 = v0[19];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10006CF50()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_10005B2CC;
  }

  else
  {
    (*(v2 + 304))();
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_10006D078;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006D078()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10002C51C(v3, &qword_10032D650);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);

    return _swift_task_switch(sub_10006D444, v4, v5);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 176), v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 320) = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_10006D240;
    v9 = *(v0 + 176);

    return v11(v0 + 16, v9);
  }
}

uint64_t sub_10006D240()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 296);
  v6 = *(v1 + 288);

  return _swift_task_switch(sub_10006D3E0, v6, v5);
}

uint64_t sub_10006D3E0()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_10006D444, v1, v2);
}

uint64_t sub_10006D444()
{
  if (v0[5])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      type metadata accessor for SystemSettings();
      sub_10006E940(&qword_10032E028, v3, type metadata accessor for SystemSettings);
      ObservableObject<>.objectWillChange.getter();

      ObservableObjectPublisher.send()();
    }

    sub_10002C51C((v0 + 2), &unk_10032D680);
    v4 = static MainActor.shared.getter();
    v0[35] = v4;
    if (v4)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v0[36] = v5;
    v0[37] = v7;

    return _swift_task_switch(sub_10006CE44, v5, v7);
  }

  else
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10006D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  sub_10002B6CC(&qword_10032D650);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[21] = swift_task_alloc();
  v6 = sub_10002B6CC(&qword_10032D658);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_10002B6CC(&qword_10032D660);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for MainActor();
  v4[29] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[30] = v9;
  v4[31] = v8;

  return _swift_task_switch(sub_10006D848, v9, v8);
}

uint64_t sub_10006D848()
{
  v1 = v0[24];
  v10 = v0[23];
  v2 = v0[22];
  v3 = [objc_opt_self() defaultCenter];
  v4 = NSNotificationCenter.notifications(named:object:)();

  v0[13] = v4;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10002B6CC(&qword_10032D668);
  sub_10006E940(&qword_10032D670, 255, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();
  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v10 + 8))(v1, v2);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v5 = static MainActor.shared.getter();
  v0[32] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[33] = v6;
  v0[34] = v8;

  return _swift_task_switch(sub_10006DA8C, v6, v8);
}

uint64_t sub_10006DA8C()
{
  v1 = v0[32];
  v0[35] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10006E940(&qword_10032D678, 255, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_10006DB98;
  v3 = v0[16];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10006DB98()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_10006DE88;
  }

  else
  {
    (*(v2 + 280))();
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_10006DCC0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10006DCC0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10002C51C(v3, &qword_10032D650);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);

    return _swift_task_switch(sub_10006E0A4, v4, v5);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 152), v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 296) = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 304) = v8;
    *v8 = v0;
    v8[1] = sub_10006DEA0;
    v9 = *(v0 + 152);

    return v11(v0 + 16, v9);
  }
}

uint64_t sub_10006DEA0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  return _swift_task_switch(sub_10006E040, v6, v5);
}

uint64_t sub_10006E040()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return _swift_task_switch(sub_10006E0A4, v1, v2);
}

uint64_t sub_10006E0A4()
{
  if (v0[5])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      type metadata accessor for SystemSettings();
      sub_10006E940(&qword_10032E028, v3, type metadata accessor for SystemSettings);
      ObservableObject<>.objectWillChange.getter();

      ObservableObjectPublisher.send()();
    }

    sub_10002C51C((v0 + 2), &unk_10032D680);
    v4 = static MainActor.shared.getter();
    v0[32] = v4;
    if (v4)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v0[33] = v5;
    v0[34] = v7;

    return _swift_task_switch(sub_10006DA8C, v5, v7);
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10006E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006E334, v6, v5);
}

uint64_t sub_10006E334()
{

  type metadata accessor for SystemSettings();
  sub_10006E940(&qword_10032E028, v1, type metadata accessor for SystemSettings);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v2 = *(v0 + 8);

  return v2();
}

id sub_10006E51C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006E5E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SystemSettings();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10006E61C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10006E65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E558;

  return sub_10006E29C(a1, v4, v5, v6);
}

unint64_t sub_10006E710()
{
  result = qword_10032D9C8;
  if (!qword_10032D9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032D9C8);
  }

  return result;
}

uint64_t sub_10006E75C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006E798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_10006C994(a1, v4, v5, v6);
}

uint64_t sub_10006E84C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10006E88C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E558;

  return sub_10006D618(a1, v4, v5, v6);
}

uint64_t sub_10006E940(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

UIContentSizeCategory sub_10006E988()
{
  v0 = _AXSCopyPreferredContentSizeCategoryName();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return UIContentSizeCategoryLarge;
}

uint64_t sub_10006EAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonStyleConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() systemGray5Color];
  v6 = Color.init(uiColor:)();
  v7 = static Color.primary.getter();
  result = sub_10002B6CC(qword_10032E030);
  *(a2 + *(result + 36)) = v6;
  *(a2 + *(result + 40)) = v7;
  return result;
}

uint64_t sub_10006EC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v38 = sub_10002B6CC(&qword_10032D7E0);
  __chkstk_darwin(v38);
  v5 = &v35 - v4;
  v6 = *(a1 + 24);
  v40 = *(a1 + 16);
  v41 = v6;
  v37 = a1;
  v43 = type metadata accessor for _BackgroundStyleModifier();
  v7 = type metadata accessor for ModifiedContent();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  sub_10002CAF8(&qword_10032D7E8);
  v10 = type metadata accessor for ModifiedContent();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v35 - v11;
  sub_10002CAF8(&qword_10032E0C0);
  v36 = type metadata accessor for ModifiedContent();
  v48 = *(v36 - 8);
  __chkstk_darwin(v36);
  v42 = &v35 - v12;
  sub_10002CAF8(&qword_10032D7F0);
  v13 = type metadata accessor for ModifiedContent();
  v49 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v44 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v35 - v16;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_10002B6CC(&qword_10032D818);
  ButtonStyleConfiguration.label.getter();
  static Edge.Set.all.getter();
  v17 = sub_10002CD18(&qword_10032D7F8, &qword_10032D7E0);
  v35 = v2;
  v18 = v40;
  v19 = v41;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  sub_10005E0A4(v5);
  v51 = v18;
  v52 = v19;
  v53 = v2;
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v60 = v17;
  v61 = WitnessTable;
  v21 = swift_getWitnessTable();
  v22 = v39;
  View.overlay<A>(alignment:content:)();
  (*(v45 + 8))(v9, v7);
  v23 = sub_10002CD18(&qword_10032D800, &qword_10032D7E8);
  v58 = v21;
  v59 = v23;
  v24 = swift_getWitnessTable();
  sub_10006F2F4();
  v25 = v42;
  View.clipShape<A>(_:style:)();
  (*(v47 + 8))(v22, v10);
  v26 = sub_10002CD18(&unk_10032E0D0, &qword_10032E0C0);
  v56 = v24;
  v57 = v26;
  v27 = v36;
  v28 = swift_getWitnessTable();
  v29 = v44;
  View.foregroundColor(_:)();
  (*(v48 + 8))(v25, v27);
  v30 = sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
  v54 = v28;
  v55 = v30;
  v31 = swift_getWitnessTable();
  v32 = v46;
  sub_100086FE8(v29, v13, v31);
  v33 = *(v49 + 8);
  v33(v29, v13);
  sub_100086FE8(v32, v13, v31);
  return (v33)(v32, v13);
}