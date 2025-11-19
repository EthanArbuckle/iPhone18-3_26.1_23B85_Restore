uint64_t sub_1000905CC(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 232) = a1;
  v3 = *(*(sub_10000341C(&qword_10025F240, &qword_1001D3D58) - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  *(v2 + 112) = v4;
  v5 = *(v4 - 8);
  *(v2 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v7 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v8 = type metadata accessor for CompositionModel.Session(0);
  *(v2 + 144) = v8;
  v9 = *(v8 - 8);
  *(v2 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 168) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 176) = v12;
  *(v2 + 184) = v11;

  return _swift_task_switch(sub_10009079C, v12, v11);
}

uint64_t sub_10009079C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  swift_getKeyPath();
  *(v0 + 64) = v4;
  *(v0 + 192) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 200) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v4 + v5, v3, &unk_100262580, &qword_1001CFF70);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {
    v8 = *(v0 + 168);

    sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F34C(v9, qword_100276F08);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "no session", v12, 2u);
    }

    v13 = *(v0 + 96);

    sub_100099280();
    v14 = swift_allocError();
    *v15 = xmmword_1001D3BC0;
    sub_100036BF0(v14);
    goto LABEL_20;
  }

  v16 = *(v0 + 160);
  sub_10009A774(*(v0 + 136), v16, type metadata accessor for CompositionModel.Session);
  v17 = *(v16 + 16);
  *(v0 + 208) = v17;
  if (!v17)
  {
    v30 = *(v0 + 168);

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000F34C(v31, qword_100276F08);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "no GES session", v34, 2u);
    }

    v35 = *(v0 + 160);
    v36 = *(v0 + 96);

    sub_100099280();
    v37 = swift_allocError();
    *v38 = xmmword_1001D3BB0;
    sub_100036BF0(v37);
    v29 = v35;
    goto LABEL_19;
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 104);
  sub_1000081F8(*(v0 + 160) + *(*(v0 + 144) + 28), v20, &qword_10025F240, &qword_1001D3D58);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 104);

    sub_10000F500(v22, &qword_10025F240, &qword_1001D3D58);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F34C(v23, qword_100276F08);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 160);
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no continuation to call", v28, 2u);
    }

    v29 = v27;
LABEL_19:
    sub_100099074(v29);
LABEL_20:
    v39 = *(v0 + 160);
    v40 = *(v0 + 128);
    v41 = *(v0 + 136);
    v42 = *(v0 + 104);

    v43 = *(v0 + 8);

    return v43();
  }

  (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));

  v45 = swift_task_alloc();
  *(v0 + 216) = v45;
  *v45 = v0;
  v45[1] = sub_100090D38;
  v46 = *(v0 + 96);
  v47 = *(v0 + 232);

  return sub_100093350(v17, v47);
}

uint64_t sub_100090D38()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_100090FC8;
  }

  else
  {
    v7 = sub_100090E74;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100090E74()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[12];

  swift_getKeyPath();
  v0[10] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v0[11] = *(v6 + v7);

  CheckedContinuation.resume(returning:)();
  v8 = v0[26];
  v9 = v0[20];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  sub_1000910BC(v0[12]);

  (*(v11 + 8))(v10, v12);
  sub_100099074(v9);
  v13 = v0[20];
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100090FC8()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[14];

  v0[9] = v1;
  CheckedContinuation.resume(throwing:)();
  v5 = v0[26];
  v6 = v0[20];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  sub_1000910BC(v0[12]);

  (*(v8 + 8))(v7, v9);
  sub_100099074(v6);
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000910BC(uint64_t a1)
{
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  swift_getKeyPath();
  v24 = a1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(a1 + v14, v8, &unk_100262580, &qword_1001CFF70);
  v15 = type metadata accessor for CompositionModel.Session(0);
  result = (*(*(v15 - 8) + 48))(v8, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10009AAB8(v12, &v8[*(v15 + 28)], &qword_10025F240, &qword_1001D3D58);
    sub_1000081F8(a1 + v14, v6, &unk_100262580, &qword_1001CFF70);
    swift_beginAccess();
    sub_10009AB44(v8, a1 + v14, &unk_100262580, &qword_1001CFF70);
    swift_endAccess();
    sub_100079808(v6);
    sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
    sub_10000F500(v8, &unk_100262580, &qword_1001CFF70);
    v23 = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v23 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = a1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    v18 = *(a1 + v17);
    *(a1 + v17) = &_swiftEmptyDictionarySingleton;

    v22 = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v22 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = a1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v19 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v20 = *(a1 + v19);
    *(a1 + v19) = _swiftEmptyArrayStorage;

    v21 = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_100091570(char a1)
{
  *(v2 + 528) = v1;
  *(v2 + 744) = a1;
  v3 = *(*(type metadata accessor for JSONEncoder.OutputFormatting() - 8) + 64) + 15;
  *(v2 + 536) = swift_task_alloc();
  v4 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  *(v2 + 544) = swift_task_alloc();
  v5 = type metadata accessor for CompositionModel.Session(0);
  *(v2 + 552) = v5;
  v6 = *(v5 - 8);
  *(v2 + 560) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 568) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 576) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 584) = v9;
  *(v2 + 592) = v8;

  return _swift_task_switch(sub_1000916D0, v9, v8);
}

uint64_t sub_1000916D0()
{
  if (*(v0 + 744) == 1)
  {
    v1 = *(v0 + 576);
    v2 = *(v0 + 528);

    swift_getKeyPath();
    *(v0 + 464) = v2;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 472) = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = &_swiftEmptyDictionarySingleton;

    *(v0 + 488) = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v0 + 496) = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 504) = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v6 = *(v2 + v5);
    *(v2 + v5) = _swiftEmptyArrayStorage;

    *(v0 + 520) = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_18:
    v36 = *(v0 + 568);
    v37 = *(v0 + 544);
    v38 = *(v0 + 536);

    v39 = *(v0 + 8);

    return v39();
  }

  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v9 = *(v0 + 544);
  v10 = *(v0 + 528);
  swift_getKeyPath();
  *(v0 + 600) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 344) = v10;
  *(v0 + 608) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v10 + v11, v9, &unk_100262580, &qword_1001CFF70);
  v12 = (*(v7 + 48))(v9, 1, v8);
  v13 = *(v0 + 544);
  if (v12 == 1)
  {
    v14 = *(v0 + 576);

    sub_10000F500(v13, &unk_100262580, &qword_1001CFF70);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F34C(v15, qword_100276F08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "no session", v18, 2u);
    }

    v19 = *(v0 + 528);

    sub_100099280();
    v20 = swift_allocError();
    *v21 = xmmword_1001D3BC0;
    sub_100036BF0(v20);
    goto LABEL_18;
  }

  v22 = *(v0 + 568);
  sub_10009A774(*(v0 + 544), v22, type metadata accessor for CompositionModel.Session);
  v23 = *(v22 + 16);
  *(v0 + 616) = v23;
  if (!v23)
  {
    v27 = *(v0 + 576);

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000F34C(v28, qword_100276F08);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "no GES session", v31, 2u);
    }

    v32 = *(v0 + 568);
    v33 = *(v0 + 528);

    sub_100099280();
    v34 = swift_allocError();
    *v35 = xmmword_1001D3BB0;
    sub_100036BF0(v34);
    sub_100099074(v32);
    goto LABEL_18;
  }

  v24 = swift_task_alloc();
  *(v0 + 624) = v24;
  *v24 = v0;
  v24[1] = sub_100091CC4;
  v25 = *(v0 + 528);

  return sub_100093350(v23, 0);
}

uint64_t sub_100091CC4()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 592);
  v6 = *(v2 + 584);
  if (v0)
  {
    v7 = sub_100092C20;
  }

  else
  {
    v7 = sub_100091E00;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100091E00()
{
  v57 = v0;
  v1 = *(v0 + 528);
  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  *(v0 + 640) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  if (*(v1 + v2) != 1)
  {
    v3 = *(v0 + 632);
    v5 = *(v0 + 608);
    v6 = *(v0 + 600);
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v1;
    *(v7 + 24) = 1;
    *(v0 + 368) = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v8 = *(v0 + 528);
    v4 = sub_1000713A0();
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = *(v0 + 632);
  v4 = sub_1000713A0();
  if (v4)
  {
LABEL_5:
    [v4 writingToolsSession:**(v0 + 568) didReceiveAction:3];
    swift_unknownObjectRelease();
  }

LABEL_6:
  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 648) = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  swift_getKeyPath();
  *(v0 + 360) = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(v0 + 352) = *(v12 + v16);
  sub_10004DBF8();

  v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 656) = v17;
  *(v0 + 664) = v18;
  if (v3)
  {
    v19 = *(v0 + 576);

    v20 = *(v0 + 616);
    v21 = *(v0 + 608);
    v22 = *(v0 + 600);
    v23 = *(v0 + 528);
    swift_getKeyPath();
    *(v0 + 512) = v23;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 480) = v23;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    v25 = *(v23 + v24);
    *(v23 + v24) = &_swiftEmptyDictionarySingleton;

    *(v0 + 456) = v23;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v0 + 440) = v23;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 424) = v23;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v27 = *(v23 + v26);
    *(v23 + v26) = _swiftEmptyArrayStorage;

    *(v0 + 376) = v23;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_errorRetain();
    sub_100036BF0(v3);

    sub_100099074(*(v0 + 568));
    v28 = *(v0 + 568);
    v29 = *(v0 + 544);
    v30 = *(v0 + 536);

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = v17;
  v34 = v18;

  sub_10004DC4C(v33, v34);
  v35 = sub_100097014(v33, v34);
  if (v36)
  {
    goto LABEL_17;
  }

  *(v0 + 328) = v33;
  *(v0 + 336) = v34;
  sub_10004DC4C(v33, v34);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 96) = 0;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    sub_10000F500(v0 + 64, &qword_10025CC40, &qword_1001D1FD0);
LABEL_16:
    v35 = sub_100095E84(v33, v34);
LABEL_17:
    v39 = v35;
    v40 = v36;
    sub_10004DD08(v33, v34);
    goto LABEL_18;
  }

  sub_100008198((v0 + 64), v0 + 104);
  v37 = *(v0 + 136);
  sub_100027874((v0 + 104), *(v0 + 128));
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_10000F4B4((v0 + 104));
    goto LABEL_16;
  }

  sub_10004DD08(v33, v34);
  v38 = *(v0 + 136);
  sub_100027874((v0 + 104), *(v0 + 128));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v39 = *(v0 + 312);
  v40 = *(v0 + 320);
  sub_10000F4B4((v0 + 104));
LABEL_18:
  *(v0 + 672) = v40;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000F34C(v41, qword_100276F08);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  v55 = v39;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56 = v45;
    *v44 = 136642819;
    *(v44 + 4) = sub_10002510C(v39, v40, &v56);
    _os_log_impl(&_mh_execute_header, v42, v43, "sending slot filling info to model: %{sensitive}s", v44, 0xCu);
    sub_10000F4B4(v45);
  }

  v54 = *(v0 + 616);
  v46 = *(v0 + 608);
  v47 = *(v0 + 600);
  v48 = *(v0 + 528);
  swift_getKeyPath();
  *(v0 + 384) = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 392) = v48;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v49 = *(v12 + v16);
  *(v12 + v16) = &_swiftEmptyDictionarySingleton;

  *(v0 + 400) = v48;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 408) = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 416) = v48;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v50 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v51 = *(v48 + v50);
  *(v48 + v50) = _swiftEmptyArrayStorage;

  *(v0 + 432) = v48;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v52 = swift_task_alloc();
  *(v0 + 680) = v52;
  *v52 = v0;
  v52[1] = sub_100092670;
  v53 = *(v0 + 528);

  return sub_10008569C(v0 + 16, v54, v55, v40);
}

uint64_t sub_100092670()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 680);
  v5 = *v1;
  v3[86] = v0;
  v17 = v2[2];
  v6 = v2[3];
  v3[87] = v6;
  v7 = v2[4];
  v3[88] = v7;
  v8 = v2[5];
  v3[89] = v8;
  v9 = v2[6];
  v10 = v2[7];
  v3[90] = v10;

  v11 = v2[84];

  if (v0)
  {
    v12 = v3[74];
    v13 = v3[73];

    return _swift_task_switch(sub_100092E70, v13, v12);
  }

  else
  {
    v14 = swift_task_alloc();
    v3[91] = v14;
    *v14 = v5;
    v14[1] = sub_1000928D0;
    v15 = v3[66];

    return sub_1000897EC(v17, v6, v7, v8, v9, v10, 0, 0);
  }
}

uint64_t sub_1000928D0()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *v1;
  *(*v1 + 736) = v0;

  v5 = v2[90];
  v6 = v2[89];
  v7 = v2[88];
  v8 = v2[87];

  v9 = v2[74];
  v10 = v2[73];
  if (v0)
  {
    v11 = sub_1000930E0;
  }

  else
  {
    v11 = sub_100092A80;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100092A80()
{
  v1 = v0[80];
  v2 = v0[72];
  v3 = v0[66];

  if (*(v3 + v1))
  {
    v4 = v0[92];
    v23 = v0[83];
    v5 = v0[82];
    v6 = v0[81];
    v7 = v0[77];
    v8 = v0[76];
    v9 = v0[75];
    v10 = v0[66];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[56] = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10004DD08(v5, v23);
  }

  else
  {
    v12 = v0[83];
    v13 = v0[82];
    v14 = v0[81];
    v15 = v0[80];
    v16 = v0[77];
    v17 = v0[66];

    sub_10004DD08(v13, v12);
    *(v17 + v15) = 0;
  }

  sub_100099074(v0[71]);
  v18 = v0[71];
  v19 = v0[68];
  v20 = v0[67];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100092C20()
{
  v1 = v0[72];

  v2 = v0[79];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[66];
  swift_getKeyPath();
  v0[64] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[60] = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = &_swiftEmptyDictionarySingleton;

  v0[57] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[55] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[53] = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v10 = *(v6 + v9);
  *(v6 + v9) = _swiftEmptyArrayStorage;

  v0[47] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_errorRetain();
  sub_100036BF0(v2);

  sub_100099074(v0[71]);
  v11 = v0[71];
  v12 = v0[68];
  v13 = v0[67];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100092E70()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[72];

  sub_10004DD08(v2, v1);

  v5 = v0[86];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[66];
  swift_getKeyPath();
  v0[64] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[60] = v9;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v11 = *(v9 + v10);
  *(v9 + v10) = &_swiftEmptyDictionarySingleton;

  v0[57] = v9;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[55] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[53] = v9;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v13 = *(v9 + v12);
  *(v9 + v12) = _swiftEmptyArrayStorage;

  v0[47] = v9;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_errorRetain();
  sub_100036BF0(v5);

  sub_100099074(v0[71]);
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[67];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000930E0()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[72];

  sub_10004DD08(v2, v1);

  v5 = v0[92];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[66];
  swift_getKeyPath();
  v0[64] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[60] = v9;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v11 = *(v9 + v10);
  *(v9 + v10) = &_swiftEmptyDictionarySingleton;

  v0[57] = v9;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[55] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[53] = v9;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v13 = *(v9 + v12);
  *(v9 + v12) = _swiftEmptyArrayStorage;

  v0[47] = v9;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_errorRetain();
  sub_100036BF0(v5);

  sub_100099074(v0[71]);
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[67];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100093350(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = *(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 184) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 192) = v6;
  *(v3 + 200) = v5;

  return _swift_task_switch(sub_100093424, v6, v5);
}

uint64_t sub_100093424()
{
  if (*(v0 + 232) == 1)
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 168);

    swift_getKeyPath();
    *(v0 + 128) = v2;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 136) = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = &_swiftEmptyDictionarySingleton;

    *(v0 + 144) = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v0 + 152) = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

    sub_1001734FC();

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276F08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "user sent requested info; setting current search tool query and slot query request IDs to nil", v9, 2u);
    }

    v11 = *(v0 + 168);
    v10 = *(v0 + 176);

    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v13(v10, 1, 1, v12);
    sub_1000742F0(v10);
    v13(v10, 1, 1, v12);
    sub_1000744CC(v10);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 168);
    swift_getKeyPath();
    *(v0 + 88) = v16;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v18 = *(*(v16 + v17) + 16);
    if (v18)
    {
      v26 = *(v0 + 168);
      v19 = ( + 88);
      do
      {
        v20 = *(v0 + 168);
        v21 = *(v19 - 6);
        v29 = *(v19 - 7);
        v30 = *(v19 - 4);
        v27 = *(v19 - 1);
        v28 = *(v19 - 2);
        v22 = *v19;
        v19 += 8;
        swift_getKeyPath();
        *(v0 + 96) = v20;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 104) = v20;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        sub_100093E98(v28, v27, v29, v21);
        swift_endAccess();
        *(v0 + 112) = v20;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        --v18;
      }

      while (v18);
    }

    v23 = *(v0 + 168);
    swift_getKeyPath();
    *(v0 + 120) = v23;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 208) = *(v23 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v24[1] = sub_100093A20;
    v25 = *(v0 + 160);

    return sub_100170B3C(v25);
  }
}

uint64_t sub_100093A20()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = v2[25];
    v6 = sub_100093CE0;
  }

  else
  {
    v7 = v2[26];

    v4 = v2[24];
    v5 = v2[25];
    v6 = sub_100093B3C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100093B3C()
{
  v1 = v0[23];

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "user sent requested info; setting current search tool query and slot query request IDs to nil", v5, 2u);
  }

  v7 = v0[21];
  v6 = v0[22];

  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 1, 1, v8);
  sub_1000742F0(v6);
  v9(v6, 1, 1, v8);
  sub_1000744CC(v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100093CE0()
{
  v1 = v0[26];
  v2 = v0[23];

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to upload attachments: %@", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  v11 = v0[28];
  v12 = v0[22];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[28];

  return v13();
}

uint64_t sub_100093E98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276EF0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136643075;
    *(v11 + 4) = sub_10002510C(a3, a4, &v16);
    *(v11 + 12) = 2085;
    v17 = a1;
    v18 = a2;

    v12 = String.init<A>(describing:)();
    v14 = sub_10002510C(v12, v13, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "adding value to requested info response: %{sensitive}s: %{sensitive}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = &type metadata for String;
  v20 = &protocol witness table for String;
  v17 = a1;
  v18 = a2;

  return sub_10019D2B8(&v17, a3, a4);
}

uint64_t sub_1000940A8()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonSelectedWordCount);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);
  if (__OFADD__(v1, v3))
  {
    __break(1u);
  }

  else if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) != v1 + v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100094238()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v12 - v4;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v6 = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  if (v6 == *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-2] = v1;
    LOBYTE(v12[-1]) = v6;
    v12[1] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v1;
  sub_10015C9C8(0, 0, v5, &unk_1001D4018, v10);
}

uint64_t sub_10009445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000944F4, v6, v5);
}

uint64_t sub_1000944F4()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[7] = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100094618;

  return sub_1000DF628();
}

uint64_t sub_100094618()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_10009475C, v5, v4);
}

uint64_t sub_10009475C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000947BC()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__prompt);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString) = 0;
  v6 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inputStringsForFeedback) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__promptStringsForFeedback) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages) = &_swiftEmptyArrayStorage;
  v7 = sub_1000971C0();
  v8 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  *v8 = v7;
  v8[1] = v9;
  v10 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) = 0;
  v11 = type metadata accessor for AttachmentManager(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = &_swiftEmptyArrayStorage;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0;
  *(v14 + 64) = &_swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager) = v14;
  v15 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_education;
  v16 = type metadata accessor for CompositionEducationModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 0xD000000000000010;
  *(v19 + 24) = 0x80000001001E4C80;
  ObservationRegistrar.init()();
  v20 = [objc_allocWithZone(NSUserDefaults) init];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 BOOLForKey:v21];

  *(v19 + 32) = v22;
  *(v0 + v15) = v19;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse) = sub_100006100(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedSlotSourceIds) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser) = 0;
  v23 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID;
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 56);
  v25(v1 + v23, 1, 1, v24);
  v25(v1 + v23, 1, 1, v24);
  v26 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID;
  v25(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID, 1, 1, v24);
  v25(v1 + v26, 1, 1, v24);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  v27 = type metadata accessor for CompositionRateLimitModel();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v30 + 24) = String.init(localized:table:bundle:locale:comment:)();
  *(v30 + 32) = v31;
  ObservationRegistrar.init()();
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel) = v30;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) = 1;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) = 1;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__hasGeneratedResponseDrafts) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) = 0;
  v32 = v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *v32 = 0;
  *(v32 + 24) = -1;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonSelectedWordCount) = 0;
  v33 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  v34 = type metadata accessor for CompositionModel.Session(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v1 + v33, 1, 1, v34);
  v35(v1 + v33, 1, 1, v34);
  v36 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_userInfoSearcher;
  type metadata accessor for UserInfoSearcher();
  swift_allocObject();
  *(v1 + v36) = sub_1000CBCB8();
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v1 + 49) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = -1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  ObservationRegistrar.init()();
  return v1;
}

uint64_t sub_100094D98()
{
  sub_100037D88(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__delegate);
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__prompt + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inputStringsForFeedback);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__promptStringsForFeedback);

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments);

  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages);

  v7 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  v8 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v9 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_education);

  v10 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

  v11 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots);

  v12 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse);

  v13 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedSlotSourceIds);

  v14 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID, &unk_100262450, &qword_1001CFAA0);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID, &unk_100262450, &qword_1001CFAA0);
  v15 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  sub_1000278C0(*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24));
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session, &unk_100262580, &qword_1001CFF70);
  v16 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_userInfoSearcher);

  v17 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v18 = type metadata accessor for ObservationRegistrar();
  v19 = *(*(v18 - 8) + 8);

  return v19(v0 + v17, v18);
}

uint64_t sub_100094FE0()
{
  v0 = ToolModel.deinit();
  sub_100037D88(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__delegate);
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__prompt + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inputStringsForFeedback);

  v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__promptStringsForFeedback);

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments);

  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages);

  v7 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  v8 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v9 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_education);

  v10 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

  v11 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots);

  v12 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse);

  v13 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedSlotSourceIds);

  v14 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID, &unk_100262450, &qword_1001CFAA0);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID, &unk_100262450, &qword_1001CFAA0);
  v15 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  sub_1000278C0(*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24));
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session, &unk_100262580, &qword_1001CFF70);
  v16 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_userInfoSearcher);

  v17 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v18 = type metadata accessor for ObservationRegistrar();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  return v0;
}

uint64_t sub_100095228()
{
  v0 = *sub_100094FE0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000952A4()
{
  sub_1000954B0(319, &qword_10025B060, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000954B0(319, &unk_10025E4C0, type metadata accessor for CompositionModel.Session);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ObservationRegistrar();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000954B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for HandoffState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CompositionModel.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompositionModel.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100095800(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000958D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100095980()
{
  sub_1000081B0(319, &unk_10025D5F0, WTSession_ptr);
  if (v0 <= 0x3F)
  {
    sub_1000081B0(319, &unk_100262480, WTContext_ptr);
    if (v1 <= 0x3F)
    {
      sub_1000954B0(319, &qword_10025F2B0, &type metadata accessor for GenerativeExperiencesSession);
      if (v2 <= 0x3F)
      {
        sub_100095A90();
        if (v3 <= 0x3F)
        {
          sub_100095AF4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100095A90()
{
  if (!qword_10025F2B8)
  {
    sub_100003E34(&qword_10025F2C0, qword_1001D3D68);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10025F2B8);
    }
  }
}

void sub_100095AF4()
{
  if (!qword_10025F2C8)
  {
    sub_1000081B0(255, &qword_10025F2D0, NSAttributedString_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10025F2C8);
    }
  }
}

unint64_t sub_100095B60()
{
  result = qword_10025F310;
  if (!qword_10025F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F310);
  }

  return result;
}

unint64_t sub_100095BB8()
{
  result = qword_10025F318;
  if (!qword_10025F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F318);
  }

  return result;
}

unint64_t sub_100095C54()
{
  result = qword_10025F330;
  if (!qword_10025F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F330);
  }

  return result;
}

Swift::Int sub_100095CA8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10009FF24(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[3 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 3) = *v13;
          v13[5] = v13[2];
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 3;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100096004(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_100095E10(uint64_t a1, uint64_t a2)
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

  sub_10000341C(&qword_10025BA00, &qword_1001D4100);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100095E84(uint64_t a1, unint64_t a2)
{
  sub_10004DC4C(a1, a2);
  v4 = sub_100096E98(a1, a2)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_100095EF0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100095F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100096004(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10009FA94(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1000965CC((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10009FBA4(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_10009FBA4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_1000965CC((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000965CC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

void *sub_100096808(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100096898(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100096898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100096C74(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100096C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000341C(&qword_10025F370, &qword_1001D41D0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100096E98(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10004DD08(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100095E10(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_10004DD08(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100097014(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1000971C0()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.intendedDefaultLLM.getter();

  if (v7)
  {
    sub_100008198(&v6, v8);
    sub_100027874(v8, v8[3]);
    v0 = dispatch thunk of LLMProvider.localizedDisplayName()();
    sub_10000F4B4(v8);
  }

  else
  {
    sub_10000F500(&v6, &qword_1002651D0, &unk_1001DDA20);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000F34C(v1, qword_100276F08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No LLM is available to show", v4, 2u);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_100097334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000081F8(a1, &v24 - v16, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(a2, &v17[v18], &unk_100262450, &qword_1001CFAA0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1000081F8(v17, v12, &unk_100262450, &qword_1001CFAA0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1000997E0(&unk_10025F360, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_10000F500(v17, &unk_100262450, &qword_1001CFAA0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10000F500(v17, &qword_10025F358, &qword_1001D4140);
    v20 = 1;
    return v20 & 1;
  }

  sub_10000F500(v17, &unk_100262450, &qword_1001CFAA0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100097654(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = type metadata accessor for String.Encoding();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = *(*(sub_10000341C(&unk_10025F3C0, &unk_1001D4320) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for PromptCompletion.ImageContent();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = type metadata accessor for PromptCompletion.TextContent();
  v2[23] = v10;
  v11 = *(v10 - 8);
  v2[24] = v11;
  v12 = *(v11 + 64) + 15;
  v2[25] = swift_task_alloc();
  v13 = type metadata accessor for PromptCompletion.Content();
  v2[26] = v13;
  v14 = *(v13 - 8);
  v2[27] = v14;
  v15 = *(v14 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v16 = type metadata accessor for PromptCompletion.Segment();
  v2[30] = v16;
  v17 = *(v16 - 8);
  v2[31] = v17;
  v18 = *(v17 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v19 = type metadata accessor for PromptCompletion();
  v2[34] = v19;
  v20 = *(v19 - 8);
  v2[35] = v20;
  v21 = *(v20 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v22 = type metadata accessor for PromptCompletion.Candidate();
  v2[38] = v22;
  v23 = *(v22 - 8);
  v2[39] = v23;
  v24 = *(v23 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for MainActor();
  v2[42] = static MainActor.shared.getter();
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[43] = v26;
  v2[44] = v25;

  return _swift_task_switch(sub_1000979DC, v26, v25);
}

uint64_t sub_1000979DC()
{
  v158 = v0;
  v1 = v0[14];
  v2 = PromptCompletion.candidates.getter();
  if (!*(v2 + 16))
  {
    v44 = v0[42];

    sub_100099280();
    swift_allocError();
    *v45 = 0xD00000000000001CLL;
    v45[1] = 0x80000001001E49F0;
    swift_willThrow();
    v46 = v0[40];
    v48 = v0[36];
    v47 = v0[37];
    v50 = v0[32];
    v49 = v0[33];
    v52 = v0[28];
    v51 = v0[29];
    v53 = v0[25];
    v54 = v0[22];
    v55 = v0[19];
    v147 = v0[18];
    v151 = v0[17];

    v56 = v0[1];

    return v56();
  }

  v3 = v0[14];
  (*(v0[39] + 16))(v0[40], v2 + ((*(v0[39] + 80) + 32) & ~*(v0[39] + 80)), v0[38]);

  v4 = PromptCompletion.metadata.getter();
  if (!*(v4 + 16) || (v5 = sub_10000511C(0x73656369746F4ELL, 0xE700000000000000), (v6 & 1) == 0))
  {

    goto LABEL_20;
  }

  sub_10002B0D0(*(v4 + 56) + 32 * v5, (v0 + 2));

  sub_10000341C(&qword_10025F3F0, &qword_1001D4350);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v22 = 0;
    v23 = 0;
    goto LABEL_21;
  }

  v7 = v0[11];
  v8 = *(v7 + 16);
  if (!v8)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v9 = 0;
  v10 = v8 - 1;
  v11 = _swiftEmptyArrayStorage;
  do
  {
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v13 = *(v7 + 32 + 8 * v12);
      if (*(v13 + 16))
      {
        break;
      }

LABEL_8:
      if (v8 == ++v12)
      {
        goto LABEL_59;
      }
    }

    v14 = *(v7 + 32 + 8 * v12);

    v15 = sub_10000511C(0x6567617373656DLL, 0xE700000000000000);
    if ((v16 & 1) == 0)
    {

      goto LABEL_8;
    }

    v17 = (*(v13 + 56) + 16 * v15);
    v18 = v17[1];
    v149 = *v17;

    v154 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10017DD84(0, *(v11 + 2) + 1, 1, v11);
    }

    v20 = *(v11 + 2);
    v19 = *(v11 + 3);
    if (v20 >= v19 >> 1)
    {
      v11 = sub_10017DD84((v19 > 1), v20 + 1, 1, v11);
    }

    v9 = v12 + 1;
    *(v11 + 2) = v20 + 1;
    v21 = &v11[16 * v20];
    *(v21 + 4) = v149;
    *(v21 + 5) = v18;
    v10 = v154;
  }

  while (v154 != v12);
LABEL_59:

  v0[12] = v11;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v22 = BidirectionalCollection<>.joined(separator:)();
  v23 = v128;

LABEL_21:
  v0[45] = v22;
  v0[46] = v23;
  if (qword_10025A6E0 != -1)
  {
LABEL_61:
    swift_once();
  }

  v24 = v0[36];
  v25 = v0[37];
  v26 = v0[34];
  v27 = v0[35];
  v28 = v0[14];
  v29 = type metadata accessor for Logger();
  v0[47] = sub_10000F34C(v29, qword_100276F08);
  v30 = *(v27 + 16);
  v30(v25, v28, v26);
  v30(v24, v28, v26);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v146 = v0[38];
    v150 = v32;
    v34 = v0[36];
    v33 = v0[37];
    v35 = v0[34];
    v36 = v0[35];
    v37 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v157 = v155;
    *v37 = 134218243;
    v38 = *(PromptCompletion.candidates.getter() + 16);

    v39 = *(v36 + 8);
    v39(v33, v35);
    *(v37 + 4) = v38;
    *(v37 + 12) = 2085;
    PromptCompletion.candidates.getter();
    v40 = Array.description.getter();
    v42 = v41;

    v39(v34, v35);
    v43 = sub_10002510C(v40, v42, &v157);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v31, v150, "%ld candidate(s): %{sensitive}s", v37, 0x16u);
    sub_10000F4B4(v155);
  }

  else
  {
    v58 = v0[36];
    v59 = v0[34];
    v60 = *(v0[35] + 8);
    v60(v0[37], v59);

    v60(v58, v59);
  }

  v61 = v0[40];
  v62 = PromptCompletion.Candidate.segments.getter();
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = v0[31];
    v65 = v0[27];
    v66 = v0[24];
    v69 = *(v64 + 16);
    v68 = v64 + 16;
    v67 = v69;
    v70 = v62 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
    v71 = *(v68 + 56);
    v152 = (v65 + 88);
    v148 = enum case for PromptCompletion.Content.text(_:);
    v144 = (v68 - 8);
    v138 = (v65 + 96);
    v140 = (v65 + 8);
    v134 = (v66 + 8);
    v136 = (v66 + 32);
    v156 = _swiftEmptyArrayStorage;
    v132 = v69;
    v142 = v71;
    do
    {
      v72 = v0[29];
      v73 = v0[26];
      v67(v0[33], v70, v0[30]);
      PromptCompletion.Segment.content.getter();
      v74 = (*v152)(v72, v73);
      v75 = v0[33];
      v76 = v0[29];
      v77 = v0[30];
      v78 = v0[26];
      if (v74 == v148)
      {
        v79 = v68;
        v80 = v0[25];
        v81 = v0[23];
        (*v138)(v0[29], v0[26]);
        (*v136)(v80, v76, v81);
        v82 = PromptCompletion.TextContent.value.getter();
        v84 = v83;
        (*v134)(v80, v81);
        (*v144)(v75, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_10017DD84(0, *(v156 + 2) + 1, 1, v156);
        }

        v86 = *(v156 + 2);
        v85 = *(v156 + 3);
        v68 = v79;
        v71 = v142;
        if (v86 >= v85 >> 1)
        {
          v156 = sub_10017DD84((v85 > 1), v86 + 1, 1, v156);
        }

        v67 = v132;
        *(v156 + 2) = v86 + 1;
        v87 = &v156[16 * v86];
        *(v87 + 4) = v82;
        *(v87 + 5) = v84;
      }

      else
      {
        (*v144)(v0[33], v0[30]);
        (*v140)(v76, v78);
      }

      v70 += v71;
      --v63;
    }

    while (v63);
  }

  else
  {

    v156 = _swiftEmptyArrayStorage;
  }

  v88 = v0[40];
  v89 = PromptCompletion.Candidate.segments.getter();
  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = v0[31];
    v92 = v0[27];
    v93 = v0[21];
    v145 = *(v91 + 16);
    v94 = v89 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v141 = (v91 + 8);
    v143 = *(v91 + 72);
    v139 = (v92 + 88);
    v137 = enum case for PromptCompletion.Content.image(_:);
    v129 = (v92 + 96);
    v130 = (v92 + 8);
    v153 = (v93 + 32);
    v131 = v93;
    v133 = (v93 + 48);
    v135 = (v93 + 56);
    v95 = _swiftEmptyArrayStorage;
    v96 = &unk_10025F3C0;
    v97 = &unk_1001D4320;
    do
    {
      v98 = v95;
      v99 = v97;
      v100 = v96;
      v101 = v0[32];
      v102 = v0[30];
      v103 = v0[28];
      v104 = v0[26];
      v145(v101, v94, v102);
      PromptCompletion.Segment.content.getter();
      (*v141)(v101, v102);
      v105 = (*v139)(v103, v104);
      v106 = v0[28];
      v107 = v0[26];
      v108 = v0[20];
      v109 = v0[18];
      if (v105 == v137)
      {
        (*v129)(v0[28], v0[26]);
        (*v153)(v109, v106, v108);
        (*v135)(v109, 0, 1, v108);
      }

      else
      {
        (*v135)(v0[18], 1, 1, v0[20]);
        (*v130)(v106, v107);
      }

      v111 = v0[19];
      v110 = v0[20];
      v96 = v100;
      v112 = v100;
      v97 = v99;
      sub_10002A894(v0[18], v111, v112, v99);
      if ((*v133)(v111, 1, v110) == 1)
      {
        sub_10000F500(v0[19], v96, v99);
        v95 = v98;
      }

      else
      {
        v113 = *v153;
        (*v153)(v0[22], v0[19], v0[20]);
        v95 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_10017DD5C(0, v98[2] + 1, 1, v98);
        }

        v115 = v95[2];
        v114 = v95[3];
        if (v115 >= v114 >> 1)
        {
          v95 = sub_10017DD5C(v114 > 1, v115 + 1, 1, v95);
        }

        v116 = v0[22];
        v117 = v0[20];
        v95[2] = v115 + 1;
        v113(v95 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v115, v116, v117);
      }

      v94 += v143;
      --v90;
    }

    while (v90);
  }

  else
  {

    v95 = _swiftEmptyArrayStorage;
  }

  v0[48] = v95;
  v118 = v0[41];
  v0[9] = v156;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v119 = BidirectionalCollection<>.joined(separator:)();
  v121 = v120;

  v0[49] = v119;
  v0[50] = v121;
  v122 = sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
  v123 = static MainActor.shared.getter();
  v0[51] = v123;
  v124 = swift_task_alloc();
  v0[52] = v124;
  *(v124 + 16) = v95;
  v125 = sub_10000341C(&qword_10025F3E0, &qword_1001D4348);
  v126 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v127 = swift_task_alloc();
  v0[53] = v127;
  *v127 = v0;
  v127[1] = sub_1000986C0;
  v160 = v125;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 10, v122, v125, v123, &protocol witness table for MainActor, &unk_1001D4340, v124, v122);
}

uint64_t sub_1000986C0()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  v2[54] = v0;

  v5 = v2[52];
  v6 = v2[51];
  if (v0)
  {
    v7 = v2[50];
    v8 = v2[48];
    v9 = v2[46];

    v10 = v2[43];
    v11 = v2[44];
    v12 = sub_100098D98;
  }

  else
  {
    v13 = v2[48];

    v10 = v2[43];
    v11 = v2[44];
    v12 = sub_100098854;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100098854()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);

  v3 = *(v0 + 80);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "images: %ld", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 400);
  v8 = *(v0 + 376);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 400);
  if (v11)
  {
    v13 = *(v0 + 392);
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = String.count.getter();

    _os_log_impl(&_mh_execute_header, v9, v10, "text: %ld chars", v14, 0xCu);
  }

  else
  {
    v15 = *(v0 + 400);
  }

  v16 = *(v0 + 400);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(v0 + 392) & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    v32 = *(v0 + 368);
    v28 = *(v0 + 312);
    v29 = *(v0 + 320);
    v30 = *(v0 + 304);
    v33 = *(v0 + 400);

    sub_100099280();
    swift_allocError();
    *v34 = 0xD000000000000016;
    v34[1] = 0x80000001001E49D0;
    swift_willThrow();
    goto LABEL_13;
  }

  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = type metadata accessor for JSONDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;

  (*(v19 + 8))(v18, v20);
  if (v26 >> 60 == 15)
  {
    v27 = *(v0 + 368);
    v28 = *(v0 + 312);
    v29 = *(v0 + 320);
    v30 = *(v0 + 304);

    sub_100099280();
    swift_allocError();
    *v31 = 0xD000000000000025;
    v31[1] = 0x80000001001E49A0;
    swift_willThrow();

LABEL_13:
    (*(v28 + 8))(v29, v30);
LABEL_16:
    v37 = *(v0 + 320);
    v38 = *(v0 + 288);
    v39 = *(v0 + 296);
    v41 = *(v0 + 256);
    v40 = *(v0 + 264);
    v43 = *(v0 + 224);
    v42 = *(v0 + 232);
    v44 = *(v0 + 200);
    v45 = *(v0 + 176);
    v46 = *(v0 + 152);
    v61 = *(v0 + 144);
    v63 = *(v0 + 136);

    v47 = *(v0 + 8);
    goto LABEL_17;
  }

  v35 = *(v0 + 432);
  sub_10009A06C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v36 = *(v0 + 368);
  if (v35)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    sub_10009A0C0(v24, v26);

    goto LABEL_16;
  }

  v65 = *(v0 + 360);
  v49 = *(v0 + 296);
  v50 = *(v0 + 288);
  v54 = *(v0 + 264);
  v55 = *(v0 + 256);
  v56 = *(v0 + 232);
  v58 = *(v0 + 224);
  v59 = *(v0 + 200);
  v51 = *(v0 + 176);
  v60 = *(v0 + 152);
  v62 = *(v0 + 144);
  v64 = *(v0 + 136);
  v52 = *(v0 + 104);
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  sub_10009A0C0(v24, v26);

  v53 = *(v0 + 48);
  v57 = *(v0 + 56);

  *v52 = v53;
  *(v52 + 8) = v57;
  *(v52 + 24) = v3;
  *(v52 + 32) = v65;
  *(v52 + 40) = v36;
  v47 = *(v0 + 8);
LABEL_17:

  return v47();
}

uint64_t sub_100098D98()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  (*(v3 + 8))(v2, v4);
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[54];

  v15 = v0[1];

  return v15();
}

id sub_100098EC4()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.intendedDefaultLLM.getter();

  if (v10)
  {
    sub_100027874(v9, v10);
    dispatch thunk of LLMProvider.iconSymbolName.getter();
    v1 = v0;
    sub_10000F4B4(v9);
    if (v1)
    {
      v2 = String._bridgeToObjectiveC()();

      v3 = [objc_opt_self() _systemImageNamed:v2];

      return v3;
    }
  }

  else
  {
    sub_10000F500(v9, &qword_1002651D0, &unk_1001DDA20);
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "There is no active LLM", v8, 2u);
  }

  return 0;
}

uint64_t sub_100099074(uint64_t a1)
{
  v2 = type metadata accessor for CompositionModel.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000990D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000991B4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100074EBC(v2);
}

void sub_1000991E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse) = v2;
  v4 = v2;
}

uint64_t sub_100099228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100072700(v2, v3);
}

unint64_t sub_100099280()
{
  result = qword_10025F340;
  if (!qword_10025F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F340);
  }

  return result;
}

uint64_t sub_100099318()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100099358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10009445C(a1, v4, v5, v6);
}

uint64_t sub_100099410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100074964(v4);
}

uint64_t sub_1000995B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099690(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100028688;

  return sub_10008F098(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1000997E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100099894()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099960(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002B2A0;

  return sub_10008CD90(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100099A98(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_100099AD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099B14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099B5C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

uint64_t sub_100099C68()
{
  v1 = type metadata accessor for CompositionModel.Session(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;

  v7 = *(v0 + v3 + 16);

  v8 = *(v1 + 28);
  v9 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v12 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v2 | 7);
}

uint64_t sub_100099DE0()
{
  v1 = *(type metadata accessor for CompositionModel.Session(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10008B380(v3, (v0 + v2), v4);
}

unint64_t sub_100099F30()
{
  result = qword_10025F3A8;
  if (!qword_10025F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F3A8);
  }

  return result;
}

uint64_t sub_100099FBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002B2A0;

  return sub_1000888F0(a1, a2, v6);
}

unint64_t sub_10009A06C()
{
  result = qword_10025F3E8;
  if (!qword_10025F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F3E8);
  }

  return result;
}

uint64_t sub_10009A0C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10004DD08(a1, a2);
  }

  return a1;
}

uint64_t sub_10009A0D4()
{
  v1 = type metadata accessor for PromptCompletion.ImageContent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009A198(uint64_t a1)
{
  v4 = *(type metadata accessor for PromptCompletion.ImageContent() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_1000895A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10009A2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F440, &qword_1001D43B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009A31C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F440, &qword_1001D43B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A3AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009A3EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009A494;

  return sub_100083A40(a1, v5, v4);
}

uint64_t sub_10009A494(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_10009A590()
{
  result = qword_10025F450;
  if (!qword_10025F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F450);
  }

  return result;
}

uint64_t sub_10009A5E4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009A70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009A774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10009A85C()
{
  result = qword_10025F468;
  if (!qword_10025F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F468);
  }

  return result;
}

uint64_t sub_10009A8B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_10009A8F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000728D4(v2);
}

uint64_t sub_10009A928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100073040(v2, v3);
}

uint64_t sub_10009A9F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser) = *(v0 + 24);
}

uint64_t sub_10009AAB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AB44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AC34()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements) = *(v0 + 24);
}

uint64_t sub_10009AC98(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_10009ACDC()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

__n128 sub_10009ADF0()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_10009AE14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString) = v2;
  v4 = v2;
}

uint64_t sub_10009AE54()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10009AEFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10009AF14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009AF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10009AFC0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009AFF4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10009B1F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10009B250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10009B2C4()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10009C904;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10009C910;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB1C;
  aBlock[3] = &unk_10024D320;
  v4 = _Block_copy(aBlock);

  [v0 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v1 usingBlock:{0x100000, v4}];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

char *sub_10009B460()
{
  v1 = [v0 string];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    while (1)
    {
      String.index(before:)();
      v6 = String.subscript.getter();
      v8 = v7;

      if (v6 == 10 && v8 == 0xE100000000000000)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          return result;
        }
      }

      result = [v0 length];
      if (__OFSUB__(result, 1))
      {
        break;
      }

      [v0 deleteCharactersInRange:{result - 1, 1}];
      v12 = [v0 string];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }

  return result;
}

id sub_10009B604()
{
  result = [v0 length];
  if (result)
  {
    if ([v0 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    sub_10009C830(v8, &v6);
    if (*(&v7 + 1))
    {
      sub_1000081B0(0, &qword_10025F518, NSParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v2 = [v5 textLists];
        sub_1000081B0(0, &qword_10025C310, NSTextList_ptr);
        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v3 >> 62)
        {
          v4 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_10009C7C8(v8);
        return (v4 >= 1);
      }
    }

    else
    {
      sub_10009C7C8(&v6);
    }

    sub_10009C7C8(v8);
    return 0;
  }

  return result;
}

void sub_10009B798()
{
  if (sub_10009B604())
  {
    v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v1 setLineSpacing:3.0];
    [v1 setHeadIndent:18.0];
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001D4820;
    sub_100006470(_swiftEmptyArrayStorage);
    v3 = objc_allocWithZone(NSTextTab);
    type metadata accessor for OptionKey(0);
    sub_10009C770();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = [v3 initWithTextAlignment:0 location:isa options:5.0];

    *(v2 + 32) = v5;
    sub_100006470(_swiftEmptyArrayStorage);
    v6 = objc_allocWithZone(NSTextTab);
    v7 = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = [v6 initWithTextAlignment:0 location:v7 options:18.0];

    *(v2 + 40) = v8;
    sub_1000081B0(0, &qword_10025F508, NSTextTab_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    [v1 setTabStops:v9];

    v10 = v1;
    [v0 addAttribute:NSParagraphStyleAttributeName value:v10 range:{0, objc_msgSend(v0, "length")}];
  }
}

void sub_10009BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10009C830(a1, v10);
  if (v11)
  {
    sub_1000081B0(0, &qword_10025F528, NSTextAttachment_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v9 image];
      if (v6)
      {
        v7 = v6;
        Image.init(uiImage:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(*a5 + 16) >= *(*a5 + 24) >> 1)
        {
          v8 = *(*a5 + 16);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  else
  {
    sub_10009C7C8(v10);
  }
}

uint64_t sub_10009BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_100008150(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_10009C7C8(v14);
}

void sub_10009BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10009C830(a1, v9);
  if (v10)
  {
    sub_1000081B0(0, &qword_10025F518, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000081B0(0, &qword_10025C308, NSMutableParagraphStyle_ptr);
      swift_dynamicCast();
      [v8 setSecondaryLineBreakMode:2];
      [a5 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a5 addAttribute:NSParagraphStyleAttributeName value:v8 range:{a2, a3}];
    }
  }

  else
  {
    sub_10009C7C8(v9);
  }
}

uint64_t sub_10009BD50(uint64_t a1, char a2, int a3, int a4, id a5, double a6, double a7, double a8, double a9)
{
  if (a2)
  {
    return 0;
  }

  LODWORD(a8) = 1148846080;
  LODWORD(a9) = 1144750080;
  [a5 systemLayoutSizeFittingSize:*&a1 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{a8, a9}];
  if (v11 < *&a1)
  {
    v11 = *&a1;
  }

  return *&v11;
}

uint64_t sub_10009BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C8A0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009BE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C8A0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009BEA8()
{
  sub_10009C8A0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10009BED4()
{
  result = qword_10025F500;
  if (!qword_10025F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F500);
  }

  return result;
}

id sub_10009BF28(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(UITextView) init];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v13 = v11;
  sub_100152E2C(v11);

  if (a4)
  {
  }

  [v13 setWritingToolsBehavior:-1];
  [v13 setEditable:0];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setScrollEnabled:0];
  [v15 setIsAccessibilityElement:1];
  LODWORD(v17) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v18];
  [v15 frame];
  [v15 setFrame:?];

  return v15;
}

void sub_10009C1D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v35 = a3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v33 = v9;
    v34 = v8;
    v13 = [objc_opt_self() presentableAttributedString:a4 withAttributes:0];
    v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v13];
    sub_10009B460();
    v15 = v14;
    v16 = [v15 length];
    [v15 removeAttribute:NSTrackingAttributeName range:{0, v16}];
    [v15 removeAttribute:NSKernAttributeName range:{0, v16}];
    v17 = [v15 length];

    v18 = [objc_opt_self() labelColor];
    [v15 addAttribute:NSForegroundColorAttributeName value:v18 range:{0, v17}];

    if (sub_10009B604())
    {
      sub_10009B798();
    }

    if ((a5 & 1) == 0)
    {

      v9 = v33;
      v8 = v34;
      goto LABEL_9;
    }

    v32 = NSParagraphStyleAttributeName;
    v19 = [v15 length];
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10009C718;
    *(v21 + 24) = v20;
    aBlock[4] = sub_10009C730;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB1C;
    aBlock[3] = &unk_10024D2A8;
    v22 = _Block_copy(aBlock);
    v23 = v15;

    [v23 enumerateAttribute:v32 inRange:0 options:v19 usingBlock:{0, v22}];

    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    v9 = v33;
    v8 = v34;
    v24 = v35;
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v15 = 0;
LABEL_9:
  v24 = v35;
LABEL_10:

  v25 = a2;
  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v25 = aBlock[0];
  }

  v27 = *(v25 + 96);
  if (v27)
  {
    if (!v15)
    {

      return;
    }

    v28 = v27;
    v29 = v15;
    v30 = [v28 isEqualToAttributedString:v29];

    if (v30)
    {

      return;
    }
  }

  else
  {
  }

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
  }

  sub_1001545B0(v15);
}

uint64_t sub_10009C6E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009C730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10009C758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10009C770()
{
  result = qword_10025AF38;
  if (!qword_10025AF38)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AF38);
  }

  return result;
}

uint64_t sub_10009C7C8(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F510, &unk_1001D49B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C830(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F510, &unk_1001D49B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009C8A0()
{
  result = qword_10025F520;
  if (!qword_10025F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F520);
  }

  return result;
}

__n128 sub_10009C92C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009C940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10009C988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009C9E8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10009C9F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10009CEFC(v7, v8) & 1;
}

uint64_t sub_10009CA4C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10009CA7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10009CB1C(uint64_t a1)
{
  v2 = sub_10009CEA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009CB58(uint64_t a1)
{
  v2 = sub_10009CEA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009CB94(void *a1, uint64_t a2)
{
  v37 = sub_10000341C(&qword_10025F530, &qword_1001D4AC0);
  v26 = *(v37 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v37);
  v7 = &v26 - v6;
  v8 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10009CEA8();
  v28 = v7;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = a2 + 64;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;
  v27 = a2;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(v27 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_100028458(*(v27 + 56) + 40 * v20, v29);
      *&v30 = v23;
      *(&v30 + 1) = v22;
      sub_100008198(v29, &v31);

      v18 = v16;
LABEL_13:
      v34 = v30;
      v35[0] = v31;
      v35[1] = v32;
      v36 = v33;
      v24 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {

        return (*(v26 + 8))(v28, v37);
      }

      v25 = v34;
      sub_100008198(v35, &v30);
      sub_100027874(&v30, *(&v31 + 1));
      *&v29[0] = v25;
      *(&v29[0] + 1) = v24;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v2)
      {
        break;
      }

      result = sub_10000F4B4(&v30);
      v15 = v18;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*(v26 + 8))(v28, v37);
    return sub_10000F4B4(&v30);
  }

  else
  {
LABEL_5:
    if (v13 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v12 = 0;
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        goto LABEL_13;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10009CEA8()
{
  result = qword_10025F538;
  if (!qword_10025F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F538);
  }

  return result;
}

uint64_t sub_10009CEFC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = 0xE800000000000000;
  v7 = 0x74786554676E6F6CLL;
  if (*(a1 + 32) != 1)
  {
    v7 = 0x6F746F6870;
    v6 = 0xE500000000000000;
  }

  if (*(a1 + 32))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x78655474726F6873;
  }

  if (*(a1 + 32))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE900000000000074;
  }

  v10 = 0xE800000000000000;
  v11 = 0x74786554676E6F6CLL;
  if (*(a2 + 32) != 1)
  {
    v11 = 0x6F746F6870;
    v10 = 0xE500000000000000;
  }

  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x78655474726F6873;
  }

  if (*(a2 + 32))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE900000000000074;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);

  return sub_10017BAAC(v15, v16);
}

uint64_t sub_10009D09C(uint64_t a1, int a2)
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

uint64_t sub_10009D0E4(uint64_t result, int a2, int a3)
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

unint64_t sub_10009D134()
{
  result = qword_10025F540;
  if (!qword_10025F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F540);
  }

  return result;
}

unint64_t sub_10009D18C()
{
  result = qword_10025F548;
  if (!qword_10025F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F548);
  }

  return result;
}

uint64_t sub_10009D1E0(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_10000511C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v4, v33), !swift_dynamicCast()))
  {
LABEL_6:
    v32 = 0;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v9 = sub_10000511C(v7, v8);
      v11 = v10;

      if ((v11 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v9, v33), (swift_dynamicCast() & 1) == 0))
      {
LABEL_11:
        v12._countAndFlagsBits = 58;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(a1 + 16))
        {
          v15 = sub_10000511C(v13, v14);
          v17 = v16;

          if ((v17 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v15, v33), (swift_dynamicCast() & 1) == 0))
          {
LABEL_16:
            v18._countAndFlagsBits = 124;
            v18._object = 0xE100000000000000;
            String.append(_:)(v18);
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(a1 + 16))
            {
              v21 = sub_10000511C(v19, v20);
              v23 = v22;

              if ((v23 & 1) == 0 || (sub_10002B0D0(*(a1 + 56) + 32 * v21, v33), (swift_dynamicCast() & 1) == 0))
              {
LABEL_21:
                v24._countAndFlagsBits = 58;
                v24._object = 0xE100000000000000;
                String.append(_:)(v24);
                v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                if (*(a1 + 16))
                {
                  v27 = sub_10000511C(v25, v26);
                  v29 = v28;

                  if ((v29 & 1) == 0)
                  {
                    return v32;
                  }

                  sub_10002B0D0(*(a1 + 56) + 32 * v27, v33);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    return v32;
                  }

                  String.append(_:)(v31);
                }

                return v32;
              }

              String.append(_:)(v31);
            }

            goto LABEL_21;
          }

          String.append(_:)(v31);
        }

        goto LABEL_16;
      }

      String.append(_:)(v31);
    }

    goto LABEL_11;
  }

  return v32;
}

uint64_t sub_10009D508(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_10000511C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_10002B0D0(*(a1 + 56) + 32 * v4, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D5DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v6 = sub_10000511C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_10002B0D0(*(a1 + 56) + 32 * v6, v11);
  sub_10009D740();
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D68C(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v4 = sub_10000511C(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_10002B0D0(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_10009D740()
{
  result = qword_10025F4B8;
  if (!qword_10025F4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025F4B8);
  }

  return result;
}

uint64_t sub_10009D78C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v88 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v87 = &v84 - v7;
  v8 = __chkstk_darwin(v6);
  v86 = &v84 - v9;
  v10 = __chkstk_darwin(v8);
  v85 = &v84 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v84 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v84 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v84 - v19;
  __chkstk_darwin(v18);
  v22 = &v84 - v21;
  v92 = 0;
  v93 = 0xE000000000000000;
  v90 = a1;
  sub_10009DF04(a1, &v84 - v21);
  v23 = type metadata accessor for InferenceEnvironmentInfo();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v22, 1, v23);
  v89 = v24;
  if (v26 == 1)
  {
    sub_10009DF74(v22);
  }

  else
  {
    v27 = InferenceEnvironmentInfo.baseModelIdentifier.getter();
    v29 = v28;
    (*(v24 + 8))(v22, v23);
    if (v29)
    {
      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);
    }
  }

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  sub_10009DF04(v90, v20);
  if (v25(v20, 1, v23) == 1)
  {
    sub_10009DF74(v20);
  }

  else
  {
    v32 = InferenceEnvironmentInfo.baseModelVersion.getter();
    v34 = v33;
    (*(v89 + 8))(v20, v23);
    if (v34)
    {
      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);
    }
  }

  v36._countAndFlagsBits = 124;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37 = v90;
  sub_10009DF04(v90, v17);
  if (v25(v17, 1, v23) == 1)
  {
    sub_10009DF74(v17);
    v38 = v89;
  }

  else
  {
    v39 = InferenceEnvironmentInfo.modelIdentifier.getter();
    v41 = v40;
    v38 = v89;
    (*(v89 + 8))(v17, v23);
    if (v41)
    {
      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);
    }
  }

  v43._countAndFlagsBits = 58;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  sub_10009DF04(v37, v14);
  v44 = v25(v14, 1, v23);
  v45 = v86;
  if (v44 == 1)
  {
    sub_10009DF74(v14);
  }

  else
  {
    v46 = InferenceEnvironmentInfo.modelVersion.getter();
    v48 = v47;
    (*(v38 + 8))(v14, v23);
    if (v48)
    {
      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);
    }
  }

  v50._countAndFlagsBits = 124;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  v51 = v85;
  sub_10009DF04(v37, v85);
  v52 = v25(v51, 1, v23);
  v53 = v87;
  if (v52 == 1)
  {
    sub_10009DF74(v51);
  }

  else
  {
    v54 = v51;
    v55 = InferenceEnvironmentInfo.tokenizerIdentifier.getter();
    v57 = v56;
    (*(v38 + 8))(v54, v23);
    if (v57)
    {
      v58._countAndFlagsBits = v55;
      v58._object = v57;
      String.append(_:)(v58);
    }
  }

  v59._countAndFlagsBits = 58;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  sub_10009DF04(v37, v45);
  if (v25(v45, 1, v23) == 1)
  {
    sub_10009DF74(v45);
  }

  else
  {
    v60 = InferenceEnvironmentInfo.tokenizerVersion.getter();
    v62 = v61;
    (*(v38 + 8))(v45, v23);
    if (v62)
    {
      v63._countAndFlagsBits = v60;
      v63._object = v62;
      String.append(_:)(v63);
    }
  }

  v64._countAndFlagsBits = 124;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  sub_10009DF04(v37, v53);
  if (v25(v53, 1, v23) == 1)
  {
    sub_10009DF74(v53);
  }

  else
  {
    v65 = InferenceEnvironmentInfo.draftModelIdentifier.getter();
    v67 = v66;
    (*(v38 + 8))(v53, v23);
    if (v67)
    {
      v68._countAndFlagsBits = v65;
      v68._object = v67;
      String.append(_:)(v68);
    }
  }

  v69._countAndFlagsBits = 58;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  v70 = v88;
  sub_10009DF04(v37, v88);
  if (v25(v70, 1, v23) == 1)
  {
    sub_10009DF74(v70);
  }

  else
  {
    v71 = InferenceEnvironmentInfo.draftModelVersion.getter();
    v73 = v72;
    (*(v38 + 8))(v70, v23);
    if (v73)
    {
      v74._countAndFlagsBits = v71;
      v74._object = v73;
      String.append(_:)(v74);
    }
  }

  v75._countAndFlagsBits = 124;
  v75._object = 0xE100000000000000;
  String.append(_:)(v75);
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_10000F34C(v76, qword_100276F80);
  v77 = v92;
  v78 = v93;

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v91 = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_10002510C(v77, v78, &v91);
    _os_log_impl(&_mh_execute_header, v79, v80, "Calculate model info string = %s", v81, 0xCu);
    sub_10000F4B4(v82);
  }

  return v77;
}

uint64_t sub_10009DF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DF74(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009DFF0()
{
  result = qword_10025F558;
  if (!qword_10025F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F558);
  }

  return result;
}

double sub_10009E054(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_10009E140(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10009E1C8;
}

void sub_10009E1C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_10009E218()
{
  result = qword_10025F560;
  if (!qword_10025F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F560);
  }

  return result;
}

Swift::Int sub_10009E26C(void **a1)
{
  v2 = *(sub_10000341C(&qword_10025F568, &qword_1001D4C90) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10009FF38(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10009E4B0(v6);
  *a1 = v3;
  return result;
}

void *sub_10009E320(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10009E3A8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000341C(&qword_10025F588, &unk_1001D4CB0);
  v4 = *(sub_10000341C(&qword_10025F568, &qword_1001D4C90) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10009E4B0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000341C(&qword_10025F568, &qword_1001D4C90);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10000341C(&qword_10025F568, &qword_1001D4C90) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10009E908(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10009E5F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10009E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v53 = &v42 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = &v42 - v15;
  v16 = __chkstk_darwin(v14);
  v57 = &v42 - v17;
  result = __chkstk_darwin(v16);
  v56 = &v42 - v20;
  v44 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v49 = -v22;
    v50 = v21;
    v24 = a1 - a3;
    v43 = v22;
    v25 = v21 + v22 * a3;
    v55 = v8;
LABEL_5:
    v47 = v23;
    v48 = a3;
    v45 = v25;
    v46 = v24;
    v26 = v25;
    v54 = v24;
    while (1)
    {
      v27 = v56;
      sub_1000A0B48(v26, v56);
      sub_1000A0B48(v23, v57);
      v28 = v52;
      sub_1000A0B48(v27, v52);
      v29 = *(v8 + 48);
      LayoutSubview.priority.getter();
      v31 = v30;
      v32 = type metadata accessor for LayoutSubview();
      v33 = *(*(v32 - 8) + 8);
      v33(v28 + v29, v32);
      v34 = v57;
      v35 = v53;
      sub_1000A0B48(v57, v53);
      v36 = *(v55 + 48);
      LayoutSubview.priority.getter();
      v38 = v37;
      v39 = v32;
      v8 = v55;
      v33(v35 + v36, v39);
      sub_1000A0BB8(v34);
      result = sub_1000A0BB8(v56);
      if (v38 >= v31)
      {
LABEL_4:
        a3 = v48 + 1;
        v23 = v47 + v43;
        v24 = v46 - 1;
        v25 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v40 = v51;
      sub_1000A0C20(v26, v51);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000A0C20(v40, v23);
      v23 += v49;
      v26 += v49;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10009E908(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v161 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v161);
  v141 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v157 = &v141 - v13;
  v14 = __chkstk_darwin(v12);
  v160 = &v141 - v15;
  v16 = __chkstk_darwin(v14);
  v159 = &v141 - v17;
  v18 = __chkstk_darwin(v16);
  v158 = &v141 - v19;
  result = __chkstk_darwin(v18);
  v163 = &v141 - v21;
  v22 = *(a3 + 8);
  v148 = a3;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v146;
    if (!*v146)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_98:
      v164 = v24;
      v137 = *(v24 + 2);
      if (v137 >= 2)
      {
        while (1)
        {
          v138 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = *&v24[16 * v137];
          v139 = *&v24[16 * v137 + 24];
          sub_10009F3CC(v138 + *(v8 + 72) * a3, v138 + *(v8 + 72) * *&v24[16 * v137 + 16], v138 + *(v8 + 72) * v139, a4);
          if (v5)
          {
          }

          if (v139 < a3)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_10009FA94(v24);
          }

          if (v137 - 2 >= *(v24 + 2))
          {
            goto LABEL_122;
          }

          v140 = &v24[16 * v137];
          *v140 = a3;
          *(v140 + 1) = v139;
          v164 = v24;
          result = sub_10009FA08(v137 - 1);
          v24 = v164;
          v137 = *(v164 + 2);
          a3 = v148;
          if (v137 <= 1)
          {
          }
        }
      }
    }

LABEL_128:
    result = sub_10009FA94(v24);
    v24 = result;
    goto LABEL_98;
  }

  v142 = a4;
  v23 = 0;
  v24 = _swiftEmptyArrayStorage;
  v143 = v8;
  while (1)
  {
    v25 = v23;
    if (v23 + 1 >= v22)
    {
      v46 = v23 + 1;
    }

    else
    {
      v154 = v22;
      v144 = v24;
      v145 = v5;
      v26 = v23;
      v147 = v23;
      v162 = *a3;
      v27 = v162;
      v28 = *(v8 + 72);
      v29 = v162 + v28 * (v23 + 1);
      v30 = v163;
      sub_1000A0B48(v29, v163);
      v31 = v158;
      sub_1000A0B48(v27 + v28 * v26, v158);
      v32 = v30;
      v33 = v159;
      sub_1000A0B48(v32, v159);
      v34 = *(v161 + 48);
      LayoutSubview.priority.getter();
      v36 = v35;
      v37 = type metadata accessor for LayoutSubview();
      v38 = *(v37 - 8);
      v39 = *(v38 + 8);
      v40 = v38 + 8;
      v39(v33 + v34, v37);
      v41 = v160;
      sub_1000A0B48(v31, v160);
      a4 = *(v161 + 48);
      LayoutSubview.priority.getter();
      v43 = v42;
      v151 = v39;
      v152 = v37;
      v150 = v40;
      v39(v41 + a4, v37);
      sub_1000A0BB8(v31);
      result = sub_1000A0BB8(v163);
      v44 = v147 + 2;
      v153 = v28;
      v45 = v162 + v28 * (v147 + 2);
      while (1)
      {
        v46 = v154;
        if (v154 == v44)
        {
          break;
        }

        LODWORD(v156) = v43 < v36;
        v47 = v163;
        v162 = v44;
        sub_1000A0B48(v45, v163);
        v155 = v29;
        v48 = v158;
        sub_1000A0B48(v29, v158);
        v49 = v159;
        sub_1000A0B48(v47, v159);
        v50 = v161;
        v51 = *(v161 + 48);
        LayoutSubview.priority.getter();
        v53 = v52;
        v54 = v151;
        a4 = v152;
        (v151)(v49 + v51, v152);
        v55 = v160;
        sub_1000A0B48(v48, v160);
        v56 = *(v50 + 48);
        LayoutSubview.priority.getter();
        v58 = v57;
        v54(v55 + v56, a4);
        sub_1000A0BB8(v48);
        result = sub_1000A0BB8(v163);
        v44 = v162 + 1;
        v45 += v153;
        v29 = v155 + v153;
        if (((v156 ^ (v58 >= v53)) & 1) == 0)
        {
          v46 = v162;
          break;
        }
      }

      v5 = v145;
      v8 = v143;
      v24 = v144;
      v25 = v147;
      a3 = v148;
      if (v43 < v36)
      {
        v59 = v141;
        if (v46 < v147)
        {
          goto LABEL_125;
        }

        if (v147 < v46)
        {
          v60 = v153 * (v46 - 1);
          v61 = v46 * v153;
          v154 = v46;
          v62 = v147;
          v63 = v147 * v153;
          do
          {
            if (v62 != --v46)
            {
              v64 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              a4 = v64 + v63;
              sub_1000A0C20(v64 + v63, v59);
              if (v63 < v60 || a4 >= v64 + v61)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v63 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000A0C20(v59, v64 + v60);
            }

            ++v62;
            v60 -= v153;
            v61 -= v153;
            v63 += v153;
          }

          while (v62 < v46);
          v5 = v145;
          v8 = v143;
          v24 = v144;
          v25 = v147;
          v46 = v154;
        }
      }
    }

    v65 = *(a3 + 8);
    if (v46 >= v65)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v46, v25))
    {
      goto LABEL_124;
    }

    if (v46 - v25 >= v142)
    {
LABEL_32:
      a4 = v46;
      if (v46 < v25)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v25, v142))
    {
      goto LABEL_126;
    }

    if (v25 + v142 >= v65)
    {
      a4 = *(a3 + 8);
    }

    else
    {
      a4 = v25 + v142;
    }

    if (a4 < v25)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v46 == a4)
    {
      goto LABEL_32;
    }

    v144 = v24;
    v145 = v5;
    v112 = *a3;
    v113 = *(v8 + 72);
    v114 = *a3 + v113 * (v46 - 1);
    v155 = -v113;
    v156 = v112;
    v147 = v25;
    v115 = v25 - v46;
    v149 = v113;
    v150 = a4;
    v116 = (v112 + v46 * v113);
    v117 = v161;
LABEL_87:
    v153 = v114;
    v154 = v46;
    v151 = v116;
    v152 = v115;
    v118 = v116;
    v119 = v115;
    v120 = v114;
LABEL_88:
    v162 = v119;
    v121 = v163;
    sub_1000A0B48(v118, v163);
    v122 = v158;
    sub_1000A0B48(v120, v158);
    v123 = v159;
    sub_1000A0B48(v121, v159);
    v124 = *(v117 + 48);
    LayoutSubview.priority.getter();
    v126 = v125;
    v127 = type metadata accessor for LayoutSubview();
    v128 = v117;
    v129 = *(*(v127 - 8) + 8);
    v129(v123 + v124, v127);
    v130 = v160;
    sub_1000A0B48(v122, v160);
    v131 = *(v128 + 48);
    LayoutSubview.priority.getter();
    v133 = v132;
    v129(v130 + v131, v127);
    sub_1000A0BB8(v122);
    result = sub_1000A0BB8(v163);
    if (v133 < v126)
    {
      break;
    }

    v117 = v161;
LABEL_86:
    v46 = v154 + 1;
    a4 = v150;
    v114 = v153 + v149;
    v115 = v152 - 1;
    v116 = &v151[v149];
    if (v154 + 1 != v150)
    {
      goto LABEL_87;
    }

    v5 = v145;
    v25 = v147;
    a3 = v148;
    v8 = v143;
    v24 = v144;
    if (v150 < v147)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v150 = a4;
    if ((result & 1) == 0)
    {
      result = sub_10009FBA4(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    a4 = *(v24 + 2);
    v66 = *(v24 + 3);
    v67 = a4 + 1;
    if (a4 >= v66 >> 1)
    {
      result = sub_10009FBA4((v66 > 1), a4 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v67;
    v68 = &v24[16 * a4];
    v69 = v150;
    *(v68 + 4) = v25;
    *(v68 + 5) = v69;
    if (!*v146)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      v70 = *v146;
      while (1)
      {
        a4 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v24 + 4);
          v72 = *(v24 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_53:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v24[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v24[16 * a4 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a4 = v67 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v97 = &v24[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_67:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v24[16 * a4];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_74:
        v108 = a4 - 1;
        if (a4 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v109 = *&v24[16 * v108 + 32];
        v110 = *&v24[16 * a4 + 40];
        sub_10009F3CC(*a3 + *(v8 + 72) * v109, *a3 + *(v8 + 72) * *&v24[16 * a4 + 32], *a3 + *(v8 + 72) * v110, v70);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_10009FA94(v24);
        }

        if (v108 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v24[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v24;
        result = sub_10009FA08(a4);
        v24 = v164;
        v67 = *(v164 + 2);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v24[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v24[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v24[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          a4 = v67 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = *(a3 + 8);
    v23 = v150;
    if (v150 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v162;
  if (v156)
  {
    v135 = v157;
    sub_1000A0C20(v118, v157);
    v117 = v161;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000A0C20(v135, v120);
    v120 += v155;
    v118 += v155;
    v136 = __CFADD__(v134, 1);
    v119 = v134 + 1;
    if (v136)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
  return result;
}

uint64_t sub_10009F3CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v8 = *(*(v77 - 8) + 64);
  v9 = __chkstk_darwin(v77);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v62 - v12;
  v13 = __chkstk_darwin(v11);
  v69 = &v62 - v14;
  result = __chkstk_darwin(v13);
  v73 = &v62 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v18;
  v80 = a1;
  v79 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v22;
    if (v22 >= 1)
    {
      v41 = -v18;
      v42 = v40;
      v74 = a4;
      v75 = a1;
      v65 = v41;
      v43 = v69;
      while (2)
      {
        while (1)
        {
          v63 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v76 = v45;
          v66 = v44;
          while (1)
          {
            if (v44 <= a1)
            {
              v80 = v44;
              v78 = v63;
              goto LABEL_59;
            }

            v64 = v40;
            v72 = a3 + v41;
            v46 = v42 + v41;
            v47 = v73;
            v68 = a3;
            sub_1000A0B48(v46, v73);
            v67 = v42;
            sub_1000A0B48(v45, v43);
            v48 = v70;
            sub_1000A0B48(v47, v70);
            v49 = v77;
            v50 = *(v77 + 48);
            LayoutSubview.priority.getter();
            v52 = v51;
            v53 = type metadata accessor for LayoutSubview();
            v54 = *(*(v53 - 8) + 8);
            v54(v48 + v50, v53);
            v55 = v71;
            sub_1000A0B48(v43, v71);
            v56 = *(v49 + 48);
            LayoutSubview.priority.getter();
            v58 = v57;
            v54(v55 + v56, v53);
            sub_1000A0BB8(v43);
            sub_1000A0BB8(v73);
            if (v58 < v52)
            {
              break;
            }

            v40 = v46;
            a3 = v72;
            v59 = v74;
            v60 = v46;
            if (v68 < v67 || v72 >= v67)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v75;
              v45 = v76;
              v41 = v65;
            }

            else
            {
              a1 = v75;
              v45 = v76;
              v41 = v65;
              if (v68 != v67)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v40;
            v44 = v66;
            if (v60 <= v59)
            {
              a2 = v66;
              goto LABEL_58;
            }
          }

          v42 = v67;
          a3 = v72;
          v61 = v74;
          if (v68 < v66 || v72 >= v66)
          {
            break;
          }

          a1 = v75;
          a2 = v76;
          v40 = v64;
          v41 = v65;
          if (v68 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v61)
          {
            goto LABEL_58;
          }
        }

        a2 = v76;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v75;
        v40 = v64;
        v41 = v65;
        if (v42 > v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v80 = a2;
    v78 = v40;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v21;
    v78 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v72 = a3;
      v67 = v18;
      do
      {
        v75 = a1;
        v76 = a2;
        v74 = a4;
        v24 = v73;
        sub_1000A0B48(a2, v73);
        v25 = v69;
        sub_1000A0B48(a4, v69);
        v26 = v70;
        sub_1000A0B48(v24, v70);
        v27 = v77;
        v28 = *(v77 + 48);
        LayoutSubview.priority.getter();
        v30 = v29;
        v31 = type metadata accessor for LayoutSubview();
        v32 = *(*(v31 - 8) + 8);
        v32(v26 + v28, v31);
        v33 = v71;
        sub_1000A0B48(v25, v71);
        v34 = *(v27 + 48);
        LayoutSubview.priority.getter();
        v36 = v35;
        v32(v33 + v34, v31);
        sub_1000A0BB8(v25);
        sub_1000A0BB8(v24);
        if (v36 >= v30)
        {
          v38 = v75;
          a2 = v76;
          v37 = v67;
          a4 = v74 + v67;
          if (v75 < v74 || v75 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v72;
          }

          else
          {
            v39 = v72;
            if (v75 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v79 = a4;
        }

        else
        {
          v37 = v67;
          v38 = v75;
          a2 = v76 + v67;
          a4 = v74;
          if (v75 < v76 || v75 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v72;
          }

          else
          {
            v39 = v72;
            if (v75 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v38 + v37;
        v80 = a1;
      }

      while (a4 < v68 && a2 < v39);
    }
  }

LABEL_59:
  sub_10009FABC(&v80, &v79, &v78, &qword_10025F568, &qword_1001D4C90);
  return 1;
}

uint64_t sub_10009FA08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10009FA94(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10009FABC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_10000341C(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10009FBA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025F580, &qword_1001D4CA8);
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

uint64_t sub_10009FCA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  v9 = __chkstk_darwin(v38);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v37 = (&v34 - v13);
  v39 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v15 - 32);
    v35 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v20 << 6);
      v27 = *(v39 + 56);
      v28 = (*(v39 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = type metadata accessor for LayoutSubview();
      (*(*(v31 - 8) + 16))(&v11[*(v38 + 48)], v27 + *(*(v31 - 8) + 72) * v26, v31);
      *v11 = v29;
      *(v11 + 1) = v30;
      a1 = v37;
      sub_1000A0C20(v11, v37);
      sub_1000A0C20(a1, a2);
      if (v22 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v36 + 72);
      result = v22;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v15 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v33 = v20 + 1;
    }

    else
    {
      v33 = v21;
    }

    v20 = v33 - 1;
    a3 = result;
LABEL_23:
    v17 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10009FF60(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v132 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  height = *(v132 - 8);
  v10 = *(*&height + 64);
  v11 = __chkstk_darwin(v132);
  v13 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = v121 - v14;
  v15 = type metadata accessor for LayoutSubview();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v121 - v22;
  __chkstk_darwin(v21);
  v25 = v121 - v24;
  type metadata accessor for LayoutSubviews();
  sub_1000A0AE8();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() == 3)
  {
    LayoutSubviews.subscript.getter();
    LayoutSubviews.subscript.getter();
    LayoutSubviews.subscript.getter();
    sub_10000341C(&qword_10025F578, &unk_1001D4C98);
    v124 = v20;
    v26 = sub_10000341C(&qword_10025AC70, &qword_1001CE940);
    v27 = *(*(v26 - 8) + 72);
    v28 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
    v126 = v23;
    v29 = 2 * v27;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001CF9F0;
    v31 = (v30 + v28);
    v32 = *(v26 + 48);
    static UnitPoint.leading.getter();
    *v31 = v33;
    *(v31 + 1) = v34;
    v125 = v16;
    v35 = v25;
    v36 = *(v16 + 16);
    v123 = v35;
    v36(&v31[v32]);
    v37 = &v31[v27];
    v38 = *(v26 + 48);
    static UnitPoint.trailing.getter();
    *v37 = v39;
    *(v37 + 1) = v40;
    (v36)(&v37[v38], v124, v15);
    v41 = &v31[v29];
    v42 = *(v26 + 48);
    static UnitPoint.center.getter();
    *v41 = v43;
    *(v41 + 1) = v44;
    v133 = v15;
    (v36)(&v31[v29 + v42], v126, v15);
    v45 = sub_100006598(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = sub_10009E3A8(*(v45 + 16), 0);
      v48 = sub_10009FCA8(v135, v47 + ((*(*&height + 80) + 32) & ~*(*&height + 80)), v46, v45);

      sub_1000A0B40();
      if (v48 == v46)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v47 = _swiftEmptyArrayStorage;
LABEL_6:
    v135[0] = v47;
    sub_10009E26C(v135);
    v49 = v125;
    v121[1] = v45;
    v50 = v135[0];
    v51 = sub_100006790(_swiftEmptyArrayStorage);
    LOBYTE(v137) = 0;
    v130 = v50[2];
    v122 = a5;
    if (v130)
    {
      v52 = 0;
      v129 = a4;
      v53 = a3 - (a5 + a5);
      v128 = *(v132 + 48);
      v127 = v50 + ((*(*&height + 80) + 32) & ~*(*&height + 80));
      v54 = (v49 + 32);
      while (v52 < v50[2])
      {
        v55 = v50;
        v56 = v131;
        sub_1000A0B48(&v127[*(*&height + 72) * v52], v131);
        v57 = *v56;
        v58 = *(v56 + 1);
        v59 = v133;
        v60 = *(v132 + 48);
        *v13 = *v56;
        *(v13 + 1) = v58;
        (*v54)(&v13[v60], &v56[v128], v59);
        v61 = v137;
        LOBYTE(v135[0]) = v137;
        v136 = 0;
        LayoutSubview.sizeThatFits(_:)();
        v63 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135[0] = v51;
        v66 = sub_100005224();
        v67 = v51[2];
        v68 = (v65 & 1) == 0;
        v69 = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_42;
        }

        v70 = v65;
        if (v51[3] >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000F2CC4();
          }
        }

        else
        {
          sub_1000F0BF8(v69, isUniquelyReferenced_nonNull_native);
          v71 = sub_100005224();
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_61;
          }

          v66 = v71;
        }

        v50 = v55;
        v51 = v135[0];
        if (v70)
        {
          *(v135[0][7] + 8 * v66) = v63;
        }

        else
        {
          v135[0][(v66 >> 6) + 8] |= 1 << v66;
          v73 = (v51[6] + 16 * v66);
          *v73 = v57;
          v73[1] = v58;
          *(v51[7] + 8 * v66) = v63;
          v74 = v51[2];
          v75 = __OFADD__(v74, 1);
          v76 = v74 + 1;
          if (v75)
          {
            goto LABEL_43;
          }

          v51[2] = v76;
        }

        if (v61)
        {
          goto LABEL_60;
        }

        ++v52;
        sub_1000A0BB8(v13);
        v53 = v53 - v63;
        if (v130 == v52)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    else
    {
LABEL_21:
      static UnitPoint.leading.getter();
      if (v51[2])
      {
        v77 = sub_100005224();
        if (v78)
        {
          v79 = *(v51[7] + 8 * v77);
          v138.origin.x = a1;
          v138.origin.y = a2;
          v138.size.width = a3;
          v138.size.height = a4;
          MinX = CGRectGetMinX(v138);
          v139.origin.x = a1;
          v139.origin.y = a2;
          v139.size.width = a3;
          v139.size.height = a4;
          MaxX = CGRectGetMaxX(v139);
          static UnitPoint.trailing.getter();
          if (v51[2])
          {
            v82 = sub_100005224();
            if (v83)
            {
              v140.origin.y = a2;
              v84 = MaxX;
              v85 = *(v51[7] + 8 * v82);
              v140.origin.x = a1;
              v140.size.height = a4;
              y = v140.origin.y;
              v140.size.width = a3;
              height = v140.size.height;
              MidX = CGRectGetMidX(v140);
              static UnitPoint.center.getter();
              if (v51[2])
              {
                v88 = sub_100005224();
                if (v89)
                {
                  v90 = v79 + MinX;
                  v91 = v122;
                  v92 = MidX + *(v51[7] + 8 * v88) * -0.5;
                  v93 = v133;
                  v94 = v125;
                  v95 = v126;
                  v96 = v123;
                  if (v92 >= v90 + v122)
                  {
                    static UnitPoint.center.getter();
                    if (!v51[2])
                    {
LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

                    v97 = sub_100005224();
                    if ((v98 & 1) == 0)
                    {
LABEL_57:
                      __break(1u);
                      goto LABEL_58;
                    }

                    v99 = v84 - v85 - v91;
                    if (v99 < v92 + *(v51[7] + 8 * v97))
                    {
                      static UnitPoint.center.getter();
                      if (!v51[2])
                      {
LABEL_58:
                        __break(1u);
LABEL_59:
                        __break(1u);
LABEL_60:
                        __break(1u);
LABEL_61:
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                        __break(1u);
                        goto LABEL_62;
                      }

                      v100 = sub_100005224();
                      if ((v101 & 1) == 0)
                      {
                        goto LABEL_59;
                      }

                      v102 = v99 - *(v51[7] + 8 * v100);
                    }
                  }

                  v141.origin.x = a1;
                  v103 = y;
                  v141.origin.y = y;
                  v141.size.width = a3;
                  v104 = height;
                  v141.size.height = height;
                  CGRectGetMidY(v141);
                  static UnitPoint.leading.getter();
                  static UnitPoint.center.getter();
                  if (v51[2])
                  {
                    v105 = sub_100005224();
                    if (v106)
                    {
                      v107 = *(v51[7] + 8 * v105);
                      v142.origin.x = a1;
                      v142.origin.y = v103;
                      v142.size.width = a3;
                      v142.size.height = v104;
                      CGRectGetHeight(v142);
                      LOBYTE(v135[0]) = 0;
                      v136 = 0;
                      LayoutSubview.place(at:anchor:proposal:)();
                      v143.origin.x = a1;
                      v143.origin.y = v103;
                      v143.size.width = a3;
                      v143.size.height = v104;
                      CGRectGetMinX(v143);
                      v144.origin.x = a1;
                      v144.origin.y = v103;
                      v144.size.width = a3;
                      v144.size.height = v104;
                      CGRectGetMidY(v144);
                      static UnitPoint.leading.getter();
                      static UnitPoint.leading.getter();
                      if (v51[2])
                      {
                        v108 = sub_100005224();
                        if (v109)
                        {
                          v110 = *(v51[7] + 8 * v108);
                          v145.origin.x = a1;
                          v145.origin.y = v103;
                          v145.size.width = a3;
                          v145.size.height = v104;
                          CGRectGetHeight(v145);
                          LOBYTE(v135[0]) = 0;
                          v136 = 0;
                          LayoutSubview.place(at:anchor:proposal:)();
                          v146.origin.x = a1;
                          v146.origin.y = v103;
                          v146.size.width = a3;
                          v146.size.height = v104;
                          CGRectGetMaxX(v146);
                          v147.origin.x = a1;
                          v147.origin.y = v103;
                          v147.size.width = a3;
                          v147.size.height = v104;
                          CGRectGetMidY(v147);
                          static UnitPoint.trailing.getter();
                          static UnitPoint.trailing.getter();
                          if (v51[2])
                          {
                            v111 = sub_100005224();
                            v113 = v112;

                            if (v113)
                            {
                              v114 = *(v51[7] + 8 * v111);
                              v148.origin.x = a1;
                              v148.origin.y = v103;
                              v148.size.width = a3;
                              v148.size.height = v104;
                              CGRectGetHeight(v148);
                              LOBYTE(v135[0]) = 0;
                              v136 = 0;
                              v115 = v124;
                              LayoutSubview.place(at:anchor:proposal:)();
                              v116 = *(v94 + 8);
                              v116(v115, v93);
                              v116(v95, v93);
                              v116(v96, v93);
                            }

                            goto LABEL_55;
                          }

LABEL_54:
                          __break(1u);
LABEL_55:
                          __break(1u);
                          goto LABEL_56;
                        }

LABEL_53:
                        __break(1u);
                        goto LABEL_54;
                      }

LABEL_52:
                      __break(1u);
                      goto LABEL_53;
                    }

LABEL_51:
                    __break(1u);
                    goto LABEL_52;
                  }

LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }

LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_62:
  v135[0] = 0;
  v135[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(92);
  v118._countAndFlagsBits = 0xD000000000000033;
  v118._object = 0x80000001001E4F20;
  String.append(_:)(v118);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v137 = dispatch thunk of Collection.distance(from:to:)();
  v119._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v119);

  v120._object = 0x80000001001E4F60;
  v120._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v120);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1000A0AE8()
{
  result = qword_10025F570;
  if (!qword_10025F570)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F570);
  }

  return result;
}

uint64_t sub_1000A0B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0BB8(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F568, &qword_1001D4C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(*(type metadata accessor for OutputDenyListBundle() - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = type metadata accessor for StringResponseSanitizer();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();
  v15 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v4[27] = v15;
  v16 = *(v15 - 8);
  v4[28] = v16;
  v17 = *(v16 + 64) + 15;
  v4[29] = swift_task_alloc();
  v18 = *(*(type metadata accessor for InputDenyListBundle() - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v19 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v4[31] = v19;
  v20 = *(v19 - 8);
  v4[32] = v20;
  v21 = *(v20 + 64) + 15;
  v4[33] = swift_task_alloc();
  v22 = type metadata accessor for StringRenderedPromptSanitizer();
  v4[34] = v22;
  v23 = *(v22 - 8);
  v4[35] = v23;
  v24 = *(v23 + 64) + 15;
  v4[36] = swift_task_alloc();
  v25 = *(*(sub_10000341C(&qword_10025F3A0, &qword_1001D42D8) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v26 = type metadata accessor for SamplingParameters();
  v4[39] = v26;
  v27 = *(v26 - 8);
  v4[40] = v27;
  v28 = *(v27 + 64) + 15;
  v4[41] = swift_task_alloc();
  v29 = sub_10000341C(&qword_10025F650, &unk_1001D4D20);
  v4[42] = v29;
  v30 = *(v29 - 8);
  v4[43] = v30;
  v31 = *(v30 + 64) + 15;
  v4[44] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[45] = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[46] = v33;
  v4[47] = v32;

  return _swift_task_switch(sub_1000A10B4, v33, v32);
}

uint64_t sub_1000A10B4()
{
  v56 = *(v0 + 352);
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v60 = *(v0 + 320);
  v61 = *(v0 + 312);
  v3 = *(v0 + 296);
  v42 = *(v0 + 288);
  v58 = *(v0 + 280);
  v59 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v39 = *(v0 + 248);
  v40 = *(v0 + 232);
  v41 = *(v0 + 216);
  v51 = *(v0 + 208);
  v55 = *(v0 + 200);
  v57 = *(v0 + 192);
  v46 = *(v0 + 176);
  v47 = *(v0 + 168);
  v43 = *(v0 + 160);
  v44 = *(v0 + 184);
  v48 = *(v0 + 152);
  v49 = *(v0 + 144);
  v50 = *(v0 + 136);
  v53 = *(v0 + 112);
  v52 = *(v0 + 104);
  v54 = *(*(v0 + 128) + 16);
  v8 = type metadata accessor for SamplingStrategy();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1000A386C(v2, v3);
  v45 = v1;
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  sub_10000F500(v2, &qword_10025F3A0, &qword_1001D42D8);
  static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()();
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = sub_100027874((v0 + 16), v10);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v10, v15, v16, v17);
  v18 = *(v9 + 16);
  InputDenyListBundle.init<A>(resource:)();

  StringRenderedPromptSanitizer.Overrides.init(denyList:)();
  sub_10000F4B4((v0 + 16));
  v19 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  (*(v4 + 104))(v5, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v39);
  v20 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v20 - 8) + 56))(v40, 1, 1, v20);
  (*(v7 + 104))(v40, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v41);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()();
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = sub_100027874((v0 + 56), v22);
  v24 = *(v22 - 8);
  v25 = *(v24 + 64) + 15;
  v26 = swift_task_alloc();
  (*(v24 + 16))(v26, v23, v22, v27, v28, v29);
  v30 = *(v21 + 16);
  OutputDenyListBundle.init<A>(resource:)();

  StringResponseSanitizer.Overrides.init(denyList:)();
  sub_10000F4B4((v0 + 56));
  v31 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v31 - 8) + 56))(v44, 0, 1, v31);
  (*(v46 + 104))(v44, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v47);
  v32 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v32 - 8) + 56))(v48, 1, 1, v32);
  (*(v49 + 104))(v48, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v50);
  StringResponseSanitizer.init(overrides:guardrails:)();
  v33 = swift_task_alloc();
  *(v33 + 16) = v53;
  *(v33 + 32) = v52;
  sub_1000A38FC();
  GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:query:)();

  (*(v55 + 8))(v51, v57);
  (*(v58 + 8))(v42, v59);
  (*(v60 + 8))(v45, v61);
  v34 = async function pointer to TokenStream.content()[1];
  v35 = swift_task_alloc();
  *(v0 + 384) = v35;
  *v35 = v0;
  v35[1] = sub_1000A16B8;
  v36 = *(v0 + 352);
  v37 = *(v0 + 336);

  return TokenStream.content()(v0 + 96, v37);
}

uint64_t sub_1000A16B8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 392) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 376);
  v9 = *(v2 + 368);
  if (v0)
  {
    v10 = sub_1000A1968;
  }

  else
  {
    v10 = sub_1000A1850;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000A1850()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[19];

  v16 = v0[12];

  v11 = v0[1];

  return v11(v16);
}

uint64_t sub_1000A1968()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];

  v11 = v0[1];
  v12 = v0[49];

  return v11();
}

uint64_t sub_1000A1A74()
{
  v0 = sub_10000341C(&qword_10025F668, &qword_1001D4D50);
  sub_10002B2EC(v0, qword_100277050);
  sub_10000F34C(v0, qword_100277050);
  sub_10000341C(&qword_10025F670, &qword_1001D4D58);
  return Regex.init(_regexString:version:)();
}

void *sub_1000A1B04()
{
  v2 = v0;
  v3 = *v0;
  v80 = type metadata accessor for UUID();
  v78 = *(v80 - 8);
  v4 = *(v78 + 64);
  __chkstk_darwin(v80);
  v77 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionConfiguration();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v79 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v74 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_10025F478, &unk_1001D4D30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v73 = v65 - v14;
  v15 = type metadata accessor for Prompt.StringInterpolation();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for ChatMessageRole();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  __chkstk_darwin(v17);
  v71 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ChatMessagePrompt();
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  v22 = __chkstk_darwin(v20);
  v72 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v86 = v65 - v24;
  v25 = type metadata accessor for CachePolicy();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v27 = type metadata accessor for SessionConfiguration();
  v84 = *(v27 - 8);
  v85 = v27;
  v28 = *(v84 + 64);
  v29 = __chkstk_darwin(v27);
  v70 = v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v83 = v65 - v31;
  v32 = sub_10000341C(&qword_10025F480, &qword_1001D4510);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = v65 - v34;
  v36 = type metadata accessor for ModelBundle();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v82 = v65 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = OBJC_IVAR____TtC21WritingToolsUIService10SlotParser___observationRegistrar;
  ObservationRegistrar.init()();
  type metadata accessor for CompositionModel(0);
  sub_100071008(v35);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_10000F500(v35, &qword_10025F480, &qword_1001D4510);
    sub_100099280();
    swift_allocError();
    *v40 = 0xD00000000000001DLL;
    v40[1] = 0x80000001001E4FF0;
    swift_willThrow();
LABEL_6:
    v61 = type metadata accessor for ObservationRegistrar();
    (*(*(v61 - 8) + 8))(v2 + v81, v61);
    v62 = *(*v2 + 48);
    v63 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v67 = v0;
  v65[1] = v3;
  v65[2] = v1;
  v41 = v82;
  (*(v37 + 32))(v82, v35, v36);
  sub_10000341C(&qword_10025F488, &qword_1001D4518);
  v42 = *(v37 + 72);
  v43 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1001CF9D0;
  v45 = *(v37 + 16);
  v66 = v36;
  v45(v44 + v43, v41);
  static CachePolicy.inMemory.getter();
  v46 = v83;
  SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:parentOfOnBehalfOf:)();
  (*(v68 + 104))(v71, enum case for ChatMessageRole.system(_:), v69);
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v47);
  sub_10019B2F0(3u);
  v48 = type metadata accessor for Prompt.Component.Privacy();
  v49 = v73;
  (*(*(v48 - 8) + 56))(v73, 1, 1, v48);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();

  sub_10000F500(v49, &qword_10025F478, &unk_1001D4D30);
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v50);
  Prompt.init(stringInterpolation:)();
  v51 = v86;
  ChatMessagePrompt.init(role:prompt:)();
  (*(v84 + 16))(v70, v46, v85);
  v53 = v75;
  v52 = v76;
  (*(v75 + 16))(v72, v51, v76);
  v54 = v77;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v78 + 8))(v54, v80);
  SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)();
  v55 = type metadata accessor for GenerativeExperiencesSession();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = GenerativeExperiencesSession.init(configuration:)();
  if (!v58)
  {
    sub_100099280();
    swift_allocError();
    *v60 = 0xD000000000000020;
    v60[1] = 0x80000001001E5010;
    swift_willThrow();
    (*(v53 + 8))(v86, v52);
    (*(v84 + 8))(v83, v85);
    (*(v37 + 8))(v82, v66);
    v2 = v67;
    goto LABEL_6;
  }

  v59 = v58;
  (*(v53 + 8))(v86, v52);
  (*(v84 + 8))(v83, v85);
  (*(v37 + 8))(v82, v66);
  v2 = v67;
  v67[2] = v59;
  return v2;
}

uint64_t sub_1000A24D8()
{
  v1 = v0;
  type metadata accessor for GenerativeExperiencesSession();
  v2 = *(v0 + 16);

  GenerativeExperiencesSession.sessionIdentifier()();

  LOBYTE(v2) = static GenerativeExperiencesSession.terminateSession(for:)();

  if ((v2 & 1) == 0)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F34C(v3, qword_100276F08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to terminate GES session", v6, 2u);
    }
  }

  v7 = *(v1 + 16);

  v8 = OBJC_IVAR____TtC21WritingToolsUIService10SlotParser___observationRegistrar;
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t sub_1000A2654()
{
  sub_1000A24D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SlotParser()
{
  result = qword_10025F5C0;
  if (!qword_10025F5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A2700()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000A27A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v20 = a2;
  v25 = a4;
  v5 = type metadata accessor for User();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChatMessagesPrompt();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = v20;
  v24 = v21;
  User.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v9, v5);
  sub_10000341C(&qword_10025F3B0, &unk_1001D4310);
  v15 = *(v11 + 72);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001CF9D0;
  (*(v11 + 16))(v17 + v16, v14, v10);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000A29E8@<X0>(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a2;
  v41 = a1;
  v46 = a3;
  v3 = sub_10000341C(&qword_10025F478, &unk_1001D4D30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for Prompt.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for Prompt();
  v44 = *(v9 - 8);
  v45 = v9 - 8;
  v10 = v44;
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v42 = &v38 - v18;
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v19);
  v20 = type metadata accessor for Prompt.Component.Privacy();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();
  sub_10000F500(v6, &qword_10025F478, &unk_1001D4D30);
  v21._countAndFlagsBits = 2570;
  v21._object = 0xE200000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v21);
  Prompt.init(stringInterpolation:)();
  static CustomPromptBuilder.buildExpression(_:)();
  v22 = *(v10 + 8);
  v40 = v17;
  v22(v17, v9);
  v41 = v22;
  Prompt.init(stringLiteral:)();
  static CustomPromptBuilder.buildExpression(_:)();
  v39 = v14;
  v22(v14, v9);
  v47[0] = v43;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v23 = BidirectionalCollection<>.joined(separator:)();
  v47[3] = &type metadata for String;
  v47[4] = &protocol witness table for String;
  v47[0] = v23;
  v47[1] = v24;
  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000F4B4(v47);
  sub_10000341C(&qword_10025F3B8, &qword_1001D4D40);
  v25 = *(v44 + 72);
  v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v27 = 2 * v25;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001CF9F0;
  v29 = v28 + v26;
  v30 = *(v10 + 16);
  v31 = v42;
  v30(v29, v42, v9);
  v32 = v29 + v25;
  v33 = v40;
  v30(v32, v40, v9);
  v34 = v29 + v27;
  v35 = v39;
  v30(v34, v39, v9);
  static CustomPromptBuilder.buildBlock(_:)();

  v36 = v41;
  v41(v35, v9);
  v36(v33, v9);
  return (v36)(v31, v9);
}

uint64_t sub_1000A2E78()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277068);
  sub_10000F34C(v0, qword_100277068);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_1000A2FC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000341C(&qword_10025F6B8, &qword_1001D4E90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_1000A4340();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000A3154()
{
  if (*v0)
  {
    result = 0x7972657571;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1000A3184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000A3268(uint64_t a1)
{
  v2 = sub_1000A4340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A32A4(uint64_t a1)
{
  v2 = sub_1000A4340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A3304@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_1000A3464@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A415C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000A34B4()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277080);
  sub_10000F34C(v0, qword_100277080);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9D0;
  sub_10000341C(&qword_10025F688, &qword_1001D4E78);
  sub_1000A4084();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_1000A3624@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Schema();
  v6 = sub_10000F34C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000A36C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000341C(&qword_10025F688, &qword_1001D4E78);
  sub_1000A4084();
  GeneratedValues.extract<A>(field:)();
  v5 = type metadata accessor for GeneratedValues();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1000A37C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000A386C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F3A0, &qword_1001D42D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A38FC()
{
  result = qword_10025F658;
  if (!qword_10025F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F658);
  }

  return result;
}

char *sub_1000A3970(uint64_t a1, uint64_t a2)
{
  v53 = sub_10000341C(&qword_10025F660, &qword_1001D4D48);
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v53);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v46 - v9;
  *&v62[0] = a1;
  *(&v62[0] + 1) = a2;
  if (qword_10025A768 != -1)
  {
    swift_once();
  }

  v11 = sub_10000341C(&qword_10025F668, &qword_1001D4D50);
  sub_10000F34C(v11, qword_100277050);
  v12 = sub_10000341C(&qword_10025F670, &qword_1001D4D58);
  sub_1000A3F30();
  sub_100007120(&qword_10025F680, &qword_10025F668, &qword_1001D4D50);
  v48 = v12;
  v13 = BidirectionalCollection<>.matches<A, B>(of:)();
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 0;
    v19 = *(v4 + 16);
    v17 = v4 + 16;
    v18 = v19;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v46[1] = v13;
    v21 = v13 + v20;
    v49 = *(v17 + 56);
    v55 = (v17 - 8);
    v56 = _swiftEmptyArrayStorage;
    *&v14 = 136315138;
    v47 = v14;
    v22 = v53;
    v52 = v8;
    v50 = v19;
    v51 = v17;
    do
    {
      v54 = v16;
      v18(v10, v21, v22);
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000F34C(v23, qword_100276F08);
      v24 = v10;
      v18(v8, v10, v22);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v61 = v28;
        *v27 = v47;
        Regex.Match.output.getter();
        v57 = v62[0];
        v58 = v62[1];
        v59 = v62[2];
        v60 = v62[3];
        v29 = String.init<A>(describing:)();
        v31 = v30;
        v32 = *v55;
        (*v55)(v52, v53);
        v33 = sub_10002510C(v29, v31, &v61);

        *(v27 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v25, v26, "match: %s", v27, 0xCu);
        sub_10000F4B4(v28);

        v22 = v53;
      }

      else
      {

        v32 = *v55;
        (*v55)(v8, v22);
      }

      v10 = v24;
      Regex.Match.output.getter();

      v34 = static String._fromSubstring(_:)();
      v36 = v35;

      *&v62[0] = v34;
      *(&v62[0] + 1) = v36;
      __chkstk_darwin(v37);
      v46[-2] = v62;
      v38 = v56;
      v16 = v54;
      if (sub_1000A37C0(sub_1000A3F84, &v46[-4], v56))
      {
        v32(v10, v22);

        v18 = v50;
        v8 = v52;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = sub_10017DD84(0, *(v38 + 2) + 1, 1, v38);
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        v56 = v40;
        if (v42 >= v41 >> 1)
        {
          v56 = sub_10017DD84((v41 > 1), v42 + 1, 1, v56);
        }

        v32(v10, v22);
        v43 = v56;
        *(v56 + 2) = v42 + 1;
        v44 = &v43[16 * v42];
        *(v44 + 4) = v34;
        *(v44 + 5) = v36;
        v8 = v52;
        v18 = v50;
      }

      v21 += v49;
      --v15;
    }

    while (v15);

    return v56;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

unint64_t sub_1000A3F30()
{
  result = qword_10025F678;
  if (!qword_10025F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F678);
  }

  return result;
}

uint64_t sub_1000A3F84(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000A3FEC(uint64_t a1, int a2)
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

uint64_t sub_1000A4034(uint64_t result, int a2, int a3)
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

unint64_t sub_1000A4084()
{
  result = qword_10025F690;
  if (!qword_10025F690)
  {
    sub_100003E34(&qword_10025F688, &qword_1001D4E78);
    sub_1000A4108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F690);
  }

  return result;
}

unint64_t sub_1000A4108()
{
  result = qword_10025F698;
  if (!qword_10025F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F698);
  }

  return result;
}

uint64_t sub_1000A415C(uint64_t *a1)
{
  v3 = sub_10000341C(&qword_10025F6A8, &qword_1001D4E88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_1000A4340();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000F4B4(a1);
  return v8;
}

unint64_t sub_1000A4340()
{
  result = qword_10025F6B0;
  if (!qword_10025F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6B0);
  }

  return result;
}

unint64_t sub_1000A43A8()
{
  result = qword_10025F6C0;
  if (!qword_10025F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6C0);
  }

  return result;
}

unint64_t sub_1000A4400()
{
  result = qword_10025F6C8;
  if (!qword_10025F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6C8);
  }

  return result;
}

unint64_t sub_1000A4458()
{
  result = qword_10025F6D0;
  if (!qword_10025F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F6D0);
  }

  return result;
}

void sub_1000A44AC()
{
  v1 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    [v8 setDelegate:v0];
    *&v8[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_attachmentCollectionViewDelegate + 8] = &off_10024D5E0;
    swift_unknownObjectWeakAssign();
    v9 = objc_allocWithZone(sub_10000341C(&unk_10025F870, &unk_1001D50D0));
    v10 = v0;
    v11 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v12 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource;
    v13 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource) = v11;
    v14 = v11;

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10024A978);
    v15 = *(v10 + v12);
    if (v15)
    {
      v16 = v15;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v2 + 8))(v5, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource) = 0;
  }
}

uint64_t sub_1000A46AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:isa];

  type metadata accessor for AttachmentCollectionViewCell();
  v15 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AttachmentCollectionView();
  swift_dynamicCastClass();
  swift_unknownObjectWeakAssign();
  sub_1000A6690(a3, v11);
  v16 = type metadata accessor for Attachment(0);
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  v17 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
  swift_beginAccess();
  sub_1000081F8(v15 + v17, v9, &qword_100263020, &qword_1001DA210);
  swift_beginAccess();
  sub_1000A66F4(v11, v15 + v17);
  swift_endAccess();
  sub_10003C9A8(v9);
  sub_10000F500(v9, &qword_100263020, &qword_1001DA210);
  sub_10000F500(v11, &qword_100263020, &qword_1001DA210);
  return v15;
}

void sub_1000A48EC(void *a1)
{
  v69 = a1;
  v2 = sub_10000341C(&qword_10025F830, &qword_1001D50A8);
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v74 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v73 = &v61 - v8;
  v9 = __chkstk_darwin(v7);
  v72 = &v61 - v10;
  __chkstk_darwin(v9);
  v71 = &v61 - v11;
  v12 = type metadata accessor for Attachment(0);
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = sub_10000341C(&qword_10025F838, &qword_1001D50B0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  v24 = sub_10000341C(&qword_10025F840, &qword_1001D50B8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v61 - v27;
  v29 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource);
  if (!v29)
  {
    return;
  }

  v70 = v16;
  v64 = v1;
  v66 = v20;
  v67 = v26;
  v30 = v29;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v78 = v69;
  v80 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  v68 = v19;
  sub_100007120(&qword_10025F850, &qword_10025F848, &qword_1001D50C0);
  sub_1000A6558();
  v31 = v68;
  BidirectionalCollection<>.difference<A>(from:)();

  sub_100007120(&qword_10025F860, &qword_10025F838, &qword_1001D50B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v78 == v80)
  {

    (*(v66 + 8))(v23, v31);
    (*(v67 + 8))(v28, v24);
    return;
  }

  v61 = v30;
  v65 = v28;
  v63 = v23;
  v32 = CollectionDifference.removals.getter();
  v33 = *(v32 + 16);
  v62 = v24;
  if (v33)
  {
    v78 = _swiftEmptyArrayStorage;
    v34 = v32;
    sub_100163CE0(0, v33, 0);
    v35 = 0;
    v36 = v78;
    v69 = (v34 + ((*(v77 + 80) + 32) & ~*(v77 + 80)));
    v37 = v18;
    while (v35 < *(v34 + 16))
    {
      v38 = v71;
      sub_1000081F8(v69 + *(v77 + 72) * v35, v71, &qword_10025F830, &qword_1001D50A8);
      v18 = v72;
      sub_1000081F8(v38, v72, &qword_10025F830, &qword_1001D50A8);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_30;
      }

      sub_10000F500(v38, &qword_10025F830, &qword_1001D50A8);
      v39 = sub_10000341C(&qword_10025F868, &qword_1001D50C8);
      sub_10003D784(&v18[*(v39 + 48)], v37);
      v78 = v36;
      v41 = v36[2];
      v40 = v36[3];
      v18 = (v41 + 1);
      if (v41 >= v40 >> 1)
      {
        sub_100163CE0(v40 > 1, v41 + 1, 1);
        v36 = v78;
      }

      ++v35;
      v36[2] = v18;
      sub_10003D784(v37, v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v41);
      if (v33 == v35)
      {

        v42 = v62;
        v31 = v68;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
    v42 = v24;
LABEL_13:
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v36);

    v43 = CollectionDifference.insertions.getter();
    v18 = *(v43 + 16);
    v45 = v73;
    v44 = v74;
    if (!v18)
    {

      v49 = v65;
LABEL_22:
      v78 = 0;
      v79 = 1;
      v54 = v49;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v55 = v61;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
      v56 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
      v57 = v64;
      swift_beginAccess();
      v58 = *(v57 + v56);
      v59 = v63;
      if (v58)
      {
        swift_endAccess();
        v60 = v58;
        if ([v60 numberOfSections] >= 1)
        {
          [v60 setScrollEnabled:{objc_msgSend(v60, "numberOfItemsInSection:", 0) > 1}];
          [v60 setShowsHorizontalScrollIndicator:{objc_msgSend(v60, "numberOfItemsInSection:", 0) > 1}];
        }

        (*(v66 + 8))(v59, v31);
        (*(v67 + 8))(v65, v42);
      }

      else
      {
        (*(v66 + 8))(v63, v31);
        (*(v67 + 8))(v54, v42);
        swift_endAccess();
      }

      return;
    }

    v78 = _swiftEmptyArrayStorage;
    v46 = v43;
    sub_100163CE0(0, v18, 0);
    v47 = 0;
    v48 = v78;
    v72 = (v46 + ((*(v77 + 80) + 32) & ~*(v77 + 80)));
    v49 = v65;
    while (v47 < *(v46 + 16))
    {
      sub_1000081F8(&v72[*(v77 + 72) * v47], v45, &qword_10025F830, &qword_1001D50A8);
      sub_1000081F8(v45, v44, &qword_10025F830, &qword_1001D50A8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10000F500(v44, &qword_10025F830, &qword_1001D50A8);
        goto LABEL_32;
      }

      sub_10000F500(v45, &qword_10025F830, &qword_1001D50A8);
      v50 = sub_10000341C(&qword_10025F868, &qword_1001D50C8);
      v51 = v70;
      sub_10003D784(v44 + *(v50 + 48), v70);
      v78 = v48;
      v53 = v48[2];
      v52 = v48[3];
      if (v53 >= v52 >> 1)
      {
        sub_100163CE0(v52 > 1, v53 + 1, 1);
        v49 = v65;
        v48 = v78;
      }

      ++v47;
      v48[2] = v53 + 1;
      sub_10003D784(v51, v48 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v53);
      v45 = v73;
      v44 = v74;
      if (v18 == v47)
      {

        v42 = v62;
        v31 = v68;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_30:
  sub_10000F500(v18, &qword_10025F830, &qword_1001D50A8);
LABEL_32:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}