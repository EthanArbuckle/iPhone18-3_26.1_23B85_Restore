uint64_t sub_100020AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100020B6C, v5, v4);
}

uint64_t sub_100020B6C()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for WritingToolsView() + 84));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100020C40;

  return sub_1001A2C88();
}

uint64_t sub_100020C40()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_10002B2C0, v5, v4);
}

uint64_t sub_100020D84(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_100153D18();
}

double sub_100020ED0@<D0>(_OWORD *a1@<X8>)
{
  sub_1000284C4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100020F20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1000284C4();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100020F80(__int128 *a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v6 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v4 = *(type metadata accessor for WritingToolsView() + 68);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.wrappedValue.getter();
  sub_100025A68();
  NavigationPath.append<A>(_:)();
  return State.wrappedValue.setter();
}

uint64_t sub_100021098(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WritingToolsView();
  v8 = v7[17];
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.wrappedValue.getter();
  LOBYTE(v8) = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v10 = v7[19];
    sub_10000341C(&unk_10025B200, &qword_1001CFB18);
    State.wrappedValue.getter();
    if (v16)
    {
      sub_100028458(v15, v14);
      sub_10000F500(v15, &unk_10025B1C0, &unk_1001CFA90);
      v11 = sub_100027874(v14, v14[3]);
      if (qword_10025A5E0 != -1)
      {
        v13 = v11;
        swift_once();
        v11 = v13;
      }

      v12 = *v11;
      sub_10000E3E4(qword_100276DF0, *(a1 + v7[11]));
      return sub_10000F4B4(v14);
    }

    else
    {
      return sub_10000F500(v15, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  return result;
}

void sub_100021278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = &v28;
  v28 = &_swiftEmptyArrayStorage;
  NavigationPath.withCollectionProxy(_:)();
  v9 = v28[2];
  if (v9)
  {
    v10 = &v28[4 * v9];
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    v14 = v10[24];
    sub_10000F3F4(*v10, v12, v13, v10[24]);

    v15 = *a3;
    v16 = *(a3 + 8);

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v8, v4);
      v15 = v28;
    }

    swift_getKeyPath();
    v28 = v15;
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = v14;
      goto LABEL_14;
    }

    if (!v14)
    {
      [Strong setModalInPresentation:1];

      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = 0;
      goto LABEL_14;
    }

    if (v14 == 1)
    {
      [Strong setModalInPresentation:1];

      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = 1;
LABEL_14:
      sub_10000F428(v19, v20, v21, v22);
      return;
    }

    if (v13 | v12 | v11)
    {
      [Strong setModalInPresentation:1];
      goto LABEL_17;
    }

LABEL_11:
    [Strong setModalInPresentation:0];
LABEL_17:

    return;
  }

  v23 = *a3;
  v24 = *(a3 + 8);

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v23 = v28;
  }

  swift_getKeyPath();
  v28 = v23;
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    goto LABEL_11;
  }
}

uint64_t sub_10002168C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WritingToolsView();
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v86 = v7;
  v87 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v88 = &v84 - v10;
  v91 = &v92;
  v92 = &_swiftEmptyArrayStorage;
  NavigationPath.withCollectionProxy(_:)();
  v11 = v92;
  v92 = &_swiftEmptyArrayStorage;
  v90 = &v92;
  NavigationPath.withCollectionProxy(_:)();
  v12 = v92;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F34C(v13, qword_100276F08);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v89 = a3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v92 = v18;
    *v17 = 136315138;
    v19 = Array.description.getter();
    v21 = sub_10002510C(v19, v20, &v92);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "old navigation path: %s", v17, 0xCu);
    sub_10000F4B4(v18);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v92 = v25;
    *v24 = 136315138;
    v26 = Array.description.getter();
    v28 = sub_10002510C(v26, v27, &v92);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "new navigation path: %s", v24, 0xCu);
    sub_10000F4B4(v25);
  }

  v29 = v11[2];
  if (v29)
  {
    v30 = &v11[4 * v29];
    v31 = *v30;
    v32 = *(v30 + 1);
    v33 = *(v30 + 2);
    v34 = v30[24];
    sub_10000F3F4(*v30, v32, v33, v30[24]);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 255;
  }

  v35 = v12[2];
  if (v35)
  {
    v36 = &v12[4 * v35];
    v38 = *v36;
    v37 = *(v36 + 1);
    v39 = *(v36 + 2);
    v40 = v36[24];
    sub_10000F3F4(*v36, v37, v39, v36[24]);
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v39 = 0;
    v40 = 255;
  }

  if (v34 == 1)
  {
    if (v40 == 255)
    {
      v62 = type metadata accessor for TaskPriority();
      v63 = v88;
      (*(*(v62 - 8) + 56))(v88, 1, 1, v62);
      v64 = v87;
      sub_10002631C(v89, v87);
      type metadata accessor for MainActor();
      v65 = static MainActor.shared.getter();
      v66 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = v65;
      *(v67 + 24) = &protocol witness table for MainActor;
      sub_100029074(v64, v67 + v66, type metadata accessor for WritingToolsView);
      sub_10015C9C8(0, 0, v63, &unk_1001CFEA8, v67);

      v68 = v31;
      v69 = v32;
      v70 = v33;
LABEL_40:
      v77 = 1;
      return sub_1000278C0(v68, v69, v70, v77);
    }

    if (v32 == 1)
    {
      if (v40 == 1)
      {
        if (v37 == 1)
        {
          sub_1000278C0(v31, 1, v33, 1);
LABEL_28:
          v68 = v38;
          v69 = 1;
LABEL_39:
          v70 = v39;
          goto LABEL_40;
        }

        v78 = type metadata accessor for TaskPriority();
        v79 = v88;
        (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
        v80 = v87;
        sub_10002631C(v89, v87);
        type metadata accessor for MainActor();
        v81 = static MainActor.shared.getter();
        v82 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v83 = swift_allocObject();
        *(v83 + 16) = v81;
        *(v83 + 24) = &protocol witness table for MainActor;
        sub_100029074(v80, v83 + v82, type metadata accessor for WritingToolsView);
        sub_10015C9C8(0, 0, v79, &unk_1001CFE98, v83);

        sub_1000278C0(v31, 1, v33, 1);
LABEL_38:
        v68 = v38;
        v69 = v37;
        goto LABEL_39;
      }

      v58 = v31;
      v59 = 1;
    }

    else
    {
      v58 = v31;
      v59 = v32;
    }

    v60 = v33;
    v61 = 1;
LABEL_35:
    sub_1000278C0(v58, v59, v60, v61);
    goto LABEL_36;
  }

  if (v34 != 255)
  {
    v58 = v31;
    v59 = v32;
    v60 = v33;
    v61 = v34;
    goto LABEL_35;
  }

  if (v40 == 1)
  {
    if (v37 == 1)
    {
      goto LABEL_28;
    }

    if ((v39 & 1) == 0)
    {
      v71 = type metadata accessor for TaskPriority();
      v72 = v88;
      (*(*(v71 - 8) + 56))(v88, 1, 1, v71);
      v73 = v87;
      sub_10002631C(v89, v87);
      type metadata accessor for MainActor();
      v74 = static MainActor.shared.getter();
      v75 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      *(v76 + 24) = &protocol witness table for MainActor;
      sub_100029074(v73, v76 + v75, type metadata accessor for WritingToolsView);
      sub_10015C9C8(0, 0, v72, &unk_1001CFEB8, v76);
    }

    goto LABEL_38;
  }

  if (v40 != 255)
  {
LABEL_36:
    v68 = v38;
    v69 = v37;
    v70 = v39;
    v77 = v40;
    return sub_1000278C0(v68, v69, v70, v77);
  }

  v41 = *(v84 + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  v42 = v89;
  Bindable.wrappedValue.getter();
  v43 = v92;
  swift_getKeyPath();
  v92 = v43;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = v43[6];
  v45 = v43[7];
  v46 = v43[8];
  v47 = *(v43 + 72);
  sub_10000F3F4(v44, v45, v46, *(v43 + 72));

  if (v47 != 1)
  {
    return sub_10000F428(v44, v45, v46, v47);
  }

  if (v45 != 1)
  {
    v49 = type metadata accessor for TaskPriority();
    v50 = v88;
    (*(*(v49 - 8) + 56))(v88, 1, 1, v49);
    v51 = v87;
    sub_10002631C(v42, v87);
    type metadata accessor for MainActor();
    v52 = static MainActor.shared.getter();
    v53 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v54 = v53 + v86;
    v55 = (v53 + v86) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v52;
    *(v56 + 24) = &protocol witness table for MainActor;
    sub_100029074(v51, v56 + v53, type metadata accessor for WritingToolsView);
    *(v56 + v54) = v46 & 1;
    v57 = v56 + v55;
    *(v57 + 8) = v44;
    *(v57 + 16) = v45;
    sub_10015C9C8(0, 0, v50, &unk_1001CFEF0, v56);
  }

  return result;
}

uint64_t sub_10002203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  *(v7 + 316) = a5;
  *(v7 + 136) = a4;
  *(v7 + 160) = type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v9;
  *(v7 + 184) = v8;

  return _swift_task_switch(sub_1000220E0, v9, v8);
}

uint64_t sub_1000220E0()
{
  v1 = *(v0 + 316);
  v2 = *(v0 + 136);
  *(v0 + 312) = *(type metadata accessor for WritingToolsView() + 80);
  *(v0 + 192) = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v3 = *(v0 + 16);
  swift_getKeyPath();
  *(v0 + 24) = v3;
  *(v0 + 200) = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);

  if (v1 == *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff))
  {
    *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) = *(v0 + 316);
  }

  else
  {
    v5 = *(v0 + 316);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v0 + 32) = v4;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 208) = 0;
  Bindable.wrappedValue.getter();
  v7 = *(v0 + 40);
  swift_getKeyPath();
  *(v0 + 48) = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 216) = *(v7 + 32);

  v8 = swift_task_alloc();
  *(v0 + 224) = v8;
  *v8 = v0;
  v8[1] = sub_1000223B0;

  return sub_10007AB54();
}

uint64_t sub_1000223B0()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return _swift_task_switch(sub_1000224F4, v5, v4);
}

uint64_t sub_1000224F4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 136) + *(v0 + 312);
  Bindable.wrappedValue.getter();
  v4 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 64) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 32);

  if (*(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) == 1)
  {
    *(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = 1;

    v6 = *(v0 + 152);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v0 + 208);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    *(v8 + 24) = 1;
    *(v0 + 72) = v5;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v6 = *(v0 + 152);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = *(v0 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 160);
    v13 = *(v0 + 136) + *(v0 + 312);
    Bindable.wrappedValue.getter();
    v14 = *(v0 + 120);
    swift_getKeyPath();
    *(v0 + 128) = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 232) = *(v14 + 32);

    *(v0 + 240) = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    *(v0 + 248) = v15;
    *(v0 + 256) = v16;
    v18 = sub_10002297C;
    goto LABEL_20;
  }

LABEL_10:
  v19 = *(v0 + 192);
  v20 = *(v0 + 200);
  v21 = *(v0 + 136) + *(v0 + 312);
  Bindable.wrappedValue.getter();
  v22 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + 32);

  swift_getKeyPath();
  *(v0 + 96) = v23;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v23 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24) == 255)
  {
    v26 = *(v0 + 168);

    goto LABEL_15;
  }

  if (*(v23 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
  {
  }

  else
  {
    v24 = *(v23 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);

    if (v24 == 5)
    {
      v25 = *(v0 + 168);
LABEL_15:

      v27 = *(v0 + 8);

      return v27();
    }
  }

  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  v31 = *(v0 + 160);
  v32 = *(v0 + 136) + *(v0 + 312);
  Bindable.wrappedValue.getter();
  v33 = *(v0 + 104);
  swift_getKeyPath();
  *(v0 + 112) = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 272) = *(v33 + 32);

  *(v0 + 280) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v34;
  *(v0 + 288) = v15;
  *(v0 + 296) = v34;
  v18 = sub_100022BBC;
LABEL_20:

  return _swift_task_switch(v18, v15, v17);
}

uint64_t sub_10002297C()
{
  v1 = v0[19];
  sub_10006CF60("Composition");
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_100022A30;
  v3 = v0[29];
  v4 = v0[18];

  return sub_10007DE34(v4, v1);
}

uint64_t sub_100022A30()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return _swift_task_switch(sub_100022B50, v4, v3);
}

uint64_t sub_100022B50()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = v0[22];
  v4 = v0[23];

  return _swift_task_switch(sub_10002B2C4, v3, v4);
}

uint64_t sub_100022BBC()
{
  sub_10006CF60("Composition");
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100022C68;
  v2 = *(v0 + 272);

  return sub_10007DE34(0, 0xE000000000000000);
}

uint64_t sub_100022C68()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_100022D88, v4, v3);
}

uint64_t sub_100022D88()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[22];
  v4 = v0[23];

  return _swift_task_switch(sub_100022DF4, v3, v4);
}

uint64_t sub_100022DF4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100022E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100022EEC, v6, v5);
}

uint64_t sub_100022EEC()
{
  v1 = v0[4];
  v2 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v3 = v0[2];
  swift_getKeyPath();
  v0[3] = v3;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v3 + 32);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100013188;

  return sub_10007AB54();
}

uint64_t sub_10002303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002310C, v7, v6);
}

uint64_t sub_10002310C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v5 = v0[5];
  swift_getKeyPath();
  v0[6] = v5;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 32);

  swift_getKeyPath();
  v0[7] = v6;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v6 + v7, v2, &unk_100262580, &qword_1001CFF70);

  v8 = type metadata accessor for CompositionModel.Session(0);
  LODWORD(v6) = (*(*(v8 - 8) + 48))(v2, 1, v8);
  sub_10000F500(v2, &unk_100262580, &qword_1001CFF70);
  if (v6 != 1)
  {
    Bindable.wrappedValue.getter();
    v9 = v0[8];
    swift_getKeyPath();
    v0[9] = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + 32);

    sub_10007CE14(0, 0, 0, 0);
  }

  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000233EC(uint64_t a1)
{
  v2 = type metadata accessor for WritingToolsView();
  v3 = v2[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (a1 + v2[25]);
    v7 = *v6;
    v8 = *(v6 + 1);
    LOBYTE(v6) = v6[16];
    v22[0] = v7;
    v23 = v8;
    v24 = v6;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    [v5 enableIntelligentEntryFieldView:LOBYTE(v21[0])];
    swift_unknownObjectRelease();
  }

  v9 = sub_10000FE5C();
  v10 = (a1 + v2[23]);
  v11 = *v10;
  v12 = *(v10 + 1);
  v22[0] = v11;
  v23 = v12;
  LOBYTE(v21[0]) = v9 & 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v13 = (a1 + v2[25]);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v13) = v13[16];
  v22[0] = v14;
  v23 = v15;
  v24 = v13;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  result = FocusState.wrappedValue.getter();
  if (LOBYTE(v21[0]) == 1)
  {
    v17 = v2[19];
    sub_10000341C(&unk_10025B200, &qword_1001CFB18);
    State.wrappedValue.getter();
    if (v25)
    {
      sub_100028458(v22, v21);
      sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
      v18 = sub_100027874(v21, v21[3]);
      if (qword_10025A618 != -1)
      {
        v20 = v18;
        swift_once();
        v18 = v20;
      }

      v19 = *v18;
      sub_100009C54(qword_100276E28);
      return sub_10000F4B4(v21);
    }

    else
    {
      return sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  return result;
}

uint64_t sub_100023600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100020B6C, v6, v5);
}

BOOL sub_100023698(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v8 + 8))(v11, v7);
    v12 = v26;
  }

  if (v12)
  {
    swift_getKeyPath();
    v26 = v12;
    sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v12 + 57) == 1)
    {
      swift_getKeyPath();
      v26 = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v12 + 32);
      v16 = *(v12 + 40);

      if ((v16 & 1) == 0 && v15 == 1)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 currentTraitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (!v19)
  {
    return 1;
  }

  v20 = [v17 currentTraitCollection];
  v21 = [v20 userInterfaceIdiom];

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 == 6;
  }

  return v22 && a1 == 5;
}

uint64_t sub_100023944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100013034, v6, v5);
}

uint64_t sub_1000239DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100023A74, v6, v5);
}

uint64_t sub_100023A74()
{
  v1 = v0[4];
  v2 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v3 = v0[2];
  swift_getKeyPath();
  v0[3] = v3;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v3 + 24);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100013188;

  return sub_1000B6880(0);
}

uint64_t sub_100023BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 160) = v13;
  *(v8 + 168) = v14;
  *(v8 + 324) = a8;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 176) = type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return _swift_task_switch(sub_100023C78, v10, v9);
}

uint64_t sub_100023C78()
{
  v1 = *(v0 + 128);
  *(v0 + 320) = *(type metadata accessor for WritingToolsView() + 80);
  *(v0 + 208) = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v2 = *(v0 + 16);
  swift_getKeyPath();
  *(v0 + 24) = v2;
  *(v0 + 216) = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);

  if (*(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) == 1)
  {
    *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) = 1;
  }

  else
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    *(v0 + 32) = v3;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 324);
  Bindable.wrappedValue.getter();
  v9 = *(v0 + 40);
  swift_getKeyPath();
  *(v0 + 48) = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 32);

  sub_10002879C(v7, v6, v5, v8);
  sub_1000752D8(v7, v6, v5, v8);

  Bindable.wrappedValue.getter();
  v11 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 64) = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 224) = *(v11 + 32);

  v12 = swift_task_alloc();
  *(v0 + 232) = v12;
  *v12 = v0;
  v12[1] = sub_100023FE0;

  return sub_10007AB54();
}

uint64_t sub_100023FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return _swift_task_switch(sub_100024124, v5, v4);
}

uint64_t sub_100024124()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : *(v0 + 160) & 0xFFFFFFFFFFFFLL)
    {
      v3 = *(v0 + 208);
      v4 = *(v0 + 216);
      v5 = *(v0 + 176);
      v6 = *(v0 + 128) + *(v0 + 320);
      Bindable.wrappedValue.getter();
      v7 = *(v0 + 112);
      swift_getKeyPath();
      *(v0 + 120) = v7;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 240) = *(v7 + 32);

      *(v0 + 248) = static MainActor.shared.getter();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v9;
      *(v0 + 256) = v8;
      *(v0 + 264) = v9;
      v11 = sub_100024448;
LABEL_17:

      return _swift_task_switch(v11, v8, v10);
    }
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 128) + *(v0 + 320);
  Bindable.wrappedValue.getter();
  v15 = *(v0 + 72);
  swift_getKeyPath();
  *(v0 + 80) = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 32);

  swift_getKeyPath();
  *(v0 + 88) = v16;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v16 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24) == 255)
  {
    v19 = *(v0 + 184);

    goto LABEL_12;
  }

  if (*(v16 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
  {

    goto LABEL_16;
  }

  v17 = *(v16 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);

  if (v17 != 5)
  {
LABEL_16:
    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v0 + 176);
    v25 = *(v0 + 128) + *(v0 + 320);
    Bindable.wrappedValue.getter();
    v26 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 104) = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 280) = *(v26 + 32);

    *(v0 + 288) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v27;
    *(v0 + 296) = v8;
    *(v0 + 304) = v27;
    v11 = sub_100024688;
    goto LABEL_17;
  }

  v18 = *(v0 + 184);
LABEL_12:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100024448()
{
  v1 = v0[21];
  sub_10006CF60("Composition");
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000244FC;
  v3 = v0[30];
  v4 = v0[20];

  return sub_10007DE34(v4, v1);
}

uint64_t sub_1000244FC()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return _swift_task_switch(sub_10002461C, v4, v3);
}

uint64_t sub_10002461C()
{
  v2 = v0[30];
  v1 = v0[31];

  v3 = v0[24];
  v4 = v0[25];

  return _swift_task_switch(sub_10002B2C8, v3, v4);
}

uint64_t sub_100024688()
{
  sub_10006CF60("Composition");
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_100024734;
  v2 = *(v0 + 280);

  return sub_10007DE34(0, 0xE000000000000000);
}

uint64_t sub_100024734()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_100024854, v4, v3);
}

uint64_t sub_100024854()
{
  v2 = v0[35];
  v1 = v0[36];

  v3 = v0[24];
  v4 = v0[25];

  return _swift_task_switch(sub_1000248C0, v3, v4);
}

uint64_t sub_1000248C0()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100024948@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 10);
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = static Edge.Set.vertical.getter();
  result = static SafeAreaRegions.all.getter();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1000249A4(uint64_t a1, unint64_t **a2)
{
  type metadata accessor for NavigationPath.CollectionProxy();
  sub_10002B028(&qword_10025B5E0, &type metadata accessor for NavigationPath.CollectionProxy);
  v3 = dispatch thunk of Collection.count.getter();
  v4 = &_swiftEmptyArrayStorage;
  if (!v3)
  {
LABEL_8:
    v15 = *a2;
    *a2 = v4;
  }

  v5 = v3;
  v23 = &_swiftEmptyArrayStorage;
  sub_100163C80(0, v3 & ~(v3 >> 63), 0);
  v4 = &_swiftEmptyArrayStorage;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    do
    {
      v7 = dispatch thunk of Collection.subscript.read();
      sub_100028458(v8, v19);
      v7(v18, 0);
      sub_100008198(v19, v18);
      sub_10000341C(&qword_10025B5E8, &qword_1001CFFA0);
      swift_dynamicCast();
      v9 = v20;
      v10 = v21;
      v11 = v22;
      v23 = v4;
      v13 = v4[2];
      v12 = v4[3];
      if (v13 >= v12 >> 1)
      {
        v16 = v20;
        sub_100163C80((v12 > 1), v13 + 1, 1);
        v9 = v16;
        v4 = v23;
      }

      v4[2] = v13 + 1;
      v14 = &v4[4 * v13];
      *(v14 + 2) = v9;
      v14[6] = v10;
      *(v14 + 56) = v11;
      dispatch thunk of Collection.formIndex(after:)();
      --v5;
    }

    while (v5);
    a2 = v17;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100024B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions);
  return result;
}

uint64_t sub_100024CC0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t type metadata accessor for WritingToolsView()
{
  result = qword_10025B458;
  if (!qword_10025B458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_100024EA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A7578(v4);
}

uint64_t sub_100024ED4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000A7578(v4);
}

uint64_t sub_100024F00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10002510C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000251D8(v11, 0, 0, 1, a1, a2);
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
    sub_10002B0D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000F4B4(v11);
  return v7;
}

unint64_t sub_1000251D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000252E4(a5, a6);
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

char *sub_1000252E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100025330(a1, a2);
  sub_100025460(&off_100249E28);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100025330(uint64_t a1, unint64_t a2)
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

  v6 = sub_100095E10(v5, 0);
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
        v7 = sub_100095E10(v10, 0);
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

uint64_t sub_100025460(uint64_t result)
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

  result = sub_10002554C(result, v12, 1, v3);
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

char *sub_10002554C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025BA00, &qword_1001D4100);
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

unint64_t sub_100025648()
{
  result = qword_10025B270;
  if (!qword_10025B270)
  {
    sub_100003E34(&qword_10025B268, &qword_1001CFC18);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B270);
  }

  return result;
}

unint64_t sub_100025700()
{
  result = qword_10025B278;
  if (!qword_10025B278)
  {
    sub_100003E34(&qword_10025B280, &qword_1001CFC20);
    sub_10002578C();
    sub_100026044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B278);
  }

  return result;
}

unint64_t sub_10002578C()
{
  result = qword_10025B288;
  if (!qword_10025B288)
  {
    sub_100003E34(&qword_10025B290, &qword_1001CFC28);
    sub_100025818();
    sub_100025E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B288);
  }

  return result;
}

unint64_t sub_100025818()
{
  result = qword_10025B298;
  if (!qword_10025B298)
  {
    sub_100003E34(&qword_10025B2A0, &qword_1001CFC30);
    sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
    sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
    sub_100025928();
    sub_100025A68();
    sub_100025ABC();
    swift_getOpaqueTypeConformance2();
    sub_100025D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B298);
  }

  return result;
}

unint64_t sub_100025928()
{
  result = qword_10025B2B8;
  if (!qword_10025B2B8)
  {
    sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
    type metadata accessor for ProofreadingView();
    sub_10002B028(&qword_10025B2C0, type metadata accessor for ProofreadingView);
    swift_getOpaqueTypeConformance2();
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2B8);
  }

  return result;
}

unint64_t sub_100025A14()
{
  result = qword_10025B2C8;
  if (!qword_10025B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2C8);
  }

  return result;
}

unint64_t sub_100025A68()
{
  result = qword_10025B2D0;
  if (!qword_10025B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2D0);
  }

  return result;
}

unint64_t sub_100025ABC()
{
  result = qword_10025B2D8;
  if (!qword_10025B2D8)
  {
    sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
    sub_10002971C(&qword_10025B2E0, &qword_10025B2E8, &qword_1001CFC48, sub_100025BA0);
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2D8);
  }

  return result;
}

unint64_t sub_100025BA0()
{
  result = qword_10025B2F0;
  if (!qword_10025B2F0)
  {
    sub_100003E34(&qword_10025B2F8, &qword_1001CFC50);
    sub_100003E34(&unk_10025B300, &qword_1001CFC58);
    type metadata accessor for CompositionModel(255);
    type metadata accessor for CompositionView(255);
    type metadata accessor for WritingToolsModel();
    sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    swift_getOpaqueTypeConformance2();
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2F0);
  }

  return result;
}

unint64_t sub_100025D5C()
{
  result = qword_10025B320;
  if (!qword_10025B320)
  {
    sub_100003E34(&qword_10025B328, &qword_1001CFC68);
    type metadata accessor for ModelResponseView(255);
    sub_10002B028(&qword_10025B330, type metadata accessor for ModelResponseView);
    swift_getOpaqueTypeConformance2();
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B320);
  }

  return result;
}

unint64_t sub_100025E48()
{
  result = qword_10025B338;
  if (!qword_10025B338)
  {
    sub_100003E34(&qword_10025B340, &qword_1001CFC70);
    sub_100003E34(&qword_10025B348, &qword_1001CFC78);
    sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
    sub_100025F58();
    sub_100025A68();
    sub_100025ABC();
    swift_getOpaqueTypeConformance2();
    sub_100025D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B338);
  }

  return result;
}

unint64_t sub_100025F58()
{
  result = qword_10025B350;
  if (!qword_10025B350)
  {
    sub_100003E34(&qword_10025B348, &qword_1001CFC78);
    type metadata accessor for RewritingView();
    sub_10002B028(&qword_10025B358, type metadata accessor for RewritingView);
    swift_getOpaqueTypeConformance2();
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B350);
  }

  return result;
}

unint64_t sub_100026044()
{
  result = qword_10025B360;
  if (!qword_10025B360)
  {
    sub_100003E34(&qword_10025B368, &qword_1001CFC80);
    sub_100026208();
    sub_100003E34(&unk_10025B300, &qword_1001CFC58);
    type metadata accessor for CompositionModel(255);
    type metadata accessor for CompositionView(255);
    type metadata accessor for WritingToolsModel();
    sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    swift_getOpaqueTypeConformance2();
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B360);
  }

  return result;
}

unint64_t sub_100026208()
{
  result = qword_10025B370;
  if (!qword_10025B370)
  {
    sub_100003E34(&qword_10025B378, &qword_1001CFC88);
    sub_10002B028(&qword_10025B380, type metadata accessor for QuestionnaireView);
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B370);
  }

  return result;
}

double sub_1000262C8@<D0>(_OWORD *a1@<X8>)
{
  sub_1000284C4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10002631C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WritingToolsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026384(__int128 *a1)
{
  v2 = *(*(type metadata accessor for WritingToolsView() - 8) + 80);

  return sub_100020F80(a1);
}

unint64_t sub_100026404()
{
  result = qword_10025B3A0;
  if (!qword_10025B3A0)
  {
    sub_100003E34(&qword_10025B230, &qword_1001CFBE0);
    sub_1000264BC();
    sub_100007120(&qword_10025B3C8, &qword_10025B3D0, &unk_1001CFCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3A0);
  }

  return result;
}

unint64_t sub_1000264BC()
{
  result = qword_10025B3A8;
  if (!qword_10025B3A8)
  {
    sub_100003E34(&qword_10025B228, &qword_1001CFBD8);
    sub_100026548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3A8);
  }

  return result;
}

unint64_t sub_100026548()
{
  result = qword_10025B3B0;
  if (!qword_10025B3B0)
  {
    sub_100003E34(&qword_10025B220, &qword_1001CFBD0);
    sub_100007120(&qword_10025B3B8, &qword_10025B3C0, &qword_1001CFCC8);
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3B0);
  }

  return result;
}

uint64_t sub_10002662C()
{
  v1 = type metadata accessor for WritingToolsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);
  v8 = *(v0 + v3 + 24);
  j__swift_release();
  v9 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[7];
  swift_unknownObjectWeakDestroy();

  v13 = *(v5 + v1[9] + 8);

  v14 = *(v5 + v1[15] + 8);

  v15 = *(v5 + v1[16] + 8);

  v16 = v5 + v1[17];
  v17 = type metadata accessor for NavigationPath();
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = *(v16 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v19 = v5 + v1[18];
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  v22 = v5 + v1[19];
  if (*(v22 + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v23 = *(v22 + 40);

  v24 = v1[20];
  v25 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v25 - 8) + 8))(v5 + v24, v25);
  v26 = (v5 + v1[21]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v5 + v1[22] + 16);

  v30 = *(v5 + v1[23] + 8);

  v31 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = type metadata accessor for UserInterfaceSizeClass();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v5 + v31, 1, v32))
    {
      (*(v33 + 8))(v5 + v31, v32);
    }
  }

  else
  {
    v34 = *(v5 + v31);
  }

  v35 = *(v5 + v1[25] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000269BC()
{
  result = qword_10025B3D8;
  if (!qword_10025B3D8)
  {
    sub_100003E34(&qword_10025B240, &qword_1001CFBF0);
    sub_100003E34(&qword_10025B230, &qword_1001CFBE0);
    sub_100026404();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3D8);
  }

  return result;
}

uint64_t sub_100026AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for WritingToolsView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100026B60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WritingToolsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100026C3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[17];
      goto LABEL_3;
    }

    v14 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[20];
      goto LABEL_3;
    }

    v15 = sub_10000341C(&qword_10025B3F8, &qword_1001CFD68);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[24];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100026E38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v13 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_3;
  }

  v14 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[20];
    goto LABEL_3;
  }

  v15 = sub_10000341C(&qword_10025B3F8, &qword_1001CFD68);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[24];

  return v16(v17, a2, a2, v15);
}

void sub_100027020()
{
  sub_100027440(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10002755C(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100027440(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000081B0(319, &qword_10025B488, BSAuditToken_ptr);
        if (v3 <= 0x3F)
        {
          sub_10002750C(319, &qword_10025B490, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000274A4();
            if (v5 <= 0x3F)
            {
              type metadata accessor for UIWritingToolsResultOptions(319);
              if (v6 <= 0x3F)
              {
                sub_100027440(319, &qword_100264EB0, &type metadata accessor for NavigationPath, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10002750C(319, &qword_10025B4B0, &type metadata for String, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10002755C(319, &qword_10025B4B8, &unk_10025B1C0, &unk_1001CFA90, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_100027440(319, &qword_10025B4C0, type metadata accessor for WritingToolsModel, &type metadata accessor for Bindable);
                      if (v10 <= 0x3F)
                      {
                        sub_100027440(319, &qword_10025B4C8, type metadata accessor for ProofreadingModel, &type metadata accessor for State);
                        if (v11 <= 0x3F)
                        {
                          sub_10002755C(319, &unk_10025B4D0, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for State);
                          if (v12 <= 0x3F)
                          {
                            sub_10002750C(319, &qword_10025DE40, &type metadata for Bool, &type metadata accessor for State);
                            if (v13 <= 0x3F)
                            {
                              sub_10002755C(319, &unk_10025B4E0, &qword_10025AD60, &qword_1001CEA18, &type metadata accessor for Environment);
                              if (v14 <= 0x3F)
                              {
                                sub_1000275C0();
                                if (v15 <= 0x3F)
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

void sub_100027440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000274A4()
{
  if (!qword_10025B498)
  {
    sub_1000081B0(255, &qword_10025B4A0, WTSmartReplyConfiguration_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10025B498);
    }
  }
}

void sub_10002750C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10002755C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000275C0()
{
  if (!qword_10025B4F0)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10025B4F0);
    }
  }
}

uint64_t sub_100027618()
{
  sub_100003E34(&qword_10025B258, &qword_1001CFC08);
  sub_100003E34(&qword_10025B250, &qword_1001CFC00);
  type metadata accessor for NavigationPath();
  sub_100003E34(&qword_10025B248, &qword_1001CFBF8);
  sub_100003E34(&qword_10025B240, &qword_1001CFBF0);
  sub_1000269BC();
  sub_10002B028(&qword_10025B3E0, &type metadata accessor for NavigationPath);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000277A4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_1000277B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100027800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *sub_100027874(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000278C0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000F428(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1000278D4(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100022E54(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000279C4()
{
  v1 = type metadata accessor for WritingToolsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);
  v9 = *(v0 + v3 + 24);
  j__swift_release();
  v10 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[7];
  swift_unknownObjectWeakDestroy();

  v14 = *(v6 + v1[9] + 8);

  v15 = *(v6 + v1[15] + 8);

  v16 = *(v6 + v1[16] + 8);

  v17 = v6 + v1[17];
  v18 = type metadata accessor for NavigationPath();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = *(v17 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v20 = v6 + v1[18];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = v6 + v1[19];
  if (*(v23 + 24))
  {
    sub_10000F4B4((v6 + v1[19]));
  }

  v24 = *(v23 + 40);

  v25 = v1[20];
  v26 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v26 - 8) + 8))(v6 + v25, v26);
  v27 = (v6 + v1[21]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v6 + v1[22] + 16);

  v31 = *(v6 + v1[23] + 8);

  v32 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = type metadata accessor for UserInterfaceSizeClass();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v6 + v32, 1, v33))
    {
      (*(v34 + 8))(v6 + v32, v33);
    }
  }

  else
  {
    v35 = *(v6 + v32);
  }

  v36 = *(v6 + v1[25] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027D44(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_10002303C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100027E34(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100022E54(a1, v6, v7, v1 + v5);
}

uint64_t sub_100027F2C()
{
  v1 = type metadata accessor for WritingToolsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);
  v9 = *(v0 + v3 + 24);
  j__swift_release();
  v10 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[7];
  swift_unknownObjectWeakDestroy();

  v14 = *(v6 + v1[9] + 8);

  v15 = *(v6 + v1[15] + 8);

  v16 = *(v6 + v1[16] + 8);

  v17 = v6 + v1[17];
  v18 = type metadata accessor for NavigationPath();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = *(v17 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v20 = v6 + v1[18];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = v6 + v1[19];
  if (*(v23 + 24))
  {
    sub_10000F4B4((v6 + v1[19]));
  }

  v24 = *(v23 + 40);

  v25 = v1[20];
  v26 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v26 - 8) + 8))(v6 + v25, v26);
  v27 = (v6 + v1[21]);
  v28 = *v27;

  v29 = v27[1];

  v30 = *(v6 + v1[22] + 16);

  v31 = *(v6 + v1[23] + 8);

  v32 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = type metadata accessor for UserInterfaceSizeClass();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v6 + v32, 1, v33))
    {
      (*(v34 + 8))(v6 + v32, v33);
    }
  }

  else
  {
    v35 = *(v6 + v32);
  }

  v36 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v6 + v1[25] + 8);

  v38 = *(v0 + v36 + 16);

  return _swift_deallocObject(v0, v36 + 24, v2 | 7);
}

uint64_t sub_1000282C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WritingToolsView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + v7);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002B2A0;

  return sub_10002203C(a1, v9, v10, v1 + v6, v8, v12, v13);
}

uint64_t sub_100028458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000284C4()
{
  result = qword_10025B5F0;
  if (!qword_10025B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B5F0);
  }

  return result;
}

uint64_t sub_100028518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WritingToolsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100017680(a1, v6, a2);
}

uint64_t sub_1000285AC()
{
  v2 = *(type metadata accessor for WritingToolsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100028688;

  return sub_100011DE0(v4, v5, v0 + v3);
}

uint64_t sub_100028688()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002879C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000F3F4(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1000287B0()
{
  v1 = type metadata accessor for WritingToolsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);
  v9 = *(v0 + v3 + 24);
  j__swift_release();
  v10 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = v1[7];
  swift_unknownObjectWeakDestroy();

  v14 = *(v6 + v1[9] + 8);

  v15 = *(v6 + v1[15] + 8);

  v16 = *(v6 + v1[16] + 8);

  v17 = v6 + v1[17];
  v18 = type metadata accessor for NavigationPath();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = *(v17 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v20 = v6 + v1[18];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = v6 + v1[19];
  if (*(v23 + 24))
  {
    sub_10000F4B4((v6 + v1[19]));
  }

  v24 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 40);

  v26 = v1[20];
  v27 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  v28 = (v6 + v1[21]);
  v29 = *v28;

  v30 = v28[1];

  v31 = *(v6 + v1[22] + 16);

  v32 = *(v6 + v1[23] + 8);

  v33 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = type metadata accessor for UserInterfaceSizeClass();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v6 + v33, 1, v34))
    {
      (*(v35 + 8))(v6 + v33, v34);
    }
  }

  else
  {
    v36 = *(v6 + v33);
  }

  v37 = *(v6 + v1[25] + 8);

  v38 = *(v0 + v24 + 24);
  if (v38 != 255)
  {
    sub_10000F428(*(v0 + v24), *(v0 + v24 + 8), *(v0 + v24 + 16), v38);
  }

  v39 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v0 + v39 + 8);

  return _swift_deallocObject(v0, v39 + 16, v2 | 7);
}

uint64_t sub_100028B6C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 24);
  v18 = *(v1 + 16);
  v8 = v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = (v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v8 + 24);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002B2A0;

  return sub_100023BC8(a1, v18, v7, v1 + v5, v9, v10, v11, v15);
}

uint64_t sub_100028CD4()
{
  v2 = *(type metadata accessor for WritingToolsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_100012F9C(v4, v5, v0 + v3);
}

uint64_t sub_100028E34(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000239DC(a1, v6, v7, v1 + v5);
}

uint64_t sub_100028F98()
{
  v2 = *(type metadata accessor for WritingToolsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_1000142DC(v4, v5, v0 + v3);
}

uint64_t sub_100029074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000290E4()
{
  result = qword_10025B6C0;
  if (!qword_10025B6C0)
  {
    sub_100003E34(&qword_10025B6B8, &qword_1001D01A0);
    sub_10002919C();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6C0);
  }

  return result;
}

unint64_t sub_10002919C()
{
  result = qword_10025B6C8;
  if (!qword_10025B6C8)
  {
    sub_100003E34(&qword_10025B6D0, &qword_1001D01A8);
    sub_100029228();
    sub_100029424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6C8);
  }

  return result;
}

unint64_t sub_100029228()
{
  result = qword_10025B6D8;
  if (!qword_10025B6D8)
  {
    sub_100003E34(&qword_10025B6E0, &qword_1001D01B0);
    sub_1000292E4();
    sub_10002B028(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6D8);
  }

  return result;
}

unint64_t sub_1000292E4()
{
  result = qword_10025B6E8;
  if (!qword_10025B6E8)
  {
    sub_100003E34(&qword_10025B6F0, &qword_1001D01B8);
    sub_100003E34(&qword_10025B6F8, &qword_1001D01C0);
    sub_100003E34(&qword_10025B700, &qword_1001D01C8);
    sub_100007120(&qword_10025B708, &qword_10025B700, &qword_1001D01C8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6E8);
  }

  return result;
}

unint64_t sub_100029424()
{
  result = qword_10025B718;
  if (!qword_10025B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B718);
  }

  return result;
}

unint64_t sub_100029478()
{
  result = qword_10025B728;
  if (!qword_10025B728)
  {
    sub_100003E34(&qword_10025B6A8, &qword_1001D0190);
    sub_100003E34(&qword_10025B698, &qword_1001D0180);
    sub_100003E34(&qword_10025B690, &qword_1001D0178);
    sub_100007120(&qword_10025B720, &qword_10025B690, &qword_1001D0178);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B728);
  }

  return result;
}

uint64_t sub_1000295B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WritingToolsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001D638(a1, v6, a2);
}

unint64_t sub_100029638()
{
  result = qword_10025B738;
  if (!qword_10025B738)
  {
    sub_100003E34(&qword_10025B730, &qword_1001D01D0);
    sub_10002971C(&qword_10025B740, &qword_10025B748, &qword_1001D01D8, sub_100029798);
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B738);
  }

  return result;
}

uint64_t sub_10002971C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100029798()
{
  result = qword_10025B750;
  if (!qword_10025B750)
  {
    sub_100003E34(&qword_10025B758, &qword_1001D01E0);
    sub_100029824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B750);
  }

  return result;
}

unint64_t sub_100029824()
{
  result = qword_10025B760;
  if (!qword_10025B760)
  {
    sub_100003E34(&qword_10025B768, &qword_1001D01E8);
    sub_1000298B0();
    sub_100029CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B760);
  }

  return result;
}

unint64_t sub_1000298B0()
{
  result = qword_10025B770;
  if (!qword_10025B770)
  {
    sub_100003E34(&qword_10025B778, &qword_1001D01F0);
    sub_10002993C();
    sub_1000299C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B770);
  }

  return result;
}

unint64_t sub_10002993C()
{
  result = qword_10025B780;
  if (!qword_10025B780)
  {
    sub_100003E34(&qword_10025B788, &qword_1001D01F8);
    sub_100025928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B780);
  }

  return result;
}

unint64_t sub_1000299C8()
{
  result = qword_10025B790;
  if (!qword_10025B790)
  {
    sub_100003E34(&qword_10025B798, &qword_1001D0200);
    sub_100029A54();
    sub_100029B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B790);
  }

  return result;
}

unint64_t sub_100029A54()
{
  result = qword_10025B7A0;
  if (!qword_10025B7A0)
  {
    sub_100003E34(&qword_10025B7A8, &qword_1001D0208);
    sub_100029AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7A0);
  }

  return result;
}

unint64_t sub_100029AE0()
{
  result = qword_10025B7B0;
  if (!qword_10025B7B0)
  {
    sub_100003E34(&qword_10025B7B8, &qword_1001D0210);
    sub_10002B028(&qword_10025B358, type metadata accessor for RewritingView);
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7B0);
  }

  return result;
}

unint64_t sub_100029B9C()
{
  result = qword_10025B7C0;
  if (!qword_10025B7C0)
  {
    sub_100003E34(&qword_10025B7C8, &qword_1001D0218);
    sub_100029C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7C0);
  }

  return result;
}

unint64_t sub_100029C28()
{
  result = qword_10025B7D0;
  if (!qword_10025B7D0)
  {
    sub_100003E34(&qword_10025B7D8, &qword_1001D0220);
    sub_10002B028(&qword_10025B330, type metadata accessor for ModelResponseView);
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7D0);
  }

  return result;
}

unint64_t sub_100029CE4()
{
  result = qword_10025B7E0;
  if (!qword_10025B7E0)
  {
    sub_100003E34(&qword_10025B7E8, &qword_1001D0228);
    sub_100003E34(&unk_10025B300, &qword_1001CFC58);
    type metadata accessor for CompositionModel(255);
    type metadata accessor for CompositionView(255);
    type metadata accessor for WritingToolsModel();
    sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    swift_getOpaqueTypeConformance2();
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    swift_getOpaqueTypeConformance2();
    sub_100029EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7E0);
  }

  return result;
}

unint64_t sub_100029EA0()
{
  result = qword_10025B7F0;
  if (!qword_10025B7F0)
  {
    sub_100003E34(&qword_10025B7F8, &qword_1001D0230);
    sub_100026208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7F0);
  }

  return result;
}

uint64_t sub_100029F84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WritingToolsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_100012B9C(a1, a2);
}

uint64_t sub_100029FF8()
{
  v1 = type metadata accessor for WritingToolsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);
  v8 = *(v0 + v3 + 24);
  j__swift_release();
  v9 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[7];
  swift_unknownObjectWeakDestroy();

  v13 = *(v5 + v1[9] + 8);

  v14 = *(v5 + v1[15] + 8);

  v15 = *(v5 + v1[16] + 8);

  v16 = v5 + v1[17];
  v17 = type metadata accessor for NavigationPath();
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = *(v16 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v19 = v5 + v1[18];
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  v22 = v5 + v1[19];
  if (*(v22 + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v23 = *(v22 + 40);

  v24 = v1[20];
  v25 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v25 - 8) + 8))(v5 + v24, v25);
  v26 = (v5 + v1[21]);
  v27 = *v26;

  v28 = v26[1];

  v29 = *(v5 + v1[22] + 16);

  v30 = *(v5 + v1[23] + 8);

  v31 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = type metadata accessor for UserInterfaceSizeClass();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v5 + v31, 1, v32))
    {
      (*(v33 + 8))(v5 + v31, v32);
    }
  }

  else
  {
    v34 = *(v5 + v31);
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v5 + v1[25] + 8);

  sub_10000F428(*(v0 + v35), *(v0 + v35 + 8), *(v0 + v35 + 16), *(v0 + v35 + 24));

  return _swift_deallocObject(v0, v35 + 25, v2 | 7);
}

void sub_10002A394(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WritingToolsView() - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10001160C(a1, a2, *v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
}

uint64_t sub_10002A440()
{
  v2 = *(type metadata accessor for WritingToolsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_100020AD4(v4, v5, v0 + v3);
}

const char *sub_10002A520(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WritingToolsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_10001BC7C(5, a1, a2, 0);
}

uint64_t sub_10002A5A4()
{
  v2 = *(type metadata accessor for WritingToolsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_10001C9F8(v4, v5, v0 + v3);
}

unint64_t sub_10002A6B0()
{
  result = qword_10025B8B0;
  if (!qword_10025B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B8B0);
  }

  return result;
}

unint64_t sub_10002A758()
{
  result = qword_10025B8D0;
  if (!qword_10025B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B8D0);
  }

  return result;
}

uint64_t sub_10002A894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002A8FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100007D98(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002A940(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002A984(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002A984(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002A99C()
{
  result = qword_10025B920;
  if (!qword_10025B920)
  {
    sub_100003E34(&qword_10025B918, &qword_1001D0378);
    sub_100007120(&qword_10025B928, &unk_10025B930, &qword_1001D0380);
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B920);
  }

  return result;
}

unint64_t sub_10002AA54()
{
  result = qword_10025E040;
  if (!qword_10025E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E040);
  }

  return result;
}

unint64_t sub_10002AAE8()
{
  result = qword_10025B958;
  if (!qword_10025B958)
  {
    sub_100003E34(&qword_10025B950, &qword_1001D03C8);
    sub_10002AB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B958);
  }

  return result;
}

unint64_t sub_10002AB74()
{
  result = qword_10025B960;
  if (!qword_10025B960)
  {
    sub_100003E34(&qword_10025B968, &unk_1001D03D0);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B960);
  }

  return result;
}

unint64_t sub_10002AC34()
{
  result = qword_10025DAB0;
  if (!qword_10025DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DAB0);
  }

  return result;
}

unint64_t sub_10002AC88()
{
  result = qword_10025B990;
  if (!qword_10025B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B990);
  }

  return result;
}

uint64_t sub_10002AD94(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100023944(a1, v6, v7, v1 + v5);
}

uint64_t sub_10002AE94(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100023600(a1, v6, v7, v1 + v5);
}

unint64_t sub_10002AF84()
{
  result = qword_10025B9D0;
  if (!qword_10025B9D0)
  {
    sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B9D0);
  }

  return result;
}

uint64_t sub_10002B028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002B070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002B0D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10002B134()
{
  result = qword_10025BA08;
  if (!qword_10025BA08)
  {
    sub_100003E34(&qword_10025BA10, &qword_1001D0570);
    sub_100007120(&qword_10025BA18, &unk_10025BA20, &qword_1001D0578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BA08);
  }

  return result;
}

uint64_t *sub_10002B2EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10002B39C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276F38);
  sub_10000F34C(v0, qword_100276F38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B41C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276F50);
  sub_10000F34C(v0, qword_100276F50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B49C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276F68);
  sub_10000F34C(v0, qword_100276F68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B56C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276FB0);
  sub_10000F34C(v0, qword_100276FB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B65C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10002B2EC(v3, a2);
  sub_10000F34C(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B6D4(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v4 = sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v28 = &v27 - v7;
  v9 = sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a3, v9);
  v19 = v8;
  v20 = v4;
  (*(v5 + 16))(v19, v29, v4);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = (v11 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v30;
  *(v23 + 4) = v30;
  (*(v10 + 32))(&v23[v21], v13, v9);
  (*(v5 + 32))(&v23[v22], v28, v20);
  v25 = v24;
  sub_10015C9C8(0, 0, v17, &unk_1001D05B0, v23);
}

uint64_t sub_10002B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  v7 = sub_10000341C(&qword_10025BA40, &qword_1001D05B8);
  v6[43] = v7;
  v8 = *(v7 - 8);
  v6[44] = v8;
  v9 = *(v8 + 64) + 15;
  v6[45] = swift_task_alloc();
  v10 = sub_10000341C(&qword_10025BA48, &unk_1001D05C0);
  v6[46] = v10;
  v11 = *(v10 - 8);
  v6[47] = v11;
  v12 = *(v11 + 64) + 15;
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_10002BAE0, 0, 0);
}

uint64_t sub_10002BAE0()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v0[49] = [objc_allocWithZone(NSMutableAttributedString) init];
  v4 = [v3 range];
  v0[34] = v4;
  v0[35] = v5;
  v0[50] = v4;
  v6 = sub_1000057A8(_swiftEmptyArrayStorage);
  sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  AsyncThrowingStream.makeAsyncIterator()();
  v7 = TCTextCompositionAssistantOptionKeyUserFeedbackInputString;
  v0[51] = TCTextCompositionAssistantOptionKeyContentWarning;
  v0[52] = v7;
  v0[57] = 0;
  v0[58] = 0xE000000000000000;
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  v0[53] = 0;
  v0[54] = v6;
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_10002BC28;
  v10 = v0[48];
  v11 = v0[46];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 20, 0, 0, v11, v0 + 36);
}

uint64_t sub_10002BC28()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;

  if (v0)
  {
    v4 = v2[58];
    v5 = v2[56];
    v6 = v2[54];

    v7 = sub_10002C480;
  }

  else
  {
    v7 = sub_10002BD60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002BD60()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 464);
    v6 = *(v0 + 448);
    v7 = *(v0 + 432);
    v8 = *(v0 + 408);

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v110 = v4;
    if (*(v4 + 16))
    {
      v12 = v9;
      v13 = v1;

      v14 = sub_10000511C(v12, v11);
      v16 = v15;

      if (v16)
      {
        sub_10002B0D0(*(v4 + 56) + 32 * v14, v0 + 192);
        if (swift_dynamicCast())
        {
          v17 = *(v0 + 312);
          if (v17 == 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = 2 * (v17 == 2);
          }

          v107 = v18;
LABEL_15:
          v47 = *(v0 + 416);
          v109 = sub_10009D1E0(v4);
          v100 = v48;
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v1;
          if (*(v4 + 16))
          {
            v51 = sub_10000511C(v49, v50);
            v53 = v52;

            if (v53)
            {
              sub_10002B0D0(*(v4 + 56) + 32 * v51, v0 + 224);
              if (swift_dynamicCast())
              {
                v54 = *(v0 + 264);
                v99 = *(v0 + 256);
                goto LABEL_21;
              }
            }
          }

          else
          {
          }

          v99 = 0;
          v54 = 0xE000000000000000;
LABEL_21:
          v98 = v54;
          range = *(v0 + 424);
          v106 = *(v0 + 400);
          v55 = *(v0 + 272);
          v56 = *(v0 + 320);
          sub_10000341C(&qword_10025BA50, &qword_1001D0860);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1001D0580;
          v112.location = v3;
          v101 = v2;
          v112.length = v2;
          v58 = NSStringFromRange(v112);
          v59 = v3;
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          *(v57 + 56) = &type metadata for String;
          v63 = sub_10002D7B0();
          *(v57 + 64) = v63;
          *(v57 + 32) = v60;
          *(v57 + 40) = v62;
          v113.location = [v56 range];
          v64 = NSStringFromRange(v113);
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;

          *(v57 + 96) = &type metadata for String;
          *(v57 + 104) = v63;
          *(v57 + 72) = v65;
          *(v57 + 80) = v67;
          v114.location = v55;
          v114.length = range;
          v68 = NSStringFromRange(v114);
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          *(v57 + 136) = &type metadata for String;
          *(v57 + 144) = v63;
          *(v57 + 112) = v69;
          *(v57 + 120) = v71;
          *(v57 + 176) = &type metadata for Int;
          *(v57 + 184) = &protocol witness table for Int;
          *(v57 + 152) = v107;
          sub_10002D804();
          v72 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v73 = v106 + range;
          if ((v106 + range) < v59)
          {
            v74 = v59 - v73;
            if (__OFSUB__(v59, v73))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v75 = *(v0 + 424);
            v76 = *(v0 + 392);
            v77 = [*(v0 + 320) attributedText];
            v78 = [v77 attributedSubstringFromRange:{v73, v59 - v73}];

            [v76 appendAttributedString:v78];
            v28 = __OFADD__(v75, v74);
            v79 = v75 + v74;
            if (!v28)
            {
LABEL_27:
              v23 = [*(v0 + 392) appendAttributedString:v103];
              v80 = v79 + v101;
              if (!__OFADD__(v79, v101))
              {
                v82 = *(v0 + 392);
                v81 = *(v0 + 400);
                v84 = *(v0 + 352);
                v83 = *(v0 + 360);
                rangea = *(v0 + 344);
                v102 = *(v0 + 336);
                *(v0 + 88) = v82;
                *(v0 + 96) = v81;
                *(v0 + 104) = v80;
                *(v0 + 112) = v107;
                *(v0 + 120) = v109;
                *(v0 + 128) = v100;
                *(v0 + 136) = v99;
                *(v0 + 144) = v98;
                *(v0 + 152) = v110;
                v108 = v80;

                v85 = v82;

                sub_10000341C(&qword_10025BA30, &qword_1001D0590);
                AsyncThrowingStream.Continuation.yield(_:)();

                (*(v84 + 8))(v83, rangea);
                *(v0 + 456) = v109;
                *(v0 + 464) = v100;
                *(v0 + 440) = v99;
                *(v0 + 448) = v98;
                *(v0 + 424) = v108;
                *(v0 + 432) = v110;
                v86 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
                v87 = swift_task_alloc();
                *(v0 + 472) = v87;
                *v87 = v0;
                v87[1] = sub_10002BC28;
                v88 = *(v0 + 384);
                v26 = *(v0 + 368);
                v27 = v0 + 288;
                v23 = (v0 + 160);
                v24 = 0;
                v25 = 0;

                return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, v24, v25, v26, v27);
              }

              __break(1u);
              goto LABEL_36;
            }

            __break(1u);
          }

          v79 = *(v0 + 424);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v46 = v1;
    }

    v107 = 0;
    goto LABEL_15;
  }

  v19 = *(v0 + 424);
  v20 = *(v0 + 320);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  [v20 range];
  if (v19 >= v21)
  {
    v89 = *(v0 + 464);
    v90 = *(v0 + 448);
    v91 = *(v0 + 432);
  }

  else
  {
    v22 = *(v0 + 424);
    v23 = [*(v0 + 320) range];
    v28 = __OFSUB__(v24, v22);
    v29 = v24 - v22;
    if (v28)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v30 = *(v0 + 424);
    v31 = *(v0 + 392);
    v32 = *(v0 + 400);
    v33 = [*(v0 + 320) attributedText];
    v34 = [v33 attributedSubstringFromRange:{v32 + v30, v29}];

    [v31 appendAttributedString:v34];
    v35 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_38:
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, v24, v25, v26, v27);
    }

    v36 = *(v0 + 456);
    v37 = *(v0 + 440);
    v38 = *(v0 + 432);
    v40 = *(v0 + 392);
    v39 = *(v0 + 400);
    v42 = *(v0 + 352);
    v41 = *(v0 + 360);
    v43 = *(v0 + 336);
    v44 = *(v0 + 344);
    *(v0 + 16) = v40;
    *(v0 + 24) = v39;
    *(v0 + 32) = v35;
    *(v0 + 40) = 0;
    *(v0 + 48) = v36;
    *(v0 + 64) = v37;
    *(v0 + 80) = v38;
    v45 = v40;
    sub_10000341C(&qword_10025BA30, &qword_1001D0590);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v42 + 8))(v41, v44);
  }

  v92 = *(v0 + 392);
  v93 = *(v0 + 336);
  *(v0 + 304) = 0;
  sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v94 = *(v0 + 384);
  v95 = *(v0 + 360);

  v96 = *(v0 + 8);

  return v96();
}

uint64_t sub_10002C480()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 336);

  (*(v3 + 8))(v1, v2);
  *(v0 + 296) = *(v0 + 288);
  sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v5 = *(v0 + 384);
  v6 = *(v0 + 360);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002C544()
{
  v1 = sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10002C6B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000341C(&qword_10025BA38, &qword_1001D0598) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000341C(&qword_10025BA30, &qword_1001D0590) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002B2A0;

  return sub_10002B9A8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10002C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v35 = a1;
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v8 = sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v33 = &v31 - v11;
  v13 = sub_10000341C(&qword_10025F420, &qword_1001D4390);
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v31 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_100028458(a2, v40);
  (*(v14 + 16))(v17, v34, v13);
  v23 = v12;
  v24 = v8;
  (*(v9 + 16))(v23, v35, v8);
  v25 = (*(v14 + 80) + 104) & ~*(v14 + 80);
  v26 = (v15 + *(v9 + 80) + v25) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  sub_100008198(v40, (v27 + 32));
  v28 = v37;
  *(v27 + 9) = v36;
  *(v27 + 10) = v28;
  v29 = v39;
  *(v27 + 11) = v38;
  *(v27 + 12) = v29;
  (*(v14 + 32))(&v27[v25], v17, v32);
  (*(v9 + 32))(&v27[v26], v33, v24);

  sub_10015C9C8(0, 0, v21, &unk_1001D0628, v27);
}

uint64_t sub_10002CB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = v22;
  v8[28] = v23;
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = sub_10000341C(&qword_10025BA68, &qword_1001D0630);
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v11 = *(v10 + 64) + 15;
  v8[31] = swift_task_alloc();
  v12 = *(*(sub_10000341C(&qword_10025BA70, &qword_1001D0638) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v13 = type metadata accessor for Field.FieldType();
  v8[33] = v13;
  v14 = *(v13 - 8);
  v8[34] = v14;
  v15 = *(v14 + 64) + 15;
  v8[35] = swift_task_alloc();
  v16 = type metadata accessor for Field();
  v8[36] = v16;
  v17 = *(v16 - 8);
  v8[37] = v17;
  v18 = *(v17 + 64) + 15;
  v8[38] = swift_task_alloc();
  v19 = *(*(sub_10000341C(&qword_10025BA78, &qword_1001D0640) - 8) + 64) + 15;
  v8[39] = swift_task_alloc();

  return _swift_task_switch(sub_10002CD40, 0, 0);
}

uint64_t sub_10002CD40()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v3 = v1[3];
  v4 = sub_100027874(v1, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  sub_10002DB6C((v0 + 16));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 344) = enum case for Field.FieldType.string(_:);
  *(v0 + 320) = 0xE000000000000000;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_10002DBD0(v0 + 16, v8);
  v10 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v11 = swift_task_alloc();
  *(v0 + 328) = v11;
  *v11 = v0;
  v11[1] = sub_10002CF4C;
  v12 = *(v0 + 312);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v12, 0, 0, v0 + 152, v8, v9);
}

uint64_t sub_10002CF4C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);

    v5 = sub_10002D6E0;
  }

  else
  {
    v5 = sub_10002D068;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002D068()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v14 = *(v0 + 344);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    (*(v3 + 32))(*(v0 + 304), v1, v2);
    Field.data.getter();
    if ((*(v16 + 88))(v15, v17) == v14)
    {
      v18 = *(v0 + 280);
      v19 = *(v0 + 184);
      (*(*(v0 + 272) + 96))(v18, *(v0 + 264));
      String.append(_:)(*v18);

      if (*(v19 + 16) == 1)
      {
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
        goto LABEL_35;
      }

      v30 = *(v0 + 192);
      v32 = *(v0 + 120);
      v31 = *(v0 + 128);
      if (String.count.getter() > v30)
      {
        if ((v31 & 0x2000000000000000) != 0)
        {
          v33 = HIBYTE(v31) & 0xF;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFFFFFFLL;
        }

        v34 = String.index(_:offsetBy:limitedBy:)();
        if (v35)
        {
          v34 = 15;
        }

        if (4 * v33 < v34 >> 14)
        {
          __break(1u);
          return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v34, v35, v36, v37, v38, v39);
        }

        v40 = *(v0 + 200);
        v41 = String.subscript.getter();
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = *(v0 + 208);
        if (v45 == v40)
        {
          v49 = (v48 & 0x2000000000000000) != 0 ? HIBYTE(v48) & 0xF : *(v0 + 200) & 0xFFFFFFFFFFFFLL;
          if (v47 == v48 && !(v41 >> 16) && v43 >> 16 == v49)
          {

LABEL_30:
            v51 = *(v0 + 336);
            v52 = *(v0 + 256);
            v53 = *(v0 + 216);
            sub_10000341C(&qword_10025F420, &qword_1001D4390);
            Regex.firstMatch(in:)();
            if (v51)
            {
              v54 = *(v0 + 320);
              (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

              v55 = *(v0 + 224);
              sub_10000F4B4((v0 + 16));
              v56 = *(v0 + 128);

              *(v0 + 160) = v51;
              sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
              AsyncThrowingStream.Continuation.finish(throwing:)();
              goto LABEL_3;
            }

            v62 = *(v0 + 256);
            v63 = sub_10000341C(&qword_10025BA80, qword_1001D0648);
            v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
            v66 = *(v0 + 296);
            v65 = *(v0 + 304);
            v67 = *(v0 + 288);
            if (v64 != 1)
            {
              v71 = *(v0 + 184);
              (*(v66 + 8))(*(v0 + 304), *(v0 + 288));
              sub_10002DC20(v62);
              *(v71 + 16) = 1;
LABEL_35:
              v58 = *(v0 + 40);
              v59 = *(v0 + 48);
              sub_10002DBD0(v0 + 16, v58);
              v60 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
              v61 = swift_task_alloc();
              *(v0 + 328) = v61;
              *v61 = v0;
              v61[1] = sub_10002CF4C;
              v34 = *(v0 + 312);
              v37 = v0 + 152;
              v35 = 0;
              v36 = 0;
              v38 = v58;
              v39 = v59;

              return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v34, v35, v36, v37, v38, v39);
            }

            v69 = *(v0 + 240);
            v68 = *(v0 + 248);
            v72 = *(v0 + 224);
            v73 = *(v0 + 232);
            v70._countAndFlagsBits = v32;
            v70._object = v31;
            String.append(_:)(v70);
            v57 = *(v0 + 112);
            *(v0 + 136) = *(v0 + 104);
            *(v0 + 144) = v57;

            sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
            AsyncThrowingStream.Continuation.yield(_:)();
            (*(v69 + 8))(v68, v73);
            (*(v66 + 8))(v65, v67);
            sub_10002DC20(v62);

            *(v0 + 120) = 0;
            *(v0 + 128) = 0xE000000000000000;
LABEL_34:
            *(v0 + 320) = v57;
            goto LABEL_35;
          }
        }

        v50 = _stringCompareInternal(_:_:_:_:expecting:)();

        if (v50)
        {
          goto LABEL_30;
        }
      }

      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    }

    else
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000F34C(v20, qword_100276F08);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Streaming: Unsupported field type.", v23, 2u);
      }

      v25 = *(v0 + 296);
      v24 = *(v0 + 304);
      v27 = *(v0 + 280);
      v26 = *(v0 + 288);
      v28 = *(v0 + 264);
      v29 = *(v0 + 272);

      (*(v25 + 8))(v24, v26);
      (*(v29 + 8))(v27, v28);
    }

    v57 = *(v0 + 320);
    goto LABEL_34;
  }

  v4 = *(v0 + 320);
  v5 = *(v0 + 224);

  sub_10000F4B4((v0 + 16));
  *(v0 + 168) = 0;
  sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v6 = *(v0 + 128);

LABEL_3:
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 280);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10002D6E0()
{
  v1 = v0[19];
  v2 = v0[28];
  sub_10000F4B4(v0 + 2);
  v3 = v0[16];

  v0[20] = v1;
  sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];

  v9 = v0[1];

  return v9();
}

unint64_t sub_10002D7B0()
{
  result = qword_10025F4D0;
  if (!qword_10025F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F4D0);
  }

  return result;
}

unint64_t sub_10002D804()
{
  result = qword_10025BA58;
  if (!qword_10025BA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025BA58);
  }

  return result;
}

uint64_t sub_10002D850()
{
  v1 = sub_10000341C(&qword_10025F420, &qword_1001D4390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = v0[2];
  swift_unknownObjectRelease();
  sub_10000F4B4(v0 + 4);
  v13 = v0[9];

  v14 = v0[12];

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10002D9D0(uint64_t a1)
{
  v3 = *(sub_10000341C(&qword_10025F420, &qword_1001D4390) - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(sub_10000341C(&qword_10025BA60, &unk_1001D05D0) - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v12 = v1[12];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100028688;

  return sub_10002CB38(a1, v7, v8, (v1 + 4), v9, v10, v11, v12);
}

uint64_t *sub_10002DB6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002DBD0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10002DC20(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025BA70, &qword_1001D0638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10002DC88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002DCB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002DCFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002DD74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v25 = sub_10000341C(&qword_10025BA88, &qword_1001D07F0);
  v3 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v5 = (&v21 - v4);
  v6 = *v1;
  v31 = *(v1 + 8);
  v7 = *(v1 + 16);
  v23 = *(v1 + 24);
  v29 = v23;
  v30 = v6;
  v28 = *(v1 + 32);
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  *(v8 + 1) = *v1;
  *(v8 + 2) = v9;
  *(v8 + 3) = *(v1 + 32);
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  *(v10 + 1) = *v1;
  *(v10 + 2) = v11;
  *(v10 + 3) = *(v1 + 32);
  *v5 = sub_100034F9C;
  v5[1] = v8;
  v5[2] = sub_100034FB8;
  v5[3] = v10;
  v12 = (v5 + *(sub_10000341C(&qword_10025BA90, &qword_1001D07F8) + 40));
  *v12 = 0x4010000000000000;
  v22 = *(sub_10000341C(&qword_10025BA98, &qword_1001D0800) + 44);
  sub_1000081F8(&v30, v27, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v29, v27, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v28, v27, &unk_1002640F0, &qword_1001D3490);
  sub_1000081F8(&v30, v27, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v29, v27, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v28, v27, &unk_1002640F0, &qword_1001D3490);
  sub_10002E1EC(v1, v12 + v22);
  v13 = swift_allocObject();
  v14 = v2[1];
  v13[1] = *v2;
  v13[2] = v14;
  v13[3] = v2[2];
  v15 = (v5 + *(v25 + 36));
  v16 = *(type metadata accessor for _TaskModifier() + 20);
  sub_1000081F8(&v30, v27, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v29, v27, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v28, v27, &unk_1002640F0, &qword_1001D3490);
  static TaskPriority.userInitiated.getter();
  *v15 = &unk_1001D0828;
  v15[1] = v13;
  v27[0] = v7;
  v27[1] = v23;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v17 = v26;
  swift_getKeyPath();
  v27[0] = v17;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v15) = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  LOBYTE(v26) = v15;
  v18 = swift_allocObject();
  v19 = v2[1];
  v18[1] = *v2;
  v18[2] = v19;
  v18[3] = v2[2];
  sub_1000081F8(&v30, v27, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v29, v27, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v28, v27, &unk_1002640F0, &qword_1001D3490);
  sub_1000350B0();
  sub_100035198();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v5, &qword_10025BA88, &qword_1001D07F0);
}

uint64_t sub_10002E1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_10000341C(&qword_10025BAD0, &qword_1001D0910);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_10000341C(&qword_10025BAD8, &qword_1001D0918);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10000341C(&qword_10025BAE0, &qword_1001D0920);
  sub_10002E800(a1, &v15[*(v16 + 44)]);
  v93[0] = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v17 = v79;
  swift_getKeyPath();
  *&v93[0] = v17;
  sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + 112);

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = &v15[*(v10 + 44)];
  *v21 = KeyPath;
  v21[1] = sub_10002AAC0;
  v21[2] = v20;
  v22 = static HorizontalAlignment.center.getter();
  v62 = 1;
  sub_100032B84(a1, v93);
  v73 = v93[2];
  v74 = v93[3];
  v75 = v93[4];
  v76 = v93[5];
  v71 = v93[0];
  v72 = v93[1];
  v78 = v93[5];
  v77[2] = v93[2];
  v77[3] = v93[3];
  v77[4] = v93[4];
  v77[0] = v93[0];
  v77[1] = v93[1];
  sub_1000081F8(&v71, &v79, &qword_10025BAE8, &qword_1001D0980);
  sub_10000F500(v77, &qword_10025BAE8, &qword_1001D0980);
  BYTE7(v93[5]) = v76;
  *(&v93[4] + 7) = v75;
  *(&v93[3] + 7) = v74;
  *(&v93[2] + 7) = v73;
  *(&v93[1] + 7) = v72;
  *(v93 + 7) = v71;
  v67 = v93[2];
  v68 = v93[3];
  v69 = v93[4];
  v65 = v93[0];
  v63[0] = v22;
  v63[1] = 0;
  v64 = v62;
  v70 = *&v93[5];
  v66 = v93[1];
  v23 = static Color.blue.getter();
  sub_1000E3EDC(v23, &v50);

  sub_10000F500(v63, &qword_10025BAF0, &qword_1001D0988);
  LOBYTE(v22) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v93[0]) = 0;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v32 = sub_10000341C(&qword_10025BAF8, &qword_1001D0990);
  sub_10002F81C(a1, &v8[*(v32 + 44)]);
  v33 = v49;
  sub_1000081F8(v15, v49, &qword_10025BAD8, &qword_1001D0918);
  v34 = v47;
  sub_1000081F8(v8, v47, &qword_10025BAD0, &qword_1001D0910);
  v35 = v33;
  v36 = v48;
  sub_1000081F8(v35, v48, &qword_10025BAD8, &qword_1001D0918);
  v37 = sub_10000341C(&qword_10025BB00, &qword_1001D0998);
  v38 = (v36 + *(v37 + 48));
  v87 = v58;
  v88 = v59;
  v89 = v60;
  v90 = v61;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  v86 = v57;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v82 = v53;
  LOBYTE(v91) = v22;
  *(&v91 + 1) = v25;
  *&v92[0] = v27;
  *(&v92[0] + 1) = v29;
  *&v92[1] = v31;
  BYTE8(v92[1]) = 0;
  v39 = v59;
  v38[8] = v58;
  v38[9] = v39;
  v40 = v90;
  v38[10] = v89;
  v38[11] = v40;
  v41 = v84;
  v38[4] = v83;
  v38[5] = v41;
  v42 = v86;
  v38[6] = v85;
  v38[7] = v42;
  v43 = v80;
  *v38 = v79;
  v38[1] = v43;
  v44 = v82;
  v38[2] = v81;
  v38[3] = v44;
  v45 = v92[0];
  v38[12] = v91;
  v38[13] = v45;
  *(v38 + 217) = *(v92 + 9);
  sub_1000081F8(v34, v36 + *(v37 + 64), &qword_10025BAD0, &qword_1001D0910);
  sub_1000081F8(&v79, v93, &qword_10025BB08, &qword_1001D09A0);
  sub_10000F500(v8, &qword_10025BAD0, &qword_1001D0910);
  sub_10000F500(v15, &qword_10025BAD8, &qword_1001D0918);
  sub_10000F500(v34, &qword_10025BAD0, &qword_1001D0910);
  v93[8] = v58;
  v93[9] = v59;
  v93[10] = v60;
  v93[11] = v61;
  v93[4] = v54;
  v93[5] = v55;
  v93[6] = v56;
  v93[7] = v57;
  v93[0] = v50;
  v93[1] = v51;
  v93[2] = v52;
  v93[3] = v53;
  v94 = v22;
  v95 = v25;
  v96 = v27;
  v97 = v29;
  v98 = v31;
  v99 = 0;
  sub_10000F500(v93, &qword_10025BB08, &qword_1001D09A0);
  return sub_10000F500(v49, &qword_10025BAD8, &qword_1001D0918);
}

uint64_t sub_10002E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v86 = type metadata accessor for FeedbackView();
  v3 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10000341C(&qword_10025BB50, &qword_1001E0EB0);
  v97 = *(v99 - 8);
  v6 = *(v97 + 64);
  __chkstk_darwin(v99);
  v85 = &v80 - v7;
  v8 = sub_10000341C(&qword_10025BB58, &unk_1001D09D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v94 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v80 - v12;
  v91 = type metadata accessor for ButtonToggleStyle();
  v92 = *(v91 - 8);
  v13 = *(v92 + 8);
  __chkstk_darwin(v91);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10000341C(&qword_10025BB60, &unk_1001E0E60);
  v90 = *(v89 - 8);
  v16 = *(v90 + 64);
  __chkstk_darwin(v89);
  v18 = &v80 - v17;
  v19 = sub_10000341C(&qword_10025BB68, &qword_1001D09E0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19);
  v93 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v80 - v24;
  v109 = *(a1 + 16);
  v107 = *(a1 + 16);
  v96 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.projectedValue.getter();
  v27 = *(&v100 + 1);
  v26 = v100;
  v28 = v101;
  swift_getKeyPath();
  v107 = __PAIR128__(v27, v26);
  v108 = v28;
  sub_10000341C(&qword_10025BB70, &unk_1001D0A10);
  Binding.subscript.getter();

  v88 = v104;
  *(&v87 + 1) = v105;
  LODWORD(v87) = v106;

  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v29 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v30 = type metadata accessor for IconOnlyLabelStyle();
  v31 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v32 = sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  *&v100 = v29;
  *(&v100 + 1) = v30;
  v101 = v31;
  v102 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v97;
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BB80, &qword_10025BB60, &unk_1001E0E60);
  sub_1000354A0(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle);
  v34 = v89;
  v35 = v91;
  View.toggleStyle<A>(_:)();
  v36 = v99;
  (*(v92 + 1))(v15, v35);
  v37 = v18;
  v38 = v98;
  (*(v90 + 8))(v37, v34);
  v39 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v41 = *(v20 + 44);
  v92 = v25;
  v42 = &v25[v41];
  *v42 = KeyPath;
  v42[1] = v39;
  v43 = type metadata accessor for FeedbackFeatureFlags();
  v102 = v43;
  v103 = sub_1000354A0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v44 = sub_10002DB6C(&v100);
  (*(*(v43 - 8) + 104))(v44, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v43);
  LOBYTE(v43) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v100);
  v45 = 1;
  if (v43)
  {
    v100 = v109;
    State.wrappedValue.getter();
    v46 = v107;
    swift_getKeyPath();
    *&v100 = v46;
    sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = *(v46 + 80);
    v48 = *(v46 + 88);
    v49 = *(v46 + 96);
    v91 = *(v46 + 72);
    v90 = v47;
    v89 = v48;
    LODWORD(v88) = v49;
    sub_10002879C(v91, v47, v48, v49);

    v100 = v109;
    State.wrappedValue.getter();
    v50 = v107;
    swift_getKeyPath();
    *&v100 = v50;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v51 = *(v50 + 40);
    *&v87 = *(v50 + 32);
    *(&v87 + 1) = v51;

    v100 = v109;
    State.wrappedValue.getter();
    v52 = v107;
    swift_getKeyPath();
    *&v100 = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v52 + 56);
    *&v84 = *(v52 + 48);
    *(&v84 + 1) = v53;

    v100 = v109;
    State.wrappedValue.getter();
    v54 = v107;
    swift_getKeyPath();
    *&v100 = v54;
    sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(v54 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);
    v83 = *(v54 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);

    v100 = v109;
    State.wrappedValue.getter();
    v82 = sub_1001A2480();
    v81 = v56;

    v100 = v109;
    State.wrappedValue.getter();
    v57 = v107;
    swift_getKeyPath();
    *&v100 = v57;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);
    v59 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);

    v100 = v109;
    State.wrappedValue.getter();
    v60 = v107;
    swift_getKeyPath();
    *&v100 = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = *(v60 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);

    if (v61)
    {
      v100 = v109;
      State.wrappedValue.getter();
      v62 = v107;
      swift_getKeyPath();
      *&v100 = v62;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v63 = *(v62 + 112);
    }

    else
    {
      v63 = 1;
    }

    v100 = v109;
    State.wrappedValue.getter();
    v64 = v107;
    swift_getKeyPath();
    *&v100 = v64;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v66 = *(v64 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
    v65 = *(v64 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

    *(v5 + 25) = 0;
    v67 = *(v86 + 92);
    *&v5[v67] = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v68 = v90;
    *(v5 + 16) = v91;
    *(v5 + 17) = v68;
    *(v5 + 18) = v89;
    v5[152] = v88;
    v69 = v87;
    *(v5 + 24) = v84;
    *(v5 + 8) = v69;
    *(v5 + 5) = v83;
    *(v5 + 6) = v55;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    v70 = v81;
    *(v5 + 9) = v82;
    *(v5 + 10) = v70;
    *(v5 + 11) = v58;
    *(v5 + 12) = v59;
    *v5 = 0;
    v5[153] = v63;
    *(v5 + 77) = 0;
    v5[156] = 0;
    *&v107 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v71 = v100;
    *(v5 + 13) = _swiftEmptyArrayStorage;
    *(v5 + 14) = _swiftEmptyArrayStorage;
    *(v5 + 15) = _swiftEmptyArrayStorage;
    v72 = *(&v100 + 1);
    *(v5 + 26) = v71;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 24) = 0;
    *(v5 + 27) = v72;
    *(v5 + 28) = v66;
    *(v5 + 29) = v65;
    LOBYTE(v100) = 0;
    sub_1000354A0(&qword_10025BBA0, type metadata accessor for FeedbackView);
    sub_1000354E8();
    v73 = v85;
    View.buttonStyle<A>(_:)();
    sub_10003553C(v5);
    v33 = v97;
    v38 = v98;
    v36 = v99;
    (*(v97 + 32))(v98, v73, v99);
    v45 = 0;
  }

  (*(v33 + 56))(v38, v45, 1, v36);
  v74 = v92;
  v75 = v93;
  sub_1000081F8(v92, v93, &qword_10025BB68, &qword_1001D09E0);
  v76 = v94;
  sub_1000081F8(v38, v94, &qword_10025BB58, &unk_1001D09D0);
  v77 = v95;
  sub_1000081F8(v75, v95, &qword_10025BB68, &qword_1001D09E0);
  v78 = sub_10000341C(&qword_10025BB90, &qword_1001D0A58);
  sub_1000081F8(v76, v77 + *(v78 + 48), &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v38, &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v74, &qword_10025BB68, &qword_1001D09E0);
  sub_10000F500(v76, &qword_10025BB58, &unk_1001D09D0);
  return sub_10000F500(v75, &qword_10025BB68, &qword_1001D09E0);
}

uint64_t sub_10002F594()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10002F7EC@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(17);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10002F81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10000341C(&qword_10025BB10, &qword_1001D09A8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v37 = &v35 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = *a1;
  v45 = *(a1 + 8);
  v16 = a1[2];
  v43 = a1[3];
  v44 = v15;
  v17 = v43;
  v36 = v43;
  v42 = *(a1 + 2);
  v18 = swift_allocObject();
  v19 = *(a1 + 1);
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = *(a1 + 2);
  sub_1000081F8(&v44, &v40, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v43, &v40, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v42, &v40, &unk_1002640F0, &qword_1001D3490);
  sub_10000341C(&qword_10025BB18, &qword_1001D09B0);
  sub_100035280();
  Button.init(action:label:)();
  v40 = v16;
  v41 = v17;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v20 = sub_1001A13B8();

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  v23 = &v14[*(v4 + 44)];
  *v23 = KeyPath;
  v23[1] = sub_100035DEC;
  v23[2] = v22;
  v24 = swift_allocObject();
  v25 = *(a1 + 1);
  v24[1] = *a1;
  v24[2] = v25;
  v24[3] = *(a1 + 2);
  sub_1000081F8(&v44, &v40, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v43, &v40, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v42, &v40, &unk_1002640F0, &qword_1001D3490);
  Button.init(action:label:)();
  v40 = v16;
  v41 = v36;
  State.wrappedValue.getter();
  v26 = sub_1001A13B8();

  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26 & 1;
  v29 = &v12[*(v4 + 44)];
  *v29 = v27;
  v29[1] = sub_100035DEC;
  v29[2] = v28;
  v30 = v37;
  sub_1000081F8(v14, v37, &qword_10025BB10, &qword_1001D09A8);
  v31 = v38;
  sub_1000081F8(v12, v38, &qword_10025BB10, &qword_1001D09A8);
  v32 = v39;
  sub_1000081F8(v30, v39, &qword_10025BB10, &qword_1001D09A8);
  v33 = sub_10000341C(&qword_10025BB30, &qword_1001D09B8);
  sub_1000081F8(v31, v32 + *(v33 + 48), &qword_10025BB10, &qword_1001D09A8);
  sub_10000F500(v12, &qword_10025BB10, &qword_1001D09A8);
  sub_10000F500(v14, &qword_10025BB10, &qword_1001D09A8);
  sub_10000F500(v31, &qword_10025BB10, &qword_1001D09A8);
  return sub_10000F500(v30, &qword_10025BB10, &qword_1001D09A8);
}

uint64_t sub_10002FCB4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10002FCF4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10002FD38(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_10002FDD0, v3, v2);
}

uint64_t sub_10002FDD0()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session))
  {
    v3 = *(v0 + 112);

LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v4 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  if (v5 == 1)
  {
    v6 = *(v0 + 112);
    goto LABEL_5;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_100030018;

  return sub_1001A2C88();
}

uint64_t sub_100030018()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_10003015C, v5, v4);
}

uint64_t sub_10003015C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000301BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_10002DD74(a1);
}

uint64_t sub_1000301F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_10000341C(&qword_10025BBB0, &qword_1001D0B60);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = (&v28 - v6);
  v8 = sub_10000341C(&qword_10025BBB8, &qword_1001D0B68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  *v7 = 0x4010000000000000;
  v12 = sub_10000341C(&qword_10025BBC0, &qword_1001D0B70);
  sub_100030624(v1, v7 + *(v12 + 44));
  v13 = *v1;
  v35 = *(v1 + 8);
  v14 = *(v1 + 16);
  v33 = *(v1 + 24);
  v15 = v33;
  v34 = v13;
  v32 = *(v1 + 32);
  v16 = swift_allocObject();
  v17 = *(v1 + 16);
  v16[1] = *v1;
  v16[2] = v17;
  v16[3] = *(v1 + 32);
  v18 = (v7 + *(v4 + 44));
  v19 = *(type metadata accessor for _TaskModifier() + 20);
  sub_1000081F8(&v34, v31, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v33, v31, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v32, v31, &unk_1002640F0, &qword_1001D3490);
  static TaskPriority.userInitiated.getter();
  *v18 = &unk_1001D0B80;
  v18[1] = v16;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v7, v11, &qword_10025BBB0, &qword_1001D0B60);
  v20 = &v11[*(v8 + 36)];
  v21 = v31[5];
  *(v20 + 4) = v31[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v31[6];
  v22 = v31[1];
  *v20 = v31[0];
  *(v20 + 1) = v22;
  v23 = v31[3];
  *(v20 + 2) = v31[2];
  *(v20 + 3) = v23;
  v30[0] = v14;
  v30[1] = v15;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v24 = v29;
  swift_getKeyPath();
  v30[0] = v24;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v18) = *(v24 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  LOBYTE(v29) = v18;
  v25 = swift_allocObject();
  v26 = v2[1];
  v25[1] = *v2;
  v25[2] = v26;
  v25[3] = v2[2];
  sub_1000081F8(&v34, v30, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v33, v30, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v32, v30, &unk_1002640F0, &qword_1001D3490);
  sub_10003566C();
  sub_100035198();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v11, &qword_10025BBB8, &qword_1001D0B68);
}

uint64_t sub_100030624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_10000341C(&qword_10025BC18, &qword_1001D0BA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = (&v68 - v5);
  v73 = sub_10000341C(&qword_10025BC20, &qword_1001D0BA8);
  v6 = *(*(v73 - 8) + 64);
  v7 = __chkstk_darwin(v73);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v68 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&qword_10025BC28, &qword_1001D0BB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v68 - v17;
  v19 = sub_10000341C(&qword_10025BC30, &qword_1001D0BB8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v75 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v79 = a1;
  v80 = &v68 - v23;
  v128 = *(a1 + 8);
  v127 = *a1;
  v24 = v127;
  LODWORD(a1) = v128;

  v25 = v24;
  v72 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v127, &qword_10025BAA0, &qword_1001D0808);
    (*(v11 + 8))(v14, v10);
    v25 = *&v94[0];
  }

  v68 = v14;
  v69 = v11;
  v70 = v10;
  if (v25)
  {
    swift_getKeyPath();
    *&v94[0] = v25;
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v27 = sub_10000341C(&qword_10025BC38, &qword_1001D0BC0);
  v28 = v79;
  sub_100030F74(v79, &v18[*(v27 + 44)]);
  v29 = static Color.blue.getter();
  v30 = v80;
  sub_1000E40B8(v29, v80);

  sub_10000F500(v18, &qword_10025BC28, &qword_1001D0BB0);
  *(v30 + *(v19 + 36)) = 0x3FF0000000000000;
  v31 = static HorizontalAlignment.center.getter();
  v104 = 1;
  sub_100032B84(v28, v94);
  v107 = v94[2];
  v108 = v94[3];
  v109 = v94[4];
  v110 = v94[5];
  v105 = v94[0];
  v106 = v94[1];
  v112 = v94[5];
  v111[2] = v94[2];
  v111[3] = v94[3];
  v111[4] = v94[4];
  v111[0] = v94[0];
  v111[1] = v94[1];
  sub_1000081F8(&v105, v81, &qword_10025BAE8, &qword_1001D0980);
  sub_10000F500(v111, &qword_10025BAE8, &qword_1001D0980);
  *(&v94[4] + 7) = v109;
  *(&v94[3] + 7) = v108;
  *(&v94[2] + 7) = v107;
  *(&v94[1] + 7) = v106;
  *(v94 + 7) = v105;
  v133 = v94[2];
  v134 = v94[3];
  v135 = v94[4];
  v131 = v94[0];
  BYTE7(v94[5]) = v110;
  v129[0] = v31;
  v129[1] = 0;
  v130 = v104;
  v136 = *&v94[5];
  v132 = v94[1];
  v32 = static Color.blue.getter();
  sub_1000E3EDC(v32, &v115);

  sub_10000F500(v129, &qword_10025BAF0, &qword_1001D0988);
  v71 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v94[0]) = 0;

  if ((v72 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v68;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v127, &qword_10025BAA0, &qword_1001D0808);
    (*(v69 + 8))(v42, v70);
    v24 = *&v94[0];
  }

  if (v24)
  {
    swift_getKeyPath();
    *&v94[0] = v24;
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  v43 = static VerticalAlignment.center.getter();
  v44 = v74;
  *v74 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = sub_10000341C(&qword_10025BC40, &qword_1001D0BC8);
  sub_1000331D0(v79, (v44 + *(v45 + 44)));
  v46 = static Color.blue.getter();
  v47 = v76;
  sub_1000E40DC(v46, v76);

  sub_10000F500(v44, &qword_10025BC18, &qword_1001D0BA0);
  *(v47 + *(v73 + 36)) = 0x3FF0000000000000;
  v48 = v80;
  v49 = v75;
  sub_1000081F8(v80, v75, &qword_10025BC30, &qword_1001D0BB8);
  v50 = v77;
  sub_1000081F8(v47, v77, &qword_10025BC20, &qword_1001D0BA8);
  v51 = v78;
  sub_1000081F8(v49, v78, &qword_10025BC30, &qword_1001D0BB8);
  v52 = sub_10000341C(&qword_10025BC48, &qword_1001D0BD0);
  v53 = v51 + *(v52 + 48);
  v86 = v123;
  v87 = v124;
  v88 = v125;
  v89 = v126;
  v82 = v119;
  v83 = v120;
  v84 = v121;
  v85 = v122;
  v81[0] = v115;
  v81[1] = v116;
  v81[2] = v117;
  v81[3] = v118;
  v54 = v71;
  LOBYTE(v90) = v71;
  *(&v90 + 1) = *v114;
  DWORD1(v90) = *&v114[3];
  *(&v90 + 1) = v34;
  *&v91 = v36;
  *(&v91 + 1) = v38;
  *&v92 = v40;
  BYTE8(v92) = 0;
  HIDWORD(v92) = *&v113[3];
  *(&v92 + 9) = *v113;
  v93 = 0x3FE0000000000000;
  v55 = v115;
  v56 = v116;
  v57 = v118;
  *(v53 + 32) = v117;
  *(v53 + 48) = v57;
  *v53 = v55;
  *(v53 + 16) = v56;
  v58 = v82;
  v59 = v83;
  v60 = v85;
  *(v53 + 96) = v84;
  *(v53 + 112) = v60;
  *(v53 + 64) = v58;
  *(v53 + 80) = v59;
  v61 = v86;
  v62 = v87;
  v63 = v89;
  *(v53 + 160) = v88;
  *(v53 + 176) = v63;
  *(v53 + 128) = v61;
  *(v53 + 144) = v62;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  *(v53 + 240) = 0x3FE0000000000000;
  *(v53 + 208) = v65;
  *(v53 + 224) = v66;
  *(v53 + 192) = v64;
  sub_1000081F8(v50, v51 + *(v52 + 64), &qword_10025BC20, &qword_1001D0BA8);
  sub_1000081F8(v81, v94, &qword_10025BC50, &qword_1001D0BD8);
  sub_10000F500(v47, &qword_10025BC20, &qword_1001D0BA8);
  sub_10000F500(v48, &qword_10025BC30, &qword_1001D0BB8);
  sub_10000F500(v50, &qword_10025BC20, &qword_1001D0BA8);
  v94[8] = v123;
  v94[9] = v124;
  v94[10] = v125;
  v94[11] = v126;
  v94[4] = v119;
  v94[5] = v120;
  v94[6] = v121;
  v94[7] = v122;
  v94[0] = v115;
  v94[1] = v116;
  v94[2] = v117;
  v94[3] = v118;
  v95 = v54;
  *v96 = *v114;
  *&v96[3] = *&v114[3];
  v97 = v34;
  v98 = v36;
  v99 = v38;
  v100 = v40;
  v101 = 0;
  *v102 = *v113;
  *&v102[3] = *&v113[3];
  v103 = 0x3FE0000000000000;
  sub_10000F500(v94, &qword_10025BC50, &qword_1001D0BD8);
  return sub_10000F500(v49, &qword_10025BC30, &qword_1001D0BB8);
}

uint64_t sub_100030F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10000341C(&qword_10025BCC0, &unk_1001D0C50);
  v7 = *(*(v68 - 8) + 64);
  v8 = __chkstk_darwin(v68);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = (&v62 - v10);
  v11 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v62 - v15;
  v66 = sub_10000341C(&qword_10025BCC8, &qword_1001E1150);
  v65 = *(v66 - 8);
  v16 = *(v65 + 64);
  __chkstk_darwin(v66);
  v18 = &v62 - v17;
  v19 = sub_10000341C(&qword_10025BCD0, &qword_1001D0C60);
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  __chkstk_darwin(v19);
  v64 = &v62 - v21;
  v22 = sub_10000341C(&qword_10025BCD8, &qword_1001D0C68);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v71 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v85 = *(a1 + 32);
  v79[0] = *(a1 + 32);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v75 = v27;
  if (v78)
  {
    v28 = 1;
  }

  else
  {
    v29 = *a1;
    v84 = *(a1 + 8);
    v30 = *(a1 + 16);
    v82 = *(a1 + 24);
    v83 = v29;
    v31 = swift_allocObject();
    v32 = *(a1 + 16);
    v31[1] = *a1;
    v31[2] = v32;
    v31[3] = *(a1 + 32);
    sub_1000081F8(&v83, v79, &qword_10025BAA0, &qword_1001D0808);

    sub_1000081F8(&v82, v79, &qword_10025BAA8, &unk_1001D0810);
    sub_1000081F8(&v85, v79, &unk_1002640F0, &qword_1001D3490);
    v63 = v11;
    sub_10000341C(&qword_10025BCE0, &qword_1001D0C70);
    v62 = a1;
    v33 = v19;
    v34 = v18;
    v27 = v75;
    sub_1000359D4(&qword_10025BCE8, &qword_10025BCE0, &qword_1001D0C70, sub_100035B10);
    v35 = v33;
    a1 = v62;
    Button.init(action:label:)();
    sub_100007120(&qword_10025BCF8, &qword_10025BCC8, &qword_1001E1150);
    sub_100035980();
    LODWORD(v79[0]) = 0;
    v36 = v64;
    v37 = v66;
    View.buttonStyle<A>(_:)();
    (*(v65 + 8))(v34, v37);
    type metadata accessor for PresentationModel();
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
    v11 = v63;
    v38 = Environment.init<A>(_:)();
    v19 = v35;
    v39 = v36 + *(v35 + 36);
    *v39 = v38;
    *(v39 + 8) = v40 & 1;
    sub_10002A894(v36, v27, &qword_10025BCD0, &qword_1001D0C60);
    v28 = 0;
  }

  (*(v70 + 56))(v27, v28, 1, v19);
  v41 = v76;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v42 = (v41 + *(v11 + 36));
  v43 = v79[1];
  *v42 = v79[0];
  v42[1] = v43;
  v42[2] = v79[2];
  v81 = *(a1 + 8);
  v44 = *a1;
  v80 = *a1;
  LOBYTE(v41) = v81;

  if ((v41 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v46 = v67;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v80, &qword_10025BAA0, &qword_1001D0808);
    (*(v4 + 8))(v46, v3);
    v44 = v78;
  }

  if (v44)
  {
    swift_getKeyPath();
    *&v78 = v44;
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  v47 = static VerticalAlignment.center.getter();
  v48 = v72;
  *v72 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = sub_10000341C(&qword_10025BD00, &qword_1001D0C78);
  sub_100031B64(a1, (v48 + *(v49 + 44)));
  v78 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v50 = v77;
  swift_getKeyPath();
  *&v78 = v50;
  sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v50 + 112);

  KeyPath = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v54 = (v48 + *(v68 + 36));
  *v54 = KeyPath;
  v54[1] = sub_100035DEC;
  v54[2] = v53;
  v55 = v71;
  sub_1000081F8(v27, v71, &qword_10025BCD8, &qword_1001D0C68);
  v56 = v76;
  v57 = v73;
  sub_1000081F8(v76, v73, &qword_10025D700, &unk_1001DE550);
  v58 = v69;
  sub_1000081F8(v48, v69, &qword_10025BCC0, &unk_1001D0C50);
  v59 = v74;
  sub_1000081F8(v55, v74, &qword_10025BCD8, &qword_1001D0C68);
  v60 = sub_10000341C(&qword_10025BD08, &unk_1001D0C80);
  sub_1000081F8(v57, v59 + *(v60 + 48), &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v58, v59 + *(v60 + 64), &qword_10025BCC0, &unk_1001D0C50);
  sub_10000F500(v48, &qword_10025BCC0, &unk_1001D0C50);
  sub_10000F500(v56, &qword_10025D700, &unk_1001DE550);
  sub_10000F500(v75, &qword_10025BCD8, &qword_1001D0C68);
  sub_10000F500(v58, &qword_10025BCC0, &unk_1001D0C50);
  sub_10000F500(v57, &qword_10025D700, &unk_1001DE550);
  return sub_10000F500(v55, &qword_10025BCD8, &qword_1001D0C68);
}

uint64_t sub_1000319B4(uint64_t a1)
{
  v4 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  sub_1001A7A44(0, 0, 0);

  v5 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100031A7C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for PresentationModel();
  sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
  result = Environment.init<A>(_:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = v10 & 1;
  return result;
}

uint64_t sub_100031B64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v81 = type metadata accessor for FeedbackView();
  v3 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10000341C(&qword_10025BD10, &unk_1001DE680);
  v90 = *(v92 - 8);
  v6 = *(v90 + 64);
  __chkstk_darwin(v92);
  v80 = &v74 - v7;
  v8 = sub_10000341C(&qword_10025BD18, &unk_1001D0C90);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v93 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v74 - v12;
  v84 = type metadata accessor for ButtonToggleStyle();
  v85 = *(v84 - 8);
  v13 = *(v85 + 64);
  __chkstk_darwin(v84);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10000341C(&qword_10025BD20, &unk_1001E1170);
  v83 = *(v82 - 8);
  v16 = *(v83 + 64);
  __chkstk_darwin(v82);
  v18 = &v74 - v17;
  v19 = sub_10000341C(&qword_10025BD28, &unk_1001D0CA0);
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = *(v88 + 64);
  v21 = __chkstk_darwin(v19);
  v87 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v74 - v23;
  v101 = *(a1 + 16);
  v100 = *(a1 + 16);
  v95 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.projectedValue.getter();
  v25 = v96;
  v26 = v97;
  swift_getKeyPath();
  v96 = v25;
  v97 = v26;
  sub_10000341C(&qword_10025BB70, &unk_1001D0A10);
  Binding.subscript.getter();

  sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  sub_100035B64();
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BD40, &qword_10025BD20, &unk_1001E1170);
  sub_1000354A0(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle);
  v86 = v24;
  v27 = v82;
  v28 = v84;
  View.toggleStyle<A>(_:)();
  (*(v85 + 8))(v15, v28);
  (*(v83 + 8))(v18, v27);
  v29 = type metadata accessor for FeedbackFeatureFlags();
  v98 = v29;
  v99 = sub_1000354A0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v30 = sub_10002DB6C(&v96);
  (*(*(v29 - 8) + 104))(v30, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v29);
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v96);
  if (v29)
  {
    v96 = v101;
    State.wrappedValue.getter();
    v31 = v100;
    swift_getKeyPath();
    *&v96 = v31;
    sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v31 + 80);
    v33 = *(v31 + 88);
    v34 = *(v31 + 96);
    v85 = *(v31 + 72);
    v84 = v32;
    v83 = v33;
    LODWORD(v82) = v34;
    sub_10002879C(v85, v32, v33, v34);

    v96 = v101;
    State.wrappedValue.getter();
    v35 = v100;
    swift_getKeyPath();
    *&v96 = v35;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v35 + 40);
    *&v79 = *(v35 + 32);
    *(&v79 + 1) = v36;

    v96 = v101;
    State.wrappedValue.getter();
    v37 = v100;
    swift_getKeyPath();
    *&v96 = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = *(v37 + 56);
    *&v78 = *(v37 + 48);
    *(&v78 + 1) = v38;

    v96 = v101;
    State.wrappedValue.getter();
    v39 = v100;
    swift_getKeyPath();
    *&v96 = v39;
    sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = *(v39 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);
    v76 = *(v39 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);
    v77 = v40;

    v96 = v101;
    State.wrappedValue.getter();
    v75 = sub_1001A2480();
    v74 = v41;

    v96 = v101;
    State.wrappedValue.getter();
    v42 = v100;
    swift_getKeyPath();
    *&v96 = v42;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);
    v44 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);

    v96 = v101;
    State.wrappedValue.getter();
    v45 = v100;
    swift_getKeyPath();
    *&v96 = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = *(v45 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);

    if (v46)
    {
      v96 = v101;
      State.wrappedValue.getter();
      v47 = v100;
      swift_getKeyPath();
      *&v96 = v47;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v48 = *(v47 + 112);
    }

    else
    {
      v48 = 1;
    }

    v96 = v101;
    State.wrappedValue.getter();
    v53 = v100;
    swift_getKeyPath();
    *&v96 = v53;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(v53 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
    v54 = *(v53 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

    *(v5 + 25) = 0;
    v56 = *(v81 + 92);
    *&v5[v56] = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v57 = v84;
    *(v5 + 16) = v85;
    *(v5 + 17) = v57;
    *(v5 + 18) = v83;
    v5[152] = v82;
    v58 = v79;
    *(v5 + 24) = v78;
    *(v5 + 8) = v58;
    v59 = v77;
    *(v5 + 5) = v76;
    *(v5 + 6) = v59;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    v60 = v74;
    *(v5 + 9) = v75;
    *(v5 + 10) = v60;
    *(v5 + 11) = v43;
    *(v5 + 12) = v44;
    *v5 = 0;
    v5[153] = v48;
    *(v5 + 77) = 0;
    v5[156] = 0;
    *&v100 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v61 = v96;
    *(v5 + 13) = _swiftEmptyArrayStorage;
    *(v5 + 14) = _swiftEmptyArrayStorage;
    *(v5 + 15) = _swiftEmptyArrayStorage;
    v62 = *(&v96 + 1);
    *(v5 + 26) = v61;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 24) = 0;
    *(v5 + 27) = v62;
    *(v5 + 28) = v55;
    *(v5 + 29) = v54;
    LODWORD(v96) = 0x1000000;
    sub_1000354A0(&qword_10025BBA0, type metadata accessor for FeedbackView);
    sub_100035980();
    v63 = v80;
    View.buttonStyle<A>(_:)();
    sub_10003553C(v5);
    v52 = v90;
    v51 = v91;
    v50 = v92;
    (*(v90 + 32))(v91, v63, v92);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v51 = v91;
    v50 = v92;
    v52 = v90;
  }

  (*(v52 + 56))(v51, v49, 1, v50);
  v65 = v88;
  v64 = v89;
  v66 = *(v88 + 16);
  v67 = v87;
  v68 = v86;
  v66(v87, v86, v89);
  v69 = v93;
  sub_1000081F8(v51, v93, &qword_10025BD18, &unk_1001D0C90);
  v70 = v94;
  v66(v94, v67, v64);
  v71 = sub_10000341C(&qword_10025BD48, &unk_1001D0CB0);
  sub_1000081F8(v69, &v70[*(v71 + 48)], &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v51, &qword_10025BD18, &unk_1001D0C90);
  v72 = *(v65 + 8);
  v72(v68, v64);
  sub_10000F500(v69, &qword_10025BD18, &unk_1001D0C90);
  return (v72)(v67, v64);
}

uint64_t sub_100032858@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconOnlyLabelStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  v21 = a1 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_100032B04@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_100032B84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10002AC34();
  v11 = Text.init<A>(_:)();
  v36 = v12;
  v37 = v11;
  v35 = v13;
  v38 = v14;
  type metadata accessor for PresentationModel();
  sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
  v15 = Environment.init<A>(_:)();
  v34 = v16;
  v39 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v17 = sub_1001A1610();

  if (!v17)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    v40 = *(a1 + 16);
    State.wrappedValue.getter();
    v31 = sub_10019F9C4();

    v25 = v15;
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v40 = v32;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v33._countAndFlagsBits = 0x65676E61686320;
    v33._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
    LocalizedStringKey.init(stringInterpolation:)();
    Text.init(_:tableName:bundle:comment:)();
    goto LABEL_12;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  v40 = *(a1 + 16);
  State.wrappedValue.getter();
  v19 = sub_1001A1610();
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = sub_10019F9C4();
  v21 = sub_1001A1610();
  if (v21)
  {
    v22 = v21;
    v23 = sub_100048038(v21, v20);
    v25 = v24;

    if ((v25 & 1) == 0)
    {

      if (__OFADD__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v26._countAndFlagsBits = 543584032;
        v26._object = 0xE400000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
        v40 = *(a1 + 16);
        State.wrappedValue.getter();
        v27 = sub_10019F9C4();

        v25 = v15;
        if (!(v27 >> 62))
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

          *&v40 = v28;
          LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v29._countAndFlagsBits = 0;
          v29._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
          LocalizedStringKey.init(stringInterpolation:)();
          Text.init(_:tableName:bundle:comment:)();
LABEL_12:
          sub_10000341C(&qword_10025BB38, &unk_1001D09C0);
          sub_1000359D4(&qword_10025BB40, &qword_10025BB38, &unk_1001D09C0, sub_100035390);
          _ConditionalContent<>.init(storage:)();
          *a2 = v37;
          *(a2 + 8) = v36;
          *(a2 + 16) = v35 & 1;
          *(a2 + 24) = v38;
          *(a2 + 32) = v25;
          *(a2 + 40) = v34 & 1;
          *(a2 + 48) = v40;
          *(a2 + 64) = v41;
          *(a2 + 80) = v42;
          sub_100007D98(v37, v36, v35 & 1);

          j__swift_retain();
          sub_1000353E8(v40, *(&v40 + 1), v41);
          sub_100035424(v40, *(&v40 + 1), v41);
          sub_10002A984(v37, v36, v35 & 1);

          j__swift_release();
          return;
        }
      }

      v28 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000331D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v84 = sub_10000341C(&qword_10025BC58, &unk_1001E10B0);
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = v81 - v4;
  v85 = sub_10000341C(&qword_10025BC60, &unk_1001D0C10);
  v5 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = v81 - v6;
  v100 = sub_10000341C(&qword_10025BC68, &unk_1001E10C0);
  v94 = *(v100 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v100);
  v87 = v81 - v8;
  v9 = sub_10000341C(&qword_10025BC70, &unk_1001D0C20);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v98 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = v81 - v13;
  v14 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v15 = *(v14 - 8);
  v92 = v14 - 8;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v97 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = v81 - v19;
  v91 = sub_10000341C(&qword_10025BC78, &qword_1001D0C30);
  v105 = *(v91 - 8);
  v20 = *(v105 + 64);
  __chkstk_darwin(v91);
  v22 = v81 - v21;
  v96 = sub_10000341C(&qword_10025BC80, &qword_1001D0C38);
  v95 = *(v96 - 8);
  v23 = *(v95 + 64);
  v24 = __chkstk_darwin(v96);
  v93 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v104 = v81 - v27;
  v28 = __chkstk_darwin(v26);
  v106 = v81 - v29;
  __chkstk_darwin(v28);
  v31 = v81 - v30;
  v32 = *a1;
  v113 = *(a1 + 8);
  v33 = a1[2];
  v111 = a1[3];
  v34 = v111;
  v112 = v32;
  v110 = *(a1 + 2);
  v35 = swift_allocObject();
  v36 = *(a1 + 1);
  v35[1] = *a1;
  v35[2] = v36;
  v35[3] = *(a1 + 2);
  sub_1000081F8(&v112, v109, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v111, v109, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v110, v109, &unk_1002640F0, &qword_1001D3490);
  v90 = sub_10000341C(&qword_10025BB18, &qword_1001D09B0);
  v89 = sub_100035280();
  Button.init(action:label:)();
  *&v109[0] = v33;
  *(&v109[0] + 1) = v34;
  v37 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v38 = sub_1001A13B8();

  v109[0] = v110;
  v88 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  LOBYTE(v109[0]) = v38 & 1;
  BYTE1(v109[0]) = v108;
  WORD1(v109[0]) = 256;
  sub_100007120(&qword_10025BC88, &qword_10025BC78, &qword_1001D0C30);
  v39 = sub_100035980();
  v103 = v31;
  v40 = v91;
  View.buttonStyle<A>(_:)();
  v41 = *(v105 + 8);
  v105 += 8;
  v41(v22, v40);
  v42 = swift_allocObject();
  v43 = *(a1 + 1);
  v42[1] = *a1;
  v42[2] = v43;
  v42[3] = *(a1 + 2);
  sub_1000081F8(&v112, v109, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v111, v109, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v110, v109, &unk_1002640F0, &qword_1001D3490);
  Button.init(action:label:)();
  v81[0] = v33;
  *&v109[0] = v33;
  *(&v109[0] + 1) = v34;
  v90 = v34;
  v89 = v37;
  State.wrappedValue.getter();
  LOBYTE(v37) = sub_1001A13B8();

  v109[0] = v110;
  State.wrappedValue.getter();
  LOBYTE(v109[0]) = v37 & 1;
  BYTE1(v109[0]) = v108;
  WORD1(v109[0]) = 256;
  v81[1] = v39;
  View.buttonStyle<A>(_:)();
  v41(v22, v40);
  v45 = v101;
  v44 = v102;
  Divider.init()();
  static Alignment.center.getter();
  v46 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v47 = (v44 + *(v92 + 44));
  v48 = v109[1];
  *v47 = v109[0];
  v47[1] = v48;
  v49 = v110;
  v47[2] = v109[2];
  v108 = v49;
  State.wrappedValue.getter();
  if ((v107 & 1) == 0)
  {
    v50 = swift_allocObject();
    v51 = *(a1 + 1);
    v50[1] = *a1;
    v50[2] = v51;
    v50[3] = *(a1 + 2);
    sub_1000081F8(&v112, &v108, &qword_10025BAA0, &qword_1001D0808);
    v52 = v81[0];

    sub_1000081F8(&v111, &v108, &qword_10025BAA8, &unk_1001D0810);
    sub_1000081F8(&v110, &v108, &unk_1002640F0, &qword_1001D3490);
    sub_10000341C(&qword_10025BC98, &qword_1001D0C40);
    sub_1000359D4(&qword_10025BCA0, &qword_10025BC98, &qword_1001D0C40, sub_100035A58);
    v53 = v82;
    Button.init(action:label:)();
    v54 = v90;
    *&v108 = v52;
    *(&v108 + 1) = v90;
    State.wrappedValue.getter();
    v55 = v107;
    swift_getKeyPath();
    *&v108 = v55;
    sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = *(v55 + 112);

    LOBYTE(v108) = v56;
    *(&v108 + 1) = 0;
    BYTE3(v108) = 0;
    sub_100007120(&qword_10025BCB0, &qword_10025BC58, &unk_1001E10B0);
    v57 = v86;
    v58 = v84;
    View.buttonStyle<A>(_:)();
    (*(v83 + 8))(v53, v58);
    type metadata accessor for PresentationModel();
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel);
    v59 = Environment.init<A>(_:)();
    v60 = v57 + *(v85 + 36);
    *v60 = v59;
    *(v60 + 8) = v61 & 1;
    *&v108 = v52;
    *(&v108 + 1) = v54;
    State.wrappedValue.getter();
    v62 = v107;
    swift_getKeyPath();
    *&v108 = v62;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v62 + 112))
    {
      v63 = 1;
    }

    else
    {
      swift_getKeyPath();
      *&v108 = v62;
      sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v63 = *(v62 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session) == 0;
    }

    KeyPath = swift_getKeyPath();
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    v66 = v87;
    sub_10002A894(v57, v87, &qword_10025BC60, &unk_1001D0C10);
    v67 = (v66 + *(v100 + 36));
    *v67 = KeyPath;
    v67[1] = sub_100035DEC;
    v67[2] = v65;
    sub_10002A894(v66, v45, &qword_10025BC68, &unk_1001E10C0);
    v46 = 0;
  }

  (*(v94 + 56))(v45, v46, 1, v100);
  v68 = v95;
  v69 = v45;
  v70 = *(v95 + 16);
  v71 = v104;
  v72 = v96;
  v70(v104, v103, v96);
  v73 = v93;
  v70(v93, v106, v72);
  v74 = v102;
  v75 = v97;
  sub_1000081F8(v102, v97, &qword_10025D700, &unk_1001DE550);
  v76 = v98;
  sub_1000081F8(v69, v98, &qword_10025BC70, &unk_1001D0C20);
  v77 = v99;
  v70(v99, v71, v72);
  v78 = sub_10000341C(&qword_10025BCB8, &qword_1001D0C48);
  v70(&v77[v78[12]], v73, v72);
  sub_1000081F8(v75, &v77[v78[16]], &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v76, &v77[v78[20]], &qword_10025BC70, &unk_1001D0C20);
  sub_10000F500(v101, &qword_10025BC70, &unk_1001D0C20);
  sub_10000F500(v74, &qword_10025D700, &unk_1001DE550);
  v79 = *(v68 + 8);
  v79(v106, v72);
  v79(v103, v72);
  sub_10000F500(v76, &qword_10025BC70, &unk_1001D0C20);
  sub_10000F500(v75, &qword_10025D700, &unk_1001DE550);
  v79(v73, v72);
  return (v79)(v104, v72);
}

uint64_t sub_100034070(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_1000340D4(uint64_t a1)
{
  v6 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v7 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  sub_1001A7A44((v2 & 1) == 0, 0, 0);

  v8 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100034248@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000342B4(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_10003434C, v3, v2);
}

uint64_t sub_10003434C()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session))
  {
    v3 = *(v0 + 112);

LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v4 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  if (v5 == 1)
  {
    v6 = *(v0 + 112);
    goto LABEL_5;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_100034594;

  return sub_1001A2C88();
}

uint64_t sub_100034594()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_100035DF0, v5, v4);
}

uint64_t sub_1000346D8(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14 - 8);
  if (*a2 == 1)
  {
    v35 = a5;
    v36 = a6;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0x2065736F706D6F43;
    v17._object = 0xED00002068746977;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    v18._countAndFlagsBits = sub_1000971C0();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100149E4C();
    v20 = [objc_opt_self() mainBundle];
    v47._object = 0x80000001001E3AF0;
    v21._countAndFlagsBits = 0x402520657355;
    v21._object = 0xE600000000000000;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD000000000000069;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v47);

    sub_10000341C(&qword_10025BA50, &qword_1001D0860);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001CF9D0;
    v24 = sub_1000971C0();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_10002D7B0();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    static String.localizedStringWithFormat(_:_:)();

    v27 = a3[3];
    aBlock = a3[2];
    v38 = v27;
    sub_10000341C(&unk_10025B658, &qword_1001D0830);
    State.wrappedValue.getter();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if ([Strong respondsToSelector:"showAlertWithTitle:message:buttonTitle:buttonAction:"])
      {
        v44 = *a3;
        v45 = *(a3 + 8);
        v46 = v27;
        v43 = *(a3 + 2);
        v29 = swift_allocObject();
        v30 = *(a3 + 1);
        v29[1] = *a3;
        v29[2] = v30;
        v29[3] = *(a3 + 2);
        sub_1000081F8(&v44, &aBlock, &qword_10025BAA0, &qword_1001D0808);

        sub_1000081F8(&v46, &aBlock, &qword_10025BAA8, &unk_1001D0810);
        sub_1000081F8(&v43, &aBlock, &unk_1002640F0, &qword_1001D3490);
        v31 = String._bridgeToObjectiveC()();

        v32 = String._bridgeToObjectiveC()();

        v33 = String._bridgeToObjectiveC()();

        v41 = v35;
        v42 = v29;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_1001256BC;
        v40 = v36;
        v34 = _Block_copy(&aBlock);
        [Strong showAlertWithTitle:v31 message:v32 buttonTitle:v33 buttonAction:v34];
        swift_unknownObjectRelease();
        _Block_release(v34);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100034BBC(uint64_t a1)
{
  v14 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v14 = v13[0];
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13[0] + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task))
  {
    v2 = *(v13[0] + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);

    Task.cancel()();
  }

  sub_10019F44C(0);

  v14 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v14 = v13[0];
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v13[0] + v3, &v14, &unk_10025B1C0, &unk_1001CFA90);

  if (v15)
  {
    sub_100028458(&v14, v13);
    sub_10000F500(&v14, &unk_10025B1C0, &unk_1001CFA90);
    v4 = *sub_100027874(v13, v13[3]);
    sub_10000ECC4();
    sub_10000F4B4(v13);
  }

  else
  {
    sub_10000F500(&v14, &unk_10025B1C0, &unk_1001CFA90);
  }

  v14 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"handoffFromUCBFromTool:withPrompt:"])
    {
      v14 = *(a1 + 16);
      State.wrappedValue.getter();
      v7 = v13[0];
      swift_getKeyPath();
      *&v14 = v7;
      sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *(v7 + 72);
      v9 = *(v7 + 80);
      v10 = *(v7 + 88);
      v11 = *(v7 + 96);
      sub_10002879C(v8, v9, v10, *(v7 + 96));

      if (v11 == 255)
      {
        result = swift_unknownObjectRelease();
        __break(1u);
        return result;
      }

      v12 = sub_100106D00(v8, v9, v10, v11);
      sub_1000278C0(v8, v9, v10, v11);
      [Strong handoffFromUCBFromTool:v12 withPrompt:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100034F40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1000301F8(a1);
}

uint64_t sub_100034FD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100028688;

  return sub_10002FD38(v0 + 16);
}

unint64_t sub_1000350B0()
{
  result = qword_10025BAB8;
  if (!qword_10025BAB8)
  {
    sub_100003E34(&qword_10025BA88, &qword_1001D07F0);
    sub_100007120(&qword_10025BAC0, &qword_10025BA90, &qword_1001D07F8);
    sub_1000354A0(&qword_10025A930, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BAB8);
  }

  return result;
}

unint64_t sub_100035198()
{
  result = qword_10025BAC8;
  if (!qword_10025BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BAC8);
  }

  return result;
}

uint64_t sub_100035208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100035280()
{
  result = qword_10025BB20;
  if (!qword_10025BB20)
  {
    sub_100003E34(&qword_10025BB18, &qword_1001D09B0);
    sub_10003530C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BB20);
  }

  return result;
}

unint64_t sub_10003530C()
{
  result = qword_10025BB28;
  if (!qword_10025BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BB28);
  }

  return result;
}

unint64_t sub_100035390()
{
  result = qword_10025BB48;
  if (!qword_10025BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BB48);
  }

  return result;
}

uint64_t sub_1000353E8(uint64_t a1, uint64_t a2, char a3)
{
  sub_100007D98(a1, a2, a3 & 1);
}

uint64_t sub_100035424(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002A984(a1, a2, a3 & 1);
}

uint64_t sub_1000354A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000354E8()
{
  result = qword_10025BBA8;
  if (!qword_10025BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBA8);
  }

  return result;
}

uint64_t sub_10003553C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035598()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002B2A0;

  return sub_1000342B4(v0 + 16);
}

unint64_t sub_10003566C()
{
  result = qword_10025BBC8;
  if (!qword_10025BBC8)
  {
    sub_100003E34(&qword_10025BBB8, &qword_1001D0B68);
    sub_1000356F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBC8);
  }

  return result;
}

unint64_t sub_1000356F8()
{
  result = qword_10025BBD0;
  if (!qword_10025BBD0)
  {
    sub_100003E34(&qword_10025BBB0, &qword_1001D0B60);
    sub_1000357B4();
    sub_1000354A0(&qword_10025A930, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBD0);
  }

  return result;
}

unint64_t sub_1000357B4()
{
  result = qword_10025BBD8;
  if (!qword_10025BBD8)
  {
    sub_100003E34(&qword_10025BBE0, &qword_1001D0B88);
    sub_100035840();
    sub_100035924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBD8);
  }

  return result;
}

unint64_t sub_100035840()
{
  result = qword_10025BBE8;
  if (!qword_10025BBE8)
  {
    sub_100003E34(&qword_10025BBC0, &qword_1001D0B70);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90);
    sub_100007120(&qword_10025BC00, &qword_10025BC08, &qword_1001D0B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBE8);
  }

  return result;
}

unint64_t sub_100035924()
{
  result = qword_10025BC10;
  if (!qword_10025BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BC10);
  }

  return result;
}

unint64_t sub_100035980()
{
  result = qword_10025BC90;
  if (!qword_10025BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BC90);
  }

  return result;
}

uint64_t sub_1000359D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100035A58()
{
  result = qword_10025BCA8;
  if (!qword_10025BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BCA8);
  }

  return result;
}

uint64_t sub_100035ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  j__swift_release();
  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100035B10()
{
  result = qword_10025BCF0;
  if (!qword_10025BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BCF0);
  }

  return result;
}

unint64_t sub_100035B64()
{
  result = qword_10025BD38;
  if (!qword_10025BD38)
  {
    sub_100003E34(&qword_10025BD30, &unk_1001E1180);
    sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BD38);
  }

  return result;
}

uint64_t sub_100035D00(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  sub_100003E34(a2, a3);
  a4();
  sub_100035198();
  return swift_getOpaqueTypeConformance2();
}

void *sub_100035DF8()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_100035E70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100038AB4();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100035FC0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_100036040(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_100036180()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_100036200(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 48) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 56);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_100036340()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_1000363B0(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100036498()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  sub_10002879C(v1, *(v3 + 80), *(v3 + 88), *(v3 + 96));
  return v1;
}

uint64_t sub_100036534(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  v12 = *(v4 + 96);
  if (sub_100037FBC(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000278C0(a1, a2, a3, a4);
  }

  else
  {
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 88) = a3;
    *(v4 + 96) = a4;

    return sub_1000278C0(v9, v10, v11, v12);
  }
}

uint64_t sub_1000366B4()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 104);
}

uint64_t sub_100036728(uint64_t a1)
{
  if (!*(v1 + 104))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 104);

  v5 = sub_10017BCDC(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + 104);
LABEL_7:
  *(v1 + 104) = a1;
}

uint64_t sub_100036860(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = a2;
}

uint64_t sub_10003689C(unsigned __int8 a1)
{
  v2 = v1[112];
  v1[112] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"setIsProcessing:"])
    {
      swift_getKeyPath();
      sub_100037F64();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v4 setIsProcessing:v1[112]];
    }

    swift_unknownObjectRelease();
  }

  return (*(*v1 + 832))(v2);
}

uint64_t sub_100036994()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 112);
}

uint64_t sub_100036A04(char a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_10003689C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100036B38()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 120);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100036BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  *(a1 + 120) = a2;
  swift_errorRetain();
}

uint64_t sub_100036BF0(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    v2 = sub_100149EB0(v9, v10);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v1 + 120))
  {
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 128) & 1) != 0 || (sub_100037954())
  {
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 120);
  v7 = *(*v1 + 848);
  swift_errorRetain();
  v7(0, v6, 0, 0);

  if (*(v1 + 128) == 1)
  {

    *(v1 + 128) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100036F50()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 128);
}

uint64_t sub_100036FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_100037038(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100037118(char a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 688))(v6) & 1) != 0 && (sub_100037954() & 1) == 0 && (a1)
  {
    swift_getKeyPath();
    v13[1] = v1;
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v1[144] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        if ([Strong respondsToSelector:"showContentWarningWithTitle:message:"])
        {
          if (qword_10025A810 != -1)
          {
            swift_once();
          }

          v11 = sub_10000F34C(v3, qword_1002771D0);
          (*(v4 + 16))(v8, v11, v3);
          String.init(localized:)();
          v12 = String._bridgeToObjectiveC()();

          [v10 showContentWarningWithTitle:0 message:v12];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_100037328()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 136);
}

void sub_100037398(uint64_t a1)
{
  if (*(v1 + 136) == a1)
  {
    sub_100037118(a1);
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000374BC(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 144) == 1)
    {
      (*(*v1 + 840))(result);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 120))
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if ((*(v1 + 128) & 1) == 0)
        {
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v3 = result;
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (*(v1 + 120))
            {
              v4 = *(v1 + 120);
              swift_errorRetain();
              v5 = _convertErrorToNSError(_:)();
            }

            else
            {
              v5 = 0;
            }

            [v3 endWritingToolsWithError:v5];

            result = swift_unknownObjectRelease();
          }

          if (*(v2 + 128) == 1)
          {
            *(v2 + 128) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003770C()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 144);
}

uint64_t sub_10003777C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_10003781C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 144);
  if (v3 == v2)
  {
    *(v1 + 144) = v2;

    return sub_1000374BC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100037920(uint64_t a1, char a2)
{
  v3 = *(a1 + 144);
  *(a1 + 144) = a2;
  return sub_1000374BC(v3);
}

uint64_t sub_100037954()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[128] & 1) == 0 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v0[136]))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = v0[144] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100037A50(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  if (a1)
  {
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v4 = *(v2 + 136);
    v5 = v4 | 1;
    sub_100037118(v4 | 1);
    *(v2 + 136) = v5;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  else
  {
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v7 = *(v2 + 136);
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    sub_100037118(v7 & 0xFE);
    *(v2 + 136) = v8;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (*(v2 + 144) == 1)
    {
      *(v2 + 144) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t ToolModel.deinit()
{
  sub_100037D88(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  sub_1000278C0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v3 = *(v0 + 104);

  v4 = *(v0 + 120);

  v5 = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t ToolModel.__deallocating_deinit()
{
  ToolModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ToolModel()
{
  result = qword_10025BD80;
  if (!qword_10025BD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037E5C()
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

unint64_t sub_100037F64()
{
  result = qword_10025C140;
  if (!qword_10025C140)
  {
    type metadata accessor for ToolModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C140);
  }

  return result;
}

BOOL sub_100037FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 == -1)
  {
    return ~a8 != 0;
  }

  if (a8 == -1)
  {
    return 1;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100038160()
{
  v50 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v55 = *(v50 - 8);
  v0 = *(v55 + 64);
  __chkstk_darwin(v50);
  v49 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v47 = *(v48 - 8);
  v2 = *(v47 + 64);
  __chkstk_darwin(v48);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v52 = *(v54 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v54);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for GenerativeModelsAvailability();
  v11 = *(v51 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v51);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  (*(v52 + 104))(v6, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v54);
  v23 = v16;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v7 + 8))(v10, v53);
  GenerativeModelsAvailability.availability.getter();
  (*(v11 + 8))(v14, v51);
  (*(v16 + 16))(v20, v22, v15);
  if ((*(v16 + 88))(v20, v15) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v37 = *(v16 + 8);
    v37(v22, v15);
    return (v37)(v20, v15);
  }

  v53 = v22;
  v54 = v15;
  (*(v16 + 96))(v20, v15);
  v24 = v46;
  v25 = v47;
  v26 = v48;
  (*(v47 + 32))(v46, v20, v48);
  v27 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v28 = v55;
  v30 = v49;
  v29 = v50;
  v45 = *(v55 + 104);
  v45(v49, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.policyLimited(_:), v50);
  v52 = v27;
  LOBYTE(v27) = sub_100138244(v30, v27);
  v31 = *(v28 + 8);
  v55 = v28 + 8;
  v51 = v31;
  v31(v30, v29);
  v32 = v25;
  v33 = v24;
  if (v27)
  {
    v34 = v26;

    v35 = 2;
    v36 = v53;
LABEL_7:
    v42 = objc_allocWithZone(NSError);
    v43 = String._bridgeToObjectiveC()();
    [v42 initWithDomain:v43 code:v35 userInfo:0];

    swift_willThrow();
    (*(v32 + 8))(v33, v34);
    return (*(v23 + 8))(v36, v54);
  }

  v40 = v49;
  v39 = v50;
  v45(v49, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.regionalSafetyAssetPendingUpdate(_:), v50);
  v41 = sub_100138244(v40, v52);

  v51(v40, v39);
  v36 = v53;
  if (v41)
  {
    v35 = 3;
    v34 = v48;
    goto LABEL_7;
  }

  (*(v32 + 8))(v33, v48);
  return (*(v23 + 8))(v36, v54);
}

uint64_t sub_100038804()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 144);
  *(v1 + 144) = *(v0 + 24);
  return sub_1000374BC(v2);
}

void sub_100038840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100037118(v2);
  *(v1 + 136) = v2;
}

uint64_t sub_100038898()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 120);
  *(v2 + 120) = v1;
  swift_errorRetain();
}

uint64_t sub_1000388DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_10003689C(v1);
}

uint64_t sub_100038918()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
}

uint64_t sub_10003895C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = *(v0 + 48);
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  v9 = *(v2 + 96);
  *(v2 + 96) = v8;
  sub_10002879C(v1, v3, v4, v8);
  return sub_1000278C0(v5, v6, v7, v9);
}

uint64_t sub_1000389EC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_100038A34()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

void sub_100038A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_100038AB4()
{
  result = qword_10025B488;
  if (!qword_10025B488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025B488);
  }

  return result;
}

uint64_t sub_100038B48(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5 > result)
  {
    do
    {
      if (v5)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v4;
        if (result)
        {
          v14 = *(v4 + 16);
          if (!v14)
          {
            goto LABEL_29;
          }
        }

        else
        {
          result = sub_10017E480(v4);
          v4 = result;
          v14 = *(result + 16);
          if (!v14)
          {
LABEL_29:
            __break(1u);
            return result;
          }
        }

        *(v4 + 16) = v14 - 1;
        *(v2 + 16) = v4;
      }

      swift_beginAccess();
      v10 = *(v2 + 24);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v15 = *(v2 + 24);
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + 24) = v10;
      if (v10 >> 62 || (result & 1) == 0)
      {
        result = sub_10017FA8C(v10);
        v10 = result;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        __break(1u);
        return result;
      }

      v12 = v11 - 1;
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;
      *(v2 + 24) = v10;

LABEL_14:
      result = swift_endAccess();
      v4 = *(v2 + 16);
      v5 = *(v4 + 16);
    }

    while (v5 > v3);
  }

  if (v5 < v3)
  {
    do
    {
      [objc_allocWithZone(NSTextList) initWithMarkerFormat:NSTextListMarkerCircle options:0];
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v6 = *(v2 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v6;
      if ((result & 1) == 0)
      {
        result = sub_10017DC30(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
        *(v2 + 16) = result;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_10017DC30((v7 > 1), v8 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 8 * v8 + 32) = 0;
      *(v2 + 16) = v6;
    }

    while (*(v6 + 16) < v3);
  }

  return result;
}

uint64_t sub_100038DAC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (!*(*(v2 + 16) + 16))
    {
      return result;
    }

    v8 = *(v2 + 24);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v15 = *(v2 + 24);
      }

      v16 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v16 - 1;
      if (!__OFSUB__(v16, 1))
      {
LABEL_6:
        swift_beginAccess();
        v3 = *(v2 + 24);
        a2 = a2;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v2 + 24) = v3;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_10017FA8C(v3);
          *(v2 + 24) = v3;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v12 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * v10;
            v13 = *(v12 + 0x20);
            *(v12 + 32) = a2;
            *(v2 + 24) = v3;
            swift_endAccess();

            a2 = *(v2 + 16);
            v3 = a2[2];
            result = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 16) = a2;
            if (result)
            {
              if (v3)
              {
                goto LABEL_14;
              }

              goto LABEL_29;
            }

LABEL_28:
            result = sub_10017E480(a2);
            a2 = result;
            if (v3)
            {
LABEL_14:
              if (v3 <= a2[2])
              {
                a2[v3 + 3] = a1;
                *(v2 + 16) = a2;
                return result;
              }

LABEL_30:
              __break(1u);
              return result;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 - 1;
      if (!__OFSUB__(v9, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v14 = *(v2 + 24);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100038F3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

NSTextListMarkerFormat sub_100038FA0()
{
  sub_10000341C(&qword_10025C318, &qword_1001D1038);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001CF9F0;
  *(v0 + 32) = NSTextListMarkerDecimal;
  *(v0 + 40) = NSTextListMarkerLowercaseAlpha;
  *(v0 + 48) = NSTextListMarkerLowercaseRoman;
  off_10025C148 = v0;
  v1 = NSTextListMarkerDecimal;
  v2 = NSTextListMarkerLowercaseAlpha;

  return NSTextListMarkerLowercaseRoman;
}

unint64_t sub_100039044@<X0>(void (**a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v313 = a2;
  v310 = a1;
  v330 = a3;
  v282 = type metadata accessor for AttributedSubstring();
  v265 = *(v282 - 8);
  v3 = *(v265 + 64);
  __chkstk_darwin(v282);
  v288 = &v247 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_10000341C(&qword_10025C238, &qword_1001D0FC8);
  v5 = *(*(v317 - 8) + 64);
  v6 = __chkstk_darwin(v317);
  v316 = &v247 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v327 = &v247 - v8;
  v318 = type metadata accessor for RestoreWhiteSpaceLocation();
  v319 = *(v318 - 8);
  v9 = v319[8];
  v10 = __chkstk_darwin(v318);
  v328 = &v247 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v271 = &v247 - v12;
  v308 = type metadata accessor for PresentationIntent.Kind();
  v268 = *(v308 - 8);
  v13 = v268[8];
  v14 = __chkstk_darwin(v308);
  v303 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v297 = &v247 - v16;
  v309 = type metadata accessor for PresentationIntent.IntentType();
  v300 = *(v309 - 8);
  v17 = *(v300 + 64);
  v18 = __chkstk_darwin(v309);
  v298 = &v247 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v301 = &v247 - v20;
  v21 = sub_10000341C(&qword_10025C240, &qword_1001D0FD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v281 = &v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v280 = &v247 - v26;
  v27 = __chkstk_darwin(v25);
  v284 = &v247 - v28;
  __chkstk_darwin(v27);
  v312 = (&v247 - v29);
  v304 = type metadata accessor for PresentationIntent();
  v267 = *(v304 - 8);
  v30 = *(v267 + 64);
  v31 = __chkstk_darwin(v304);
  v292 = &v247 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v272 = &v247 - v33;
  v34 = sub_10000341C(&qword_10025C248, &qword_1001D0FD8);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v306 = (&v247 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v305 = (&v247 - v38);
  v39 = sub_10000341C(&qword_10025C250, &qword_1001D0FE0);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v293 = &v247 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v324 = &v247 - v43;
  v329 = sub_10000341C(&qword_10025C258, &qword_1001D0FE8);
  v279 = *(v329 - 8);
  v44 = *(v279 + 64);
  __chkstk_darwin(v329);
  v270 = &v247 - v45;
  v320 = sub_10000341C(&qword_10025C260, &qword_1001D0FF0);
  v276 = *(v320 - 8);
  v46 = *(v276 + 64);
  v47 = __chkstk_darwin(v320);
  v322 = &v247 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v325 = (&v247 - v49);
  v307 = type metadata accessor for AttributeContainer();
  v295 = *(v307 - 8);
  v50 = v295[8];
  v51 = __chkstk_darwin(v307);
  v314 = &v247 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v326 = &v247 - v53;
  v321 = sub_10000341C(&qword_10025C268, &qword_1001D0FF8);
  v54 = *(*(v321 - 8) + 64);
  v55 = __chkstk_darwin(v321);
  v296 = &v247 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v315 = &v247 - v58;
  v59 = __chkstk_darwin(v57);
  v323 = (&v247 - v60);
  __chkstk_darwin(v59);
  v333 = (&v247 - v61);
  v336 = type metadata accessor for AttributedString.Index();
  v283 = *(v336 - 8);
  v62 = *(v283 + 64);
  __chkstk_darwin(v336);
  v334 = &v247 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_10000341C(&qword_10025C270, &qword_1001D1000);
  v64 = *(*(v332 - 1) + 64);
  __chkstk_darwin(v332);
  v331 = &v247 - v65;
  v278 = type metadata accessor for AttributedString.Runs();
  v287 = *(v278 - 8);
  v66 = *(v287 + 64);
  __chkstk_darwin(v278);
  v277 = &v247 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10000341C(&qword_10025C278, &qword_1001D1008);
  v69 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68 - 8);
  v291 = &v247 - v70;
  v286 = sub_10000341C(&qword_10025C280, &qword_1001D1010);
  v71 = *(*(v286 - 8) + 64);
  __chkstk_darwin(v286);
  v73 = &v247 - v72;
  v74 = sub_10000341C(&qword_10025C288, &qword_1001D1018);
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74 - 8);
  v302 = &v247 - v76;
  v299 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v77 = *(v299 - 8);
  v78 = *(v77 + 64);
  __chkstk_darwin(v299);
  v80 = &v247 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  __chkstk_darwin(v81);
  v85 = &v247 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v87 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86 - 8);
  v311 = type metadata accessor for AttributedString();
  v275 = *(v311 - 8);
  v88 = *(v275 + 64);
  v89 = __chkstk_darwin(v311);
  v91 = &v247 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v93 = &v247 - v92;
  (*(v82 + 104))(v85, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v81);
  (*(v77 + 104))(v80, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.returnPartiallyParsedIfPossible(_:), v299);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v94 = type metadata accessor for URL();
  (*(*(v94 - 8) + 56))(v302, 1, 1, v94);
  v95 = v335;
  result = AttributedString.init(markdown:options:baseURL:)();
  if (v95)
  {
    return result;
  }

  v313 = v91;
  v258 = 0;
  (*(v275 + 32))(v330, v93, v311);
  v97 = objc_opt_self();
  v98 = [v97 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v99 = [v98 fontDescriptorWithSymbolicTraits:2];
  if (!v99)
  {
    v99 = v98;
  }

  v100 = [v98 fontDescriptorWithSymbolicTraits:1];
  if (!v100)
  {
    v100 = v98;
  }

  v101 = [v97 preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v263 = [v97 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v262 = [v97 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v102 = [v97 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v103 = objc_opt_self();
  v257 = v98;
  v104 = [v103 fontWithDescriptor:v98 size:0.0];
  v256 = v99;
  v105 = [v103 fontWithDescriptor:v99 size:0.0];
  v255 = v100;
  v290 = [v103 fontWithDescriptor:v100 size:0.0];
  v254 = v101;
  v106 = [v103 fontWithDescriptor:v101 size:0.0];
  v107 = [v103 fontWithDescriptor:v263 size:0.0];
  v108 = [v103 fontWithDescriptor:v262 size:0.0];
  v253 = v102;
  v109 = [v103 fontWithDescriptor:v102 size:0.0];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001D0F90;
  *(inited + 32) = v106;
  v294 = inited + 32;
  *(inited + 40) = v107;
  *(inited + 48) = v108;
  *(inited + 56) = v109;
  *(inited + 64) = v105;
  v260 = inited;
  *(inited + 72) = v105;
  v339 = v104;
  v111 = sub_10003BDAC();
  v289 = v105;
  v252 = v106;
  v251 = v107;
  v250 = v108;
  v249 = v109;
  v248 = v104;
  v299 = v111;
  AttributedString.subscript.setter();
  v112 = v277;
  AttributedString.runs.getter();
  v113 = sub_10003BE00();
  v114 = v291;
  v310 = v113;
  AttributedString.Runs.subscript.getter();
  v115 = *(v287 + 8);
  v287 += 8;
  v264 = v115;
  v115(v112, v278);
  v116 = sub_10000341C(&qword_10025C2A0, &qword_1001D1028);
  v117 = *(v116 - 8);
  (*(v117 + 16))(v73, v114, v116);
  v118 = *(v286 + 36);
  sub_100007120(&qword_10025C2A8, &qword_10025C2A0, &qword_1001D1028);
  dispatch thunk of Collection.endIndex.getter();
  (*(v117 + 8))(v114, v116);
  v335 = (v283 + 8);
  while (1)
  {
    v120 = v334;
    dispatch thunk of Collection.startIndex.getter();
    v121 = sub_10003C154(&qword_10025C2B0, &type metadata accessor for AttributedString.Index);
    v122 = v336;
    v123 = dispatch thunk of static Equatable.== infix(_:_:)();
    v124 = v122;
    v125 = *v335;
    (*v335)(v120, v124);
    if (v123)
    {
      break;
    }

    sub_100007120(&qword_10025C2B8, &qword_10025C2A0, &qword_1001D1028);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v126 = dispatch thunk of Collection.subscript.read();
    v127 = v331;
    sub_1000081F8(v128, v331, &qword_10025C270, &qword_1001D1000);
    v126(&v339, 0);
    v129 = *v127;
    v130 = *(v127 + 8);
    v131 = v127 + *(v332 + 12);
    v132 = v333;
    sub_10002A894(v131, v333, &qword_10025C268, &qword_1001D0FF8);
    if ((v130 & 1) == 0 && (v129 == 128 || v129 == 64))
    {
      v337 = 10;
      v338 = 0xE100000000000000;
      v119 = AttributedString.characters.modify();
      sub_10003BE54();
      AttributedString.CharacterView.replaceSubrange<A>(_:with:)();
      v119(&v339, 0);
    }

    sub_10000F500(v132, &qword_10025C268, &qword_1001D0FF8);
  }

  v333 = v125;
  v331 = v121;
  sub_10000F500(v73, &qword_10025C280, &qword_1001D1010);
  v133 = 0;
  v134 = v295 + 1;
  v135 = v307;
  do
  {
    v141 = *(&off_10024A858 + v133 + 32);
    AttributeContainer.init()();
    if (v141 == 1)
    {
      v339 = 1;
      v340 = 0;
      AttributeContainer.subscript.setter();
      v136 = &v322;
      goto LABEL_16;
    }

    if (v141 == 2)
    {
      v339 = 2;
      v340 = 0;
      AttributeContainer.subscript.setter();
      v136 = &v321;
LABEL_16:
      v339 = *(v136 - 32);
      v137 = v339;
      AttributeContainer.subscript.setter();
      goto LABEL_17;
    }

    if (v141 == 32)
    {
      v339 = 32;
      v340 = 0;
      AttributeContainer.subscript.setter();
      v142 = v305;
      static Text.LineStyle.single.getter();
      v143 = type metadata accessor for Text.LineStyle();
      (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
      sub_1000081F8(v142, v306, &qword_10025C248, &qword_1001D0FD8);
      sub_10003C200();
      AttributeContainer.subscript.setter();
      v144 = v142;
      v135 = v307;
      sub_10000F500(v144, &qword_10025C248, &qword_1001D0FD8);
    }

LABEL_17:
    v138 = v314;
    AttributeContainer.init()();
    v339 = v141;
    v340 = 0;
    AttributeContainer.subscript.setter();
    AttributedString.replaceAttributes(_:with:)();
    v139 = *v134;
    v140 = v326;
    (*v134)(v138, v135);
    v139(v140, v135);
    v133 += 8;
  }

  while (v133 != 64);
  v145 = v277;
  AttributedString.runs.getter();
  v146 = sub_10003BEA8();
  v147 = v270;
  v269 = v146;
  AttributedString.Runs.subscript.getter();
  v264(v145, v278);
  v148 = v329;
  AttributedString.Runs.AttributesSlice1.makeIterator()();
  v149 = *(v279 + 8);
  v279 += 8;
  v259 = v149;
  v149(v147, v148);
  v266 = 0;
  v261 = 0;
  v302 = (v267 + 48);
  v274 = (v267 + 32);
  v307 = v300 + 16;
  v306 = (v268 + 11);
  LODWORD(v326) = enum case for PresentationIntent.Kind.listItem(_:);
  LODWORD(v310) = enum case for PresentationIntent.Kind.paragraph(_:);
  v305 = (v300 + 8);
  v295 = (v268 + 1);
  v314 = (v283 + 16);
  v273 = (v267 + 8);
  v332 = _swiftEmptyArrayStorage;
  v150 = v320;
  v151 = v334;
  while (1)
  {
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v152 = v324;
    v153 = sub_10000341C(&qword_10025C2D0, &qword_1001D1030);
    v154 = *(v153 - 8);
    v155 = *(v154 + 48);
    v156 = (v154 + 48);
    if ((v155)(v152, 1, v153) == 1)
    {
      break;
    }

    v157 = v152 + *(v153 + 48);
    v158 = v323;
    sub_10002A894(v157, v323, &qword_10025C268, &qword_1001D0FF8);
    v159 = v312;
    sub_10002A894(v152, v312, &qword_10025C240, &qword_1001D0FD0);
    if ((*v302)(v159, 1, v304) == 1)
    {
      sub_10000F500(v158, &qword_10025C268, &qword_1001D0FF8);
      sub_10000F500(v159, &qword_10025C240, &qword_1001D0FD0);
    }

    else
    {
      (*v274)(v272, v159, v304);
      v160 = PresentationIntent.components.getter();
      v161 = *(v160 + 16);
      if (v161)
      {
        LODWORD(v286) = 0;
        LODWORD(v291) = 0;
        v162 = (*(v300 + 80) + 32) & ~*(v300 + 80);
        v247 = v160;
        v163 = v160 + v162;
        v164 = *(v300 + 72);
        v165 = *(v300 + 16);
        v285 = 1;
        v166 = v309;
        v167 = v297;
        v168 = v261;
        while (1)
        {
          v170 = v301;
          v171 = v166;
          v165(v301, v163);
          PresentationIntent.IntentType.kind.getter();
          v172 = v308;
          v173 = (*v306)(v167, v308);
          if (v173 == v326)
          {
            (*v305)(v170, v171);
            v169 = &v323;
          }

          else
          {
            if (v173 != v310)
            {
              (*v305)(v301, v309);
              (*v295)(v297, v172);
              goto LABEL_31;
            }

            v174 = v301;
            v285 = v168 != PresentationIntent.IntentType.identity.getter();
            v168 = PresentationIntent.IntentType.identity.getter();
            (*v305)(v174, v309);
            v169 = &v318;
          }

          *(v169 - 64) = 1;
LABEL_31:
          v151 = v334;
          v163 += v164;
          --v161;
          v166 = v309;
          v167 = v297;
          if (!v161)
          {
            v261 = v168;

            v175 = v323;
            if (v266 & v285)
            {
              v176 = v286;
              v177 = v291;
              goto LABEL_39;
            }

            v178 = 0;
            v176 = v286;
            goto LABEL_41;
          }
        }
      }

      v176 = 0;
      v177 = 0;
      v178 = 0;
      v175 = v323;
      if (v266)
      {
LABEL_39:
        v178 = v177 ^ 1;
      }

LABEL_41:
      v179 = v271;
      (*v314)(v271, v175, v336);
      *(v179 + *(v318 + 20)) = v178 & 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v332 = sub_10017DD34(0, v332[2] + 1, 1, v332);
      }

      v181 = v332[2];
      v180 = v332[3];
      v182 = v272;
      if (v181 >= v180 >> 1)
      {
        v332 = sub_10017DD34(v180 > 1, v181 + 1, 1, v332);
        v182 = v272;
      }

      (*v273)(v182);
      sub_10000F500(v323, &qword_10025C268, &qword_1001D0FF8);
      v183 = v332;
      v332[2] = v181 + 1;
      sub_10003C19C(v271, v183 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + v319[9] * v181);
      v266 = v176;
      v150 = v320;
    }
  }

  v291 = v156;
  v297 = v155;
  v301 = v153;
  v184 = v276 + 8;
  v286 = *(v276 + 8);
  (v286)(v325, v150);
  v185 = v332[2];
  v276 = v184;
  v186 = v319;
  v187 = v329;
  v188 = v322;
  if (v185)
  {
    v326 = v332 + ((*(v319 + 80) + 32) & ~*(v319 + 80));
    v310 = (v275 + 8);
    v312 = (v283 + 32);
    while (v185 <= v332[2])
    {
      v185 = (v185 - 1);
      v189 = v328;
      sub_10003BEFC(v326 + v186[9] * v185, v328);
      AttributedString.startIndex.getter();
      v152 = v336;
      v190 = dispatch thunk of static Equatable.== infix(_:_:)();
      v191 = v151;
      v192 = v190;
      (v333)(v191, v152);
      if ((v192 & 1) == 0)
      {
        v193 = v313;
        if (*(v189 + *(v318 + 20)) == 1)
        {
          AttributedString.init(stringLiteral:)();
          sub_10003C154(&qword_10025C2F8, &type metadata accessor for AttributedString);
          v194 = v311;
          AttributedString.insert<A>(_:at:)();
          (*v310)(v193, v194);
        }

        v195 = AttributedString.characters.modify();
        v197 = v196;
        v337 = 10;
        v338 = 0xE100000000000000;
        sub_10003C154(&qword_10025C2D8, &type metadata accessor for AttributedString.Index);
        v198 = v336;
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        v199 = v317;
        v200 = v327;
        if ((result & 1) == 0)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v323 = v197;
        v324 = v195;
        v201 = *v314;
        (*v314)(v327, v189, v198);
        v201(v200 + *(v199 + 48), v189, v198);
        v202 = v316;
        sub_1000081F8(v200, v316, &qword_10025C238, &qword_1001D0FC8);
        v203 = *(v199 + 48);
        v204 = *v312;
        v205 = v315;
        (*v312)(v315, v202, v198);
        v325 = v185;
        v206 = v333;
        (v333)(v202 + v203, v198);
        sub_10002A894(v327, v202, &qword_10025C238, &qword_1001D0FC8);
        v204(v205 + *(v321 + 36), v202 + *(v199 + 48), v198);
        v207 = v202;
        v186 = v319;
        v206(v207, v198);
        v185 = v325;
        type metadata accessor for AttributedString.CharacterView();
        sub_10003C154(&qword_10025C2E0, &type metadata accessor for AttributedString.CharacterView);
        sub_10003BE54();
        v152 = v323;
        v150 = v320;
        dispatch thunk of RangeReplaceableCollection.replaceSubrange<A>(_:with:)();
        sub_10000F500(v205, &qword_10025C268, &qword_1001D0FF8);
        (v324)(&v339, 0);
        v188 = v322;
      }

      sub_10003BF60(v189);
      v187 = v329;
      v151 = v334;
      if (!v185)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_55:

    type metadata accessor for ListTracker();
    v208 = swift_initStackObject();
    *(v208 + 16) = _swiftEmptyArrayStorage;
    v327 = v208;
    *(v208 + 24) = _swiftEmptyArrayStorage;
    v209 = (v208 + 24);
    v210 = v277;
    AttributedString.runs.getter();
    v211 = v270;
    AttributedString.Runs.subscript.getter();
    v264(v210, v278);
    AttributedString.Runs.AttributesSlice1.makeIterator()();
    v259(v211, v187);
    v323 = v209;
    swift_beginAccess();
    v212 = v293;
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v152 = v212;
    v213 = v212;
    v150 = v301;
    v214 = (v297)(v213, 1, v301);
    v187 = v298;
    v151 = v284;
    if (v214 == 1)
    {
LABEL_56:
      (v286)(v188, v320);

      v215 = v327;
      swift_setDeallocating();
      v216 = *(v215 + 16);

      v217 = *(v215 + 24);
    }
  }

  v333 = v268 + 12;
  v331 = v260 & 0xC000000000000001;
  v329 = v260 & 0xFFFFFFFFFFFFFF8;
  v325 = (v267 + 56);
  v324 = (v265 + 8);
  LODWORD(v335) = enum case for PresentationIntent.Kind.header(_:);
  LODWORD(v332) = enum case for PresentationIntent.Kind.orderedList(_:);
  LODWORD(v328) = enum case for PresentationIntent.Kind.unorderedList(_:);
  v319 = NSTextListMarkerCircle;
  while (2)
  {
    v218 = v152 + *(v150 + 12);
    v219 = v296;
    sub_10002A894(v218, v296, &qword_10025C268, &qword_1001D0FF8);
    sub_10002A894(v152, v151, &qword_10025C240, &qword_1001D0FD0);
    v220 = v304;
    if ((*v302)(v151, 1, v304) == 1)
    {
      sub_10000F500(v219, &qword_10025C268, &qword_1001D0FF8);
      sub_10000F500(v151, &qword_10025C240, &qword_1001D0FD0);
      goto LABEL_60;
    }

    (*v274)(v292, v151, v220);
    v334 = sub_100007120(&qword_10025C2E8, &qword_10025C268, &qword_1001D0FF8);
    AttributedString.subscript.getter();
    v326 = PresentationIntent.indentationLevel.getter();
    sub_100038B48(v326);
    result = PresentationIntent.components.getter();
    v221 = result;
    v336 = *(result + 16);
    if (!v336)
    {
LABEL_77:

LABEL_91:
      v243 = v280;
      v244 = v304;
      (*v325)(v280, 1, 1, v304);
      v245 = v296;
      v246 = AttributedString.subscript.modify();
      sub_1000081F8(v243, v281, &qword_10025C240, &qword_1001D0FD0);
      AttributedSubstring.subscript.setter();
      sub_10000F500(v243, &qword_10025C240, &qword_1001D0FD0);
      v246(&v339, 0);
      (*v324)(v288, v282);
      (*v273)(v292, v244);
      sub_10000F500(v245, &qword_10025C268, &qword_1001D0FF8);
      v151 = v284;
LABEL_60:
      AttributedString.Runs.AttributesSlice1.Iterator.next()();
      v152 = v293;
      v150 = v301;
      if ((v297)(v293, 1, v301) == 1)
      {
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  v222 = 0;
  while (1)
  {
    if (v222 >= *(v221 + 16))
    {
      goto LABEL_93;
    }

    v225 = v300;
    v226 = v309;
    (*(v300 + 16))(v187, v221 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v222, v309);
    v227 = v187;
    v228 = PresentationIntent.IntentType.identity.getter();
    v229 = v303;
    PresentationIntent.IntentType.kind.getter();
    v230 = v308;
    (*(v225 + 8))(v227, v226);
    v231 = (*v306)(v229, v230);
    if (v231 == v335)
    {
      (*v333)(v229, v230);
      result = *v229 - 1;
      if (__OFSUB__(*v229, 1))
      {
        goto LABEL_94;
      }

      if (v331)
      {
        v223 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v188 = v322;
      }

      else
      {
        v188 = v322;
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_95;
        }

        if (result >= *(v329 + 16))
        {
          goto LABEL_96;
        }

        v223 = *(v294 + 8 * result);
      }

      v224 = AttributedString.subscript.modify();
      v341 = v223;
      AttributedSubstring.subscript.setter();
      result = v224(&v339, 0);
      goto LABEL_66;
    }

    if (v231 == v332)
    {
      break;
    }

    v188 = v322;
    if (v231 == v328)
    {

      v236 = *(v327 + 16);
      v237 = *(v236 + 16);
      if (!v237 || v228 != *(v236 + 8 * v237 + 24))
      {
        v238 = objc_allocWithZone(NSTextList);
        v239 = [v238 initWithMarkerFormat:v319 options:0];
        sub_100038DAC(v228, v239);
      }

      goto LABEL_90;
    }

    result = (*v295)(v303, v230);
LABEL_66:
    ++v222;
    v187 = v298;
    if (v336 == v222)
    {
      goto LABEL_77;
    }
  }

  v232 = *(v327 + 16);
  v233 = *(v232 + 16);
  v188 = v322;
  if (v233 && v228 == *(v232 + 8 * v233 + 24))
  {
    goto LABEL_90;
  }

  if (qword_10025A738 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v326, 1))
  {
    goto LABEL_97;
  }

  v234 = (v326 - 1) % 3;
  if (v234 < 0)
  {
    goto LABEL_98;
  }

  if (v234 < *(off_10025C148 + 2))
  {
    v235 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:*(off_10025C148 + v234 + 4) options:0];
    sub_100038DAC(v228, v235);

LABEL_90:
    v240 = *v323;

    v241 = sub_10003BFBC();

    v242 = AttributedString.subscript.modify();
    v341 = v241;
    sub_10003C100();
    AttributedSubstring.subscript.setter();
    v242(&v339, 0);
    v187 = v298;
    goto LABEL_91;
  }

LABEL_99:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RestoreWhiteSpaceLocation()
{
  result = qword_10025C378;
  if (!qword_10025C378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003BDAC()
{
  result = qword_10025C290;
  if (!qword_10025C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C290);
  }

  return result;
}

unint64_t sub_10003BE00()
{
  result = qword_10025C298;
  if (!qword_10025C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C298);
  }

  return result;
}

unint64_t sub_10003BE54()
{
  result = qword_10025C2C0;
  if (!qword_10025C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C2C0);
  }

  return result;
}

unint64_t sub_10003BEA8()
{
  result = qword_10025C2C8;
  if (!qword_10025C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C2C8);
  }

  return result;
}

uint64_t sub_10003BEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RestoreWhiteSpaceLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BF60(uint64_t a1)
{
  v2 = type metadata accessor for RestoreWhiteSpaceLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003BFBC()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultParagraphStyle];
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000081B0(0, &qword_10025C308, NSMutableParagraphStyle_ptr);
  if (swift_dynamicCast())
  {
    sub_1000081B0(0, &qword_10025C310, NSTextList_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 setTextLists:isa];

    return v5;
  }

  else
  {
    v4 = [v0 defaultParagraphStyle];

    return v4;
  }
}

unint64_t sub_10003C100()
{
  result = qword_10025C2F0;
  if (!qword_10025C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C2F0);
  }

  return result;
}

uint64_t sub_10003C154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003C19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RestoreWhiteSpaceLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C200()
{
  result = qword_10025C300;
  if (!qword_10025C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C300);
  }

  return result;
}

uint64_t sub_10003C268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
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

uint64_t sub_10003C348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Index();
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

uint64_t sub_10003C400()
{
  result = type metadata accessor for AttributedString.Index();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10003C474()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_attachmentCollectionViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_currentCellWidth] = 0x4073200000000000;
  v2 = sub_10003D844(306.0);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, "initWithFrame:collectionViewLayout:", v2, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 contentInset];
  [v5 setContentInset:?];
  [v5 contentInset];
  [v5 setContentInset:?];

  type metadata accessor for AttachmentCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v8];

  return v5;
}

id sub_10003C69C()
{
  ObjectType = swift_getObjectType();
  [v0 bounds];
  v3 = v2 + -29.0;
  if (v2 + -29.0 != *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_currentCellWidth])
  {
    *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_currentCellWidth] = v3;
    v4 = sub_10003D844(v3);
    [v0 setCollectionViewLayout:v4];

    v5 = [v0 collectionViewLayout];
    [v5 invalidateLayout];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "layoutSubviews", v3);
}